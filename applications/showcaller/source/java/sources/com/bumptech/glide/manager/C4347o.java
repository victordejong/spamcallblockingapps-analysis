package com.bumptech.glide.manager;

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
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.C3960d;
import com.bumptech.glide.C3966f;
import com.bumptech.glide.ComponentCallbacks2C3958c;
import com.bumptech.glide.ComponentCallbacks2C3971i;
import com.bumptech.glide.load.resource.bitmap.C4312q;
import com.bumptech.glide.p223p.C4383k;
import java.util.HashMap;
import java.util.Map;
import p020b.p036e.C1489a;
/* renamed from: com.bumptech.glide.manager.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o.class */
public class C4347o implements Handler.Callback {

    /* renamed from: d */
    private static final AbstractC4349b f13323d = new C4348a();

    /* renamed from: e */
    private volatile ComponentCallbacks2C3971i f13324e;

    /* renamed from: h */
    private final Handler f13327h;

    /* renamed from: i */
    private final AbstractC4349b f13328i;

    /* renamed from: m */
    private final AbstractC4343k f13332m;

    /* renamed from: f */
    final Map<FragmentManager, RequestManagerFragment> f13325f = new HashMap();

    /* renamed from: g */
    final Map<androidx.fragment.app.FragmentManager, C4352r> f13326g = new HashMap();

    /* renamed from: j */
    private final C1489a<View, Fragment> f13329j = new C1489a<>();

    /* renamed from: k */
    private final C1489a<View, android.app.Fragment> f13330k = new C1489a<>();

    /* renamed from: l */
    private final Bundle f13331l = new Bundle();

    /* renamed from: com.bumptech.glide.manager.o$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o$a.class */
    class C4348a implements AbstractC4349b {
        C4348a() {
        }

        @Override // com.bumptech.glide.manager.C4347o.AbstractC4349b
        /* renamed from: a */
        public ComponentCallbacks2C3971i mo22809a(ComponentCallbacks2C3958c componentCallbacks2C3958c, AbstractC4344l abstractC4344l, AbstractC4350p abstractC4350p, Context context) {
            return new ComponentCallbacks2C3971i(componentCallbacks2C3958c, abstractC4344l, abstractC4350p, context);
        }
    }

    /* renamed from: com.bumptech.glide.manager.o$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o$b.class */
    public interface AbstractC4349b {
        /* renamed from: a */
        ComponentCallbacks2C3971i mo22809a(ComponentCallbacks2C3958c componentCallbacks2C3958c, AbstractC4344l abstractC4344l, AbstractC4350p abstractC4350p, Context context);
    }

    public C4347o(AbstractC4349b abstractC4349b, C3966f c3966f) {
        this.f13328i = abstractC4349b == null ? f13323d : abstractC4349b;
        this.f13327h = new Handler(Looper.getMainLooper(), this);
        this.f13332m = m22822b(c3966f);
    }

    @TargetApi(17)
    /* renamed from: a */
    private static void m22823a(Activity activity) {
        if (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed()) {
            return;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    /* renamed from: b */
    private static AbstractC4343k m22822b(C3966f c3966f) {
        if (!C4312q.f13274b || !C4312q.f13273a) {
            return new C4339g();
        }
        return c3966f.m23663a(C3960d.C3964d.class) ? new ComponentCallbacks2C4341i() : new C4342j();
    }

    /* renamed from: c */
    private static Activity m22821c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return m22821c(((ContextWrapper) context).getBaseContext());
    }

    @Deprecated
    /* renamed from: d */
    private ComponentCallbacks2C3971i m22820d(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        RequestManagerFragment m22814j = m22814j(fragmentManager, fragment);
        ComponentCallbacks2C3971i m22842e = m22814j.m22842e();
        ComponentCallbacks2C3971i componentCallbacks2C3971i = m22842e;
        if (m22842e == null) {
            componentCallbacks2C3971i = this.f13328i.mo22809a(ComponentCallbacks2C3958c.m23695c(context), m22814j.m22844c(), m22814j.m22841f(), context);
            if (z) {
                componentCallbacks2C3971i.onStart();
            }
            m22814j.m22836k(componentCallbacks2C3971i);
        }
        return componentCallbacks2C3971i;
    }

    /* renamed from: h */
    private ComponentCallbacks2C3971i m22816h(Context context) {
        if (this.f13324e == null) {
            synchronized (this) {
                if (this.f13324e == null) {
                    this.f13324e = this.f13328i.mo22809a(ComponentCallbacks2C3958c.m23695c(context.getApplicationContext()), new C4332b(), new C4340h(), context.getApplicationContext());
                }
            }
        }
        return this.f13324e;
    }

    /* renamed from: j */
    private RequestManagerFragment m22814j(FragmentManager fragmentManager, android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        RequestManagerFragment requestManagerFragment2 = requestManagerFragment;
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment3 = this.f13325f.get(fragmentManager);
            requestManagerFragment2 = requestManagerFragment3;
            if (requestManagerFragment3 == null) {
                requestManagerFragment2 = new RequestManagerFragment();
                requestManagerFragment2.m22837j(fragment);
                this.f13325f.put(fragmentManager, requestManagerFragment2);
                fragmentManager.beginTransaction().add(requestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f13327h.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return requestManagerFragment2;
    }

    /* renamed from: l */
    private C4352r m22812l(androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment) {
        C4352r c4352r = (C4352r) fragmentManager.m32784i0("com.bumptech.glide.manager");
        C4352r c4352r2 = c4352r;
        if (c4352r == null) {
            C4352r c4352r3 = this.f13326g.get(fragmentManager);
            c4352r2 = c4352r3;
            if (c4352r3 == null) {
                c4352r2 = new C4352r();
                c4352r2.m22790k2(fragment);
                this.f13326g.put(fragmentManager, c4352r2);
                fragmentManager.m32776l().m32506e(c4352r2, "com.bumptech.glide.manager").mo32502i();
                this.f13327h.obtainMessage(2, fragmentManager).sendToTarget();
            }
        }
        return c4352r2;
    }

    /* renamed from: m */
    private static boolean m22811m(Context context) {
        Activity m22821c = m22821c(context);
        return m22821c == null || !m22821c.isFinishing();
    }

    /* renamed from: n */
    private ComponentCallbacks2C3971i m22810n(Context context, androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment, boolean z) {
        C4352r m22812l = m22812l(fragmentManager, fragment);
        ComponentCallbacks2C3971i m22796e2 = m22812l.m22796e2();
        ComponentCallbacks2C3971i componentCallbacks2C3971i = m22796e2;
        if (m22796e2 == null) {
            componentCallbacks2C3971i = this.f13328i.mo22809a(ComponentCallbacks2C3958c.m23695c(context), m22812l.m22798c2(), m22812l.m22795f2(), context);
            if (z) {
                componentCallbacks2C3971i.onStart();
            }
            m22812l.m22789l2(componentCallbacks2C3971i);
        }
        return componentCallbacks2C3971i;
    }

    /* renamed from: e */
    public ComponentCallbacks2C3971i m22819e(Activity activity) {
        if (C4383k.m22702p()) {
            return m22818f(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return m22817g((FragmentActivity) activity);
        }
        m22823a(activity);
        this.f13332m.mo22826a(activity);
        return m22820d(activity, activity.getFragmentManager(), null, m22811m(activity));
    }

    /* renamed from: f */
    public ComponentCallbacks2C3971i m22818f(Context context) {
        if (context != null) {
            if (C4383k.m22701q() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return m22817g((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return m22819e((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return m22818f(contextWrapper.getBaseContext());
                    }
                }
            }
            return m22816h(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    /* renamed from: g */
    public ComponentCallbacks2C3971i m22817g(FragmentActivity fragmentActivity) {
        if (C4383k.m22702p()) {
            return m22818f(fragmentActivity.getApplicationContext());
        }
        m22823a(fragmentActivity);
        this.f13332m.mo22826a(fragmentActivity);
        return m22810n(fragmentActivity, fragmentActivity.m32877A(), null, m22811m(fragmentActivity));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        androidx.fragment.app.FragmentManager fragmentManager;
        int i = message.what;
        C4352r c4352r = null;
        boolean z = true;
        if (i == 1) {
            fragmentManager = (FragmentManager) message.obj;
            c4352r = this.f13325f.remove(fragmentManager);
        } else if (i != 2) {
            z = false;
            fragmentManager = null;
        } else {
            fragmentManager = (androidx.fragment.app.FragmentManager) message.obj;
            c4352r = this.f13326g.remove(fragmentManager);
        }
        if (z && c4352r == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + fragmentManager);
        }
        return z;
    }

    @Deprecated
    /* renamed from: i */
    public RequestManagerFragment m22815i(Activity activity) {
        return m22814j(activity.getFragmentManager(), null);
    }

    /* renamed from: k */
    public C4352r m22813k(androidx.fragment.app.FragmentManager fragmentManager) {
        return m22812l(fragmentManager, null);
    }
}
