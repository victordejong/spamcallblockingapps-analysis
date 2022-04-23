package p131c.p396i.p397a.p398e;

import java.util.List;
/* renamed from: c.i.a.e.f */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/f.class */
public abstract class AbstractC6514f<AdData> {

    /* renamed from: a */
    public int f20271a = 1;

    /* renamed from: b */
    public final List<AdData> f20272b;

    public AbstractC6514f(List<AdData> list) {
        this.f20272b = list;
    }

    /* renamed from: a */
    public AbstractC6514f<AdData> m20610a(int i) {
        this.f20271a = i;
        return this;
    }

    /* renamed from: a */
    public void m20611a() {
        this.f20272b.clear();
    }

    /* renamed from: b */
    public List<AdData> m20609b() {
        return this.f20272b;
    }

    /* renamed from: c */
    public int m20608c() {
        return this.f20271a;
    }

    /* renamed from: d */
    public abstract boolean mo20607d();
}
