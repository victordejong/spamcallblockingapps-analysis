package p193e.p1512i.p1516b.p1537z1;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1537z1.AbstractC23172b0;
import p193e.p1512i.p1516b.p1537z1.AbstractC23211x;
/* renamed from: e.i.b.z1.w */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/w.class */
public class C23210w extends AbstractC23172b0 {

    /* renamed from: b */
    public final C23213y f64266b;

    /* renamed from: a */
    public final C23021h f64265a = C23023i.m7583a(C23210w.class);

    /* renamed from: c */
    public final ConcurrentMap<File, C23197l> f64267c = new ConcurrentHashMap();

    public C23210w(C23213y c23213y) {
        this.f64266b = c23213y;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: a */
    public Collection<AbstractC23211x> mo7378a() {
        Collection<File> m7356b = this.f64266b.m7356b();
        ArrayList arrayList = new ArrayList(m7356b.size());
        for (File file : m7356b) {
            try {
                arrayList.add(m7373f(file).m7399c());
            } catch (IOException e) {
                this.f64265a.m7586a(new C23019f(3, "Error while reading metric", e, null));
            }
        }
        return arrayList;
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: b */
    public void mo7377b(String str, AbstractC23215z abstractC23215z) {
        File m7357a = this.f64266b.m7357a(str);
        try {
            ((C23197l) C26232y.m2364e(this.f64267c, m7357a, new a(this, m7357a))).m7400b(abstractC23215z);
        } catch (IOException e) {
            this.f64265a.m7586a(new C23019f(3, "Error while moving metric", e, null));
        }
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: c */
    public void mo7376c(String str, AbstractC23172b0.AbstractC23173a abstractC23173a) {
        File m7357a = this.f64266b.m7357a(str);
        C23197l c23197l = (C23197l) C26232y.m2364e(this.f64267c, m7357a, new a(this, m7357a));
        try {
            synchronized (c23197l.f64209c) {
                AbstractC23211x.AbstractC23212a mo7362k = c23197l.m7399c().mo7362k();
                abstractC23173a.mo7421a(mo7362k);
                c23197l.m7401a(mo7362k.mo7360b());
            }
        } catch (IOException e) {
            this.f64265a.m7586a(new C23019f(3, "Error while updating metric", e, null));
        }
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: d */
    public boolean mo7375d(String str) {
        return this.f64266b.m7356b().contains(this.f64266b.m7357a(str));
    }

    @Override // p193e.p1512i.p1516b.p1537z1.AbstractC23172b0
    /* renamed from: e */
    public int mo7374e() {
        Iterator<File> it = this.f64266b.m7356b().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = (int) (it.next().length() + i2);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: f */
    public final C23197l m7373f(File file) {
        return (C23197l) C26232y.m2364e(this.f64267c, file, new a(this, file));
    }
}
