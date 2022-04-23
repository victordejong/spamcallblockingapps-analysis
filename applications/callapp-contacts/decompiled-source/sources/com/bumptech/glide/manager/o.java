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
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.f;
import com.bumptech.glide.k;
import com.bumptech.glide.load.resource.bitmap.q;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o.class */
public final class o implements Handler.Callback {
    private static final a j = new a() { // from class: com.bumptech.glide.manager.o.1
        @Override // com.bumptech.glide.manager.o.a
        public final k a(c cVar, l lVar, p pVar, Context context) {
            return new k(cVar, lVar, pVar, context);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private volatile k f7763c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f7764d;
    private final a e;
    private final k i;

    /* renamed from: a  reason: collision with root package name */
    final Map<FragmentManager, RequestManagerFragment> f7761a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<androidx.fragment.app.FragmentManager, r> f7762b = new HashMap();
    private final androidx.b.a<View, Fragment> f = new androidx.b.a<>();
    private final androidx.b.a<View, android.app.Fragment> g = new androidx.b.a<>();
    private final Bundle h = new Bundle();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/o$a.class */
    public interface a {
        k a(c cVar, l lVar, p pVar, Context context);
    }

    public o(a aVar, f fVar) {
        this.e = aVar == null ? j : aVar;
        this.f7764d = new Handler(Looper.getMainLooper(), this);
        this.i = (!q.f7680b || !q.f7679a) ? new g() : fVar.a(d.c.class) ? new i() : new j();
    }

    @Deprecated
    private k a(Context context, FragmentManager fragmentManager, boolean z) {
        RequestManagerFragment a2 = a(fragmentManager, (android.app.Fragment) null);
        k kVar = a2.f7750c;
        k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = this.e.a(c.a(context), a2.f7748a, a2.f7749b, context);
            if (z) {
                kVar2.a();
            }
            a2.f7750c = kVar2;
        }
        return kVar2;
    }

    private k a(Context context, androidx.fragment.app.FragmentManager fragmentManager, boolean z) {
        r a2 = a(fragmentManager, (Fragment) null);
        k kVar = a2.f7770c;
        k kVar2 = kVar;
        if (kVar == null) {
            kVar2 = this.e.a(c.a(context), a2.f7768a, a2.f7769b, context);
            if (z) {
                kVar2.a();
            }
            a2.f7770c = kVar2;
        }
        return kVar2;
    }

    private k a(FragmentActivity fragmentActivity) {
        if (com.bumptech.glide.g.k.d()) {
            return a(fragmentActivity.getApplicationContext());
        }
        c((Activity) fragmentActivity);
        return a(fragmentActivity, fragmentActivity.getSupportFragmentManager(), d(fragmentActivity));
    }

    private RequestManagerFragment a(FragmentManager fragmentManager, android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        RequestManagerFragment requestManagerFragment2 = requestManagerFragment;
        if (requestManagerFragment == null) {
            RequestManagerFragment requestManagerFragment3 = this.f7761a.get(fragmentManager);
            requestManagerFragment2 = requestManagerFragment3;
            if (requestManagerFragment3 == null) {
                requestManagerFragment2 = new RequestManagerFragment();
                requestManagerFragment2.a((android.app.Fragment) null);
                this.f7761a.put(fragmentManager, requestManagerFragment2);
                fragmentManager.beginTransaction().add(requestManagerFragment2, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f7764d.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return requestManagerFragment2;
    }

    private k b(Activity activity) {
        if (com.bumptech.glide.g.k.d()) {
            return a(activity.getApplicationContext());
        }
        if (activity instanceof FragmentActivity) {
            return a((FragmentActivity) activity);
        }
        c(activity);
        return a(activity, activity.getFragmentManager(), d(activity));
    }

    private k b(Context context) {
        if (this.f7763c == null) {
            synchronized (this) {
                if (this.f7763c == null) {
                    this.f7763c = this.e.a(c.a(context.getApplicationContext()), new b(), new h(), context.getApplicationContext());
                }
            }
        }
        return this.f7763c;
    }

    private static Activity c(Context context) {
        while (!(context instanceof Activity)) {
            if (!(context instanceof ContextWrapper)) {
                return null;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return (Activity) context;
    }

    private static void c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    private static boolean d(Context context) {
        Activity c2 = c(context);
        return c2 == null || !c2.isFinishing();
    }

    public final k a(Context context) {
        while (context != null) {
            if (com.bumptech.glide.g.k.c() && !(context instanceof Application)) {
                if (context instanceof FragmentActivity) {
                    return a((FragmentActivity) context);
                }
                if (context instanceof Activity) {
                    return b((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    ContextWrapper contextWrapper = (ContextWrapper) context;
                    if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                        context = contextWrapper.getBaseContext();
                    }
                }
            }
            return b(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final RequestManagerFragment a(Activity activity) {
        return a(activity.getFragmentManager(), (android.app.Fragment) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final r a(androidx.fragment.app.FragmentManager fragmentManager, Fragment fragment) {
        r rVar = (r) fragmentManager.a("com.bumptech.glide.manager");
        r rVar2 = rVar;
        if (rVar == null) {
            r rVar3 = this.f7762b.get(fragmentManager);
            rVar2 = rVar3;
            if (rVar3 == null) {
                rVar2 = new r();
                rVar2.f7771d = null;
                this.f7762b.put(fragmentManager, rVar2);
                fragmentManager.a().a(rVar2, "com.bumptech.glide.manager").c();
                this.f7764d.obtainMessage(2, fragmentManager).sendToTarget();
            }
        }
        return rVar2;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Object obj;
        int i = message.what;
        Object obj2 = null;
        boolean z = true;
        if (i == 1) {
            obj = (FragmentManager) message.obj;
            obj2 = this.f7761a.remove(obj);
        } else if (i != 2) {
            z = false;
            obj = null;
        } else {
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            obj2 = this.f7762b.remove(obj);
        }
        if (z && obj2 == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: ".concat(String.valueOf(obj)));
        }
        return z;
    }
}
