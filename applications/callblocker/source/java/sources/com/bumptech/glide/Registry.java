package com.bumptech.glide;

import androidx.core.p025g.C0523e;
import com.bumptech.glide.load.AbstractC1664d;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.AbstractC1783j;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.C1743h;
import com.bumptech.glide.load.engine.C1768r;
import com.bumptech.glide.load.p079a.AbstractC1477e;
import com.bumptech.glide.load.p079a.C1479f;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.load.p081b.AbstractC1548o;
import com.bumptech.glide.load.p081b.C1549p;
import com.bumptech.glide.load.p083c.p089f.AbstractC1660e;
import com.bumptech.glide.load.p083c.p089f.C1661f;
import com.bumptech.glide.p072e.C1392a;
import com.bumptech.glide.p072e.C1394b;
import com.bumptech.glide.p072e.C1395c;
import com.bumptech.glide.p072e.C1396d;
import com.bumptech.glide.p072e.C1397e;
import com.bumptech.glide.p072e.C1399f;
import com.bumptech.glide.p077h.p078a.C1437a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry.class */
public class Registry {

    /* renamed from: h */
    private final C1396d f4440h = new C1396d();

    /* renamed from: i */
    private final C1395c f4441i = new C1395c();

    /* renamed from: j */
    private final C0523e.AbstractC0524a<List<Throwable>> f4442j = C1437a.m17030a();

    /* renamed from: a */
    private final C1549p f4433a = new C1549p(this.f4442j);

    /* renamed from: b */
    private final C1392a f4434b = new C1392a();

    /* renamed from: c */
    private final C1397e f4435c = new C1397e();

    /* renamed from: d */
    private final C1399f f4436d = new C1399f();

    /* renamed from: e */
    private final C1479f f4437e = new C1479f();

    /* renamed from: f */
    private final C1661f f4438f = new C1661f();

    /* renamed from: g */
    private final C1394b f4439g = new C1394b();

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$MissingComponentException.class */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(String str) {
            super(str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoImageHeaderParserException.class */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoModelLoaderAvailableException.class */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(Class<?> cls, Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }

        public NoModelLoaderAvailableException(Object obj) {
            super("Failed to find any ModelLoaders for model: " + obj);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoResultEncoderAvailableException.class */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/Registry$NoSourceEncoderAvailableException.class */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        m17413a(Arrays.asList("Gif", "Bitmap", "BitmapDrawable"));
    }

    /* renamed from: c */
    private <Data, TResource, Transcode> List<C1743h<Data, TResource, Transcode>> m17409c(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f4435c.m17205b(cls, cls2)) {
            for (Class cls5 : this.f4438f.m16616b(cls4, cls3)) {
                arrayList.add(new C1743h(cls, cls4, cls5, this.f4435c.m17209a(cls, cls4), this.f4438f.m16618a(cls4, cls5), this.f4442j));
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public Registry m17424a(ImageHeaderParser imageHeaderParser) {
        this.f4439g.m17216a(imageHeaderParser);
        return this;
    }

    /* renamed from: a */
    public Registry m17423a(AbstractC1477e.AbstractC1478a<?> abstractC1478a) {
        this.f4437e.m16923a(abstractC1478a);
        return this;
    }

    /* renamed from: a */
    public <Data> Registry m17421a(Class<Data> cls, AbstractC1664d<Data> abstractC1664d) {
        this.f4434b.m17219a(cls, abstractC1664d);
        return this;
    }

    /* renamed from: a */
    public <TResource> Registry m17420a(Class<TResource> cls, AbstractC1783j<TResource> abstractC1783j) {
        this.f4436d.m17202a(cls, abstractC1783j);
        return this;
    }

    /* renamed from: a */
    public <Model, Data> Registry m17419a(Class<Model> cls, Class<Data> cls2, AbstractC1548o<Model, Data> abstractC1548o) {
        this.f4433a.m16841a(cls, cls2, abstractC1548o);
        return this;
    }

    /* renamed from: a */
    public <TResource, Transcode> Registry m17418a(Class<TResource> cls, Class<Transcode> cls2, AbstractC1660e<TResource, Transcode> abstractC1660e) {
        this.f4438f.m16617a(cls, cls2, abstractC1660e);
        return this;
    }

    /* renamed from: a */
    public <Data, TResource> Registry m17417a(Class<Data> cls, Class<TResource> cls2, AbstractC1782i<Data, TResource> abstractC1782i) {
        m17414a("legacy_append", cls, cls2, abstractC1782i);
        return this;
    }

    /* renamed from: a */
    public <Data, TResource> Registry m17414a(String str, Class<Data> cls, Class<TResource> cls2, AbstractC1782i<Data, TResource> abstractC1782i) {
        this.f4435c.m17207a(str, abstractC1782i, cls, cls2);
        return this;
    }

    /* renamed from: a */
    public final Registry m17413a(List<String> list) {
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, "legacy_prepend_all");
        arrayList.add("legacy_append");
        this.f4435c.m17206a(arrayList);
        return this;
    }

    /* renamed from: a */
    public <X> AbstractC1664d<X> m17415a(X x) {
        AbstractC1664d<X> m17220a = this.f4434b.m17220a(x.getClass());
        if (m17220a != null) {
            return m17220a;
        }
        throw new NoSourceEncoderAvailableException(x.getClass());
    }

    /* renamed from: a */
    public <Data, TResource, Transcode> C1768r<Data, TResource, Transcode> m17416a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        C1768r<?, ?, ?> c1768r = null;
        C1768r<?, ?, ?> m17214a = this.f4441i.m17214a(cls, cls2, cls3);
        if (this.f4441i.m17215a(m17214a)) {
            c1768r = null;
        } else if (m17214a == null) {
            List<C1743h<Data, TResource, Transcode>> m17409c = m17409c(cls, cls2, cls3);
            if (!m17409c.isEmpty()) {
                c1768r = new C1768r<>(cls, cls2, cls3, m17409c, this.f4442j);
            }
            this.f4441i.m17213a(cls, cls2, cls3, c1768r);
        } else {
            c1768r = m17214a;
        }
        return c1768r;
    }

    /* renamed from: a */
    public List<ImageHeaderParser> m17425a() {
        List<ImageHeaderParser> m17217a = this.f4439g.m17217a();
        if (m17217a.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return m17217a;
    }

    /* renamed from: a */
    public boolean m17422a(AbstractC1771t<?> abstractC1771t) {
        return this.f4436d.m17203a(abstractC1771t.mo16348c()) != null;
    }

    /* renamed from: b */
    public <X> AbstractC1477e<X> m17410b(X x) {
        return this.f4437e.m16922a((C1479f) x);
    }

    /* renamed from: b */
    public <X> AbstractC1783j<X> m17412b(AbstractC1771t<X> abstractC1771t) {
        AbstractC1783j<X> m17203a = this.f4436d.m17203a(abstractC1771t.mo16348c());
        if (m17203a != null) {
            return m17203a;
        }
        throw new NoResultEncoderAvailableException(abstractC1771t.mo16348c());
    }

    /* renamed from: b */
    public <Model, TResource, Transcode> List<Class<?>> m17411b(Class<Model> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        List<Class<?>> m17211a = this.f4440h.m17211a(cls, cls2);
        ArrayList arrayList = m17211a;
        if (m17211a == null) {
            arrayList = new ArrayList();
            for (Class<?> cls4 : this.f4433a.m16842a((Class<?>) cls)) {
                for (Class<?> cls5 : this.f4435c.m17205b(cls4, cls2)) {
                    if (!this.f4438f.m16616b(cls5, cls3).isEmpty() && !arrayList.contains(cls5)) {
                        arrayList.add(cls5);
                    }
                }
            }
            this.f4440h.m17210a(cls, cls2, Collections.unmodifiableList(arrayList));
        }
        return arrayList;
    }

    /* renamed from: c */
    public <Model> List<AbstractC1546n<Model, ?>> m17408c(Model model) {
        List<AbstractC1546n<Model, ?>> m16840a = this.f4433a.m16840a((C1549p) model);
        if (m16840a.isEmpty()) {
            throw new NoModelLoaderAvailableException(model);
        }
        return m16840a;
    }
}
