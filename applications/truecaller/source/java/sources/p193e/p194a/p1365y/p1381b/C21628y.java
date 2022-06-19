package p193e.p194a.p1365y.p1381b;

import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p1365y.p1387e.C21733i;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.y.b.y */
/* loaded from: classes9-dex2jar.jar:e/a/y/b/y.class */
public final class C21628y extends AbstractC21594a0<C21733i> implements AbstractC21629z<C21733i> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21628y(AbstractC21626w abstractC21626w) {
        super(abstractC21626w, C21596b0.f60253a.length);
        l.e(abstractC21626w, "preferenceUtil");
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: a */
    public void mo9335a(int i) {
        this.f60250b.mo9340l("recent_page", Integer.valueOf(i));
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: b */
    public void mo9334b(long j) {
        m9394f("recent_emojis" + j);
        if (m9395e() == 0) {
            C21733i[] c21733iArr = C21596b0.f60253a;
            ArrayList arrayList = new ArrayList(c21733iArr.length);
            for (C21733i c21733i : c21733iArr) {
                l.d(c21733i, "it");
                l.e(c21733i, "object");
                m9393g(c21733i);
                arrayList.add(s.a);
            }
            mo9332d(j);
        }
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: c */
    public int mo9333c() {
        return this.f60250b.getInt("recent_page", 0);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    /* renamed from: d */
    public void mo9332d(long j) {
        m9392h("recent_emojis" + j);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    public List<C21733i> getAll() {
        return this.f60249a;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21594a0
    /* renamed from: i */
    public C21733i mo9337i(String str) {
        l.e(str, "value");
        return new C21733i(str);
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21594a0
    /* renamed from: j */
    public String mo9336j(C21733i c21733i) {
        C21733i c21733i2 = c21733i;
        l.e(c21733i2, "object");
        String str = c21733i2.f60541a;
        l.d(str, "`object`.emoji");
        return str;
    }

    @Override // p193e.p194a.p1365y.p1381b.AbstractC21629z
    public void push(C21733i c21733i) {
        C21733i c21733i2 = c21733i;
        l.e(c21733i2, "object");
        m9393g(c21733i2);
    }
}
