package com.callapp.contacts.workers;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.BitmapFactory;
import androidx.core.app.g;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.b;
import androidx.work.d;
import androidx.work.impl.j;
import androidx.work.l;
import androidx.work.m;
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
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001a\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J$\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u001a\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J(\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00122\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH\u0002¨\u0006\u001f"}, d2 = {"Lcom/callapp/contacts/workers/BackupWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "getFileTypeToBackup", "", "Lcom/callapp/contacts/api/helper/backup/BackupFileType;", "onCompleteUpload", "via", "", "backupScheduleType", "onDisconnectException", "notifyErrors", "", "backupHelper", "Lcom/callapp/contacts/api/helper/backup/BaseBackup;", "onNotEnoughSpaceException", "onTaskFinished", "", "onUploadError", "failedFiles", "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;", "parseBackupResults", "backUpResultData", "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BackupWorker.class */
public final class BackupWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17021a = new Companion(null);

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\f\u001a\u00020\rH\u0007J\u0012\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/callapp/contacts/workers/BackupWorker$Companion;", "", "()V", "BACKUP_PARAM_SCHEDULE_AUTO", "", "BACKUP_PARAM_SCHEDULE_MANUAL", "BACKUP_PARAM_SCHEDULE_TYPE", "BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS", "TAG", "TAG_ONE_TIME_BACKUP", "TAG_PERIODIC_BACKUP", "TAG_PERIODIC_DELAY_BACKUP", "scheduleDelayJob", "", "scheduleOneTimeJob", "showErrorsNotifications", "", "stopAllBackupTasks", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/BackupWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static void a() {
            StringBuilder sb = new StringBuilder("schedulePeriodicJob via ");
            sb.append((BackupViaType) Prefs.hK.get());
            sb.append(" days:");
            sb.append(Prefs.hL.get());
            sb.append(" calllog: ");
            sb.append(Prefs.hN.get());
            sb.append(" contacts:  ");
            sb.append(Prefs.hM.get());
            sb.append(" videoringtone: ");
            sb.append(Prefs.hO.get());
            sb.append(" rec: ");
            sb.append(Prefs.hP.get());
            CLog.a("BackupWorker");
            b.a aVar = new b.a();
            aVar.f5971c = l.CONNECTED;
            aVar.f5969a = true;
            b a2 = aVar.a();
            p.b(a2, "Constraints.Builder()\n  …                 .build()");
            d a3 = new d.a().a("BACKUP_PARAM_SCHEDULE_TYPE", "Auto").a("BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS", true).a();
            p.b(a3, "Data.Builder().putString…IFICATIONS, true).build()");
            m c2 = new m.a(BackupWorker.class).a("TAG_PERIODIC_DELAY_BACKUP").a(a2).a(a3).a(Prefs.hL.get().intValue(), TimeUnit.DAYS).c();
            p.b(c2, "OneTimeWorkRequest.Build…                 .build()");
            m mVar = c2;
            j b2 = j.b(CallAppApplication.get());
            p.b(b2, "WorkManager.getInstance(CallAppApplication.get())");
            b2.a("TAG_PERIODIC_DELAY_BACKUP");
            Prefs.hT.set(0);
            Prefs.hV.set(Boolean.TRUE);
            b2.a(mVar);
        }

        public static void a(boolean z) {
            StringBuilder sb = new StringBuilder("scheduleOneTimeJob via ");
            sb.append((BackupViaType) Prefs.hK.get());
            sb.append(" days:");
            sb.append(Prefs.hL.get());
            sb.append(" calllog: ");
            sb.append(Prefs.hN.get());
            sb.append(" contacts:  ");
            sb.append(Prefs.hM.get());
            sb.append(" videoringtone: ");
            sb.append(Prefs.hO.get());
            sb.append(" rec: ");
            sb.append(Prefs.hP.get());
            CLog.a("BackupWorker");
            d a2 = new d.a().a("BACKUP_PARAM_SCHEDULE_TYPE", "Manual").a("BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS", z).a();
            p.b(a2, "Data.Builder().putString…orsNotifications).build()");
            m c2 = new m.a(BackupWorker.class).a("TAG_ONE_TIME_BACKUP").a(a2).c();
            p.b(c2, "OneTimeWorkRequest.Build…                 .build()");
            m mVar = c2;
            j b2 = j.b(CallAppApplication.get());
            p.b(b2, "WorkManager.getInstance(CallAppApplication.get())");
            b2.a("TAG_ONE_TIME_BACKUP");
            Prefs.hT.set(0);
            b2.a(mVar);
        }

        public static void b() {
            j b2 = j.b(CallAppApplication.get());
            p.b(b2, "WorkManager.getInstance(CallAppApplication.get())");
            b2.a("TAG_ONE_TIME_BACKUP");
            b2.a("TAG_PERIODIC_DELAY_BACKUP");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    private static ListenableWorker.a a(boolean z, BaseBackup baseBackup, String str) {
        CLog.a("BackupWorker");
        if (z) {
            CLog.a("BackupWorker");
            NotificationManager.get().a(baseBackup != null ? baseBackup.getName() : "");
        }
        if (baseBackup != null) {
            baseBackup.d();
        }
        Prefs.hK.set(BackupViaType.UN_KNOWN);
        a(str);
        ListenableWorker.a.C0121a aVar = new ListenableWorker.a.C0121a();
        p.b(aVar, "Result.failure()");
        return aVar;
    }

    private final ListenableWorker.a a(boolean z, List<BackupUploadFileData> list, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" doUploadSync failed to upload files ");
        List<BackupUploadFileData> list2 = list;
        ArrayList arrayList = new ArrayList(n.a((Iterable) list2, 10));
        for (BackupUploadFileData backupUploadFileData : list2) {
            arrayList.add(backupUploadFileData.getPath());
        }
        sb.append(arrayList);
        CLog.a("BackupWorker");
        Integer num = Prefs.hT.get();
        if (num.intValue() >= 2) {
            CLog.a("BackupWorker");
            if (z) {
                CLog.a("BackupWorker");
                NotificationManager.get().a(false, true);
            }
            Prefs.hT.set(0);
            a(str);
            ListenableWorker.a.C0121a aVar = new ListenableWorker.a.C0121a();
            p.b(aVar, "Result.failure()");
            return aVar;
        }
        if (num != null && num.intValue() == 0) {
            CLog.a("BackupWorker");
            if (z) {
                CLog.a("BackupWorker");
                NotificationManager.get().a(false, false);
            }
        }
        Prefs.hT.b(1);
        ListenableWorker.a.b bVar = new ListenableWorker.a.b();
        p.b(bVar, "Result.retry()");
        return bVar;
    }

    private static void a(String str) {
        if (p.a((Object) str, (Object) "Auto")) {
            Companion.a();
        }
    }

    private static boolean a(BackUpResultData backUpResultData) {
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
                CLog.a("BackupWorker");
            }
            ArrayList arrayList = new ArrayList(n.a((Iterable) list, 10));
            for (BackupUploadFileData backupUploadFileData2 : list) {
                arrayList.add(backupUploadFileData2.getFileType());
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(n.a((Iterable) list, 10));
            for (BackupUploadFileData backupUploadFileData3 : list) {
                arrayList3.add(backupUploadFileData3.getPath());
            }
            ArrayList arrayList4 = arrayList3;
            StringBuilder sb2 = new StringBuilder("complete upload ");
            sb2.append(uploadedFiles.size());
            sb2.append(" files of ");
            sb2.append(arrayList2);
            CLog.a("BackupWorker");
            BackupUtils.a(arrayList4, arrayList2);
        }
        List<BackupUploadFileData> failedFiles = backUpResultData.getFailedFiles();
        if (!(!failedFiles.isEmpty())) {
            return true;
        }
        for (BackupUploadFileData backupUploadFileData4 : failedFiles) {
            StringBuilder sb3 = new StringBuilder("failed upload ");
            sb3.append(backupUploadFileData4.getFileType());
            sb3.append(" path: ");
            sb3.append(backupUploadFileData4.getPath());
            CLog.a("BackupWorker");
        }
        return false;
    }

    private final List<BackupFileType> getFileTypeToBackup() {
        ArrayList arrayList = new ArrayList();
        Boolean bool = Prefs.hP.get();
        p.b(bool, "Prefs.backupRecording.get()");
        if (bool.booleanValue()) {
            arrayList.add(BackupFileType.RECORDINGS);
        }
        Boolean bool2 = Prefs.hN.get();
        p.b(bool2, "Prefs.backupCallLog.get()");
        if (bool2.booleanValue()) {
            arrayList.add(BackupFileType.CALLLOGS);
        }
        Boolean bool3 = Prefs.hM.get();
        p.b(bool3, "Prefs.backupContacts.get()");
        if (bool3.booleanValue()) {
            arrayList.add(BackupFileType.CONTACTS);
        }
        Boolean bool4 = Prefs.hO.get();
        p.b(bool4, "Prefs.backupVideoRingTones.get()");
        if (bool4.booleanValue()) {
            arrayList.add(BackupFileType.VIDEO_RINGTONES);
        }
        return arrayList;
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        String a2;
        String a3 = getInputData().a("BACKUP_PARAM_SCHEDULE_TYPE");
        Object obj = getInputData().f5978b.get("BACKUP_PARAM_SHOW_ERRORS_NOTIFICATIONS");
        boolean booleanValue = obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false;
        AnalyticsManager analyticsManager = AnalyticsManager.get();
        analyticsManager.a(Constants.BACKUP_CATEGORY, "BackupStarted", "drive:" + ((BackupViaType) Prefs.hK.get()).name() + " type:" + a3);
        Calendar now = Calendar.getInstance();
        DatePref datePref = Prefs.hX;
        p.b(now, "now");
        datePref.set(now.getTime());
        StringBuilder sb = new StringBuilder("BackupWorker doing Work for ");
        sb.append(a3);
        sb.append(" ! on ");
        a2 = BackupUtils.a(new Date(), "dd/MM/yyyy hh:mm:ss");
        sb.append(a2);
        CLog.a("BackupWorker");
        ArrayList arrayList = new ArrayList();
        for (BackupFileType backupFileType : getFileTypeToBackup()) {
            List<BackUpFileData> a4 = BackupUtils.a(backupFileType);
            StringBuilder sb2 = new StringBuilder("BackupWorker found  ");
            sb2.append(a4.size());
            sb2.append(" for type ");
            sb2.append(backupFileType.name());
            sb2.append(" to backup");
            CLog.a("BackupWorker");
            if (true ^ a4.isEmpty()) {
                String folderName = backupFileType.getFolderName();
                p.b(folderName, "fileType.folderName");
                arrayList.add(new BackUpData(folderName, a4, backupFileType.shouldDeleteFolder(), backupFileType));
            }
        }
        String name = ((BackupViaType) Prefs.hK.get()).name();
        BaseBackup backupHelper = BaseBackup.f14101b.getBackupHelper();
        if (backupHelper != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(backupHelper.getClass().getSimpleName());
            sb3.append(" trying to backup ");
            ArrayList<BackUpData> arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(n.a((Iterable) arrayList2, 10));
            for (BackUpData backUpData : arrayList2) {
                arrayList3.add(backUpData.getFileType());
            }
            sb3.append(arrayList3);
            sb3.append(' ');
            sb3.append(arrayList.size());
            sb3.append(" files");
            CLog.a("BackupWorker");
            try {
                BackUpResultData a5 = backupHelper.a(arrayList);
                if (!a(a5)) {
                    try {
                        return a(booleanValue, a5.getFailedFiles(), a3);
                    } catch (DisconnectException e) {
                        return a(booleanValue, backupHelper, a3);
                    } catch (NotEnoughSpaceException e2) {
                        CLog.a("BackupWorker");
                        if (booleanValue) {
                            CLog.a("BackupWorker");
                            NotificationManager.get().a(true, false);
                        }
                        a(a3);
                        ListenableWorker.a.C0121a aVar = new ListenableWorker.a.C0121a();
                        p.b(aVar, "Result.failure()");
                        return aVar;
                    }
                } else if (backupHelper != null) {
                    CLog.a("BackupWorker");
                    if (p.a((Object) "Manual", (Object) a3)) {
                        CLog.a("BackupWorker");
                        NotificationManager notificationManager = NotificationManager.get();
                        String string = Activities.getString(2131886463);
                        String string2 = Activities.getString(2131886295);
                        g.e a6 = notificationManager.a(NotificationManager.NotificationChannelEnum.BACKUP_NOTIFICATION_CHANNEL);
                        PendingIntent activity = PendingIntent.getActivity(Singletons.get().getApplication(), 0, BackupUtils.getBackupSettingsIntent(), 134217728);
                        g.e a7 = a6.a(string).b(string2).a(2131231569).a(BitmapFactory.decodeResource(CallAppApplication.get().getResources(), 2131231454)).a(true);
                        a7.f = activity;
                        a7.Q = true;
                        notificationManager.a(60, a6);
                    }
                    Calendar now2 = Calendar.getInstance();
                    DatePref datePref2 = Prefs.hJ;
                    p.b(now2, "now");
                    datePref2.set(now2.getTime());
                    String[] strArr = Prefs.hW.get();
                    if (strArr != null) {
                        Set m = i.m(strArr);
                        m.add(name);
                        ArrayPref arrayPref = Prefs.hW;
                        Object[] array = m.toArray(new String[0]);
                        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
                        arrayPref.set(array);
                    } else {
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.add(name);
                        ArrayPref arrayPref2 = Prefs.hW;
                        Object[] array2 = arrayList4.toArray(new String[0]);
                        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T>");
                        arrayPref2.set(array2);
                    }
                    AnalyticsManager analyticsManager2 = AnalyticsManager.get();
                    analyticsManager2.a(Constants.BACKUP_CATEGORY, "BackupCompleted", "drive:" + ((BackupViaType) Prefs.hK.get()).name() + " type:" + a3);
                    a(a3);
                    ListenableWorker.a.c cVar = new ListenableWorker.a.c();
                    p.b(cVar, "Result.success()");
                    return cVar;
                }
            } catch (DisconnectException e3) {
            } catch (NotEnoughSpaceException e4) {
            }
        }
        CLog.a("BackupWorker");
        return a(booleanValue, (BaseBackup) null, a3);
    }
}
