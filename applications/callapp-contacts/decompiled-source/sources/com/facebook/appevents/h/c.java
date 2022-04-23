package com.facebook.appevents.h;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.facebook.g;
import com.facebook.internal.ae;
import com.facebook.internal.j;
import com.facebook.ppml.a.a;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19610a = "c";

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f19611b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c$a.class */
    public enum a {
        MOBILE_APP_INSTALL("MOBILE_APP_INSTALL"),
        CUSTOM_APP_EVENTS("CUSTOM_APP_EVENTS");
        
        private String eventType;

        a(String str) {
            this.eventType = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.eventType;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c$b.class */
    public static final class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        final CountDownLatch f19612a = new CountDownLatch(1);

        /* renamed from: b  reason: collision with root package name */
        IBinder f19613b;

        b() {
        }

        @Override // android.content.ServiceConnection
        public final void onNullBinding(ComponentName componentName) {
            this.f19612a.countDown();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.f19613b = iBinder;
            this.f19612a.countDown();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: com.facebook.appevents.h.c$c  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h/c$c.class */
    public static final class EnumC0389c extends Enum<EnumC0389c> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f19614a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f19615b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f19616c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f19617d = {1, 2, 3};

        private EnumC0389c(String str, int i) {
        }
    }

    private static int a(a aVar, String str, List<com.facebook.appevents.c> list) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return 0;
        }
        try {
            int i = EnumC0389c.f19615b;
            com.facebook.appevents.f.b.a();
            Context i2 = g.i();
            Intent a2 = a(i2);
            if (a2 != null) {
                b bVar = new b();
                if (i2.bindService(a2, bVar, 1)) {
                    try {
                        bVar.f19612a.await(5L, TimeUnit.SECONDS);
                        IBinder iBinder = bVar.f19613b;
                        if (iBinder != null) {
                            com.facebook.ppml.a.a a3 = a.AbstractBinderC0404a.a(iBinder);
                            Bundle a4 = com.facebook.appevents.h.b.a(aVar, str, list);
                            if (a4 != null) {
                                a3.a(a4);
                                "Successfully sent events to the remote service: ".concat(String.valueOf(a4));
                                ae.a();
                            }
                            i = EnumC0389c.f19614a;
                        } else {
                            i = EnumC0389c.f19615b;
                        }
                        i2.unbindService(bVar);
                        ae.a();
                    } catch (RemoteException | InterruptedException e) {
                        i = EnumC0389c.f19616c;
                        ae.a(f19610a, e);
                        i2.unbindService(bVar);
                        ae.a();
                    }
                } else {
                    i = EnumC0389c.f19616c;
                }
            }
            return i;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return 0;
        }
    }

    public static int a(String str) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return 0;
        }
        try {
            return a(a.MOBILE_APP_INSTALL, str, new LinkedList());
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return 0;
        }
    }

    public static int a(String str, List<com.facebook.appevents.c> list) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return 0;
        }
        try {
            return a(a.CUSTOM_APP_EVENTS, str, list);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return 0;
        }
    }

    private static Intent a(Context context) {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            Intent intent = new Intent("ReceiverService");
            intent.setPackage("com.facebook.katana");
            if (packageManager.resolveService(intent, 0) != null && j.a(context, "com.facebook.katana")) {
                return intent;
            }
            Intent intent2 = new Intent("ReceiverService");
            intent2.setPackage("com.facebook.wakizashi");
            if (packageManager.resolveService(intent2, 0) == null) {
                return null;
            }
            if (j.a(context, "com.facebook.wakizashi")) {
                return intent2;
            }
            return null;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return null;
        }
    }

    public static boolean a() {
        if (com.facebook.internal.b.b.a.a(c.class)) {
            return false;
        }
        try {
            if (f19611b == null) {
                f19611b = Boolean.valueOf(a(g.i()) != null);
            }
            return f19611b.booleanValue();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, c.class);
            return false;
        }
    }
}
