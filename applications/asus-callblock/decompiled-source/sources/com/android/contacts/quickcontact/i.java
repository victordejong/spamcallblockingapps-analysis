package com.android.contacts.quickcontact;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import com.google.a.b.aa;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/i.class */
public final class i {
    private static final HashSet<String> c = aa.a("com.android.email", "com.google.android.email", "com.android.phone", "com.google.android.apps.maps", "com.android.chrome", "com.google.android.browser", "com.android.browser");
    private static i e;

    /* renamed from: a  reason: collision with root package name */
    final PackageManager f2114a;
    private final Context d;
    private BroadcastReceiver f = new BroadcastReceiver() { // from class: com.android.contacts.quickcontact.i.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            i.b();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public HashMap<String, a> f2115b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public ResolveInfo f2117a;

        /* renamed from: b  reason: collision with root package name */
        public Drawable f2118b;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    private i(Context context) {
        this.d = context;
        this.f2114a = context.getPackageManager();
    }

    public static i a(Context context) {
        i iVar;
        synchronized (i.class) {
            try {
                if (e == null) {
                    Context applicationContext = context.getApplicationContext();
                    e = new i(applicationContext);
                    IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                    intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
                    intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
                    intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
                    intentFilter.addDataScheme("package");
                    applicationContext.registerReceiver(e.f, intentFilter);
                }
                iVar = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        synchronized (i.class) {
            try {
                e = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.android.contacts.quickcontact.i.a a(android.content.Intent r5) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.quickcontact.i.a(android.content.Intent):com.android.contacts.quickcontact.i$a");
    }
}
