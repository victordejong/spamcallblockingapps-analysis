package p193e.p194a.p1266t4;

import android.media.AudioManager;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1266t4.p1267e.AbstractC20563b;
import p193e.p194a.p1266t4.p1267e.C20562a;
import s1.z.c.l;
/* renamed from: e.a.t4.d */
/* loaded from: classes12-dex2jar.jar:e/a/t4/d.class */
public final class C20561d implements AbstractC20560c {

    /* renamed from: a */
    public AbstractC20563b f57645a;

    /* renamed from: b */
    public Boolean f57646b;

    /* renamed from: c */
    public final C20555a f57647c;

    /* renamed from: d */
    public final AbstractC19219a0 f57648d;

    @Inject
    public C20561d(C20555a c20555a, AbstractC19219a0 abstractC19219a0) {
        l.e(c20555a, "muterFactory");
        l.e(abstractC19219a0, "permissionUtil");
        this.f57647c = c20555a;
        this.f57648d = abstractC19219a0;
    }

    @Override // p193e.p194a.p1266t4.AbstractC20560c
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo11036a() {
        AbstractC20563b m11035b = m11035b();
        if (!m11035b.mo11031b()) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.FALSE);
            l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        }
        m11035b.mo11032a();
        AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.TRUE);
        l.d(m11834h2, "Promise.wrap(true)");
        return m11834h2;
    }

    /* renamed from: b */
    public final AbstractC20563b m11035b() {
        boolean mo13824i = this.f57648d.mo13824i();
        AbstractC20563b abstractC20563b = this.f57645a;
        if (abstractC20563b == null || (!l.a(this.f57646b, Boolean.valueOf(mo13824i)))) {
            Object obj = this.f57647c.f57643a.get();
            l.d(obj, "audioManager.get()");
            C20562a c20562a = new C20562a((AudioManager) obj);
            this.f57645a = c20562a;
            this.f57646b = Boolean.valueOf(mo13824i);
            return c20562a;
        }
        return abstractC20563b;
    }

    @Override // p193e.p194a.p1266t4.AbstractC20560c
    /* renamed from: d */
    public AbstractC19891x<Boolean> mo11034d() {
        AbstractC20563b m11035b = m11035b();
        if (m11035b.mo11031b()) {
            AbstractC19891x<Boolean> m11834h = AbstractC19891x.m11834h(Boolean.FALSE);
            l.d(m11834h, "Promise.wrap(false)");
            return m11834h;
        }
        m11035b.mo11030d();
        AbstractC19891x<Boolean> m11834h2 = AbstractC19891x.m11834h(Boolean.TRUE);
        l.d(m11834h2, "Promise.wrap(true)");
        return m11834h2;
    }
}
