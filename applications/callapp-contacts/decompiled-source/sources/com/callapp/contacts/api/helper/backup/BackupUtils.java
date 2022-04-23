package com.callapp.contacts.api.helper.backup;

import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.work.impl.j;
import androidx.work.t;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.settings.SettingsActivity;
import com.callapp.contacts.loader.PersonalStoreItemDataManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.recorder.CallRecorderManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.workers.BackupWorker;
import com.callapp.contacts.workers.CallAppDailyWorker;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.f;
import kotlin.jvm.internal.p;
import kotlin.n;
@Metadata(bv = {1, 0, 3}, d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\b\u0010\u001b\u001a\u00020\u0004H\u0007J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0016H\u0003J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0007J \u0010\u001e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001f2\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020%H\u0007J\b\u0010'\u001a\u00020%H\u0007J\b\u0010(\u001a\u00020%H\u0007J\b\u0010)\u001a\u00020%H\u0007J\b\u0010*\u001a\u00020\u0011H\u0007J\u0012\u0010+\u001a\u00020\u00112\b\b\u0002\u0010,\u001a\u00020\u0004H\u0007J$\u0010-\u001a\u00020\u00112\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u00152\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0007J\u0010\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020%H\u0007J\b\u00102\u001a\u00020\u0011H\u0007J\u001c\u00103\u001a\u00020\u00042\b\u00104\u001a\u0004\u0018\u0001052\b\b\u0002\u00106\u001a\u00020\u0004H\u0007J\u001a\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u0002082\b\b\u0002\u00106\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001e\u0010\u000b\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000f¨\u00069"}, d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupUtils;", "", "()V", "CSV_EXTENSION", "", "FOLDER_NAME", "MP4_EXTENSION", "TAG", "VCARD_EXTENSION", "VIDEO_RINGTONE_NAME", "ZIP_FILE_NAME", "backupFilesTypePref", "", "Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;", "kotlin.jvm.PlatformType", "[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;", "deleteTempFolder", "", "formatToValidFileName", "oldFileName", "getBackupFilesData", "", "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;", "type", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "getBackupSettingsIntent", "Landroid/content/Intent;", "getCallLogCsv", "getCallsLogFileCSV", "getContactVCards", "getFileBuffer", "Lkotlin/Pair;", "Ljava/io/FileInputStream;", "", "uri", "Landroid/net/Uri;", "hasCompleteBackupOnce", "", "isAllowToRunBackup", "isAnyBackupFilesChosen", "isBackupAsScheduleIsValid", "isBackupViaChosen", "logoutAndStopAllBackups", "onBackupMenuClicked", Constants.EXTRA_ENTRY_POINT, "onCompleteUpload", "listPath", "fileType", "onStartBackupClicked", "now", "runBackupWorkerIfNeeded", "toDateStr", "date", "Ljava/util/Date;", "format", "time", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupUtils.class */
public final class BackupUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final BackupUtils f14097a = new BackupUtils();

    /* renamed from: b  reason: collision with root package name */
    private static final BooleanPref[] f14098b = {Prefs.hN, Prefs.hP, Prefs.hM, Prefs.hO};

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f14099a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f14100b;

        static {
            int[] iArr = new int[BackupFileType.values().length];
            f14099a = iArr;
            iArr[BackupFileType.RECORDINGS.ordinal()] = 1;
            iArr[BackupFileType.VIDEO_RINGTONES.ordinal()] = 2;
            iArr[BackupFileType.CONTACTS.ordinal()] = 3;
            iArr[BackupFileType.CALLLOGS.ordinal()] = 4;
            iArr[BackupFileType.UN_SUPPORTED.ordinal()] = 5;
            int[] iArr2 = new int[BackupFileType.values().length];
            f14100b = iArr2;
            iArr2[BackupFileType.CALLLOGS.ordinal()] = 1;
            iArr2[BackupFileType.CONTACTS.ordinal()] = 2;
            iArr2[BackupFileType.RECORDINGS.ordinal()] = 3;
            iArr2[BackupFileType.VIDEO_RINGTONES.ordinal()] = 4;
        }
    }

    private BackupUtils() {
    }

    public static final String a(long j, String format) {
        p.d(format, "format");
        String format2 = new SimpleDateFormat(format).format(Long.valueOf(j));
        p.b(format2, "sdf.format(time)");
        return format2;
    }

    public static final String a(Date date, String format) {
        p.d(format, "format");
        if (date == null) {
            return "";
        }
        String format2 = new SimpleDateFormat(format).format(date);
        p.b(format2, "sdf.format(date)");
        return format2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0173, code lost:
        if (r0 == null) goto L_0x0176;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<com.callapp.contacts.api.helper.backup.BackUpFileData> a(com.callapp.contacts.api.helper.backup.BackupFileType r6) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.backup.BackupUtils.a(com.callapp.contacts.api.helper.backup.BackupFileType):java.util.List");
    }

    private static n<FileInputStream, byte[]> a(Uri uri) {
        Exception e;
        FileInputStream fileInputStream = null;
        byte[] bArr = null;
        try {
            CallAppApplication callAppApplication = CallAppApplication.get();
            p.b(callAppApplication, "CallAppApplication.get()");
            AssetFileDescriptor openAssetFileDescriptor = callAppApplication.getContentResolver().openAssetFileDescriptor(uri, "r");
            if (openAssetFileDescriptor != null) {
                FileInputStream createInputStream = openAssetFileDescriptor.createInputStream();
                try {
                    int declaredLength = (int) openAssetFileDescriptor.getDeclaredLength();
                    if (declaredLength >= 0) {
                        bArr = new byte[declaredLength];
                    } else {
                        CallAppApplication callAppApplication2 = CallAppApplication.get();
                        p.b(callAppApplication2, "CallAppApplication.get()");
                        ParcelFileDescriptor openFileDescriptor = callAppApplication2.getContentResolver().openFileDescriptor(uri, "r");
                        if (openFileDescriptor != null) {
                            fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                            try {
                                bArr = new byte[fileInputStream.available()];
                            } catch (Exception e2) {
                                e = e2;
                                new StringBuilder("getFileBuffer ").append(e.getMessage());
                                CLog.a("BackupWorker-BackupUtils");
                                return new n<>(fileInputStream, null);
                            }
                        }
                    }
                    fileInputStream = createInputStream;
                } catch (Exception e3) {
                    e = e3;
                    fileInputStream = createInputStream;
                }
            } else {
                bArr = null;
            }
            return new n<>(fileInputStream, bArr);
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
        }
    }

    public static final void a(String entryPoint) {
        p.d(entryPoint, "entryPoint");
        if (entryPoint.length() > 0) {
            AnalyticsManager.get().a(Constants.BACKUP_CATEGORY, "ViewBackupScreen", entryPoint);
        }
        if (!isAllowToRunBackup()) {
            Activities.a(CallAppApplication.get(), new Intent(CallAppApplication.get(), BackupPlansActivity.class));
        } else if (isBackupAsScheduleIsValid()) {
            PopupManager.get().a(CallAppApplication.get(), new BackUpRunPopup());
        } else {
            Activities.a(CallAppApplication.get(), new Intent(CallAppApplication.get(), BackupSetupActivity.class));
        }
    }

    public static final void a(List<String> listPath, List<? extends BackupFileType> fileType) {
        p.d(listPath, "listPath");
        p.d(fileType, "fileType");
        for (BackupFileType backupFileType : fileType) {
            int i = WhenMappings.f14099a[backupFileType.ordinal()];
            if (i == 1) {
                CallRecorderManager.get();
                CallRecorderManager.a(listPath);
            } else if (i == 2) {
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f14492a;
                PersonalStoreItemDataManager.Companion.b(listPath);
            } else if (i == 3) {
                e();
            }
        }
    }

    public static final void a(boolean z) {
        if (z) {
            FeedbackManager.get().a(Activities.getString(2131886306), (Integer) null);
            if (!Prefs.hV.get().booleanValue()) {
                BackupWorker.Companion companion = BackupWorker.f17021a;
                BackupWorker.Companion.a();
            }
            BackupWorker.Companion companion2 = BackupWorker.f17021a;
            BackupWorker.Companion.a(true);
            return;
        }
        BackupWorker.Companion companion3 = BackupWorker.f17021a;
        BackupWorker.Companion.a();
        if (!d()) {
            BackupWorker.Companion companion4 = BackupWorker.f17021a;
            BackupWorker.Companion.a(false);
        }
    }

    public static final String b(String oldFileName) {
        p.d(oldFileName, "oldFileName");
        StringBuilder sb = new StringBuilder();
        int length = oldFileName.length();
        for (int i = 0; i < length; i++) {
            char charAt = oldFileName.charAt(i);
            if (Character.isLetterOrDigit(charAt)) {
                sb.append(charAt);
            } else {
                sb.append("_");
            }
        }
        String sb2 = sb.toString();
        p.b(sb2, "sb.toString()");
        return sb2;
    }

    public static final void b() {
        if (isAllowToRunBackup() && isBackupAsScheduleIsValid()) {
            List<t> list = j.b(CallAppApplication.get()).b("TAG_PERIODIC_DELAY_BACKUP").get();
            CallAppDailyWorker.Companion companion = CallAppDailyWorker.f17024a;
            if (CallAppDailyWorker.Companion.a(list)) {
                a(false);
            }
        }
    }

    public static final void c() {
        Prefs.hK.set(BackupViaType.UN_KNOWN);
        Prefs.hW.set(null);
        Prefs.hJ.set(null);
        Prefs.hS.set(Boolean.FALSE);
        Prefs.hV.set(Boolean.FALSE);
        Prefs.hR.set(Boolean.FALSE);
        BackupWorker.Companion companion = BackupWorker.f17021a;
        BackupWorker.Companion.b();
        new Task() { // from class: com.callapp.contacts.api.helper.backup.BackupUtils$logoutAndStopAllBackups$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                GoogleDriveHelper.f14115c.get().d();
                DropBoxHelper.f14111c.get().d();
            }
        }.execute();
    }

    private static boolean d() {
        String[] strArr = Prefs.hW.get();
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (p.a((Object) ((BackupViaType) Prefs.hK.get()).name(), (Object) str)) {
                return true;
            }
        }
        return false;
    }

    private static void e() {
        File file = new File(IoUtils.getCacheFolder(), "contacts");
        if (file.exists()) {
            f.a(file);
        }
    }

    public static final Intent getBackupSettingsIntent() {
        Intent intent = new Intent(CallAppApplication.get(), SettingsActivity.class);
        intent.putExtra("backup_settings", true);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0098 A[Catch: Exception -> 0x0168, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0168, blocks: (B:3:0x0008, B:5:0x0028, B:7:0x0051, B:9:0x0059, B:11:0x007e, B:18:0x0098, B:20:0x00a4, B:22:0x00b2, B:24:0x00c6, B:26:0x00e7, B:28:0x0104, B:29:0x010e, B:29:0x010e, B:30:0x0111, B:31:0x015f), top: B:36:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c6 A[Catch: Exception -> 0x0168, TRY_ENTER, TryCatch #0 {Exception -> 0x0168, blocks: (B:3:0x0008, B:5:0x0028, B:7:0x0051, B:9:0x0059, B:11:0x007e, B:18:0x0098, B:20:0x00a4, B:22:0x00b2, B:24:0x00c6, B:26:0x00e7, B:28:0x0104, B:29:0x010e, B:29:0x010e, B:30:0x0111, B:31:0x015f), top: B:36:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0104 A[Catch: Exception -> 0x0168, TRY_ENTER, TryCatch #0 {Exception -> 0x0168, blocks: (B:3:0x0008, B:5:0x0028, B:7:0x0051, B:9:0x0059, B:11:0x007e, B:18:0x0098, B:20:0x00a4, B:22:0x00b2, B:24:0x00c6, B:26:0x00e7, B:28:0x0104, B:29:0x010e, B:29:0x010e, B:30:0x0111, B:31:0x015f), top: B:36:0x0008 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String getCallLogCsv() {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.backup.BackupUtils.getCallLogCsv():java.lang.String");
    }

    private static final BackUpFileData getCallsLogFileCSV() {
        File createTempFile = File.createTempFile("callLog", ".csv");
        if (createTempFile == null) {
            return null;
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(createTempFile));
        bufferedWriter.write(getCallLogCsv());
        bufferedWriter.close();
        String path = createTempFile.getPath();
        p.b(path, "it.path");
        return new BackUpFileData(path, "call_log_" + a(new Date(), "dd_MM_yyyy") + ".csv");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<com.callapp.contacts.api.helper.backup.BackUpFileData> getContactVCards() {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.backup.BackupUtils.getContactVCards():java.util.List");
    }

    public static final boolean isAllowToRunBackup() {
        Boolean bool = Prefs.cJ.get();
        p.b(bool, "Prefs.isPremium.get()");
        if (bool.booleanValue()) {
            return true;
        }
        Boolean bool2 = Prefs.hQ.get();
        p.b(bool2, "Prefs.hasBackupPlan.get()");
        return bool2.booleanValue();
    }

    public static final boolean isAnyBackupFilesChosen() {
        for (BooleanPref booleanPref : f14098b) {
            Boolean bool = booleanPref.get();
            p.b(bool, "pref.get()");
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isBackupAsScheduleIsValid() {
        Boolean bool = Prefs.hS.get();
        p.b(bool, "Prefs.completeBackupSettings.get()");
        return bool.booleanValue() && isBackupViaChosen() && isAnyBackupFilesChosen();
    }

    public static final boolean isBackupViaChosen() {
        return ((BackupViaType) Prefs.hK.get()) != BackupViaType.UN_KNOWN;
    }
}
