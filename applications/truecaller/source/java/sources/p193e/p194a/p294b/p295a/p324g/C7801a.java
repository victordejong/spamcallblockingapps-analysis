package p193e.p194a.p294b.p295a.p324g;

import java.util.Iterator;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.b.a.g.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/g/a.class */
public final class C7801a implements C26986a1.AbstractC26987b {

    /* renamed from: a */
    public final Map<Class<? extends AbstractC27040y0>, Provider<AbstractC27040y0>> f24258a;

    @Inject
    public C7801a(Map<Class<? extends AbstractC27040y0>, Provider<AbstractC27040y0>> map) {
        l.e(map, "creators");
        this.f24258a = map;
    }

    @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
    public <T extends AbstractC27040y0> T create(Class<T> cls) {
        Object obj;
        l.e(cls, "modelClass");
        Provider<AbstractC27040y0> provider = this.f24258a.get(cls);
        if (provider == null) {
            Iterator<T> it = this.f24258a.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (cls.isAssignableFrom((Class) ((Map.Entry) obj).getKey())) {
                    break;
                }
            }
            Map.Entry entry = (Map.Entry) obj;
            provider = entry != null ? (Provider) entry.getValue() : null;
        }
        if (provider != null) {
            try {
                Object obj2 = provider.get();
                if (obj2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type T");
                }
                return (T) obj2;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        throw new IllegalArgumentException(C22128a.m8555w2("unknown model class ", cls));
    }
}
