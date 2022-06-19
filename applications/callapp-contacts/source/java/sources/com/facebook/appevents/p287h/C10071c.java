package com.facebook.appevents.p287h;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.facebook.C10181g;
import com.facebook.appevents.C10002c;
import com.facebook.appevents.p285f.C10033b;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10288j;
import com.facebook.internal.p299b.p301b.C10249a;
import com.facebook.ppml.p307a.AbstractC10400a;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.facebook.appevents.h.c */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c.class */
public class C10071c {

    /* renamed from: a */
    private static final String f33393a = "c";

    /* renamed from: b */
    private static Boolean f33394b;

    /* renamed from: com.facebook.appevents.h.c$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c$a.class */
    public enum EnumC10072a {
        MOBILE_APP_INSTALL("MOBILE_APP_INSTALL"),
        CUSTOM_APP_EVENTS("CUSTOM_APP_EVENTS");
        
        private String eventType;

        EnumC10072a(String str) {
            this.eventType = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.eventType;
        }
    }

    /* renamed from: com.facebook.appevents.h.c$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c$b.class */
    public static final class ServiceConnectionC10073b implements ServiceConnection {

        /* renamed from: a */
        final CountDownLatch f33395a = new CountDownLatch(1);

        /* renamed from: b */
        IBinder f33396b;

        ServiceConnectionC10073b() {
        }

        @Override // android.content.ServiceConnection
        public final void onNullBinding(ComponentName componentName) {
            this.f33395a.countDown();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.f33396b = iBinder;
            this.f33395a.countDown();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.facebook.appevents.h.c$c */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c$c.class */
    public static final class EnumC10074c extends Enum<EnumC10074c> {

        /* renamed from: a */
        public static final int f33397a = 1;

        /* renamed from: b */
        public static final int f33398b = 2;

        /* renamed from: c */
        public static final int f33399c = 3;

        /* renamed from: d */
        private static final /* synthetic */ int[] f33400d = {1, 2, 3};

        private EnumC10074c(String str, int i) {
            super(str, i);
        }
    }

    /* renamed from: a */
    private static int m23462a(EnumC10072a enumC10072a, String str, List<C10002c> list) {
        if (C10249a.m23108a(C10071c.class)) {
            return 0;
        }
        try {
            int i = EnumC10074c.f33398b;
            C10033b.m23561a();
            Context m23290i = C10181g.m23290i();
            Intent m23463a = m23463a(m23290i);
            if (m23463a != null) {
                ServiceConnectionC10073b serviceConnectionC10073b = new ServiceConnectionC10073b();
                if (m23290i.bindService(m23463a, serviceConnectionC10073b, 1)) {
                    try {
                        serviceConnectionC10073b.f33395a.await(5L, TimeUnit.SECONDS);
                        IBinder iBinder = serviceConnectionC10073b.f33396b;
                        if (iBinder != null) {
                            AbstractC10400a m22865a = AbstractC10400a.AbstractBinderC10401a.m22865a(iBinder);
                            Bundle m23467a = C10070b.m23467a(enumC10072a, str, list);
                            if (m23467a != null) {
                                m22865a.mo22864a(m23467a);
                                "Successfully sent events to the remote service: ".concat(String.valueOf(m23467a));
                                C10213ae.m23250a();
                            }
                            i = EnumC10074c.f33397a;
                        } else {
                            i = EnumC10074c.f33398b;
                        }
                        m23290i.unbindService(serviceConnectionC10073b);
                        C10213ae.m23250a();
                    } catch (RemoteException | InterruptedException e) {
                        i = EnumC10074c.f33399c;
                        C10213ae.m23228a(f33393a, e);
                        m23290i.unbindService(serviceConnectionC10073b);
                        C10213ae.m23250a();
                    }
                } else {
                    i = EnumC10074c.f33399c;
                }
            }
            return i;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10071c.class);
            return 0;
        }
    }

    /* renamed from: a */
    public static int m23461a(String str) {
        if (C10249a.m23108a(C10071c.class)) {
            return 0;
        }
        try {
            return m23462a(EnumC10072a.MOBILE_APP_INSTALL, str, new LinkedList());
        } catch (Throwable th) {
            C10249a.m23106a(th, C10071c.class);
            return 0;
        }
    }

    /* renamed from: a */
    public static int m23460a(String str, List<C10002c> list) {
        if (C10249a.m23108a(C10071c.class)) {
            return 0;
        }
        try {
            return m23462a(EnumC10072a.CUSTOM_APP_EVENTS, str, list);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10071c.class);
            return 0;
        }
    }

    /* renamed from: a */
    private static Intent m23463a(Context context) {
        if (C10249a.m23108a(C10071c.class)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            Intent intent = new Intent("ReceiverService");
            intent.setPackage("com.facebook.katana");
            if (packageManager.resolveService(intent, 0) != null && C10288j.m23056a(context, "com.facebook.katana")) {
                return intent;
            }
            Intent intent2 = new Intent("ReceiverService");
            intent2.setPackage("com.facebook.wakizashi");
            if (packageManager.resolveService(intent2, 0) == null) {
                return null;
            }
            if (!C10288j.m23056a(context, "com.facebook.wakizashi")) {
                return null;
            }
            return intent2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10071c.class);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m23464a() {
        if (C10249a.m23108a(C10071c.class)) {
            return false;
        }
        try {
            if (f33394b == null) {
                f33394b = Boolean.valueOf(m23463a(C10181g.m23290i()) != null);
            }
            return f33394b.booleanValue();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10071c.class);
            return false;
        }
    }
}
