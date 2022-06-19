package p193e.p1451f.p1452a;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import n3.k.h.g;
import p1727n3.p1807k.p1820h.AbstractC26555e;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22261d;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.AbstractC22270l;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22276e;
import p193e.p1451f.p1452a.p1457n.p1458n.C22278f;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22436n;
import p193e.p1451f.p1452a.p1457n.p1464p.AbstractC22438o;
import p193e.p1451f.p1452a.p1457n.p1464p.C22439p;
import p193e.p1451f.p1452a.p1457n.p1464p.C22444r;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.AbstractC22550e;
import p193e.p1451f.p1452a.p1457n.p1466q.p1472i.C22551f;
import p193e.p1451f.p1452a.p1475q.C22576a;
import p193e.p1451f.p1452a.p1475q.C22578b;
import p193e.p1451f.p1452a.p1475q.C22579c;
import p193e.p1451f.p1452a.p1475q.C22580d;
import p193e.p1451f.p1452a.p1475q.C22581e;
import p193e.p1451f.p1452a.p1475q.C22583f;
import p193e.p1451f.p1452a.p1480t.p1481k.C22625a;
import p193e.p1451f.p1452a.p1480t.p1481k.C22631b;
import p193e.p1451f.p1452a.p1480t.p1481k.C22632c;
/* renamed from: e.f.a.g */
/* loaded from: classes-dex2jar.jar:e/f/a/g.class */
public class C22228g {

    /* renamed from: a */
    public final C22439p f61752a;

    /* renamed from: c */
    public final C22581e f61754c;

    /* renamed from: j */
    public final AbstractC26555e<List<Throwable>> f61761j;

    /* renamed from: h */
    public final C22580d f61759h = new C22580d();

    /* renamed from: i */
    public final C22579c f61760i = new C22579c();

    /* renamed from: b */
    public final C22576a f61753b = new C22576a();

    /* renamed from: d */
    public final C22583f f61755d = new C22583f();

    /* renamed from: e */
    public final C22278f f61756e = new C22278f();

    /* renamed from: f */
    public final C22551f f61757f = new C22551f();

    /* renamed from: g */
    public final C22578b f61758g = new C22578b();

    /* renamed from: e.f.a.g$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/g$a.class */
    public static class C22229a extends RuntimeException {
        public C22229a(String str) {
            super(str);
        }
    }

    /* renamed from: e.f.a.g$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/g$b.class */
    public static final class C22230b extends C22229a {
        public C22230b() {
            super("Failed to find image header parser.");
        }
    }

    /* renamed from: e.f.a.g$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/g$c.class */
    public static class C22231c extends C22229a {
        public C22231c(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public C22231c(Object obj) {
            super(C22128a.m8551x2("Failed to find any ModelLoaders for model: ", obj));
        }
    }

    /* renamed from: e.f.a.g$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/g$d.class */
    public static class C22232d extends C22229a {
        public C22232d(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* renamed from: e.f.a.g$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/g$e.class */
    public static class C22233e extends C22229a {
        public C22233e(Class<?> cls) {
            super(C22128a.m8555w2("Failed to find source encoder for data class: ", cls));
        }
    }

    public C22228g() {
        C22625a.C22628c c22628c = new C22625a.C22628c(new g(20), new C22631b(), new C22632c());
        this.f61761j = c22628c;
        this.f61752a = new C22439p(c22628c);
        C22581e c22581e = new C22581e();
        this.f61754c = c22581e;
        List asList = Arrays.asList("Gif", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.addAll(asList);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        synchronized (c22581e) {
            ArrayList arrayList2 = new ArrayList(c22581e.f62517a);
            c22581e.f62517a.clear();
            c22581e.f62517a.addAll(arrayList);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (!arrayList.contains(str)) {
                    c22581e.f62517a.add(str);
                }
            }
        }
    }

    /* renamed from: a */
    public <Data> C22228g m8443a(Class<Data> cls, AbstractC22261d<Data> abstractC22261d) {
        C22576a c22576a = this.f61753b;
        synchronized (c22576a) {
            c22576a.f62508a.add(new C22576a.C22577a<>(cls, abstractC22261d));
        }
        return this;
    }

    /* renamed from: b */
    public <TResource> C22228g m8442b(Class<TResource> cls, AbstractC22270l<TResource> abstractC22270l) {
        C22583f c22583f = this.f61755d;
        synchronized (c22583f) {
            c22583f.f62522a.add(new C22583f.C22584a<>(cls, abstractC22270l));
        }
        return this;
    }

    /* renamed from: c */
    public <Model, Data> C22228g m8441c(Class<Model> cls, Class<Data> cls2, AbstractC22438o<Model, Data> abstractC22438o) {
        C22439p c22439p = this.f61752a;
        synchronized (c22439p) {
            c22439p.f62286a.m8228a(cls, cls2, abstractC22438o);
            c22439p.f62287b.f62288a.clear();
        }
        return this;
    }

    /* renamed from: d */
    public <Data, TResource> C22228g m8440d(String str, Class<Data> cls, Class<TResource> cls2, AbstractC22269k<Data, TResource> abstractC22269k) {
        C22581e c22581e = this.f61754c;
        synchronized (c22581e) {
            c22581e.m8117a(str).add(new C22581e.C22582a<>(cls, cls2, abstractC22269k));
        }
        return this;
    }

    /* renamed from: e */
    public List<ImageHeaderParser> m8439e() {
        List<ImageHeaderParser> list;
        C22578b c22578b = this.f61758g;
        synchronized (c22578b) {
            list = c22578b.f62511a;
        }
        if (!list.isEmpty()) {
            return list;
        }
        throw new C22230b();
    }

    /* renamed from: f */
    public <Model> List<AbstractC22436n<Model, ?>> m8438f(Model model) {
        List<AbstractC22436n<?, ?>> list;
        C22439p c22439p = this.f61752a;
        Objects.requireNonNull(c22439p);
        Class<?> cls = model.getClass();
        synchronized (c22439p) {
            C22439p.C22440a.C22441a<?> c22441a = c22439p.f62287b.f62288a.get(cls);
            List<AbstractC22436n<?, ?>> list2 = c22441a == null ? null : c22441a.f62289a;
            list = list2;
            if (list2 == null) {
                list = Collections.unmodifiableList(c22439p.f62286a.m8225d(cls));
                if (c22439p.f62287b.f62288a.put(cls, new C22439p.C22440a.C22441a<>(list)) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        int size = list.size();
        ArrayList emptyList = Collections.emptyList();
        boolean z = true;
        int i = 0;
        while (i < size) {
            AbstractC22436n<?, ?> abstractC22436n = list.get(i);
            List<AbstractC22436n<Model, ?>> list3 = emptyList;
            boolean z2 = z;
            if (abstractC22436n.mo8214b(model)) {
                z2 = z;
                if (z) {
                    emptyList = new ArrayList(size - i);
                    z2 = false;
                }
                emptyList.add(abstractC22436n);
                list3 = emptyList;
            }
            i++;
            emptyList = list3;
            z = z2;
        }
        if (!emptyList.isEmpty()) {
            return emptyList;
        }
        throw new C22231c(model);
    }

    /* renamed from: g */
    public <Model, Data> C22228g m8437g(Class<Model> cls, Class<Data> cls2, AbstractC22438o<Model, Data> abstractC22438o) {
        C22439p c22439p = this.f61752a;
        synchronized (c22439p) {
            C22444r c22444r = c22439p.f62286a;
            synchronized (c22444r) {
                c22444r.f62301a.add(0, new C22444r.C22446b<>(cls, cls2, abstractC22438o));
            }
            c22439p.f62287b.f62288a.clear();
        }
        return this;
    }

    /* renamed from: h */
    public C22228g m8436h(AbstractC22276e.AbstractC22277a<?> abstractC22277a) {
        C22278f c22278f = this.f61756e;
        synchronized (c22278f) {
            c22278f.f61913a.put(abstractC22277a.mo8165a(), abstractC22277a);
        }
        return this;
    }

    /* renamed from: i */
    public <TResource, Transcode> C22228g m8435i(Class<TResource> cls, Class<Transcode> cls2, AbstractC22550e<TResource, Transcode> abstractC22550e) {
        C22551f c22551f = this.f61757f;
        synchronized (c22551f) {
            c22551f.f62478a.add(new C22551f.C22552a<>(cls, cls2, abstractC22550e));
        }
        return this;
    }

    /* renamed from: j */
    public <Model, Data> C22228g m8434j(Class<Model> cls, Class<Data> cls2, AbstractC22438o<? extends Model, ? extends Data> abstractC22438o) {
        List<AbstractC22438o<? extends Model, ? extends Data>> m8223f;
        C22439p c22439p = this.f61752a;
        synchronized (c22439p) {
            C22444r c22444r = c22439p.f62286a;
            synchronized (c22444r) {
                m8223f = c22444r.m8223f(cls, cls2);
                c22444r.m8228a(cls, cls2, abstractC22438o);
            }
            Iterator it = ((ArrayList) m8223f).iterator();
            while (it.hasNext()) {
                ((AbstractC22438o) it.next()).mo8213b();
            }
            c22439p.f62287b.f62288a.clear();
        }
        return this;
    }
}
