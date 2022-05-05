package p459j.p460a.p474c0.p480d.p481d;

import java.util.Vector;
/* renamed from: j.a.c0.d.d.j */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/j.class */
public class C11699j {

    /* renamed from: a */
    public Vector<C11708o> f26233a;

    public C11699j() {
        this.f26233a = null;
        this.f26233a = new Vector<>();
    }

    /* renamed from: a */
    public int m8569a() {
        return this.f26233a.size();
    }

    /* renamed from: a */
    public C11708o m8568a(int i) {
        return this.f26233a.get(i);
    }

    /* renamed from: a */
    public void m8567a(int i, C11708o oVar) {
        if (oVar != null) {
            this.f26233a.add(i, oVar);
            return;
        }
        throw new NullPointerException();
    }

    /* renamed from: a */
    public boolean m8566a(C11708o oVar) {
        if (oVar != null) {
            return this.f26233a.add(oVar);
        }
        throw new NullPointerException();
    }

    /* renamed from: b */
    public void m8565b() {
        this.f26233a.clear();
    }
}
