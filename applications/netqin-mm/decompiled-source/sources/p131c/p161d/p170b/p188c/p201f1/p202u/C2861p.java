package p131c.p161d.p170b.p188c.p201f1.p202u;

import com.google.android.exoplayer2.upstream.cache.Cache;
import java.util.TreeSet;
/* renamed from: c.d.b.c.f1.u.p */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/p.class */
public final class C2861p implements AbstractC2846d {

    /* renamed from: a */
    public final long f10404a;

    /* renamed from: b */
    public final TreeSet<C2850h> f10405b = new TreeSet<>(C2843b.f10339a);

    /* renamed from: c */
    public long f10406c;

    public C2861p(long j) {
        this.f10404a = j;
    }

    /* renamed from: a */
    public static int m28786a(C2850h hVar, C2850h hVar2) {
        long j = hVar.f10374f;
        long j2 = hVar2.f10374f;
        if (j - j2 == 0) {
            return hVar.compareTo(hVar2);
        }
        return j < j2 ? -1 : 1;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.p202u.AbstractC2846d
    /* renamed from: a */
    public void mo28787a() {
    }

    /* renamed from: a */
    public final void m28785a(Cache cache, long j) {
        while (this.f10406c + j > this.f10404a && !this.f10405b.isEmpty()) {
            try {
                cache.mo18257a(this.f10405b.first());
            } catch (Cache.CacheException e) {
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.AbstractC7207a
    /* renamed from: a */
    public void mo18249a(Cache cache, C2850h hVar) {
        this.f10405b.remove(hVar);
        this.f10406c -= hVar.f10371c;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.AbstractC7207a
    /* renamed from: a */
    public void mo18248a(Cache cache, C2850h hVar, C2850h hVar2) {
        mo18249a(cache, hVar);
        mo18247b(cache, hVar2);
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.p202u.AbstractC2846d
    /* renamed from: a */
    public void mo28784a(Cache cache, String str, long j, long j2) {
        if (j2 != -1) {
            m28785a(cache, j2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.AbstractC7207a
    /* renamed from: b */
    public void mo18247b(Cache cache, C2850h hVar) {
        this.f10405b.add(hVar);
        this.f10406c += hVar.f10371c;
        m28785a(cache, 0L);
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.p202u.AbstractC2846d
    /* renamed from: b */
    public boolean mo28783b() {
        return true;
    }
}
