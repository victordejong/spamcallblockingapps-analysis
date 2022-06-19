package p067d1;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import p067d1.AbstractC2151f;
import p099g1.AbstractC2796b;
/* renamed from: d1.a */
/* loaded from: classes-dex2jar.jar:d1/a.class */
public class C2140a {

    /* renamed from: a */
    public final AbstractC2796b.AbstractC2799c f7833a;

    /* renamed from: b */
    public final Context f7834b;

    /* renamed from: c */
    public final String f7835c;

    /* renamed from: d */
    public final AbstractC2151f.C2154c f7836d;

    /* renamed from: e */
    public final List<AbstractC2151f.AbstractC2153b> f7837e;

    /* renamed from: f */
    public final boolean f7838f;

    /* renamed from: g */
    public final int f7839g;

    /* renamed from: h */
    public final Executor f7840h;

    /* renamed from: i */
    public final Executor f7841i;

    /* renamed from: j */
    public final boolean f7842j;

    /* renamed from: k */
    public final boolean f7843k;

    public C2140a(Context context, String str, AbstractC2796b.AbstractC2799c abstractC2799c, AbstractC2151f.C2154c c2154c, List list, boolean z, int i, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set set, String str2, File file) {
        this.f7833a = abstractC2799c;
        this.f7834b = context;
        this.f7835c = str;
        this.f7836d = c2154c;
        this.f7837e = list;
        this.f7838f = z;
        this.f7839g = i;
        this.f7840h = executor;
        this.f7841i = executor2;
        this.f7842j = z3;
        this.f7843k = z4;
    }

    /* renamed from: a */
    public boolean m3832a(int i, int i2) {
        boolean z = true;
        if (!(i > i2) || !this.f7843k) {
            if (!this.f7842j) {
                z = false;
            }
            return z;
        }
        return false;
    }
}
