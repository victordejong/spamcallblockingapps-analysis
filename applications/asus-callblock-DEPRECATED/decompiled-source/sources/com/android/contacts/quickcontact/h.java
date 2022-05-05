package com.android.contacts.quickcontact;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import com.android.contacts.util.PhoneCapabilityTester;
import com.google.a.b.aa;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/h.class */
public final class h {
    private static final HashSet<String> c = aa.a("com.android.email", "com.google.android.email", "com.android.phone", "com.google.android.apps.maps", "com.android.chrome", "com.google.android.browser", "com.android.browser");
    private static final HashSet<String> d = aa.a("com.android.email", "com.google.android.email", "com.android.phone", "com.google.android.apps.maps", "com.android.chrome", "com.google.android.browser", "com.android.browser", "com.asus.email");
    private static h f;

    /* renamed from: a  reason: collision with root package name */
    final PackageManager f2109a;
    private final Context e;
    private BroadcastReceiver g = new BroadcastReceiver() { // from class: com.android.contacts.quickcontact.h.1
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            h.b();
        }
    };

    /* renamed from: b  reason: collision with root package name */
    public HashMap<String, a> f2110b = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/quickcontact/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public ResolveInfo f2112a;

        /* renamed from: b  reason: collision with root package name */
        public Drawable f2113b;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    private h(Context context) {
        this.e = context;
        this.f2109a = context.getPackageManager();
    }

    public static h a(Context context) {
        h hVar;
        synchronized (h.class) {
            try {
                if (f == null) {
                    Context applicationContext = context.getApplicationContext();
                    f = new h(applicationContext);
                    IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
                    intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
                    intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
                    intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
                    intentFilter.addDataScheme("package");
                    applicationContext.registerReceiver(f.g, intentFilter);
                }
                hVar = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b() {
        synchronized (h.class) {
            try {
                f = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a a(com.android.contacts.quickcontact.a aVar) {
        a aVar2;
        ResolveInfo resolveInfo;
        ResolveInfo resolveInfo2 = null;
        ResolveInfo resolveInfo3 = null;
        String c2 = aVar.c();
        a aVar3 = this.f2110b.get(c2);
        if (aVar3 != null) {
            aVar2 = aVar3;
        } else {
            a aVar4 = new a((byte) 0);
            Intent f2 = aVar.f();
            Intent intent = f2;
            if ("vnd.android.cursor.item/sip_address".equals(c2)) {
                intent = f2;
                if (!PhoneCapabilityTester.isSipPhone(this.e)) {
                    intent = null;
                }
            }
            if (intent != null) {
                List<ResolveInfo> queryIntentActivities = this.f2109a.queryIntentActivities(intent, 65536);
                int size = queryIntentActivities.size();
                if (size == 1) {
                    resolveInfo = queryIntentActivities.get(0);
                } else if (size <= 1) {
                    resolveInfo = null;
                } else if ("vnd.android.cursor.item/email_v2".equals(c2)) {
                    resolveInfo = this.f2109a.resolveActivity(intent, 65536);
                    if ((resolveInfo.match & 268369920) == 0) {
                        Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                ResolveInfo next = it.next();
                                boolean z = (next.activityInfo.applicationInfo.flags & 1) != 0;
                                resolveInfo = next;
                                if (d.contains(next.activityInfo.applicationInfo.packageName)) {
                                    break;
                                }
                                resolveInfo3 = (!z || resolveInfo3 != null) ? resolveInfo3 : next;
                            } else {
                                resolveInfo = resolveInfo3 != null ? resolveInfo3 : queryIntentActivities.get(0);
                            }
                        }
                    }
                } else {
                    resolveInfo = this.f2109a.resolveActivity(intent, 65536);
                    if ((resolveInfo.match & 268369920) == 0) {
                        Iterator<ResolveInfo> it2 = queryIntentActivities.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                ResolveInfo next2 = it2.next();
                                boolean z2 = (next2.activityInfo.applicationInfo.flags & 1) != 0;
                                resolveInfo = next2;
                                if (c.contains(next2.activityInfo.applicationInfo.packageName)) {
                                    break;
                                }
                                resolveInfo2 = (!z2 || resolveInfo2 != null) ? resolveInfo2 : next2;
                            } else {
                                resolveInfo = resolveInfo2 != null ? resolveInfo2 : queryIntentActivities.get(0);
                            }
                        }
                    }
                }
                if (resolveInfo != null) {
                    Drawable loadIcon = resolveInfo.loadIcon(this.f2109a);
                    aVar4.f2112a = resolveInfo;
                    aVar4.f2113b = loadIcon;
                }
            }
            this.f2110b.put(c2, aVar4);
            aVar2 = aVar4;
        }
        return aVar2;
    }
}
