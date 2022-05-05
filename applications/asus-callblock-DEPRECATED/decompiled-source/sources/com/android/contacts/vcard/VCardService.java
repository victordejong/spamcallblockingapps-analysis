package com.android.contacts.vcard;

import android.app.Service;
import android.content.Intent;
import android.content.res.Resources;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Binder;
import android.os.Environment;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.android.contacts.AsusContactsForegroundFakeService;
import com.android.contacts.AsusContactsForegroundService;
import com.android.contacts.util.AsusStorageUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/VCardService.class */
public class VCardService extends Service {
    private static final boolean ALLOW_LONG_FILE_NAME = false;
    static final String CACHE_FILE_PREFIX = "import_tmp_";
    static final boolean DEBUG = false;
    private static final String LOG_TAG = "VCardService";
    static final int MSG_CANCEL_REQUEST = 3;
    static final int MSG_EXPORT_REQUEST = 2;
    static final int MSG_IMPORT_REQUEST = 1;
    static final int MSG_REQUEST_AVAILABLE_EXPORT_DESTINATION = 4;
    static final int MSG_SET_AVAILABLE_EXPORT_DESTINATION = 5;
    static final int TYPE_EXPORT = 2;
    static final int TYPE_IMPORT = 1;
    public static final String VCARD_TYPE_V21_JAPANESE_MOBILE_STR = "v21_japanese_mobile";
    private MyBinder mBinder;
    private int mCurrentJobId;
    private String mErrorReason;
    private Set<String> mExtensionsToConsider;
    private int mFileIndexMaximum;
    private int mFileIndexMinimum;
    private String mFileNameExtension;
    private String mFileNamePrefix;
    private String mFileNameSuffix;
    private File mTargetDirectory;
    private final ExecutorService mExecutorService = Executors.newSingleThreadExecutor();
    private final SparseArray<ProcessorBase> mRunningJobMap = new SparseArray<>();
    private final List<CustomMediaScannerConnectionClient> mRemainingScannerConnections = new ArrayList();
    private final Set<String> mReservedDestination = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient.class */
    public class CustomMediaScannerConnectionClient implements MediaScannerConnection.MediaScannerConnectionClient {
        final MediaScannerConnection mConnection;
        final String mPath;

        public CustomMediaScannerConnectionClient(String str) {
            this.mConnection = new MediaScannerConnection(VCardService.this, this);
            this.mPath = str;
        }

        @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
        public void onMediaScannerConnected() {
            this.mConnection.scanFile(this.mPath, null);
        }

        @Override // android.media.MediaScannerConnection.OnScanCompletedListener
        public void onScanCompleted(String str, Uri uri) {
            this.mConnection.disconnect();
            VCardService.this.removeConnectionClient(this);
        }

        public void start() {
            this.mConnection.connect();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/vcard/VCardService$MyBinder.class */
    public class MyBinder extends Binder {
        public MyBinder() {
        }

        public VCardService getService() {
            return VCardService.this;
        }
    }

    private void cancelAllRequestsAndShutdown() {
        synchronized (this) {
            for (int i = 0; i < this.mRunningJobMap.size(); i++) {
                this.mRunningJobMap.valueAt(i).cancel(true);
            }
            this.mRunningJobMap.clear();
            this.mExecutorService.shutdown();
        }
    }

    private void clearCache() {
        String[] fileList;
        for (String str : fileList()) {
            if (str.startsWith(CACHE_FILE_PREFIX)) {
                Log.i(LOG_TAG, "Remove a temporary file: " + PhoneCapabilityTester.privacyLogCheck(str));
                deleteFile(str);
            }
        }
    }

    private String getAppropriateDestination(File file) {
        String str;
        boolean z;
        int i = 0;
        for (int i2 = this.mFileIndexMaximum; i2 > 0; i2 /= 10) {
            i++;
        }
        String str2 = "%s%0" + i + "d%s";
        String format = String.format(str2, this.mFileNamePrefix, 1, this.mFileNameSuffix);
        if (format.length() <= 8 && this.mFileNameExtension.length() <= 3) {
            int i3 = this.mFileIndexMinimum;
            while (true) {
                if (i3 > this.mFileIndexMaximum) {
                    Log.w(LOG_TAG, "Reached vCard number limit. Maybe there are too many vCard in the storage");
                    this.mErrorReason = getString(2131755649);
                    str = null;
                    break;
                }
                String format2 = String.format(str2, this.mFileNamePrefix, Integer.valueOf(i3), this.mFileNameSuffix);
                Iterator<String> it = this.mExtensionsToConsider.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    File file2 = new File(file, format2 + "." + it.next());
                    String absolutePath = file2.getAbsolutePath();
                    synchronized (this) {
                        if (!this.mReservedDestination.contains(absolutePath)) {
                            if (file2.exists()) {
                                z = false;
                                break;
                            }
                        } else {
                            z = false;
                            break;
                        }
                    }
                }
                if (z) {
                    str = new File(file, format2 + "." + this.mFileNameExtension).getAbsolutePath();
                    break;
                }
                i3++;
            }
        } else {
            Log.e(LOG_TAG, "This code does not allow any long file name.");
            this.mErrorReason = getString(2131755648, new Object[]{String.format("%s.%s", format, this.mFileNameExtension)});
            Log.w(LOG_TAG, "File name becomes too long.");
            str = null;
        }
        return str;
    }

    private void initExporterParams() {
        if (!PhoneCapabilityTester.isKDDISku()) {
            this.mTargetDirectory = Environment.getExternalStorageDirectory();
        } else if (AsusStorageUtils.isMicroSDStorageExist(this)) {
            this.mTargetDirectory = AsusStorageUtils.getMicroSDCardDirectory();
        } else {
            this.mTargetDirectory = Environment.getExternalStorageDirectory();
        }
        this.mFileNamePrefix = getString(2131755431);
        this.mFileNameSuffix = getString(2131755432);
        this.mFileNameExtension = getString(2131755430);
        this.mExtensionsToConsider = new HashSet();
        this.mExtensionsToConsider.add(this.mFileNameExtension);
        String string = getString(2131755429);
        if (!TextUtils.isEmpty(string)) {
            for (String str : string.split(",")) {
                String trim = str.trim();
                if (trim.length() > 0) {
                    this.mExtensionsToConsider.add(trim);
                }
            }
        }
        Resources resources = getResources();
        this.mFileIndexMinimum = resources.getInteger(2131361808);
        this.mFileIndexMaximum = resources.getInteger(2131361807);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeConnectionClient(CustomMediaScannerConnectionClient customMediaScannerConnectionClient) {
        synchronized (this) {
            this.mRemainingScannerConnections.remove(customMediaScannerConnectionClient);
            stopServiceIfAppropriate();
        }
    }

    private boolean tryExecute(ProcessorBase processorBase) {
        boolean z;
        synchronized (this) {
            try {
                this.mExecutorService.execute(processorBase);
                this.mRunningJobMap.put(this.mCurrentJobId, processorBase);
                z = true;
            } catch (RejectedExecutionException e) {
                Log.w(LOG_TAG, "Failed to excetute a job.", e);
                z = false;
            }
        }
        return z;
    }

    public void handleCancelRequest(CancelRequest cancelRequest, VCardImportExportListener vCardImportExportListener) {
        synchronized (this) {
            int i = cancelRequest.jobId;
            ProcessorBase processorBase = this.mRunningJobMap.get(i);
            this.mRunningJobMap.remove(i);
            if (processorBase != null) {
                processorBase.cancel(true);
                int type = processorBase.getType();
                if (vCardImportExportListener != null) {
                    vCardImportExportListener.onCancelRequest(cancelRequest, type);
                }
                if (type == 2) {
                    String encodedPath = ((ExportProcessor) processorBase).getRequest().destUri.getEncodedPath();
                    Log.i(LOG_TAG, String.format("Cancel reservation for the path %s if appropriate", encodedPath));
                    if (!this.mReservedDestination.remove(encodedPath)) {
                        Log.w(LOG_TAG, "Not reserved.");
                    }
                }
            } else {
                Log.w(LOG_TAG, String.format("Tried to remove unknown job (id: %d)", Integer.valueOf(i)));
            }
            stopServiceIfAppropriate();
        }
    }

    public void handleExportRequest(ExportRequest exportRequest, VCardImportExportListener vCardImportExportListener) {
        synchronized (this) {
            if (tryExecute(new ExportProcessor(this, exportRequest, this.mCurrentJobId))) {
                String encodedPath = exportRequest.destUri.getEncodedPath();
                if (!this.mReservedDestination.add(encodedPath)) {
                    Log.w(LOG_TAG, String.format("The path %s is already reserved. Reject export request", encodedPath));
                    if (vCardImportExportListener != null) {
                        vCardImportExportListener.onExportFailed(exportRequest);
                    }
                } else {
                    if (vCardImportExportListener != null) {
                        vCardImportExportListener.onExportProcessed(exportRequest, this.mCurrentJobId);
                    }
                    this.mCurrentJobId++;
                }
            } else if (vCardImportExportListener != null) {
                vCardImportExportListener.onExportFailed(exportRequest);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleFinishExportNotification(int i, boolean z) {
        synchronized (this) {
            ProcessorBase processorBase = this.mRunningJobMap.get(i);
            this.mRunningJobMap.remove(i);
            if (processorBase == null) {
                Log.w(LOG_TAG, String.format("Tried to remove unknown job (id: %d)", Integer.valueOf(i)));
            } else if (!(processorBase instanceof ExportProcessor)) {
                Log.w(LOG_TAG, String.format("Removed job (id: %s) isn't ExportProcessor", Integer.valueOf(i)));
            } else {
                this.mReservedDestination.remove(((ExportProcessor) processorBase).getRequest().destUri.getEncodedPath());
            }
            stopServiceIfAppropriate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleFinishImportNotification(int i, boolean z) {
        synchronized (this) {
            this.mRunningJobMap.remove(i);
            stopServiceIfAppropriate();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        if (r8 == null) goto L_0x0068;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
        r8.onImportFailed(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void handleImportRequest(java.util.List<com.android.contacts.vcard.ImportRequest> r7, com.android.contacts.vcard.VCardImportExportListener r8) {
        /*
            r6 = this;
            r0 = r6
            monitor-enter(r0)
            r0 = r7
            int r0 = r0.size()     // Catch: all -> 0x006b
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x000c:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L_0x0068
            r0 = r7
            r1 = r10
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x006b
            com.android.contacts.vcard.ImportRequest r0 = (com.android.contacts.vcard.ImportRequest) r0     // Catch: all -> 0x006b
            r11 = r0
            com.android.contacts.vcard.ImportProcessor r0 = new com.android.contacts.vcard.ImportProcessor     // Catch: all -> 0x006b
            r12 = r0
            r0 = r12
            r1 = r6
            r2 = r8
            r3 = r11
            r4 = r6
            int r4 = r4.mCurrentJobId     // Catch: all -> 0x006b
            r0.<init>(r1, r2, r3, r4)     // Catch: all -> 0x006b
            r0 = r6
            r1 = r12
            boolean r0 = r0.tryExecute(r1)     // Catch: all -> 0x006b
            if (r0 == 0) goto L_0x005c
            r0 = r8
            if (r0 == 0) goto L_0x004c
            r0 = r8
            r1 = r11
            r2 = r6
            int r2 = r2.mCurrentJobId     // Catch: all -> 0x006b
            r3 = r10
            r0.onImportProcessed(r1, r2, r3)     // Catch: all -> 0x006b
        L_0x004c:
            r0 = r6
            r1 = r6
            int r1 = r1.mCurrentJobId     // Catch: all -> 0x006b
            r2 = 1
            int r1 = r1 + r2
            r0.mCurrentJobId = r1     // Catch: all -> 0x006b
            int r10 = r10 + 1
            goto L_0x000c
        L_0x005c:
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r8
            r1 = r11
            r0.onImportFailed(r1)     // Catch: all -> 0x006b
        L_0x0068:
            r0 = r6
            monitor-exit(r0)
            return
        L_0x006b:
            r7 = move-exception
            r0 = r6
            monitor-exit(r0)
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.vcard.VCardService.handleImportRequest(java.util.List, com.android.contacts.vcard.VCardImportExportListener):void");
    }

    public void handleRequestAvailableExportDestination(Messenger messenger) {
        synchronized (this) {
            String appropriateDestination = getAppropriateDestination(this.mTargetDirectory);
            try {
                messenger.send(appropriateDestination != null ? Message.obtain(null, 5, 0, 0, appropriateDestination) : Message.obtain(null, 5, 2131296712, 0, this.mErrorReason));
            } catch (RemoteException e) {
                Log.w(LOG_TAG, "Failed to send reply for available export destination request.", e);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mBinder = new MyBinder();
        initExporterParams();
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (!PhoneCapabilityTester.isNeedToStartForegroundService(getApplicationContext())) {
            Intent intent = new Intent(this, AsusContactsForegroundService.class);
            intent.putExtra("isStop", true);
            startService(intent);
        }
        cancelAllRequestsAndShutdown();
        clearCache();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (PhoneCapabilityTester.isNeedToStartForegroundService(getApplicationContext())) {
            return 2;
        }
        startService(new Intent(this, AsusContactsForegroundFakeService.class));
        return 2;
    }

    public void stopServiceIfAppropriate() {
        synchronized (this) {
            if (this.mRunningJobMap.size() > 0) {
                int size = this.mRunningJobMap.size();
                int[] iArr = new int[size];
                for (int i = 0; i < size; i++) {
                    int keyAt = this.mRunningJobMap.keyAt(i);
                    if (!this.mRunningJobMap.valueAt(i).isDone()) {
                        Log.i(LOG_TAG, String.format("Found unfinished job (id: %d)", Integer.valueOf(keyAt)));
                        for (int i2 = 0; i2 < i; i2++) {
                            this.mRunningJobMap.remove(iArr[i2]);
                        }
                    } else {
                        iArr[i] = keyAt;
                    }
                }
                this.mRunningJobMap.clear();
            }
            if (!this.mRemainingScannerConnections.isEmpty()) {
                Log.i(LOG_TAG, "MediaScanner update is in progress.");
            } else {
                Log.i(LOG_TAG, "No unfinished job. Stop this service.");
                this.mExecutorService.shutdown();
                stopSelf();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateMediaScanner(String str) {
        synchronized (this) {
            if (this.mExecutorService.isShutdown()) {
                Log.w(LOG_TAG, "MediaScanner update is requested after executor's being shut down. Ignoring the update request");
            } else {
                CustomMediaScannerConnectionClient customMediaScannerConnectionClient = new CustomMediaScannerConnectionClient(str);
                this.mRemainingScannerConnections.add(customMediaScannerConnectionClient);
                customMediaScannerConnectionClient.start();
            }
        }
    }
}
