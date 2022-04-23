package net.pubnative.lite.sdk.mraid.nativefeature;

import android.content.Context;
import android.content.Intent;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import net.pubnative.lite.sdk.mraid.internal.MRAIDLog;
import net.pubnative.lite.sdk.mraid.internal.MRAIDNativeFeatureManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/nativefeature/MRAIDNativeFeatureProvider.class */
public class MRAIDNativeFeatureProvider {
    public static final String ACTION_HANDLE_CUSTOM_EVENT = "android.provider.calendar.action.HANDLE_CUSTOM_EVENT";
    public static final String AUTHORITY = "com.android.calendar";
    public static final String DESCRIPTION = "description";
    public static final String DISPLAY_COLOR = "displayColor";
    public static final String EVENT_COLOR = "eventColor";
    public static final String EVENT_COLOR_KEY = "eventColor_index";
    public static final String EVENT_LOCATION = "eventLocation";
    public static final String EXTRA_CUSTOM_APP_URI = "customAppUri";
    public static final String EXTRA_EVENT_ALL_DAY = "allDay";
    public static final String EXTRA_EVENT_BEGIN_TIME = "beginTime";
    public static final String EXTRA_EVENT_END_TIME = "endTime";
    public static final String STATUS = "eventStatus";
    private static final String TAG = "MRAIDNativeFeatureProvider";
    public static final String TITLE = "title";
    private final Context context;
    private final MRAIDNativeFeatureManager nativeFeatureManager;

    public MRAIDNativeFeatureProvider(Context context, MRAIDNativeFeatureManager mRAIDNativeFeatureManager) {
        this.context = context;
        this.nativeFeatureManager = mRAIDNativeFeatureManager;
    }

    private void copyStream(InputStream inputStream, OutputStream outputStream) {
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    outputStream.write(bArr, 0, read);
                } else {
                    return;
                }
            }
        } catch (Exception e) {
            String str = TAG;
            MRAIDLog.i(str, "Error saving picture: " + e.getLocalizedMessage());
        }
    }

    private File getAlbumDir() {
        File file = null;
        if ("mounted".equals(Environment.getExternalStorageState())) {
            file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Image");
            if (!file.mkdirs() && !file.exists()) {
                MRAIDLog.i(TAG, "Failed to create camera directory");
                return null;
            }
        } else {
            MRAIDLog.i(TAG, "External storage is not mounted READ/WRITE.");
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void storePictureInGallery(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HHmmss");
        String str2 = getAlbumDir() + "/img" + simpleDateFormat.format(new Date()) + ".png";
        String str3 = TAG;
        MRAIDLog.i(str3, "Saving image into: ".concat(String.valueOf(str2)));
        File file = new File(str2);
        try {
            copyStream(new URL(str).openStream(), new FileOutputStream(file));
            MediaScannerConnection.scanFile(this.context, new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider.2
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public void onScanCompleted(String str4, Uri uri) {
                    MRAIDLog.d("File saves successfully to ".concat(String.valueOf(str4)));
                }
            });
            MRAIDLog.i(str3, "Saved image successfully");
        } catch (MalformedURLException e) {
            MRAIDLog.e(TAG, "Not able to save image due to invalid URL: " + e.getLocalizedMessage());
        } catch (IOException e2) {
            MRAIDLog.e(TAG, "Unable to save image: " + e2.getLocalizedMessage());
        }
    }

    public final void callTel(String str) {
        if (this.nativeFeatureManager.isTelSupported()) {
            this.context.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(str)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3, types: [long] */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createCalendarEvent(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider.createCalendarEvent(java.lang.String):void");
    }

    public void openBrowser(String str) {
        if (str.startsWith("market:")) {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } else if (str.startsWith("http:") || str.startsWith("https:")) {
            this.context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }
    }

    public void playVideo(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.parse(str), "video/*");
        this.context.startActivity(intent);
    }

    public void sendSms(String str) {
        if (this.nativeFeatureManager.isSmsSupported()) {
            this.context.startActivity(new Intent("android.intent.action.SENDTO", Uri.parse(str)));
        }
    }

    public void storePicture(final String str) {
        if (this.nativeFeatureManager.isStorePictureSupported()) {
            new Thread(new Runnable() { // from class: net.pubnative.lite.sdk.mraid.nativefeature.MRAIDNativeFeatureProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        MRAIDNativeFeatureProvider.this.storePictureInGallery(str);
                    } catch (Exception e) {
                        MRAIDLog.e(MRAIDNativeFeatureProvider.TAG, e.getLocalizedMessage());
                    }
                }
            }).start();
        }
    }
}
