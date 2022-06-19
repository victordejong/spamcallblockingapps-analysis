package p193e.p1451f.p1452a.p1473o;

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
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import n3.r.a.l;
import p1727n3.p1788g.C26174a;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p1451f.p1452a.p1480t.C22623j;
/* renamed from: e.f.a.o.l */
/* loaded from: classes-dex2jar.jar:e/f/a/o/l.class */
public class C22565l implements Handler.Callback {

    /* renamed from: i */
    public static final AbstractC22567b f62494i = new C22566a();

    /* renamed from: a */
    public volatile ComponentCallbacks2C22236i f62495a;

    /* renamed from: d */
    public final Handler f62498d;

    /* renamed from: e */
    public final AbstractC22567b f62499e;

    /* renamed from: b */
    public final Map<FragmentManager, FragmentC22563k> f62496b = new HashMap();

    /* renamed from: c */
    public final Map<androidx.fragment.app.FragmentManager, o> f62497c = new HashMap();

    /* renamed from: f */
    public final C26174a<View, Fragment> f62500f = new C26174a<>();

    /* renamed from: g */
    public final C26174a<View, android.app.Fragment> f62501g = new C26174a<>();

    /* renamed from: h */
    public final Bundle f62502h = new Bundle();

    /* renamed from: e.f.a.o.l$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/o/l$a.class */
    public class C22566a implements AbstractC22567b {
        @Override // p193e.p1451f.p1452a.p1473o.C22565l.AbstractC22567b
        /* renamed from: a */
        public ComponentCallbacks2C22236i mo8123a(ComponentCallbacks2C22222c componentCallbacks2C22222c, AbstractC22561h abstractC22561h, AbstractC22568m abstractC22568m, Context context) {
            return new ComponentCallbacks2C22236i(componentCallbacks2C22222c, abstractC22561h, abstractC22568m, new C22569n(), componentCallbacks2C22222c.f61719h, context);
        }
    }

    /* renamed from: e.f.a.o.l$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/o/l$b.class */
    public interface AbstractC22567b {
        /* renamed from: a */
        ComponentCallbacks2C22236i mo8123a(ComponentCallbacks2C22222c componentCallbacks2C22222c, AbstractC22561h abstractC22561h, AbstractC22568m abstractC22568m, Context context);
    }

    public C22565l(AbstractC22567b abstractC22567b) {
        this.f62499e = abstractC22567b == null ? f62494i : abstractC22567b;
        this.f62498d = new Handler(Looper.getMainLooper(), this);
    }

    /* renamed from: a */
    public static Activity m8135a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return m8135a(((ContextWrapper) context).getBaseContext());
    }

    /* renamed from: c */
    public static void m8133c(Collection<Fragment> collection, Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                m8133c(fragment.getChildFragmentManager().m42936Q(), map);
            }
        }
    }

    /* renamed from: k */
    public static boolean m8125k(Context context) {
        Activity m8135a = m8135a(context);
        return m8135a == null || !m8135a.isFinishing();
    }

    @Deprecated
    /* renamed from: b */
    public final void m8134b(FragmentManager fragmentManager, C26174a<View, android.app.Fragment> c26174a) {
        if (Build.VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    c26174a.put(fragment.getView(), fragment);
                    m8134b(fragment.getChildFragmentManager(), c26174a);
                }
            }
            return;
        }
        int i = 0;
        while (true) {
            this.f62502h.putInt(AnalyticsConstants.KEY, i);
            android.app.Fragment fragment2 = null;
            try {
                fragment2 = fragmentManager.getFragment(this.f62502h, AnalyticsConstants.KEY);
            } catch (Exception e) {
            }
            if (fragment2 == null) {
                return;
            }
            if (fragment2.getView() != null) {
                c26174a.put(fragment2.getView(), fragment2);
                m8134b(fragment2.getChildFragmentManager(), c26174a);
            }
            i++;
        }
    }

    @Deprecated
    /* renamed from: d */
    public final ComponentCallbacks2C22236i m8132d(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        FragmentC22563k m8127i = m8127i(fragmentManager, fragment, z);
        ComponentCallbacks2C22236i componentCallbacks2C22236i = m8127i.f62490d;
        ComponentCallbacks2C22236i componentCallbacks2C22236i2 = componentCallbacks2C22236i;
        if (componentCallbacks2C22236i == null) {
            componentCallbacks2C22236i2 = this.f62499e.mo8123a(ComponentCallbacks2C22222c.m8449b(context), m8127i.f62487a, m8127i.f62488b, context);
            m8127i.f62490d = componentCallbacks2C22236i2;
        }
        return componentCallbacks2C22236i2;
    }

    /* renamed from: e */
    public ComponentCallbacks2C22236i m8131e(Activity activity) {
        if (C22623j.m8016h()) {
            return m8130f(activity.getApplicationContext());
        }
        if (activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
        return m8132d(activity, activity.getFragmentManager(), null, m8125k(activity));
    }

    /* renamed from: f */
    public ComponentCallbacks2C22236i m8130f(Context context) {
        if (context != null) {
            if (C22623j.m8015i() && !(context instanceof Application)) {
                if (context instanceof l) {
                    return m8128h((l) context);
                }
                if (context instanceof Activity) {
                    return m8131e((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return m8130f(contextWrapper.getBaseContext());
                    }
                }
            }
            if (this.f62495a == null) {
                synchronized (this) {
                    if (this.f62495a == null) {
                        this.f62495a = this.f62499e.mo8123a(ComponentCallbacks2C22222c.m8449b(context.getApplicationContext()), new C22555b(), new C22560g(), context.getApplicationContext());
                    }
                }
            }
            return this.f62495a;
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    /* renamed from: g */
    public ComponentCallbacks2C22236i m8129g(Fragment fragment) {
        Objects.requireNonNull(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (C22623j.m8016h()) {
            return m8130f(fragment.getContext().getApplicationContext());
        }
        return m8124l(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    /* renamed from: h */
    public ComponentCallbacks2C22236i m8128h(l lVar) {
        if (C22623j.m8016h()) {
            return m8130f(lVar.getApplicationContext());
        }
        if (lVar.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
        return m8124l(lVar, lVar.getSupportFragmentManager(), null, m8125k(lVar));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        androidx.fragment.app.FragmentManager fragmentManager;
        int i = message.what;
        o oVar = null;
        boolean z = true;
        if (i == 1) {
            fragmentManager = (FragmentManager) message.obj;
            oVar = this.f62496b.remove(fragmentManager);
        } else if (i != 2) {
            z = false;
            fragmentManager = null;
        } else {
            fragmentManager = (androidx.fragment.app.FragmentManager) message.obj;
            oVar = this.f62497c.remove(fragmentManager);
        }
        if (z && oVar == null && Log.isLoggable("RMRetriever", 5)) {
            String str = "Failed to remove expected request manager fragment, manager: " + fragmentManager;
        }
        return z;
    }

    /* renamed from: i */
    public final FragmentC22563k m8127i(FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        FragmentC22563k fragmentC22563k = (FragmentC22563k) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        FragmentC22563k fragmentC22563k2 = fragmentC22563k;
        if (fragmentC22563k == null) {
            FragmentC22563k fragmentC22563k3 = this.f62496b.get(fragmentManager);
            fragmentC22563k2 = fragmentC22563k3;
            if (fragmentC22563k3 == null) {
                fragmentC22563k2 = new FragmentC22563k();
                fragmentC22563k2.f62492f = fragment;
                if (fragment != null && fragment.getActivity() != null) {
                    fragmentC22563k2.m8137a(fragment.getActivity());
                }
                if (z) {
                    fragmentC22563k2.f62487a.m8141d();
                }
                this.f62496b.put(fragmentManager, fragmentC22563k2);
                fragmentManager.beginTransaction().add(fragmentC22563k2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f62498d.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return fragmentC22563k2;
    }

    /* renamed from: j */
    public final o m8126j(androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z) {
        Fragment fragment2;
        Fragment fragment3 = (o) fragmentManager.m42942K("com.bumptech.glide.manager");
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            Fragment fragment5 = (o) this.f62497c.get(fragmentManager);
            fragment4 = fragment5;
            if (fragment5 == null) {
                Fragment oVar = new o();
                ((o) oVar).f = fragment;
                if (fragment != null && fragment.getContext() != null) {
                    Fragment fragment6 = fragment;
                    while (true) {
                        fragment2 = fragment6;
                        if (fragment2.getParentFragment() == null) {
                            break;
                        }
                        fragment6 = fragment2.getParentFragment();
                    }
                    androidx.fragment.app.FragmentManager fragmentManager2 = fragment2.getFragmentManager();
                    if (fragmentManager2 != null) {
                        oVar.PA(fragment.getContext(), fragmentManager2);
                    }
                }
                if (z) {
                    ((o) oVar).a.m8141d();
                }
                this.f62497c.put(fragmentManager, oVar);
                C26907a c26907a = new C26907a(fragmentManager);
                c26907a.mo1122k(0, oVar, "com.bumptech.glide.manager", 1);
                c26907a.mo1126g();
                this.f62498d.obtainMessage(2, fragmentManager).sendToTarget();
                fragment4 = oVar;
            }
        }
        return fragment4;
    }

    /* renamed from: l */
    public final ComponentCallbacks2C22236i m8124l(Context context, androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z) {
        o m8126j = m8126j(fragmentManager, fragment, z);
        ComponentCallbacks2C22236i componentCallbacks2C22236i = m8126j.e;
        ComponentCallbacks2C22236i componentCallbacks2C22236i2 = componentCallbacks2C22236i;
        if (componentCallbacks2C22236i == null) {
            componentCallbacks2C22236i2 = this.f62499e.mo8123a(ComponentCallbacks2C22222c.m8449b(context), m8126j.a, m8126j.b, context);
            m8126j.e = componentCallbacks2C22236i2;
        }
        return componentCallbacks2C22236i2;
    }
}
