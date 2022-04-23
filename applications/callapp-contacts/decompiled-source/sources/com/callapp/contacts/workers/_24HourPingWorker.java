package com.callapp.contacts.workers;

import android.content.Context;
import androidx.core.content.b;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.PowerUtils;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0006\u0010\t\u001a\u00020\n¨\u0006\f"}, d2 = {"Lcom/callapp/contacts/workers/_24HourPingWorker;", "Landroidx/work/Worker;", "appContext", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "getPermissionsString", "", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/_24HourPingWorker.class */
public final class _24HourPingWorker extends Worker {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f17096a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final String f17097b = "job_24_hour_ping_tag";

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bR\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/callapp/contacts/workers/_24HourPingWorker$Companion;", "", "()V", "TAG", "", "getTAG", "()Ljava/lang/String;", "scheduleJob", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/workers/_24HourPingWorker$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r8v1 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 257
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.workers._24HourPingWorker.Companion.a():void");
        }

        public final String getTAG() {
            return _24HourPingWorker.f17097b;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public _24HourPingWorker(Context appContext, WorkerParameters workerParams) {
        super(appContext, workerParams);
        p.d(appContext, "appContext");
        p.d(workerParams, "workerParams");
    }

    @Override // androidx.work.Worker
    public final ListenableWorker.a doWork() {
        f17096a.a();
        AnalyticsManager.get().a(Constants.REGISTRATION, "24 hour ping", getPermissionsString());
        Date date = Prefs.ah.get();
        if (date != null) {
            long time = new Date().getTime() - date.getTime();
            long j = time / Constants.HOUR_IN_MILLIS;
            if (j > 44 && j < 52) {
                if (Prefs.bv.get() != null) {
                    AnalyticsManager.get().a(Constants.SYNCERS, "Second sync finished in 2 days");
                } else {
                    AnalyticsManager.get().a(Constants.SYNCERS, "Second sync didn't finish in 2 days");
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
                    AnalyticsManager.get().e();
                    str = "3Days";
                } else if (days == 7) {
                    AnalyticsManager.get().f();
                    str = "7Days";
                }
                if (str != null) {
                    AnalyticsManager.get().a(Constants.RETENTION, str, (String) null, 0.0d);
                }
            }
        }
        ListenableWorker.a.c cVar = new ListenableWorker.a.c();
        p.b(cVar, "Result.success()");
        return cVar;
    }

    public final String getPermissionsString() {
        boolean isDefaultSystemPhoneApp = PhoneManager.get().isDefaultSystemPhoneApp();
        boolean isCallAppAccessibilityServiceEnabled = Activities.isCallAppAccessibilityServiceEnabled();
        boolean b2 = Activities.b();
        boolean e = Activities.e();
        boolean isIgnoringBatteryOptimizations = PowerUtils.isIgnoringBatteryOptimizations();
        Boolean bool = Prefs.cJ.get();
        p.b(bool, "Prefs.isPremium.get()");
        boolean booleanValue = bool.booleanValue();
        int i = b.a(CallAppApplication.get(), "android.permission.READ_CONTACTS") == 0 ? 1 : 0;
        int i2 = b.a(CallAppApplication.get(), "android.permission.READ_CALL_LOG") == 0 ? 1 : 0;
        int i3 = b.a(CallAppApplication.get(), "android.permission.READ_PHONE_STATE") == 0 ? 1 : 0;
        int i4 = b.a(CallAppApplication.get(), "android.permission.RECEIVE_SMS") == 0 ? 1 : 0;
        int i5 = b.a(CallAppApplication.get(), "android.permission.RECORD_AUDIO") == 0 ? 1 : 0;
        int i6 = b.a(CallAppApplication.get(), "android.permission.ACCESS_FINE_LOCATION") == 0 ? 1 : 0;
        int i7 = b.a(CallAppApplication.get(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0 ? 1 : 0;
        int i8 = b.a(CallAppApplication.get(), "android.permission.READ_CALENDAR") == 0 ? 1 : 0;
        PermissionManager.get();
        boolean a2 = PermissionManager.a();
        boolean f = Activities.f();
        boolean g = Activities.g();
        Boolean bool2 = Prefs.aW.get();
        p.b(bool2, "Prefs.setupCompleted.get()");
        boolean booleanValue2 = bool2.booleanValue();
        return "ct:" + i + ",cl:" + i2 + ",ph:" + i3 + ",sms:" + i4 + ",mi:" + i5 + ",lo:" + i6 + ",st:" + i7 + ",pr:" + (booleanValue ? 1 : 0) + ",dd:" + (isDefaultSystemPhoneApp ? 1 : 0) + ",ac:" + (isCallAppAccessibilityServiceEnabled ? 1 : 0) + ",no:" + (b2 ? 1 : 0) + ",ov:" + (e ? 1 : 0) + ",ba:" + (isIgnoringBatteryOptimizations ? 1 : 0) + ",ca:" + i8 + ",co:" + (a2 ? 1 : 0) + ",hu:" + (f ? 1 : 0) + ",as:" + (g ? 1 : 0) + ",sc:" + (booleanValue2 ? 1 : 0);
    }
}
