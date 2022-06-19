package p193e.p194a.p1011l.p1013c.p1016n;

import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1013c.p1014a.C16717p;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.p;
/* renamed from: e.a.l.c.n.e */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/n/e.class */
public final class C16827e implements AbstractC16826d {

    /* renamed from: a */
    public final Map<NewFeatureLabelType, AbstractC16828f> f47193a;

    /* renamed from: b */
    public final Map<NewFeatureLabelType, p> f47194b;

    /* renamed from: c */
    public final AbstractC17197v0 f47195c;

    /* renamed from: d */
    public final AbstractC16832c2 f47196d;

    @Inject
    public C16827e(Set<AbstractC16828f> set, AbstractC17197v0 abstractC17197v0, AbstractC16832c2 abstractC16832c2) {
        l.e(set, "managerSet");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16832c2, "premiumSettings");
        this.f47195c = abstractC17197v0;
        this.f47196d = abstractC16832c2;
        int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(set, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(m3942Y1 < 16 ? 16 : m3942Y1);
        for (Object obj : set) {
            linkedHashMap.put(((AbstractC16828f) obj).getType(), obj);
        }
        this.f47193a = linkedHashMap;
        int m3942Y12 = C25225a.m3942Y1(C25225a.m4004J(set, 10));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(m3942Y12 < 16 ? 16 : m3942Y12);
        for (AbstractC16828f abstractC16828f : set) {
            linkedHashMap2.put(abstractC16828f.getType(), abstractC16828f.mo16943d());
        }
        this.f47194b = linkedHashMap2;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: a */
    public void mo16956a() {
        AbstractC16828f abstractC16828f = this.f47193a.get(m16947j());
        if (abstractC16828f != null) {
            abstractC16828f.mo16946a();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: b */
    public boolean mo16955b() {
        boolean z = false;
        if (this.f47195c.mo16408H()) {
            return false;
        }
        AbstractC16828f abstractC16828f = this.f47193a.get(m16947j());
        if (abstractC16828f != null) {
            z = abstractC16828f.mo16945b();
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: c */
    public List<C16717p> mo16954c(List<C16717p> list) {
        Object obj;
        l.e(list, "cards");
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            NewFeatureLabelType m25957g3 = C10480a.m25957g3(((C16717p) obj).f46880b);
            if (m25957g3 != null ? mo16949h(m25957g3) : false) {
                break;
            }
        }
        C16717p c16717p = (C16717p) obj;
        if (c16717p != null) {
            list.remove(c16717p);
            list.add(0, c16717p);
        }
        return list;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: d */
    public boolean mo16953d() {
        NewFeatureLabelType m16947j = m16947j();
        boolean z = false;
        if (m16947j != null) {
            z = false;
            if (mo16949h(m16947j)) {
                AbstractC16828f abstractC16828f = this.f47193a.get(m16947j);
                z = false;
                if (!(abstractC16828f != null ? abstractC16828f.mo16938i() : false)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: e */
    public void mo16952e() {
        if (mo16953d()) {
            AbstractC16832c2 abstractC16832c2 = this.f47196d;
            NewFeatureLabelType m16947j = m16947j();
            abstractC16832c2.mo16891c0(m16947j != null ? m16947j.name() : null);
            AbstractC16828f abstractC16828f = this.f47193a.get(m16947j());
            if (abstractC16828f == null) {
                return;
            }
            abstractC16828f.mo16937j();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: f */
    public NewFeatureLabelType mo16951f() {
        NewFeatureLabelType m16947j = m16947j();
        NewFeatureLabelType newFeatureLabelType = null;
        if (m16947j != null) {
            newFeatureLabelType = mo16949h(m16947j) ? m16947j : null;
        }
        return newFeatureLabelType;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: g */
    public void mo16950g(NewFeatureLabelType newFeatureLabelType) {
        l.e(newFeatureLabelType, "newFeatureLabelType");
        AbstractC16828f abstractC16828f = this.f47193a.get(newFeatureLabelType);
        if (abstractC16828f != null) {
            abstractC16828f.mo16939h();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: h */
    public boolean mo16949h(NewFeatureLabelType newFeatureLabelType) {
        l.e(newFeatureLabelType, "cardType");
        boolean z = false;
        if (m16947j() != newFeatureLabelType) {
            return false;
        }
        AbstractC16828f abstractC16828f = this.f47193a.get(newFeatureLabelType);
        if (abstractC16828f != null) {
            z = abstractC16828f.mo16941f();
        }
        return z;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d
    /* renamed from: i */
    public C17288a mo16948i(NewFeatureLabelType newFeatureLabelType) {
        l.e(newFeatureLabelType, "cardType");
        return ((AbstractC16828f) i.H(this.f47193a, newFeatureLabelType)).mo16940g(mo16949h(newFeatureLabelType));
    }

    /* renamed from: j */
    public final NewFeatureLabelType m16947j() {
        Object obj;
        Set<Map.Entry<NewFeatureLabelType, p>> entrySet = this.f47194b.entrySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : entrySet) {
            AbstractC16828f abstractC16828f = this.f47193a.get(((Map.Entry) obj2).getKey());
            if (abstractC16828f != null ? abstractC16828f.mo16942e() : true) {
                arrayList.add(obj2);
            }
        }
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            obj = it.next();
            if (it.hasNext()) {
                p pVar = (p) ((Map.Entry) obj).getValue();
                Object obj3 = obj;
                do {
                    Object next = it.next();
                    p pVar2 = (p) ((Map.Entry) next).getValue();
                    obj = obj3;
                    p pVar3 = pVar;
                    if (pVar.compareTo(pVar2) < 0) {
                        obj = next;
                        pVar3 = pVar2;
                    }
                    obj3 = obj;
                    pVar = pVar3;
                } while (it.hasNext());
            }
        }
        Map.Entry entry = (Map.Entry) obj;
        NewFeatureLabelType newFeatureLabelType = null;
        if (entry != null) {
            newFeatureLabelType = (NewFeatureLabelType) entry.getKey();
        }
        return newFeatureLabelType;
    }
}
