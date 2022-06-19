package com.callapp.contacts.api.helper.backup;

import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.ContactsContract;
import androidx.work.C3163t;
import androidx.work.impl.C3068j;
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
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.C18538n;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18405d;
import kotlin.p533io.C18452f;
import okhttp3.internal.Util;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��j\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0007J\b\u0010\u0019\u001a\u00020\u001aH\u0007J\b\u0010\u001b\u001a\u00020\u0004H\u0007J\n\u0010\u001c\u001a\u0004\u0018\u00010\u0016H\u0003J\u000e\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0007J \u0010\u001e\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010 \u0012\u0006\u0012\u0004\u0018\u00010!0\u001f2\u0006\u0010\"\u001a\u00020#H\u0002J\b\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020%H\u0007J\b\u0010'\u001a\u00020%H\u0007J\b\u0010(\u001a\u00020%H\u0007J\b\u0010)\u001a\u00020%H\u0007J\b\u0010*\u001a\u00020\u0011H\u0007J\u0012\u0010+\u001a\u00020\u00112\b\b\u0002\u0010,\u001a\u00020\u0004H\u0007J$\u0010-\u001a\u00020\u00112\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00040\u00152\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00180\u0015H\u0007J\u0010\u00100\u001a\u00020\u00112\u0006\u00101\u001a\u00020%H\u0007J\b\u00102\u001a\u00020\u0011H\u0007J\u001c\u00103\u001a\u00020\u00042\b\u00104\u001a\u0004\u0018\u0001052\b\b\u0002\u00106\u001a\u00020\u0004H\u0007J\u001a\u00103\u001a\u00020\u00042\u0006\u00107\u001a\u0002082\b\b\u0002\u00106\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001e\u0010\u000b\u001a\u0010\u0012\f\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000f¨\u00069"}, m4298d2 = {"Lcom/callapp/contacts/api/helper/backup/BackupUtils;", "", "()V", "CSV_EXTENSION", "", "FOLDER_NAME", "MP4_EXTENSION", "TAG", "VCARD_EXTENSION", "VIDEO_RINGTONE_NAME", "ZIP_FILE_NAME", "backupFilesTypePref", "", "Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;", "kotlin.jvm.PlatformType", "[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;", "deleteTempFolder", "", "formatToValidFileName", "oldFileName", "getBackupFilesData", "", "Lcom/callapp/contacts/api/helper/backup/BackUpFileData;", "type", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "getBackupSettingsIntent", "Landroid/content/Intent;", "getCallLogCsv", "getCallsLogFileCSV", "getContactVCards", "getFileBuffer", "Lkotlin/Pair;", "Ljava/io/FileInputStream;", "", "uri", "Landroid/net/Uri;", "hasCompleteBackupOnce", "", "isAllowToRunBackup", "isAnyBackupFilesChosen", "isBackupAsScheduleIsValid", "isBackupViaChosen", "logoutAndStopAllBackups", "onBackupMenuClicked", Constants.EXTRA_ENTRY_POINT, "onCompleteUpload", "listPath", "fileType", "onStartBackupClicked", "now", "runBackupWorkerIfNeeded", "toDateStr", "date", "Ljava/util/Date;", "format", "time", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupUtils.class */
public final class BackupUtils {

    /* renamed from: a */
    public static final BackupUtils f24747a = new BackupUtils();

    /* renamed from: b */
    private static final BooleanPref[] f24748b = {Prefs.f26608hN, Prefs.f26610hP, Prefs.f26607hM, Prefs.f26609hO};

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/backup/BackupUtils$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24749a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f24750b;

        static {
            int[] iArr = new int[BackupFileType.values().length];
            f24749a = iArr;
            iArr[BackupFileType.RECORDINGS.ordinal()] = 1;
            iArr[BackupFileType.VIDEO_RINGTONES.ordinal()] = 2;
            iArr[BackupFileType.CONTACTS.ordinal()] = 3;
            iArr[BackupFileType.CALLLOGS.ordinal()] = 4;
            iArr[BackupFileType.UN_SUPPORTED.ordinal()] = 5;
            int[] iArr2 = new int[BackupFileType.values().length];
            f24750b = iArr2;
            iArr2[BackupFileType.CALLLOGS.ordinal()] = 1;
            iArr2[BackupFileType.CONTACTS.ordinal()] = 2;
            iArr2[BackupFileType.RECORDINGS.ordinal()] = 3;
            iArr2[BackupFileType.VIDEO_RINGTONES.ordinal()] = 4;
        }
    }

    private BackupUtils() {
    }

    /* renamed from: a */
    public static final String m29300a(long j, String format) {
        C18524p.m3840d(format, "format");
        String format2 = new SimpleDateFormat(format).format(Long.valueOf(j));
        C18524p.m3843b(format2, "sdf.format(time)");
        return format2;
    }

    /* renamed from: a */
    public static final String m29295a(Date date, String format) {
        C18524p.m3840d(format, "format");
        if (date != null) {
            String format2 = new SimpleDateFormat(format).format(date);
            C18524p.m3843b(format2, "sdf.format(date)");
            return format2;
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0173, code lost:
        if (r0 == null) goto L28;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<com.callapp.contacts.api.helper.backup.BackUpFileData> m29298a(com.callapp.contacts.api.helper.backup.BackupFileType r6) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.api.helper.backup.BackupUtils.m29298a(com.callapp.contacts.api.helper.backup.BackupFileType):java.util.List");
    }

    /* renamed from: a */
    private static C18538n<FileInputStream, byte[]> m29299a(Uri uri) {
        Exception e;
        FileInputStream fileInputStream;
        byte[] bArr;
        byte[] bArr2;
        try {
            CallAppApplication callAppApplication = CallAppApplication.get();
            C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
            AssetFileDescriptor openAssetFileDescriptor = callAppApplication.getContentResolver().openAssetFileDescriptor(uri, "r");
            if (openAssetFileDescriptor != null) {
                FileInputStream createInputStream = openAssetFileDescriptor.createInputStream();
                try {
                    int declaredLength = (int) openAssetFileDescriptor.getDeclaredLength();
                    if (declaredLength >= 0) {
                        bArr2 = new byte[declaredLength];
                    } else {
                        CallAppApplication callAppApplication2 = CallAppApplication.get();
                        C18524p.m3843b(callAppApplication2, "CallAppApplication.get()");
                        ParcelFileDescriptor openFileDescriptor = callAppApplication2.getContentResolver().openFileDescriptor(uri, "r");
                        bArr2 = null;
                        if (openFileDescriptor != null) {
                            fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                            try {
                                bArr = new byte[fileInputStream.available()];
                            } catch (Exception e2) {
                                e = e2;
                                new StringBuilder("getFileBuffer ").append(e.getMessage());
                                CLog.m27606a("BackupWorker-BackupUtils");
                                return new C18538n<>(fileInputStream, null);
                            }
                        }
                    }
                    byte[] bArr3 = bArr2;
                    fileInputStream = createInputStream;
                    bArr = bArr3;
                } catch (Exception e3) {
                    fileInputStream = createInputStream;
                    e = e3;
                }
            } else {
                bArr = null;
                fileInputStream = null;
            }
            return new C18538n<>(fileInputStream, bArr);
        } catch (Exception e4) {
            e = e4;
            fileInputStream = null;
        }
    }

    /* renamed from: a */
    public static final void m29297a(String entryPoint) {
        C18524p.m3840d(entryPoint, "entryPoint");
        if (entryPoint.length() > 0) {
            AnalyticsManager.get().m28449a(Constants.BACKUP_CATEGORY, "ViewBackupScreen", entryPoint);
        }
        if (!isAllowToRunBackup()) {
            Activities.m27685a(CallAppApplication.get(), new Intent(CallAppApplication.get(), BackupPlansActivity.class));
        } else if (isBackupAsScheduleIsValid()) {
            PopupManager.get().m28209a(CallAppApplication.get(), new BackUpRunPopup());
        } else {
            Activities.m27685a(CallAppApplication.get(), new Intent(CallAppApplication.get(), BackupSetupActivity.class));
        }
    }

    /* renamed from: a */
    public static final void m29294a(List<String> listPath, List<? extends BackupFileType> fileType) {
        C18524p.m3840d(listPath, "listPath");
        C18524p.m3840d(fileType, "fileType");
        for (BackupFileType backupFileType : fileType) {
            int i = WhenMappings.f24749a[backupFileType.ordinal()];
            if (i == 1) {
                CallRecorderManager.get();
                CallRecorderManager.m27871a(listPath);
            } else if (i == 2) {
                PersonalStoreItemDataManager.Companion companion = PersonalStoreItemDataManager.f25278a;
                PersonalStoreItemDataManager.Companion.m28911b(listPath);
            } else if (i == 3) {
                m29288e();
            }
        }
    }

    /* renamed from: a */
    public static final void m29293a(boolean z) {
        if (z) {
            FeedbackManager.get().m28669a(Activities.getString(2131886306), (Integer) null);
            if (!Prefs.f26616hV.get().booleanValue()) {
                BackupWorker.Companion companion = BackupWorker.f29567a;
                BackupWorker.Companion.m26188a();
            }
            BackupWorker.Companion companion2 = BackupWorker.f29567a;
            BackupWorker.Companion.m26187a(true);
            return;
        }
        BackupWorker.Companion companion3 = BackupWorker.f29567a;
        BackupWorker.Companion.m26188a();
        if (m29289d()) {
            return;
        }
        BackupWorker.Companion companion4 = BackupWorker.f29567a;
        BackupWorker.Companion.m26187a(false);
    }

    /* renamed from: b */
    public static final String m29291b(String oldFileName) {
        C18524p.m3840d(oldFileName, "oldFileName");
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
        C18524p.m3843b(sb2, "sb.toString()");
        return sb2;
    }

    /* renamed from: b */
    public static final void m29292b() {
        if (!isAllowToRunBackup() || !isBackupAsScheduleIsValid()) {
            return;
        }
        List<C3163t> list = C3068j.m39359b(CallAppApplication.get()).mo39261b("TAG_PERIODIC_DELAY_BACKUP").get();
        CallAppDailyWorker.Companion companion = CallAppDailyWorker.f29570a;
        if (!CallAppDailyWorker.Companion.m26172a(list)) {
            return;
        }
        m29293a(false);
    }

    /* renamed from: c */
    public static final void m29290c() {
        Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
        Prefs.f26617hW.set(null);
        Prefs.f26604hJ.set(null);
        Prefs.f26613hS.set(Boolean.FALSE);
        Prefs.f26616hV.set(Boolean.FALSE);
        Prefs.f26612hR.set(Boolean.FALSE);
        BackupWorker.Companion companion = BackupWorker.f29567a;
        BackupWorker.Companion.m26186b();
        new Task() { // from class: com.callapp.contacts.api.helper.backup.BackupUtils$logoutAndStopAllBackups$1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                GoogleDriveHelper.f24766c.get().mo29271d();
                DropBoxHelper.f24761c.get().mo29271d();
            }
        }.execute();
    }

    /* renamed from: d */
    private static boolean m29289d() {
        String[] strArr = Prefs.f26617hW.get();
        if (strArr != null) {
            for (String str : strArr) {
                if (C18524p.m3850a((Object) ((BackupViaType) Prefs.f26605hK.get()).name(), (Object) str)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: e */
    private static void m29288e() {
        File file = new File(IoUtils.getCacheFolder(), "contacts");
        if (file.exists()) {
            C18452f.m3898a(file);
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
        if (createTempFile != null) {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(createTempFile));
            bufferedWriter.write(getCallLogCsv());
            bufferedWriter.close();
            String path = createTempFile.getPath();
            C18524p.m3843b(path, "it.path");
            return new BackUpFileData(path, "call_log_" + m29295a(new Date(), "dd_MM_yyyy") + ".csv");
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    public static final List<BackUpFileData> getContactVCards() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        CallAppApplication callAppApplication = CallAppApplication.get();
        C18524p.m3843b(callAppApplication, "CallAppApplication.get()");
        Cursor query = callAppApplication.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
        try {
            if (query != null) {
                try {
                    if (query.getCount() > 0) {
                        query.moveToFirst();
                        char c = 0;
                        do {
                            ?? r0 = query.getLong(query.getColumnIndex("contact_id"));
                            char c2 = c;
                            if (c != r0) {
                                String string = query.getString(query.getColumnIndex("lookup"));
                                C18524p.m3843b(string, "theCursor.getString(theC…act.Contacts.LOOKUP_KEY))");
                                Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_VCARD_URI, string);
                                C18524p.m3843b(withAppendedPath, "Uri.withAppendedPath(Con…ENT_VCARD_URI, lookupKey)");
                                C18538n<FileInputStream, byte[]> m29299a = m29299a(withAppendedPath);
                                FileInputStream fileInputStream = m29299a.f63624a;
                                byte[] bArr = m29299a.f63625b;
                                if (fileInputStream != null && bArr != null && fileInputStream.read(bArr) > 0) {
                                    String name = query.getString(query.getColumnIndex("display_name"));
                                    C18524p.m3843b(name, "name");
                                    File contactFile = IoUtils.m27508a("contacts" + File.separator + (m29291b(name) + ".vcf"));
                                    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(contactFile));
                                    bufferedWriter.write(new String(bArr, C18405d.f63516a));
                                    bufferedWriter.close();
                                    C18524p.m3843b(contactFile, "contactFile");
                                    arrayList2.add(contactFile.getPath());
                                }
                                if (fileInputStream != null) {
                                    Util.closeQuietly(fileInputStream);
                                }
                                c2 = r0;
                            }
                            c = c2;
                        } while (query.moveToNext());
                    }
                } catch (Exception e) {
                    new StringBuilder("Error while trying create getContactVCards ").append(e.getMessage());
                    CLog.m27606a("BackupWorker-BackupUtils");
                }
            }
            if (!arrayList2.isEmpty()) {
                File zipFile = IoUtils.m27508a("contacts" + File.separator + "contacts.zip");
                try {
                    List l = C18282n.m4110l(arrayList2);
                    C18524p.m3843b(zipFile, "zipFile");
                    IoUtils.m27506a(l, zipFile.getPath());
                    String path = zipFile.getPath();
                    C18524p.m3843b(path, "zipFile.path");
                    arrayList.add(new BackUpFileData(path, zipFile.getName()));
                } catch (IOException e2) {
                    new StringBuilder("Error while trying zip ").append(e2.getMessage());
                    CLog.m27606a("BackupWorker-BackupUtils");
                }
            }
            return arrayList;
        } finally {
            IoUtils.m27517a(query);
        }
    }

    public static final boolean isAllowToRunBackup() {
        Boolean bool = Prefs.f26339cJ.get();
        C18524p.m3843b(bool, "Prefs.isPremium.get()");
        if (!bool.booleanValue()) {
            Boolean bool2 = Prefs.f26611hQ.get();
            C18524p.m3843b(bool2, "Prefs.hasBackupPlan.get()");
            return bool2.booleanValue();
        }
        return true;
    }

    public static final boolean isAnyBackupFilesChosen() {
        for (BooleanPref booleanPref : f24748b) {
            Boolean bool = booleanPref.get();
            C18524p.m3843b(bool, "pref.get()");
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isBackupAsScheduleIsValid() {
        Boolean bool = Prefs.f26613hS.get();
        C18524p.m3843b(bool, "Prefs.completeBackupSettings.get()");
        return bool.booleanValue() && isBackupViaChosen() && isAnyBackupFilesChosen();
    }

    public static final boolean isBackupViaChosen() {
        return ((BackupViaType) Prefs.f26605hK.get()) != BackupViaType.UN_KNOWN;
    }
}
