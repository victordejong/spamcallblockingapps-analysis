package com.appnext.core;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import com.appnext.base.C0472a;
import e.f.a.n.q.d.y;
import java.lang.ref.WeakReference;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1451f.p1452a.p1457n.p1460o.C22387r;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
/* renamed from: com.appnext.core.j */
/* loaded from: classes-dex2jar.jar:com/appnext/core/j.class */
public class C0557j {

    /* renamed from: dR */
    private static volatile C0557j f1831dR;

    /* renamed from: com.appnext.core.j$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/core/j$a.class */
    public interface AbstractC0559a {
        /* renamed from: aw */
        void mo42356aw();
    }

    private C0557j() {
    }

    /* renamed from: a */
    private void m42361a(Context context, ImageView imageView, String str, int i, boolean z, AbstractC0559a abstractC0559a) {
        WeakReference weakReference = null;
        if (abstractC0559a != null) {
            try {
                weakReference = new WeakReference(abstractC0559a);
            } catch (Throwable th) {
                C0472a.m42577a("ImageLoader$displayImage", th);
                return;
            }
        }
        if (context == null || imageView == null || TextUtils.isEmpty(str)) {
            return;
        }
        final WeakReference weakReference2 = weakReference;
        C22234h<Drawable> mo8433H = ComponentCallbacks2C22222c.m8446e(context.getApplicationContext()).mo8407r(str).mo8433H(new AbstractC22590g<Drawable>() { // from class: com.appnext.core.j.1
            /* renamed from: a */
            public final boolean onResourceReady(Drawable drawable, Object obj, AbstractC22598k<Drawable> abstractC22598k, EnumC22258a enumC22258a, boolean z2) {
                try {
                    WeakReference weakReference3 = weakReference2;
                    if (weakReference3 == null) {
                        return false;
                    }
                    weakReference3.get();
                    return false;
                } catch (Throwable th2) {
                    return false;
                }
            }

            @Override // p193e.p1451f.p1452a.p1476r.AbstractC22590g
            public final boolean onLoadFailed(C22387r c22387r, Object obj, AbstractC22598k<Drawable> abstractC22598k, boolean z2) {
                AbstractC0559a abstractC0559a2;
                try {
                    WeakReference weakReference3 = weakReference2;
                    if (weakReference3 == null || (abstractC0559a2 = (AbstractC0559a) weakReference3.get()) == null) {
                        return false;
                    }
                    abstractC0559a2.mo42356aw();
                    return false;
                } catch (Throwable th2) {
                    return false;
                }
            }
        });
        C22591h c22591h = new C22591h();
        if (i > 0) {
            c22591h.m8111C(new y(i), true);
        }
        if (z) {
            c22591h.mo8099i(AbstractC22364k.f62124a);
        }
        mo8433H.mo8106a(c22591h).m8427O(imageView);
    }

    /* renamed from: ax */
    public static C0557j m42359ax() {
        if (f1831dR == null) {
            synchronized (C0557j.class) {
                try {
                    if (f1831dR == null) {
                        f1831dR = new C0557j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1831dR;
    }

    /* renamed from: a */
    public final void m42362a(Context context, ImageView imageView, String str, int i, AbstractC0559a abstractC0559a) {
        m42361a(context, imageView, str, 16, false, abstractC0559a);
    }

    /* renamed from: a */
    public final void m42360a(Context context, ImageView imageView, String str, AbstractC0559a abstractC0559a) {
        m42361a(context, imageView, str, 0, false, abstractC0559a);
    }

    /* renamed from: b */
    public final void m42358b(Context context, ImageView imageView, String str, int i, AbstractC0559a abstractC0559a) {
        m42361a(context, imageView, str, 16, true, abstractC0559a);
    }
}
