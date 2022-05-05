package p081h.p160h.p179e.p180a.p186m;

import java.util.ArrayList;
import p081h.p160h.p179e.p180a.p190p.C6429b;
/* renamed from: h.h.e.a.m.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/m/a.class */
public class C6375a {

    /* renamed from: a */
    public String f15862a = null;

    /* renamed from: b */
    public String f15863b = null;

    /* renamed from: c */
    public String f15864c = null;

    /* renamed from: d */
    public String f15865d = null;

    /* renamed from: e */
    public String f15866e = null;

    /* renamed from: f */
    public AbstractC6376b f15867f = null;

    /* renamed from: g */
    public ArrayList<AbstractC6377c> f15868g = null;

    /* renamed from: a */
    public void m22914a() {
        AbstractC6376b bVar = this.f15867f;
        if (bVar != null) {
            bVar.mo22660a(this.f15868g);
        }
    }

    /* renamed from: a */
    public void m22913a(int i) {
        AbstractC6376b bVar = this.f15867f;
        if (bVar != null) {
            bVar.mo22662a(i, this.f15868g);
        }
    }

    /* renamed from: a */
    public void m22912a(AbstractC6377c cVar) {
        if (cVar != null) {
            ArrayList<AbstractC6377c> arrayList = this.f15868g;
            if (arrayList == null) {
                this.f15868g = new ArrayList<>();
                this.f15868g.add(cVar);
            } else if (!arrayList.contains(cVar)) {
                this.f15868g.add(cVar);
            } else {
                ArrayList<AbstractC6377c> arrayList2 = this.f15868g;
                arrayList2.get(arrayList2.indexOf(cVar));
            }
        }
    }

    /* renamed from: a */
    public void m22911a(C6429b bVar) {
        AbstractC6376b bVar2 = this.f15867f;
        if (bVar2 != null) {
            bVar2.mo22659a(this.f15868g, bVar);
        }
    }

    /* renamed from: a */
    public void m22910a(String str) {
        AbstractC6376b bVar = this.f15867f;
        if (bVar != null) {
            bVar.mo22661a(str);
        }
    }

    /* renamed from: b */
    public boolean m22909b() {
        AbstractC6376b bVar = this.f15867f;
        if (bVar == null) {
            return true;
        }
        bVar.mo22657b(this.f15868g);
        return true;
    }

    /* renamed from: c */
    public void m22908c() {
        ArrayList<AbstractC6377c> arrayList = this.f15868g;
        if (arrayList != null && arrayList.size() > 0) {
            for (int i = 0; i < this.f15868g.size(); i++) {
                if (this.f15868g.get(i) != null) {
                    this.f15868g.get(i).mo1443b();
                }
            }
        }
    }

    /* renamed from: d */
    public void m22907d() {
        AbstractC6376b bVar = this.f15867f;
        if (bVar != null) {
            bVar.mo22656c(this.f15868g);
        }
    }

    /* renamed from: e */
    public void m22906e() {
        AbstractC6376b bVar = this.f15867f;
        if (bVar != null) {
            bVar.mo22663a();
        }
    }

    /* renamed from: f */
    public void m22905f() {
        AbstractC6376b bVar = this.f15867f;
        if (bVar != null) {
            bVar.mo22658b();
        }
    }
}
