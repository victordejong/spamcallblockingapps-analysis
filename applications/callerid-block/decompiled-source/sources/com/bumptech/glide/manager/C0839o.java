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
        h m10799a(ComponentCallbacks2C0700b bVar, AbstractC0837l lVar, AbstractC0841p pVar, Context context);
    }

    public C0839o(AbstractC0840b bVar, C0707e eVar) {
        new a();
        new a();
        new Bundle();
        this.f3800f = bVar == null ? f3795h : bVar;
        this.f3799e = new Handler(Looper.getMainLooper(), this);
        this.f3801g = m10812b(eVar);
    }

    @TargetApi(17)
    /* renamed from: a */
    private static void m10813a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    /* renamed from: b */
    private static AbstractC0836k m10812b(C0707e eVar) {
        if (!C0822q.f3756h || !C0822q.f3755g) {
            return new g();
        }
        return eVar.m11316a(C0702c.C0705d.class) ? new i() : new j();
    }

    /* renamed from: c */
    private static Activity m10811c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m10811c(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @Deprecated
    /* renamed from: d */
    private h m10810d(Context context, FragmentManager fragmentManager, Fragment fragment, boolean z) {
        RequestManagerFragment j = m10804j(fragmentManager, fragment);
        h e = j.m10827e();
        h hVar = e;
        if (e == null) {
            hVar = this.f3800f.m10799a(ComponentCallbacks2C0700b.m11348c(context), j.m10829c(), j.m10826f(), context);
            if (z) {
                hVar.onStart();
            }
            j.m10821k(hVar);
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
    private r m10802l(AbstractC0325j jVar, androidx.fragment.app.Fragment fragment) {
        r Y = jVar.m13205Y("com.bumptech.glide.manager");
        r rVar = Y;
        if (Y == null) {
            r rVar2 = this.f3798d.get(jVar);
            rVar = rVar2;
            if (rVar2 == null) {
                rVar = new r();
                rVar.O1(fragment);
                this.f3798d.put(jVar, rVar);
                AbstractC0334p i = jVar.m13186i();
                i.m13093d(rVar, "com.bumptech.glide.manager");
                i.m13089h();
                this.f3799e.obtainMessage(2, jVar).sendToTarget();
            }
        }
        return rVar;
    }

    /* renamed from: m */
    private static boolean m10801m(Context context) {
        Activity c = m10811c(context);
        return c == null || !c.isFinishing();
    }

    /* renamed from: n */
    private h m10800n(Context context, AbstractC0325j jVar, androidx.fragment.app.Fragment fragment, boolean z) {
        r l = m10802l(jVar, fragment);
        h I1 = l.I1();
        h hVar = I1;
        if (I1 == null) {
            hVar = this.f3800f.m10799a(ComponentCallbacks2C0700b.m11348c(context), l.G1(), l.J1(), context);
            if (z) {
                hVar.onStart();
            }
            l.P1(hVar);
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
        Object obj;
        Map map;
        int i = message.what;
        Object obj2 = null;
        boolean z = true;
        if (i == 1) {
            obj = (FragmentManager) message.obj;
            map = this.f3797c;
        } else if (i != 2) {
            z = false;
            obj = null;
            if (z && obj2 == null && Log.isLoggable("RMRetriever", 5)) {
                Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
            }
            return z;
        } else {
            obj = (AbstractC0325j) message.obj;
            map = this.f3798d;
        }
        obj2 = map.remove(obj);
        if (z) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    /* renamed from: i */
    public RequestManagerFragment m10805i(Activity activity) {
        return m10804j(activity.getFragmentManager(), null);
    }

    /* renamed from: k */
    r m10803k(AbstractC0325j jVar) {
        return m10802l(jVar, null);
    }
}
