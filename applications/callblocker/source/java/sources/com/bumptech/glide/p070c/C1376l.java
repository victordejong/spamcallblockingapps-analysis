package com.bumptech.glide.p070c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import androidx.p013b.C0373a;
import com.bumptech.glide.C1459i;
import com.bumptech.glide.ComponentCallbacks2C1361c;
import com.bumptech.glide.p077h.C1457j;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.c.l */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/l.class */
public class C1376l implements Handler.Callback {

    /* renamed from: i */
    private static final AbstractC1378a f4561i = new AbstractC1378a() { // from class: com.bumptech.glide.c.l.1
        @Override // com.bumptech.glide.p070c.C1376l.AbstractC1378a
        /* renamed from: a */
        public C1459i mo17259a(ComponentCallbacks2C1361c componentCallbacks2C1361c, AbstractC1371h abstractC1371h, AbstractC1379m abstractC1379m, Context context) {
            return new C1459i(componentCallbacks2C1361c, abstractC1371h, abstractC1379m, context);
        }
    };

    /* renamed from: c */
    private volatile C1459i f4564c;

    /* renamed from: d */
    private final Handler f4565d;

    /* renamed from: e */
    private final AbstractC1378a f4566e;

    /* renamed from: a */
    final Map<FragmentManager, FragmentC1374k> f4562a = new HashMap();

    /* renamed from: b */
    final Map<AbstractC0670i, C1381o> f4563b = new HashMap();

    /* renamed from: f */
    private final C0373a<View, Fragment> f4567f = new C0373a<>();

    /* renamed from: g */
    private final C0373a<View, android.app.Fragment> f4568g = new C0373a<>();

    /* renamed from: h */
    private final Bundle f4569h = new Bundle();

    /* renamed from: com.bumptech.glide.c.l$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/l$a.class */
    public interface AbstractC1378a {
        /* renamed from: a */
        C1459i mo17259a(ComponentCallbacks2C1361c componentCallbacks2C1361c, AbstractC1371h abstractC1371h, AbstractC1379m abstractC1379m, Context context);
    }

    public C1376l(AbstractC1378a abstractC1378a) {
        this.f4566e = abstractC1378a == null ? f4561i : abstractC1378a;
        this.f4565d = new Handler(Looper.getMainLooper(), this);
    }

    /* renamed from: a */
    private FragmentC1374k m17270a(FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        FragmentC1374k fragmentC1374k = (FragmentC1374k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        FragmentC1374k fragmentC1374k2 = fragmentC1374k;
        if (fragmentC1374k == null) {
            FragmentC1374k fragmentC1374k3 = this.f4562a.get(fragmentManager);
            fragmentC1374k2 = fragmentC1374k3;
            if (fragmentC1374k3 == null) {
                fragmentC1374k2 = new FragmentC1374k();
                fragmentC1374k2.m17279a(fragment);
                if (z) {
                    fragmentC1374k2.m17281a().m17290a();
                }
                this.f4562a.put(fragmentManager, fragmentC1374k2);
                fragmentManager.beginTransaction().add(fragmentC1374k2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4565d.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return fragmentC1374k2;
    }

    /* renamed from: a */
    private C1381o m17265a(AbstractC0670i abstractC0670i, Fragment fragment, boolean z) {
        C1381o c1381o = (C1381o) abstractC0670i.mo19772a("com.bumptech.glide.manager");
        C1381o c1381o2 = c1381o;
        if (c1381o == null) {
            C1381o c1381o3 = this.f4563b.get(abstractC0670i);
            c1381o2 = c1381o3;
            if (c1381o3 == null) {
                c1381o2 = new C1381o();
                c1381o2.m17245b(fragment);
                if (z) {
                    c1381o2.m17251a().m17290a();
                }
                this.f4563b.put(abstractC0670i, c1381o2);
                abstractC0670i.mo19803a().m19659a(c1381o2, "com.bumptech.glide.manager").mo19653c();
                this.f4565d.obtainMessage(2, abstractC0670i).sendToTarget();
            }
        }
        return c1381o2;
    }

    @Deprecated
    /* renamed from: a */
    private C1459i m17268a(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        FragmentC1374k m17270a = m17270a(fragmentManager, fragment, z);
        C1459i m17276b = m17270a.m17276b();
        C1459i c1459i = m17276b;
        if (m17276b == null) {
            c1459i = this.f4566e.mo17259a(ComponentCallbacks2C1361c.m17308a(context), m17270a.m17281a(), m17270a.m17274c(), context);
            m17270a.m17277a(c1459i);
        }
        return c1459i;
    }

    /* renamed from: a */
    private C1459i m17267a(Context context, AbstractC0670i abstractC0670i, Fragment fragment, boolean z) {
        C1381o m17265a = m17265a(abstractC0670i, fragment, z);
        C1459i m17243d = m17265a.m17243d();
        C1459i c1459i = m17243d;
        if (m17243d == null) {
            c1459i = this.f4566e.mo17259a(ComponentCallbacks2C1361c.m17308a(context), m17265a.m17251a(), m17265a.m17242f(), context);
            m17265a.m17247a(c1459i);
        }
        return c1459i;
    }

    /* renamed from: b */
    private C1459i m17263b(Context context) {
        if (this.f4564c == null) {
            synchronized (this) {
                if (this.f4564c == null) {
                    this.f4564c = this.f4566e.mo17259a(ComponentCallbacks2C1361c.m17308a(context.getApplicationContext()), new C1363b(), new C1370g(), context.getApplicationContext());
                }
            }
        }
        return this.f4564c;
    }

    @TargetApi(17)
    /* renamed from: c */
    private static void m17261c(Activity activity) {
        if (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed()) {
            return;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    /* renamed from: d */
    private static boolean m17260d(Activity activity) {
        return !activity.isFinishing();
    }

    /* renamed from: a */
    public C1459i m17271a(Activity activity) {
        C1459i m17268a;
        if (C1457j.m16966c()) {
            m17268a = m17269a(activity.getApplicationContext());
        } else {
            m17261c(activity);
            m17268a = m17268a(activity, activity.getFragmentManager(), (android.app.Fragment) null, m17260d(activity));
        }
        return m17268a;
    }

    /* renamed from: a */
    public C1459i m17269a(Context context) {
        C1459i m17263b;
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (C1457j.m16970b() && !(context instanceof Application)) {
            if (context instanceof ActivityC0664d) {
                m17263b = m17266a((ActivityC0664d) context);
            } else if (context instanceof Activity) {
                m17263b = m17271a((Activity) context);
            } else if (context instanceof ContextWrapper) {
                m17263b = m17269a(((ContextWrapper) context).getBaseContext());
            }
            return m17263b;
        }
        m17263b = m17263b(context);
        return m17263b;
    }

    /* renamed from: a */
    public C1459i m17266a(ActivityC0664d activityC0664d) {
        C1459i m17267a;
        if (C1457j.m16966c()) {
            m17267a = m17269a(activityC0664d.getApplicationContext());
        } else {
            m17261c(activityC0664d);
            m17267a = m17267a(activityC0664d, activityC0664d.m19874m(), (Fragment) null, m17260d(activityC0664d));
        }
        return m17267a;
    }

    @Deprecated
    /* renamed from: b */
    public FragmentC1374k m17264b(Activity activity) {
        return m17270a(activity.getFragmentManager(), (android.app.Fragment) null, m17260d(activity));
    }

    /* renamed from: b */
    public C1381o m17262b(ActivityC0664d activityC0664d) {
        return m17265a(activityC0664d.m19874m(), (Fragment) null, m17260d(activityC0664d));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        FragmentC1374k remove;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                remove = this.f4562a.remove(obj);
                break;
            case 2:
                obj = (AbstractC0670i) message.obj;
                remove = this.f4563b.remove(obj);
                break;
            default:
                z = false;
                obj = null;
                remove = null;
                break;
        }
        if (z && remove == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }
}
