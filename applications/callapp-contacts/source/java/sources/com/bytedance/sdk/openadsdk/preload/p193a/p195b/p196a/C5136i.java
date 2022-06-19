package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5249e;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.C5270t;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5113b;
import com.bytedance.sdk.openadsdk.preload.p193a.p194a.AbstractC5114c;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5189b;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5196c;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5211d;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5226k;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p198b.AbstractC5194b;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/i.class */
public final class C5136i implements AbstractC5276w {

    /* renamed from: a */
    private final C5196c f18414a;

    /* renamed from: b */
    private final AbstractC5249e f18415b;

    /* renamed from: c */
    private final C5211d f18416c;

    /* renamed from: d */
    private final C5126d f18417d;

    /* renamed from: e */
    private final AbstractC5194b f18418e = AbstractC5194b.m32861a();

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.i$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/i$a.class */
    public static final class C5138a<T> extends AbstractC5274v<T> {

        /* renamed from: a */
        private final AbstractC5224i<T> f18426a;

        /* renamed from: b */
        private final Map<String, AbstractC5139b> f18427b;

        C5138a(AbstractC5224i<T> abstractC5224i, Map<String, AbstractC5139b> map) {
            this.f18426a = abstractC5224i;
            this.f18427b = map;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: a */
        public final void mo32518a(C5247c c5247c, T t) throws IOException {
            if (t == null) {
                c5247c.mo32745f();
                return;
            }
            c5247c.mo32749d();
            try {
                for (AbstractC5139b abstractC5139b : this.f18427b.values()) {
                    if (abstractC5139b.mo32955a(t)) {
                        c5247c.mo32758a(abstractC5139b.f18428h);
                        abstractC5139b.mo32956a(c5247c, t);
                    }
                }
                c5247c.mo32746e();
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: b */
        public final T mo32517b(C5244a c5244a) throws IOException {
            if (c5244a.mo32787f() == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            T mo32819a = this.f18426a.mo32819a();
            try {
                c5244a.mo32791c();
                while (c5244a.mo32788e()) {
                    AbstractC5139b abstractC5139b = this.f18427b.get(c5244a.mo32786g());
                    if (abstractC5139b != null && abstractC5139b.f18430j) {
                        abstractC5139b.mo32957a(c5244a, mo32819a);
                    }
                    c5244a.mo32779n();
                }
                c5244a.mo32789d();
                return mo32819a;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new C5270t(e2);
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.i$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/i$b.class */
    public static abstract class AbstractC5139b {

        /* renamed from: h */
        final String f18428h;

        /* renamed from: i */
        final boolean f18429i;

        /* renamed from: j */
        final boolean f18430j;

        protected AbstractC5139b(String str, boolean z, boolean z2) {
            this.f18428h = str;
            this.f18429i = z;
            this.f18430j = z2;
        }

        /* renamed from: a */
        abstract void mo32957a(C5244a c5244a, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        abstract void mo32956a(C5247c c5247c, Object obj) throws IOException, IllegalAccessException;

        /* renamed from: a */
        abstract boolean mo32955a(Object obj) throws IOException, IllegalAccessException;
    }

    public C5136i(C5196c c5196c, AbstractC5249e abstractC5249e, C5211d c5211d, C5126d c5126d) {
        this.f18414a = c5196c;
        this.f18415b = abstractC5249e;
        this.f18416c = c5211d;
        this.f18417d = c5126d;
    }

    /* renamed from: a */
    private AbstractC5139b m32961a(final C5250f c5250f, final Field field, String str, final C5236a<?> c5236a, boolean z, boolean z2) {
        final boolean m32815a = C5226k.m32815a(c5236a.m32808a());
        AbstractC5113b abstractC5113b = (AbstractC5113b) field.getAnnotation(AbstractC5113b.class);
        AbstractC5274v<?> m32976a = abstractC5113b != null ? this.f18417d.m32976a(this.f18414a, c5250f, c5236a, abstractC5113b) : null;
        boolean z3 = m32976a != null;
        AbstractC5274v<?> abstractC5274v = m32976a;
        if (m32976a == null) {
            abstractC5274v = c5250f.m32735a((C5236a) c5236a);
        }
        final boolean z4 = z3;
        final AbstractC5274v<?> abstractC5274v2 = abstractC5274v;
        return new AbstractC5139b(str, z, z2) { // from class: com.bytedance.sdk.openadsdk.preload.a.b.a.i.1
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5136i.AbstractC5139b
            /* renamed from: a */
            void mo32957a(C5244a c5244a, Object obj) throws IOException, IllegalAccessException {
                Object mo32517b = abstractC5274v2.mo32517b(c5244a);
                if (mo32517b != null || !m32815a) {
                    field.set(obj, mo32517b);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5136i.AbstractC5139b
            /* renamed from: a */
            void mo32956a(C5247c c5247c, Object obj) throws IOException, IllegalAccessException {
                (z4 ? abstractC5274v2 : new C5148m(c5250f, abstractC5274v2, c5236a.m32805b())).mo32518a(c5247c, field.get(obj));
            }

            @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5136i.AbstractC5139b
            /* renamed from: a */
            public boolean mo32955a(Object obj) throws IOException, IllegalAccessException {
                return this.f18429i && field.get(obj) != obj;
            }
        };
    }

    /* renamed from: a */
    private List<String> m32960a(Field field) {
        AbstractC5114c abstractC5114c = (AbstractC5114c) field.getAnnotation(AbstractC5114c.class);
        if (abstractC5114c == null) {
            return Collections.singletonList(this.f18415b.mo32737a(field));
        }
        String m32993a = abstractC5114c.m32993a();
        String[] m32992b = abstractC5114c.m32992b();
        if (m32992b.length == 0) {
            return Collections.singletonList(m32993a);
        }
        ArrayList arrayList = new ArrayList(m32992b.length + 1);
        arrayList.add(m32993a);
        for (String str : m32992b) {
            arrayList.add(str);
        }
        return arrayList;
    }

    /* renamed from: a */
    private Map<String, AbstractC5139b> m32962a(C5250f c5250f, C5236a<?> c5236a, Class<?> cls) {
        Field[] declaredFields;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type m32805b = c5236a.m32805b();
        Class<? super Object> cls2 = cls;
        C5236a<?> c5236a2 = c5236a;
        while (cls2 != Object.class) {
            for (Field field : cls2.getDeclaredFields()) {
                boolean m32959a = m32959a(field, true);
                boolean m32959a2 = m32959a(field, false);
                if (m32959a || m32959a2) {
                    this.f18418e.mo32860a(field);
                    Type m32877a = C5189b.m32877a(c5236a2.m32805b(), cls2, field.getGenericType());
                    List<String> m32960a = m32960a(field);
                    int size = m32960a.size();
                    AbstractC5139b abstractC5139b = null;
                    for (int i = 0; i < size; i++) {
                        String str = m32960a.get(i);
                        if (i != 0) {
                            m32959a = false;
                        }
                        AbstractC5139b abstractC5139b2 = (AbstractC5139b) linkedHashMap.put(str, m32961a(c5250f, field, str, C5236a.m32806a(m32877a), m32959a, m32959a2));
                        if (abstractC5139b == null) {
                            abstractC5139b = abstractC5139b2;
                        }
                    }
                    if (abstractC5139b != null) {
                        throw new IllegalArgumentException(m32805b + " declares multiple JSON fields named " + abstractC5139b.f18428h);
                    }
                }
            }
            c5236a2 = C5236a.m32806a(C5189b.m32877a(c5236a2.m32805b(), cls2, cls2.getGenericSuperclass()));
            cls2 = c5236a2.m32808a();
        }
        return linkedHashMap;
    }

    /* renamed from: a */
    static boolean m32958a(Field field, boolean z, C5211d c5211d) {
        return !c5211d.m32847a(field.getType(), z) && !c5211d.m32846a(field, z);
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
    /* renamed from: a */
    public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
        Class<? super T> m32808a = c5236a.m32808a();
        if (!Object.class.isAssignableFrom(m32808a)) {
            return null;
        }
        return new C5138a(this.f18414a.m32856a(c5236a), m32962a(c5250f, (C5236a<?>) c5236a, (Class<?>) m32808a));
    }

    /* renamed from: a */
    public final boolean m32959a(Field field, boolean z) {
        return m32958a(field, z, this.f18416c);
    }
}
