package com.callapp.contacts.workers;

import android.content.Context;
import androidx.core.content.C0790b;
import androidx.work.AbstractC3150n;
import androidx.work.C3148m;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C3068j;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PowerUtils;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0006\u0010\t\u001a\u00020\n¨\u0006\f"}, m4298d2 = {"Lcom/callapp/contacts/workers/_24HourPingWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "getPermissionsString", "", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/_24HourPingWorker.class */
public final class _24HourPingWorker extends Worker {

    /* renamed from: a */
    public static final Companion f29658a = new Companion(null);

    /* renamed from: b */
    private static final String f29659b = "job_24_hour_ping_tag";

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m4298d2 = {"Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/_24HourPingWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* renamed from: a */
        public final void m26104a() {
            Calendar alertTime = Calendar.getInstance();
            Calendar installDate = Calendar.getInstance();
            if (Prefs.f26257ah.get() != null) {
                C18524p.m3843b(installDate, "installDate");
                installDate.setTime(Prefs.f26257ah.get());
            }
            alertTime.set(10, installDate.get(10));
            alertTime.set(12, installDate.get(12));
            alertTime.set(13, installDate.get(13));
            alertTime.set(14, installDate.get(14));
            Calendar now = Calendar.getInstance();
            if (alertTime.before(now)) {
                alertTime.add(5, 1);
            }
            C18524p.m3843b(alertTime, "alertTime");
            long timeInMillis = alertTime.getTimeInMillis();
            C18524p.m3843b(now, "now");
            ?? timeInMillis2 = timeInMillis - now.getTimeInMillis();
            char c = timeInMillis2;
            if (timeInMillis2 <= 0) {
                c = 23552;
            }
            try {
                AbstractC3150n mo39264a = C3068j.m39359b(CallAppApplication.get()).mo39264a(getTAG());
                C18524p.m3843b(mo39264a, "WorkManager.getInstance(…).cancelAllWorkByTag(TAG)");
                mo39264a.mo39272a().get();
            } catch (Exception e) {
                CLog.m27609a(_24HourPingWorker.class, e);
            }
            C3148m c2 = ((C3148m.C3149a) new C3148m.C3149a(_24HourPingWorker.class).m39256a(getTAG()).m39259a(c, TimeUnit.MILLISECONDS)).m39254c();
            C18524p.m3843b(c2, "OneTimeWorkRequestBuilde…nit.MILLISECONDS).build()");
            C3068j.m39359b(CallAppApplication.get()).m39265a(c2);
        }

        public final String getTAG() {
            return _24HourPingWorker.f29659b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public _24HourPingWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        C18524p.m3840d(appContext, "appContext");
        C18524p.m3840d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.AbstractC2980a doWork() {
        f29658a.m26104a();
        AnalyticsManager.get().m28449a(Constants.REGISTRATION, "24 hour ping", getPermissionsString());
        Date date = Prefs.f26257ah.get();
        if (date != null) {
            long time = new Date().getTime() - date.getTime();
            long j = time / Constants.HOUR_IN_MILLIS;
            if (j > 44 && j < 52) {
                if (Prefs.f26324bv.get() != null) {
                    AnalyticsManager.get().m28450a(Constants.SYNCERS, "Second sync finished in 2 days");
                } else {
                    AnalyticsManager.get().m28450a(Constants.SYNCERS, "Second sync didn't finish in 2 days");
                }
            }
            long days = TimeUnit.MILLISECONDS.toDays(time);
            String str = null;
            int i = (days > 60L ? 1 : (days == 60L ? 0 : -1));
            if (i <= 0) {
                if (days == 30) {
                    str = "30Days";
                } else if (i == 0) {
                    str = "60Days";
                } else if (days == 3) {
                    AnalyticsManager.get().mo28436e();
                    str = "3Days";
                } else if (days == 7) {
                    AnalyticsManager.get().mo28435f();
                    str = "7Days";
                }
                if (str != null) {
                    AnalyticsManager.get().mo28446a(Constants.RETENTION, str, (String) null, 0.0d);
                }
            }
        }
        ListenableWorker.AbstractC2980a.C2983c c2983c = new ListenableWorker.AbstractC2980a.C2983c();
        C18524p.m3843b(c2983c, "Result.success()");
        return c2983c;
    }

    public final String getPermissionsString() {
        boolean isDefaultSystemPhoneApp = PhoneManager.get().isDefaultSystemPhoneApp();
        boolean isCallAppAccessibilityServiceEnabled = Activities.isCallAppAccessibilityServiceEnabled();
        boolean m27661b = Activities.m27661b();
        boolean m27641e = Activities.m27641e();
        boolean isIgnoringBatteryOptimizations = PowerUtils.isIgnoringBatteryOptimizations();
        Boolean bool = Prefs.f26339cJ.get();
        C18524p.m3843b(bool, "Prefs.isPremium.get()");
        boolean booleanValue = bool.booleanValue();
        int i = C0790b.m44498a(CallAppApplication.get(), "android.permission.READ_CONTACTS") == 0 ? 1 : 0;
        int i2 = C0790b.m44498a(CallAppApplication.get(), "android.permission.READ_CALL_LOG") == 0 ? 1 : 0;
        int i3 = C0790b.m44498a(CallAppApplication.get(), "android.permission.READ_PHONE_STATE") == 0 ? 1 : 0;
        int i4 = C0790b.m44498a(CallAppApplication.get(), "android.permission.RECEIVE_SMS") == 0 ? 1 : 0;
        int i5 = C0790b.m44498a(CallAppApplication.get(), "android.permission.RECORD_AUDIO") == 0 ? 1 : 0;
        int i6 = C0790b.m44498a(CallAppApplication.get(), "android.permission.ACCESS_FINE_LOCATION") == 0 ? 1 : 0;
        int i7 = C0790b.m44498a(CallAppApplication.get(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0 ? 1 : 0;
        int i8 = C0790b.m44498a(CallAppApplication.get(), "android.permission.READ_CALENDAR") == 0 ? 1 : 0;
        PermissionManager.get();
        boolean m28256a = PermissionManager.m28256a();
        boolean m27640f = Activities.m27640f();
        boolean m27639g = Activities.m27639g();
        Boolean bool2 = Prefs.f26246aW.get();
        C18524p.m3843b(bool2, "Prefs.setupCompleted.get()");
        boolean booleanValue2 = bool2.booleanValue();
        return "ct:" + i + ",cl:" + i2 + ",ph:" + i3 + ",sms:" + i4 + ",mi:" + i5 + ",lo:" + i6 + ",st:" + i7 + ",pr:" + (booleanValue ? 1 : 0) + ",dd:" + (isDefaultSystemPhoneApp ? 1 : 0) + ",ac:" + (isCallAppAccessibilityServiceEnabled ? 1 : 0) + ",no:" + (m27661b ? 1 : 0) + ",ov:" + (m27641e ? 1 : 0) + ",ba:" + (isIgnoringBatteryOptimizations ? 1 : 0) + ",ca:" + i8 + ",co:" + (m28256a ? 1 : 0) + ",hu:" + (m27640f ? 1 : 0) + ",as:" + (m27639g ? 1 : 0) + ",sc:" + (booleanValue2 ? 1 : 0);
    }
}
