package p193e.p194a.p1342w4.p1345t.p1348b;

import android.content.Context;
import java.util.Collection;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p751f4.p762g.C14030t;
import w3.b.a.b;
import x3.a0;
@Deprecated
/* renamed from: e.a.w4.t.b.b */
/* loaded from: classes13-dex2jar.jar:e/a/w4/t/b/b.class */
public abstract class AbstractC21309b {

    /* renamed from: a */
    public static volatile AbstractC21309b f59689a;

    /* renamed from: b */
    public static AbstractC21309b m9913b(Context context) {
        AbstractC21309b abstractC21309b = f59689a;
        AbstractC21309b abstractC21309b2 = abstractC21309b;
        if (abstractC21309b == null) {
            synchronized (AbstractC21309b.class) {
                try {
                    AbstractC21309b abstractC21309b3 = f59689a;
                    abstractC21309b2 = abstractC21309b3;
                    if (abstractC21309b3 == null) {
                        abstractC21309b2 = new C21310c(context.getApplicationContext());
                        f59689a = abstractC21309b2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return abstractC21309b2;
    }

    /* renamed from: a */
    public abstract void mo9912a(Collection<C17409e> collection);

    /* renamed from: c */
    public abstract C17409e mo9911c(String str);

    /* renamed from: d */
    public abstract a0<C14030t> mo9910d(String str);

    /* renamed from: e */
    public abstract void mo9909e(String str, a0<C14030t> a0Var);

    /* renamed from: f */
    public abstract void mo9908f(String str, b bVar);
}
