package com.bumptech.glide.manager;

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
import androidx.p023b.C0428a;
import com.bumptech.glide.C3556d;
import com.bumptech.glide.C3610f;
import com.bumptech.glide.ComponentCallbacks2C3548c;
import com.bumptech.glide.ComponentCallbacks2C3653k;
import com.bumptech.glide.load.resource.bitmap.C3886q;
import com.bumptech.glide.p116g.C3644k;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.manager.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o.class */
public final class C3946o implements Handler.Callback {

    /* renamed from: j */
    private static final AbstractC3948a f14376j = new AbstractC3948a() { // from class: com.bumptech.glide.manager.o.1
        @Override // com.bumptech.glide.manager.C3946o.AbstractC3948a
        /* renamed from: a */
        public final ComponentCallbacks2C3653k mo37161a(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3943l abstractC3943l, AbstractC3949p abstractC3949p, Context context) {
            return new ComponentCallbacks2C3653k(componentCallbacks2C3548c, abstractC3943l, abstractC3949p, context);
        }
    };

    /* renamed from: c */
    private volatile ComponentCallbacks2C3653k f14379c;

    /* renamed from: d */
    private final Handler f14380d;

    /* renamed from: e */
    private final AbstractC3948a f14381e;

    /* renamed from: i */
    private final AbstractC3942k f14385i;

    /* renamed from: a */
    final Map<FragmentManager, RequestManagerFragment> f14377a = new HashMap();

    /* renamed from: b */
    final Map<androidx.fragment.app.FragmentManager, C3951r> f14378b = new HashMap();

    /* renamed from: f */
    private final C0428a<View, Fragment> f14382f = new C0428a<>();

    /* renamed from: g */
    private final C0428a<View, android.app.Fragment> f14383g = new C0428a<>();

    /* renamed from: h */
    private final Bundle f14384h = new Bundle();

    /* renamed from: com.bumptech.glide.manager.o$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o$a.class */
    public interface AbstractC3948a {
        /* renamed from: a */
        ComponentCallbacks2C3653k mo37161a(ComponentCallbacks2C3548c componentCallbacks2C3548c, AbstractC3943l abstractC3943l, AbstractC3949p abstractC3949p, Context context);
    }

    public C3946o(AbstractC3948a abstractC3948a, C3610f c3610f) {
        this.f14381e = abstractC3948a == null ? f14376j : abstractC3948a;
        this.f14380d = new Handler(Looper.getMainLooper(), this);
        this.f14385i = (!C3886q.f14258b || !C3886q.f14257a) ? new C3938g() : c3610f.m37620a(C3556d.C3561c.class) ? new ComponentCallbacks2C3940i() : new C3941j();
    }

    @Deprecated
    /* renamed from: a */
    private ComponentCallbacks2C3653k m37170a(Context context, FragmentManager fragmentManager, boolean z) {
        RequestManagerFragment m37172a = m37172a(fragmentManager, (android.app.Fragment) null);
        ComponentCallbacks2C3653k componentCallbacks2C3653k = m37172a.f14362c;
        ComponentCallbacks2C3653k componentCallbacks2C3653k2 = componentCallbacks2C3653k;
        if (componentCallbacks2C3653k == null) {
            componentCallbacks2C3653k2 = this.f14381e.mo37161a(ComponentCallbacks2C3548c.m37723a(context), m37172a.f14360a, m37172a.f14361b, context);
            if (z) {
                componentCallbacks2C3653k2.mo37150a();
            }
            m37172a.f14362c = componentCallbacks2C3653k2;
        }
        return componentCallbacks2C3653k2;
    }

    /* renamed from: a */
    private ComponentCallbacks2C3653k m37169a(Context context, androidx.fragment.app.FragmentManager fragmentManager, boolean z) {
        C3951r m37167a = m37167a(fragmentManager, (Fragment) null);
        ComponentCallbacks2C3653k componentCallbacks2C3653k = m37167a.f14391c;
        ComponentCallbacks2C3653k componentCallbacks2C3653k2 = componentCallbacks2C3653k;
        if (componentCallbacks2C3653k == null) {
            componentCallbacks2C3653k2 = this.f14381e.mo37161a(ComponentCallbacks2C3548c.m37723a(context), m37167a.f14389a, m37167a.f14390b, context);
            if (z) {
                componentCallbacks2C3653k2.mo37150a();
            }
            m37167a.f14391c = componentCallbacks2C3653k2;
        }
        return componentCallbacks2C3653k2;
    }

    /* renamed from: a */
    private ComponentCallbacks2C3653k m37168a(FragmentActivity fragmentActivity) {
        if (C3644k.m37566d()) {
            return m37171a(fragmentActivity.getApplicationContext());
        }
        m37164c((Activity) fragmentActivity);
        return m37169a(fragmentActivity, fragmentActivity.getSupportFragmentManager(), m37162d(fragmentActivity));
    }

    /* renamed from: a */
    private RequestManagerFragment m37172a(FragmentManager fragmentManager, android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        RequestManagerFragment requestManagerFragment2 = requestManagerFragment;
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment3 = this.f14377a.get(fragmentManager);
            requestManagerFragment2 = requestManagerFragment3;
            if (requestManagerFragment3 == null) {
                requestManagerFragment2 = new RequestManagerFragment();
                requestManagerFragment2.m37186a((android.app.Fragment) null);
                this.f14377a.put(fragmentManager, requestManagerFragment2);
                fragmentManager.beginTransaction().add(requestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f14380d.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return requestManagerFragment2;
    }

    /* renamed from: b */
    private ComponentCallbacks2C3653k m37166b(Activity activity) {
        if (C3644k.m37566d()) {
            return m37171a(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return m37168a((FragmentActivity) activity);
        }
        m37164c(activity);
        return m37170a(activity, activity.getFragmentManager(), m37162d(activity));
    }

    /* renamed from: b */
    private ComponentCallbacks2C3653k m37165b(Context context) {
        if (this.f14379c == null) {
            synchronized (this) {
                if (this.f14379c == null) {
                    this.f14379c = this.f14381e.mo37161a(ComponentCallbacks2C3548c.m37723a(context.getApplicationContext()), new C3931b(), new C3939h(), context.getApplicationContext());
                }
            }
        }
        return this.f14379c;
    }

    /* renamed from: c */
    private static Activity m37163c(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    /* renamed from: c */
    private static void m37164c(Activity activity) {
        if (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed()) {
            return;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    /* renamed from: d */
    private static boolean m37162d(Context context) {
        Activity m37163c = m37163c(context);
        return m37163c == null || !m37163c.isFinishing();
    }

    /* renamed from: a */
    public final ComponentCallbacks2C3653k m37171a(Context context) {
        while (context != null) {
            if (C3644k.m37567c() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return m37168a((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return m37166b((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        context = contextWrapper.getBaseContext();
                    }
                }
            }
            return m37165b(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    @Deprecated
    /* renamed from: a */
    public final RequestManagerFragment m37173a(Activity activity) {
        return m37172a(activity.getFragmentManager(), (android.app.Fragment) null);
    }

    /* renamed from: a */
    public final C3951r m37167a(androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment) {
        C3951r c3951r = (C3951r) fragmentManager.m43740a("com.bumptech.glide.manager");
        C3951r c3951r2 = c3951r;
        if (c3951r == null) {
            C3951r c3951r3 = this.f14378b.get(fragmentManager);
            c3951r2 = c3951r3;
            if (c3951r3 == null) {
                c3951r2 = new C3951r();
                c3951r2.f14392d = null;
                this.f14378b.put(fragmentManager, c3951r2);
                fragmentManager.m43765a().m43537a(c3951r2, "com.bumptech.glide.manager").mo43532c();
                this.f14380d.obtainMessage(2, fragmentManager).sendToTarget();
            }
        }
        return c3951r2;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        androidx.fragment.app.FragmentManager fragmentManager;
        int i = message.what;
        C3951r c3951r = null;
        boolean z = true;
        if (i == 1) {
            fragmentManager = (FragmentManager) message.obj;
            c3951r = this.f14377a.remove(fragmentManager);
        } else if (i != 2) {
            z = false;
            fragmentManager = null;
        } else {
            fragmentManager = (androidx.fragment.app.FragmentManager) message.obj;
            c3951r = this.f14378b.remove(fragmentManager);
        }
        if (z && c3951r == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: ".concat(String.valueOf(fragmentManager)));
        }
        return z;
    }
}
