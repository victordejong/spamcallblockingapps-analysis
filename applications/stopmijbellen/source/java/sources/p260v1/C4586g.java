package p260v1;

import android.content.Context;
import android.util.SparseArray;
import p003a2.AbstractC0008a;
import p134j4.C3187b1;
import p134j4.C3245r0;
import p134j4.C3259w;
import p189o4.AbstractC3882s;
import p189o4.C3881r;
import p226s.C4251a;
import p226s.C4255d;
/* renamed from: v1.g */
/* loaded from: classes-dex2jar.jar:v1/g.class */
public class C4586g implements AbstractC3882s {

    /* renamed from: e */
    public static C4586g f14171e;

    /* renamed from: a */
    public Object f14172a;

    /* renamed from: b */
    public Object f14173b;

    /* renamed from: c */
    public Object f14174c;

    /* renamed from: d */
    public Object f14175d;

    public /* synthetic */ C4586g() {
        this.f14172a = new C4251a();
        this.f14173b = new SparseArray();
        this.f14174c = new C4255d();
        this.f14175d = new C4251a();
    }

    public /* synthetic */ C4586g(Context context, AbstractC0008a abstractC0008a) {
        Context applicationContext = context.getApplicationContext();
        this.f14172a = new C4576a(applicationContext, abstractC0008a);
        this.f14173b = new C4577b(applicationContext, abstractC0008a);
        this.f14174c = new C4582e(applicationContext, abstractC0008a);
        this.f14175d = new C4585f(applicationContext, abstractC0008a);
    }

    public /* synthetic */ C4586g(AbstractC3882s abstractC3882s, AbstractC3882s abstractC3882s2, AbstractC3882s abstractC3882s3, AbstractC3882s abstractC3882s4) {
        this.f14172a = abstractC3882s;
        this.f14173b = abstractC3882s2;
        this.f14174c = abstractC3882s3;
        this.f14175d = abstractC3882s4;
    }

    /* renamed from: a */
    public static C4586g m751a(Context context, AbstractC0008a abstractC0008a) {
        C4586g c4586g;
        synchronized (C4586g.class) {
            try {
                if (f14171e == null) {
                    f14171e = new C4586g(context, abstractC0008a);
                }
                c4586g = f14171e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4586g;
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        Object zza = ((AbstractC3882s) this.f14172a).zza();
        return new C3187b1((C3259w) zza, C3881r.m1736a((AbstractC3882s) this.f14173b), (C3245r0) ((AbstractC3882s) this.f14174c).zza(), C3881r.m1736a((AbstractC3882s) this.f14175d));
    }
}
