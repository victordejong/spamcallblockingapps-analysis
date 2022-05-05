package p065f.p066a.p068b.p069a.p070r;

import java.util.HashMap;
import java.util.Map;
import java.util.Vector;
/* renamed from: f.a.b.a.r.l */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/l.class */
public class C4278l {

    /* renamed from: a */
    public Vector<C4282p> f10339a;

    /* renamed from: b */
    public Map<String, C4282p> f10340b;

    /* renamed from: c */
    public Map<String, C4282p> f10341c;

    /* renamed from: d */
    public Map<String, C4282p> f10342d;

    /* renamed from: e */
    public Map<String, C4282p> f10343e;

    public C4278l() {
        this.f10339a = null;
        this.f10340b = null;
        this.f10341c = null;
        this.f10342d = null;
        this.f10343e = null;
        this.f10339a = new Vector<>();
        this.f10340b = new HashMap();
        this.f10341c = new HashMap();
        this.f10342d = new HashMap();
        this.f10343e = new HashMap();
    }

    /* renamed from: a */
    public C4282p m29145a(int i) {
        return this.f10339a.get(i);
    }

    /* renamed from: a */
    public void m29146a() {
        this.f10339a.clear();
    }

    /* renamed from: a */
    public void m29144a(int i, C4282p pVar) {
        if (pVar != null) {
            m29142b(pVar);
            this.f10339a.add(i, pVar);
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public boolean m29143a(C4282p pVar) {
        if (pVar != null) {
            m29142b(pVar);
            return this.f10339a.add(pVar);
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public final void m29142b(C4282p pVar) {
        byte[] a = pVar.m29110a();
        if (a != null) {
            this.f10340b.put(new String(a), pVar);
        }
        byte[] b = pVar.m29107b();
        if (b != null) {
            this.f10341c.put(new String(b), pVar);
        }
        byte[] f = pVar.m29099f();
        if (f != null) {
            this.f10342d.put(new String(f), pVar);
        }
        byte[] e = pVar.m29101e();
        if (e != null) {
            this.f10343e.put(new String(e), pVar);
        }
    }
}
