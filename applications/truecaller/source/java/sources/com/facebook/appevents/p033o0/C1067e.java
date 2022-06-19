package com.facebook.appevents.p033o0;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.facebook.appevents.C1087r;
import com.facebook.internal.C1168q0;
import com.facebook.internal.C1234y;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.SupportMessenger;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import p193e.p1538j.p1541x0.p1542a.AbstractC23277a;
import s1.z.c.l;
@Metadata(d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018��2\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\b\u0010\b\u001a\u00020\tH\u0007J\u001e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J&\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0002J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\n¨\u0006\u001c"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper;", "", "()V", "RECEIVER_SERVICE_ACTION", "", "RECEIVER_SERVICE_PACKAGE", "RECEIVER_SERVICE_PACKAGE_WAKIZASHI", "TAG", "isServiceAvailable", "", "Ljava/lang/Boolean;", "getVerifiedServiceIntent", "Landroid/content/Intent;", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "sendCustomEvents", "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "applicationId", "appEvents", "", "Lcom/facebook/appevents/AppEvent;", "sendEvents", "eventType", "Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;", "sendInstallEvent", "EventType", "RemoteServiceConnection", "ServiceResult", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.o0.e */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/o0/e.class */
public final class C1067e {

    /* renamed from: a */
    public static final C1067e f2941a = new C1067e();

    /* renamed from: b */
    public static final String f2942b;

    /* renamed from: c */
    public static Boolean f2943c;

    @Metadata(d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$EventType;", "", "eventType", "", "(Ljava/lang/String;ILjava/lang/String;)V", "toString", "MOBILE_APP_INSTALL", "CUSTOM_APP_EVENTS", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.o0.e$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/o0/e$a.class */
    public enum EnumC1068a {
        MOBILE_APP_INSTALL("MOBILE_APP_INSTALL"),
        CUSTOM_APP_EVENTS("CUSTOM_APP_EVENTS");
        

        /* renamed from: a */
        public final String f2947a;

        EnumC1068a(String str) {
            this.f2947a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f2947a;
        }
    }

    @Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$RemoteServiceConnection;", "Landroid/content/ServiceConnection;", "()V", "binder", "Landroid/os/IBinder;", "latch", "Ljava/util/concurrent/CountDownLatch;", "getBinder", "onNullBinding", "", AnalyticsConstants.NAME, "Landroid/content/ComponentName;", "onServiceConnected", "serviceBinder", "onServiceDisconnected", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.o0.e$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/o0/e$b.class */
    public static final class ServiceConnectionC1069b implements ServiceConnection {

        /* renamed from: a */
        public final CountDownLatch f2948a = new CountDownLatch(1);

        /* renamed from: b */
        public IBinder f2949b;

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            l.e(componentName, AnalyticsConstants.NAME);
            this.f2948a.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            l.e(componentName, AnalyticsConstants.NAME);
            l.e(iBinder, "serviceBinder");
            this.f2949b = iBinder;
            this.f2948a.countDown();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            l.e(componentName, AnalyticsConstants.NAME);
        }
    }

    @Metadata(d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/RemoteServiceWrapper$ServiceResult;", "", "(Ljava/lang/String;I)V", "OPERATION_SUCCESS", "SERVICE_NOT_AVAILABLE", "SERVICE_ERROR", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.o0.e$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/o0/e$c.class */
    public enum EnumC1070c {
        OPERATION_SUCCESS,
        SERVICE_NOT_AVAILABLE,
        SERVICE_ERROR
    }

    static {
        String simpleName = C1067e.class.getSimpleName();
        l.d(simpleName, "RemoteServiceWrapper::class.java.simpleName");
        f2942b = simpleName;
    }

    /* renamed from: a */
    public final Intent m41820a(Context context) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            Intent intent = new Intent("ReceiverService");
            intent.setPackage(SupportMessenger.FACEBOOK);
            if (packageManager.resolveService(intent, 0) != null) {
                C1234y c1234y = C1234y.f3326a;
                if (C1234y.m41611a(context, SupportMessenger.FACEBOOK)) {
                    return intent;
                }
            }
            Intent intent2 = new Intent("ReceiverService");
            intent2.setPackage("com.facebook.wakizashi");
            if (packageManager.resolveService(intent2, 0) == null) {
                return null;
            }
            C1234y c1234y2 = C1234y.f3326a;
            if (!C1234y.m41611a(context, "com.facebook.wakizashi")) {
                return null;
            }
            return intent2;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: b */
    public final EnumC1070c m41819b(EnumC1068a enumC1068a, String str, List<C1087r> list) {
        EnumC1070c enumC1070c;
        EnumC1070c enumC1070c2 = EnumC1070c.SERVICE_ERROR;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            EnumC1070c enumC1070c3 = EnumC1070c.SERVICE_NOT_AVAILABLE;
            C23228f0 c23228f0 = C23228f0.f64291a;
            Context m7354a = C23228f0.m7354a();
            Intent m41820a = m41820a(m7354a);
            if (m41820a != null) {
                ServiceConnectionC1069b serviceConnectionC1069b = new ServiceConnectionC1069b();
                enumC1070c = enumC1070c2;
                if (m7354a.bindService(m41820a, serviceConnectionC1069b, 1)) {
                    try {
                        try {
                            serviceConnectionC1069b.f2948a.await(5L, TimeUnit.SECONDS);
                            IBinder iBinder = serviceConnectionC1069b.f2949b;
                            enumC1070c = enumC1070c3;
                            if (iBinder != null) {
                                AbstractC23277a m7295m1 = AbstractC23277a.AbstractBinderC23278a.m7295m1(iBinder);
                                C1066d c1066d = C1066d.f2939a;
                                Bundle m41822a = C1066d.m41822a(enumC1068a, str, list);
                                if (m41822a != null) {
                                    m7295m1.mo7294u0(m41822a);
                                    l.j("Successfully sent events to the remote service: ", m41822a);
                                    boolean z = C23228f0.f64299i;
                                }
                                enumC1070c = EnumC1070c.OPERATION_SUCCESS;
                            }
                            m7354a.unbindService(serviceConnectionC1069b);
                        } catch (InterruptedException e) {
                            C1168q0.m41696F(f2942b, e);
                            m7354a.unbindService(serviceConnectionC1069b);
                            C23228f0 c23228f02 = C23228f0.f64291a;
                            enumC1070c = enumC1070c2;
                            boolean z2 = C23228f0.f64299i;
                            return enumC1070c;
                        }
                    } catch (RemoteException e2) {
                        C1168q0.m41696F(f2942b, e2);
                        m7354a.unbindService(serviceConnectionC1069b);
                        C23228f0 c23228f022 = C23228f0.f64291a;
                        enumC1070c = enumC1070c2;
                        boolean z22 = C23228f0.f64299i;
                        return enumC1070c;
                    }
                    boolean z222 = C23228f0.f64299i;
                }
            } else {
                enumC1070c = enumC1070c3;
            }
            return enumC1070c;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
