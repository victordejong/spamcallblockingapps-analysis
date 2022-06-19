package p309z8;

import java.util.ArrayList;
import java.util.List;
import p034c9.AbstractC0859f;
import p034c9.C0854a;
import p034c9.C0860g;
import p151l.AbstractC3415b;
/* renamed from: z8.a */
/* loaded from: classes2-dex2jar.jar:z8/a.class */
public class C5114a<TModel> extends AbstractC3415b {
    public C5114a(Class<TModel> cls) {
        super(cls);
    }

    @Override // p151l.AbstractC3415b
    /* renamed from: c */
    public Object mo6c(C0860g c0860g, Object obj) {
        ArrayList arrayList = (List) obj;
        if (arrayList == null) {
            arrayList = new ArrayList();
        } else {
            arrayList.clear();
        }
        if (c0860g.moveToFirst()) {
            do {
                Object mo2687e = m2321d().mo2687e();
                m2321d().mo2688d(c0860g, mo2687e);
                arrayList.add(mo2687e);
            } while (c0860g.moveToNext());
            return arrayList;
        }
        return arrayList;
    }

    @Override // p151l.AbstractC3415b
    /* renamed from: g */
    public Object mo9g(AbstractC0859f abstractC0859f, String str) {
        return (List) mo8h(abstractC0859f, str, null);
    }

    @Override // p151l.AbstractC3415b
    /* renamed from: h */
    public Object mo8h(AbstractC0859f abstractC0859f, String str, Object obj) {
        return (List) mo7i(((C0854a) abstractC0859f).m7275b(str, null), null);
    }

    @Override // p151l.AbstractC3415b
    /* renamed from: i */
    public Object mo7i(C0860g c0860g, Object obj) {
        Object obj2;
        List list = (List) obj;
        if (list == null) {
            obj2 = new ArrayList();
        } else {
            list.clear();
            obj2 = list;
        }
        Object obj3 = obj2;
        if (c0860g != null) {
            try {
                obj3 = mo6c(c0860g, obj2);
            } finally {
                c0860g.close();
            }
        }
        return (List) obj3;
    }
}
