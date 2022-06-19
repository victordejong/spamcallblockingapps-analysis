package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.fragment.app.AbstractC0325j;
import androidx.fragment.app.AbstractC0334p;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.C0702c;
import com.bumptech.glide.C0707e;
import com.bumptech.glide.ComponentCallbacks2C0700b;
import com.bumptech.glide.h;
import com.bumptech.glide.load.resource.bitmap.C0822q;
import com.bumptech.glide.p029o.C0857k;
import d.e.a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.manager.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o.class */
public class C0839o implements Handler.Callback {

    /* renamed from: h */
    private static final AbstractC0840b f3795h = new a();

    /* renamed from: b */
    private volatile h f3796b;

    /* renamed from: c */
    final Map<FragmentManager, RequestManagerFragment> f3797c = new HashMap();

    /* renamed from: d */
    final Map<AbstractC0325j, r> f3798d = new HashMap();

    /* renamed from: e */
    private final Handler f3799e;

    /* renamed from: f */
    private final AbstractC0840b f3800f;

    /* renamed from: g */
    private final AbstractC0836k f3801g;

    /* renamed from: com.bumptech.glide.manager.o$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o$b.class */
    public interface AbstractC0840b {
        /* renamed from: a */
        h m10799a(ComponentCallbacks2C0700b componentCallbacks2C0700b, AbstractC0837l abstractC0837l, AbstractC0841p abstractC0841p, Context context);
    }

    public C0839o(AbstractC0840b abstractC0840b, C0707e c0707e) {
        new a();
        new a();
        new Bundle();
        this.f3800f = abstractC0840b == null ? f3795h : abstractC0840b;
        this.f3799e = new Handler(Looper.getMainLooper(), this);
        this.f3801g = m10812b(c0707e);
    }

    @TargetApi(17)
    /* renamed from: a */
    private static void m10813a(Activity activity) {
        if (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed()) {
            return;
        }
        throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
    }

    /* renamed from: b */
    private static AbstractC0836k m10812b(C0707e c0707e) {
        if (!C0822q.f3756h || !C0822q.f3755g) {
            return new g();
        }
        return c0707e.m11316a(C0702c.C0705d.class) ? new i() : new j();
    }

    /* renamed from: c */
    private static Activity m10811c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (!(context instanceof ContextWrapper)) {
            return null;
        }
        return m10811c(((ContextWrapper) context).getBaseContext());
    }

    @Deprecated
    /* renamed from: d */
    private h m10810d(Context context, FragmentManager fragmentManager, Fragment fragment, boolean z) {
        RequestManagerFragment m10804j = m10804j(fragmentManager, fragment);
        h m10827e = m10804j.m10827e();
        h hVar = m10827e;
        if (m10827e == null) {
            hVar = this.f3800f.m10799a(ComponentCallbacks2C0700b.m11348c(context), m10804j.m10829c(), m10804j.m10826f(), context);
            if (z) {
                hVar.onStart();
            }
            m10804j.m10821k(hVar);
        }
        return hVar;
    }

    /* renamed from: h */
    private h m10806h(Context context) {
        if (this.f3796b == null) {
            synchronized (this) {
                if (this.f3796b == null) {
                    this.f3796b = this.f3800f.m10799a(ComponentCallbacks2C0700b.m11348c(context.getApplicationContext()), new b(), new h(), context.getApplicationContext());
                }
            }
        }
        return this.f3796b;
    }

    /* renamed from: j */
    private RequestManagerFragment m10804j(FragmentManager fragmentManager, Fragment fragment) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        RequestManagerFragment requestManagerFragment2 = requestManagerFragment;
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment3 = this.f3797c.get(fragmentManager);
            requestManagerFragment2 = requestManagerFragment3;
            if (requestManagerFragment3 == null) {
                requestManagerFragment2 = new RequestManagerFragment();
                requestManagerFragment2.m10822j(fragment);
                this.f3797c.put(fragmentManager, requestManagerFragment2);
                fragmentManager.beginTransaction().add(requestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f3799e.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return requestManagerFragment2;
    }

    /* renamed from: l */
    private r m10802l(AbstractC0325j abstractC0325j, androidx.fragment.app.Fragment fragment) {
        r m13205Y = abstractC0325j.m13205Y("com.bumptech.glide.manager");
        r rVar = m13205Y;
        if (m13205Y == null) {
            r rVar2 = this.f3798d.get(abstractC0325j);
            rVar = rVar2;
            if (rVar2 == null) {
                rVar = new r();
                rVar.O1(fragment);
                this.f3798d.put(abstractC0325j, rVar);
                AbstractC0334p m13186i = abstractC0325j.m13186i();
                m13186i.m13093d(rVar, "com.bumptech.glide.manager");
                m13186i.m13089h();
                this.f3799e.obtainMessage(2, abstractC0325j).sendToTarget();
            }
        }
        return rVar;
    }

    /* renamed from: m */
    private static boolean m10801m(Context context) {
        Activity m10811c = m10811c(context);
        return m10811c == null || !m10811c.isFinishing();
    }

    /* renamed from: n */
    private h m10800n(Context context, AbstractC0325j abstractC0325j, androidx.fragment.app.Fragment fragment, boolean z) {
        r m10802l = m10802l(abstractC0325j, fragment);
        h I1 = m10802l.I1();
        h hVar = I1;
        if (I1 == null) {
            hVar = this.f3800f.m10799a(ComponentCallbacks2C0700b.m11348c(context), m10802l.G1(), m10802l.J1(), context);
            if (z) {
                hVar.onStart();
            }
            m10802l.P1(hVar);
        }
        return hVar;
    }

    /* renamed from: e */
    public h m10809e(Activity activity) {
        if (C0857k.m10742p()) {
            return m10808f(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return m10807g((FragmentActivity) activity);
        }
        m10813a(activity);
        this.f3801g.m10817a(activity);
        return m10810d(activity, activity.getFragmentManager(), null, m10801m(activity));
    }

    /* renamed from: f */
    public h m10808f(Context context) {
        if (context != null) {
            if (C0857k.m10741q() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return m10807g((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return m10809e((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        return m10808f(contextWrapper.getBaseContext());
                    }
                }
            }
            return m10806h(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    /* renamed from: g */
    public h m10807g(FragmentActivity fragmentActivity) {
        if (C0857k.m10742p()) {
            return m10808f(fragmentActivity.getApplicationContext());
        }
        m10813a(fragmentActivity);
        this.f3801g.m10817a(fragmentActivity);
        return m10800n(fragmentActivity, fragmentActivity.v(), null, m10801m(fragmentActivity));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        AbstractC0325j abstractC0325j;
        Map<AbstractC0325j, r> map;
        int i = message.what;
        Object obj = null;
        boolean z = true;
        if (i == 1) {
            abstractC0325j = (FragmentManager) message.obj;
            map = this.f3797c;
        } else if (i != 2) {
            z = false;
            abstractC0325j = null;
            if (z && obj == null && Log.isLoggable("RMRetriever", 5)) {
                Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + abstractC0325j);
            }
            return z;
        } else {
            abstractC0325j = (AbstractC0325j) message.obj;
            map = this.f3798d;
        }
        obj = map.remove(abstractC0325j);
        if (z) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + abstractC0325j);
        }
        return z;
    }

    @Deprecated
    /* renamed from: i */
    public RequestManagerFragment m10805i(Activity activity) {
        return m10804j(activity.getFragmentManager(), null);
    }

    /* renamed from: k */
    r m10803k(AbstractC0325j abstractC0325j) {
        return m10802l(abstractC0325j, null);
    }
}
