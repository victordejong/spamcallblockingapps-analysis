package p081h.p415j.p416a.p417a.p418a.p421e;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import p081h.p415j.p416a.p417a.p418a.p420d.C10626i;
/* renamed from: h.j.a.a.a.e.a */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/a.class */
public class C10627a {

    /* renamed from: c */
    public static C10627a f24201c = new C10627a();

    /* renamed from: a */
    public final ArrayList<C10626i> f24202a = new ArrayList<>();

    /* renamed from: b */
    public final ArrayList<C10626i> f24203b = new ArrayList<>();

    /* renamed from: d */
    public static C10627a m11148d() {
        return f24201c;
    }

    /* renamed from: a */
    public Collection<C10626i> m11154a() {
        return Collections.unmodifiableCollection(this.f24202a);
    }

    /* renamed from: a */
    public void m11153a(C10626i iVar) {
        this.f24202a.add(iVar);
    }

    /* renamed from: b */
    public Collection<C10626i> m11152b() {
        return Collections.unmodifiableCollection(this.f24203b);
    }

    /* renamed from: b */
    public void m11151b(C10626i iVar) {
        boolean c = m11150c();
        this.f24203b.add(iVar);
        if (!c) {
            C10634e.m11113e().m11120a();
        }
    }

    /* renamed from: c */
    public void m11149c(C10626i iVar) {
        boolean c = m11150c();
        this.f24202a.remove(iVar);
        this.f24203b.remove(iVar);
        if (c && !m11150c()) {
            C10634e.m11113e().m11116b();
        }
    }

    /* renamed from: c */
    public boolean m11150c() {
        return this.f24203b.size() > 0;
    }
}
