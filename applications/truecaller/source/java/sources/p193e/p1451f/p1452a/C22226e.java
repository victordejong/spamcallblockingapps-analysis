package p193e.p1451f.p1452a;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.List;
import java.util.Map;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1460o.C22369l;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p1451f.p1452a.p1476r.C22591h;
import p193e.p1451f.p1452a.p1476r.p1477k.C22596g;
/* renamed from: e.f.a.e */
/* loaded from: classes-dex2jar.jar:e/f/a/e.class */
public class C22226e extends ContextWrapper {

    /* renamed from: k */
    public static final AbstractC22239j<?, ?> f61736k = new C22221b();

    /* renamed from: a */
    public final AbstractC22301b f61737a;

    /* renamed from: b */
    public final C22228g f61738b;

    /* renamed from: c */
    public final C22596g f61739c;

    /* renamed from: d */
    public final ComponentCallbacks2C22222c.AbstractC22223a f61740d;

    /* renamed from: e */
    public final List<AbstractC22590g<Object>> f61741e;

    /* renamed from: f */
    public final Map<Class<?>, AbstractC22239j<?, ?>> f61742f;

    /* renamed from: g */
    public final C22369l f61743g;

    /* renamed from: h */
    public final boolean f61744h;

    /* renamed from: i */
    public final int f61745i;

    /* renamed from: j */
    public C22591h f61746j;

    public C22226e(Context context, AbstractC22301b abstractC22301b, C22228g c22228g, C22596g c22596g, ComponentCallbacks2C22222c.AbstractC22223a abstractC22223a, Map<Class<?>, AbstractC22239j<?, ?>> map, List<AbstractC22590g<Object>> list, C22369l c22369l, boolean z, int i) {
        super(context.getApplicationContext());
        this.f61737a = abstractC22301b;
        this.f61738b = c22228g;
        this.f61739c = c22596g;
        this.f61740d = abstractC22223a;
        this.f61741e = list;
        this.f61742f = map;
        this.f61743g = c22369l;
        this.f61744h = z;
        this.f61745i = i;
    }
}
