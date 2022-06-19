package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.BitmapFactory;
import androidx.core.app.C0745g;
import androidx.work.C2988b;
import androidx.work.C2992d;
import androidx.work.C3148m;
import androidx.work.EnumC3147l;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.api.helper.backup.BackUpData;
import com.callapp.contacts.api.helper.backup.BackUpFileData;
import com.callapp.contacts.api.helper.backup.BackUpResultData;
import com.callapp.contacts.api.helper.backup.BackupFileType;
import com.callapp.contacts.api.helper.backup.BackupUploadFileData;
import com.callapp.contacts.api.helper.backup.BackupUtils;
import com.callapp.contacts.api.helper.backup.BackupViaType;
import com.callapp.contacts.api.helper.backup.BaseBackup;
import com.callapp.contacts.api.helper.backup.DisconnectException;
import com.callapp.contacts.api.helper.backup.NotEnoughSpaceException;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.ArrayPref;
import com.callapp.contacts.manager.preferences.prefs.DatePref;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001a\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J$\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u001a\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J(\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0002¨\u0006\u001f"}, m4298d2 = {"Lcom/callapp/contacts/workers/BackupWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "getFileTypeToBackup", "", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "onCompleteUpload", "via", "", "backupScheduleType", "onDisconnectException", "notifyErrors", "", "backupHelper", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "onNotEnoughSpaceException", "onTaskFinished", "", "onUploadError", "failedFiles", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "parseBackupResults", "backUpResultData", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BackupWorker.class */
public final class BackupWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29567a = new Companion(null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0007J\u0012\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/callapp/contacts/workers/BackupWorker$Companion;", "", "()V", "BACKUP_PARAM_SCHEDULE_AUTO", "", "BACKUP_PARAM_SCHEDULE_MANUAL", "BACKUP_PARAM_SCHEDULE_TYPE", "BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS", "TAG", "TAG_ONE_TIME_BACKUP", "TAG_PERIODIC_BACKUP", "TAG_PERIODIC_DELAY_BACKUP", "scheduleDelayJob", "", "scheduleOneTimeJob", "showErrorsNotifications", "", "stopAllBackupTasks", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BackupWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static void m26188a() {
            StringBuilder sb = new StringBuilder("schedulePeriodicJob via ");
            sb.append((BackupViaType) Prefs.f26605hK.get());
            sb.append(" days:");
            sb.append(Prefs.f26606hL.get());
            sb.append(" calllog: ");
            sb.append(Prefs.f26608hN.get());
            sb.append(" contacts:  ");
            sb.append(Prefs.f26607hM.get());
            sb.append(" videoringtone: ");
            sb.append(Prefs.f26609hO.get());
            sb.append(" rec: ");
            sb.append(Prefs.f26610hP.get());
            CLog.m27606a("BackupWorker");
            C2988b.C2989a c2989a = new C2988b.C2989a();
            c2989a.f11140c = EnumC3147l.CONNECTED;
            c2989a.f11138a = true;
            C2988b m39516a = c2989a.m39516a();
            C18524p.m3843b(m39516a, "Constraints.Builder()\n  …                 .build()");
            C2992d m39502a = new C2992d.C2993a().m39497a("BACKUP_PARAM_SCHEDULE_TYPE", "Auto").m39496a("BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS", true).m39502a();
            C18524p.m3843b(m39502a, "Data.Builder().putString…IFICATIONS, true).build()");
            C3148m c = new C3148m.C3149a(BackupWorker.class).m39256a("TAG_PERIODIC_DELAY_BACKUP").m39258a(m39516a).m39257a(m39502a).m39259a(Prefs.f26606hL.get().intValue(), TimeUnit.DAYS).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequest.Build…                 .build()");
            C3148m c3148m = c;
            C3068j m39359b = C3068j.m39359b(CallAppApplication.get());
            C18524p.m3843b(m39359b, "WorkManager.getInstance(CallAppApplication.get())");
            m39359b.mo39264a("TAG_PERIODIC_DELAY_BACKUP");
            Prefs.f26614hT.set(0);
            Prefs.f26616hV.set(Boolean.TRUE);
            m39359b.m39265a(c3148m);
        }

        /* renamed from: a */
        public static void m26187a(boolean z) {
            StringBuilder sb = new StringBuilder("scheduleOneTimeJob via ");
            sb.append((BackupViaType) Prefs.f26605hK.get());
            sb.append(" days:");
            sb.append(Prefs.f26606hL.get());
            sb.append(" calllog: ");
            sb.append(Prefs.f26608hN.get());
            sb.append(" contacts:  ");
            sb.append(Prefs.f26607hM.get());
            sb.append(" videoringtone: ");
            sb.append(Prefs.f26609hO.get());
            sb.append(" rec: ");
            sb.append(Prefs.f26610hP.get());
            CLog.m27606a("BackupWorker");
            C2992d m39502a = new C2992d.C2993a().m39497a("BACKUP_PARAM_SCHEDULE_TYPE", "Manual").m39496a("BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS", z).m39502a();
            C18524p.m3843b(m39502a, "Data.Builder().putString…orsNotifications).build()");
            C3148m c = new C3148m.C3149a(BackupWorker.class).m39256a("TAG_ONE_TIME_BACKUP").m39257a(m39502a).m39254c();
            C18524p.m3843b(c, "OneTimeWorkRequest.Build…                 .build()");
            C3148m c3148m = c;
            C3068j m39359b = C3068j.m39359b(CallAppApplication.get());
            C18524p.m3843b(m39359b, "WorkManager.getInstance(CallAppApplication.get())");
            m39359b.mo39264a("TAG_ONE_TIME_BACKUP");
            Prefs.f26614hT.set(0);
            m39359b.m39265a(c3148m);
        }

        /* renamed from: b */
        public static void m26186b() {
            C3068j m39359b = C3068j.m39359b(CallAppApplication.get());
            C18524p.m3843b(m39359b, "WorkManager.getInstance(CallAppApplication.get())");
            m39359b.mo39264a("TAG_ONE_TIME_BACKUP");
            m39359b.mo39264a("TAG_PERIODIC_DELAY_BACKUP");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    /* renamed from: a */
    private static ListenableWorker.AbstractC2980a m26190a(boolean z, BaseBackup baseBackup, String str) {
        CLog.m27606a("BackupWorker");
        if (z) {
            CLog.m27606a("BackupWorker");
            NotificationManager.get().m28551a(baseBackup != null ? baseBackup.getName() : "");
        }
        if (baseBackup != null) {
            baseBackup.mo29271d();
        }
        Prefs.f26605hK.set(BackupViaType.UN_KNOWN);
        m26191a(str);
        ListenableWorker.AbstractC2980a.C2981a c2981a = new ListenableWorker.AbstractC2980a.C2981a();
        C18524p.m3843b(c2981a, "Result.failure()");
        return c2981a;
    }

    /* renamed from: a */
    private final ListenableWorker.AbstractC2980a m26189a(boolean z, List<BackupUploadFileData> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" doUploadSync failed to upload files ");
        List<BackupUploadFileData> list2 = list;
        ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
        for (BackupUploadFileData backupUploadFileData : list2) {
            arrayList.add(backupUploadFileData.getPath());
        }
        sb.append(arrayList);
        CLog.m27606a("BackupWorker");
        Integer num = Prefs.f26614hT.get();
        if (num.intValue() >= 2) {
            CLog.m27606a("BackupWorker");
            if (z) {
                CLog.m27606a("BackupWorker");
                NotificationManager.get().m28543a(false, true);
            }
            Prefs.f26614hT.set(0);
            m26191a(str);
            ListenableWorker.AbstractC2980a.C2981a c2981a = new ListenableWorker.AbstractC2980a.C2981a();
            C18524p.m3843b(c2981a, "Result.failure()");
            return c2981a;
        }
        if (num != null && num.intValue() == 0) {
            CLog.m27606a("BackupWorker");
            if (z) {
                CLog.m27606a("BackupWorker");
                NotificationManager.get().m28543a(false, false);
            }
        }
        Prefs.f26614hT.m28169b(1);
        ListenableWorker.AbstractC2980a.C2982b c2982b = new ListenableWorker.AbstractC2980a.C2982b();
        C18524p.m3843b(c2982b, "Result.retry()");
        return c2982b;
    }

    /* renamed from: a */
    private static void m26191a(String str) {
        if (C18524p.m3850a((Object) str, (Object) "Auto")) {
            Companion.m26188a();
        }
    }

    /* renamed from: a */
    private static boolean m26192a(BackUpResultData backUpResultData) {
        List<BackupUploadFileData> uploadedFiles = backUpResultData.getUploadedFiles();
        if (!uploadedFiles.isEmpty()) {
            List<BackupUploadFileData> list = uploadedFiles;
            for (BackupUploadFileData backupUploadFileData : list) {
                StringBuilder sb = new StringBuilder("complete upload ");
                sb.append(backupUploadFileData.getFileType());
                sb.append(" path: ");
                sb.append(backupUploadFileData.getPath());
                sb.append(" [");
                sb.append(backupUploadFileData.getMessage().name());
                sb.append(']');
                CLog.m27606a("BackupWorker");
            }
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (BackupUploadFileData backupUploadFileData2 : list) {
                arrayList.add(backupUploadFileData2.getFileType());
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) list, 10));
            for (BackupUploadFileData backupUploadFileData3 : list) {
                arrayList3.add(backupUploadFileData3.getPath());
            }
            ArrayList arrayList4 = arrayList3;
            StringBuilder sb2 = new StringBuilder("complete upload ");
            sb2.append(uploadedFiles.size());
            sb2.append(" files of ");
            sb2.append(arrayList2);
            CLog.m27606a("BackupWorker");
            BackupUtils.m29294a(arrayList4, arrayList2);
        }
        List<BackupUploadFileData> failedFiles = backUpResultData.getFailedFiles();
        if (!failedFiles.isEmpty()) {
            for (BackupUploadFileData backupUploadFileData4 : failedFiles) {
                StringBuilder sb3 = new StringBuilder("failed upload ");
                sb3.append(backupUploadFileData4.getFileType());
                sb3.append(" path: ");
                sb3.append(backupUploadFileData4.getPath());
                CLog.m27606a("BackupWorker");
            }
            return false;
        }
        return true;
    }

    private final List<BackupFileType> getFileTypeToBackup() {
        ArrayList arrayList = new ArrayList();
        Boolean bool = Prefs.f26610hP.get();
        C18524p.m3843b(bool, "Prefs.backupRecording.get()");
        if (bool.booleanValue()) {
            arrayList.add(BackupFileType.RECORDINGS);
        }
        Boolean bool2 = Prefs.f26608hN.get();
        C18524p.m3843b(bool2, "Prefs.backupCallLog.get()");
        if (bool2.booleanValue()) {
            arrayList.add(BackupFileType.CALLLOGS);
        }
        Boolean bool3 = Prefs.f26607hM.get();
        C18524p.m3843b(bool3, "Prefs.backupContacts.get()");
        if (bool3.booleanValue()) {
            arrayList.add(BackupFileType.CONTACTS);
        }
        Boolean bool4 = Prefs.f26609hO.get();
        C18524p.m3843b(bool4, "Prefs.backupVideoRingTones.get()");
        if (bool4.booleanValue()) {
            arrayList.add(BackupFileType.VIDEO_RINGTONES);
        }
        return arrayList;
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        String m29295a;
        String m39512a = getInputData().m39512a("BACKUP_PARAM_SCHEDULE_TYPE");
        Object obj = getInputData().f11151b.get("BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS");
        boolean booleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.m28449a(Constants.BACKUP_CATEGORY, "BackupStarted", "drive:" + ((BackupViaType) Prefs.f26605hK.get()).name() + " type:" + m39512a);
        Calendar now = Calendar.getInstance();
        DatePref datePref = Prefs.f26618hX;
        C18524p.m3843b(now, "now");
        datePref.set(now.getTime());
        StringBuilder sb = new StringBuilder("BackupWorker doing Work for ");
        sb.append(m39512a);
        sb.append(" ! on ");
        m29295a = BackupUtils.m29295a(new Date(), "dd/MM/yyyy hh:mm:ss");
        sb.append(m29295a);
        CLog.m27606a("BackupWorker");
        ArrayList arrayList = new ArrayList();
        for (BackupFileType backupFileType : getFileTypeToBackup()) {
            List<BackUpFileData> m29298a = BackupUtils.m29298a(backupFileType);
            StringBuilder sb2 = new StringBuilder("BackupWorker found  ");
            sb2.append(m29298a.size());
            sb2.append(" for type ");
            sb2.append(backupFileType.name());
            sb2.append(" to backup");
            CLog.m27606a("BackupWorker");
            if (true ^ m29298a.isEmpty()) {
                String folderName = backupFileType.getFolderName();
                C18524p.m3843b(folderName, "fileType.folderName");
                arrayList.add(new BackUpData(folderName, m29298a, backupFileType.shouldDeleteFolder(), backupFileType));
            }
        }
        String name = ((BackupViaType) Prefs.f26605hK.get()).name();
        BaseBackup backupHelper = BaseBackup.f24751b.getBackupHelper();
        if (backupHelper != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(backupHelper.getClass().getSimpleName());
            sb3.append(" trying to backup ");
            ArrayList<BackUpData> arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(C18282n.m4163a((Iterable) arrayList2, 10));
            for (BackUpData backUpData : arrayList2) {
                arrayList3.add(backUpData.getFileType());
            }
            sb3.append(arrayList3);
            sb3.append(' ');
            sb3.append(arrayList.size());
            sb3.append(" files");
            CLog.m27606a("BackupWorker");
            try {
                BackUpResultData mo29273a = backupHelper.mo29273a(arrayList);
                if (!m26192a(mo29273a)) {
                    try {
                        return m26189a(booleanValue, mo29273a.getFailedFiles(), m39512a);
                    } catch (DisconnectException e) {
                        return m26190a(booleanValue, backupHelper, m39512a);
                    } catch (NotEnoughSpaceException e2) {
                        CLog.m27606a("BackupWorker");
                        if (booleanValue) {
                            CLog.m27606a("BackupWorker");
                            NotificationManager.get().m28543a(true, false);
                        }
                        m26191a(m39512a);
                        ListenableWorker.AbstractC2980a.C2981a c2981a = new ListenableWorker.AbstractC2980a.C2981a();
                        C18524p.m3843b(c2981a, "Result.failure()");
                        return c2981a;
                    }
                } else if (backupHelper != null) {
                    CLog.m27606a("BackupWorker");
                    if (C18524p.m3850a((Object) "Manual", (Object) m39512a)) {
                        CLog.m27606a("BackupWorker");
                        NotificationManager notificationManager = NotificationManager.get();
                        String string = Activities.getString(2131886463);
                        String string2 = Activities.getString(2131886295);
                        C0745g.C0751e m28557a = notificationManager.m28557a(NotificationManager.NotificationChannelEnum.BACKUP_NOTIFICATION_CHANNEL);
                        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, BackupUtils.getBackupSettingsIntent(), 134217728);
                        C0745g.C0751e m44570a = m28557a.m44571a(string).m44567b(string2).m44581a(2131231569).m44576a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131231454)).m44570a(true);
                        m44570a.f3335f = activity;
                        m44570a.f3328Q = true;
                        notificationManager.m28573a(60, m28557a);
                    }
                    Calendar now2 = Calendar.getInstance();
                    DatePref datePref2 = Prefs.f26604hJ;
                    C18524p.m3843b(now2, "now");
                    datePref2.set(now2.getTime());
                    String[] strArr = Prefs.f26617hW.get();
                    if (strArr != null) {
                        Set m = C18273i.m4179m(strArr);
                        m.add(name);
                        ArrayPref arrayPref = Prefs.f26617hW;
                        Object[] array = m.toArray(new String[0]);
                        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                        arrayPref.set(array);
                    } else {
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.add(name);
                        ArrayPref arrayPref2 = Prefs.f26617hW;
                        Object[] array2 = arrayList4.toArray(new String[0]);
                        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                        arrayPref2.set(array2);
                    }
                    AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                    analyticsManager2.m28449a(Constants.BACKUP_CATEGORY, "BackupCompleted", "drive:" + ((BackupViaType) Prefs.f26605hK.get()).name() + " type:" + m39512a);
                    m26191a(m39512a);
                    ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
                    C18524p.m3843b(c2983c, "Result.success()");
                    return c2983c;
                }
            } catch (DisconnectException e3) {
            } catch (NotEnoughSpaceException e4) {
            }
        }
        CLog.m27606a("BackupWorker");
        return m26190a(booleanValue, (BaseBackup) null, m39512a);
    }
}
