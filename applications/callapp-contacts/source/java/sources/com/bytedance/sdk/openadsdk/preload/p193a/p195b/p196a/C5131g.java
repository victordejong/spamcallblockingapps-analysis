package com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a;

import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5262l;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v;
import com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w;
import com.bytedance.sdk.openadsdk.preload.p193a.C5250f;
import com.bytedance.sdk.openadsdk.preload.p193a.C5267q;
import com.bytedance.sdk.openadsdk.preload.p193a.C5270t;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5214f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5224i;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5189b;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5196c;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.C5227l;
import com.bytedance.sdk.openadsdk.preload.p193a.p199c.C5236a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5247c;
import com.bytedance.sdk.openadsdk.preload.p193a.p200d.EnumC5246b;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/g.class */
public final class C5131g implements AbstractC5276w {

    /* renamed from: a */
    final boolean f18405a;

    /* renamed from: b */
    private final C5196c f18406b;

    /* renamed from: com.bytedance.sdk.openadsdk.preload.a.b.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/b/a/g$a.class */
    final class C5132a<K, V> extends AbstractC5274v<Map<K, V>> {

        /* renamed from: b */
        private final AbstractC5274v<K> f18408b;

        /* renamed from: c */
        private final AbstractC5274v<V> f18409c;

        /* renamed from: d */
        private final AbstractC5224i<? extends Map<K, V>> f18410d;

        public C5132a(C5250f c5250f, Type type, AbstractC5274v<K> abstractC5274v, Type type2, AbstractC5274v<V> abstractC5274v2, AbstractC5224i<? extends Map<K, V>> abstractC5224i) {
            C5131g.this = r8;
            this.f18408b = new C5148m(c5250f, abstractC5274v, type);
            this.f18409c = new C5148m(c5250f, abstractC5274v2, type2);
            this.f18410d = abstractC5224i;
        }

        /* renamed from: a */
        private String m32963a(AbstractC5262l abstractC5262l) {
            if (!abstractC5262l.m32695i()) {
                if (!abstractC5262l.m32694j()) {
                    throw new AssertionError();
                }
                return JsonReaderKt.NULL;
            }
            C5267q m32691m = abstractC5262l.m32691m();
            if (m32691m.m32680o()) {
                return String.valueOf(m32691m.mo32688a());
            }
            if (m32691m.m32681n()) {
                return Boolean.toString(m32691m.mo32682f());
            }
            if (!m32691m.m32679p()) {
                throw new AssertionError();
            }
            return m32691m.mo32686b();
        }

        /* renamed from: a */
        public final Map<K, V> mo32517b(C5244a c5244a) throws IOException {
            EnumC5246b mo32787f = c5244a.mo32787f();
            if (mo32787f == EnumC5246b.NULL) {
                c5244a.mo32783j();
                return null;
            }
            Map<K, V> mo32819a = this.f18410d.mo32819a();
            if (mo32787f == EnumC5246b.BEGIN_ARRAY) {
                c5244a.mo32801a();
                while (c5244a.mo32788e()) {
                    c5244a.mo32801a();
                    K mo32517b = this.f18408b.mo32517b(c5244a);
                    if (mo32819a.put(mo32517b, this.f18409c.mo32517b(c5244a)) != null) {
                        throw new C5270t("duplicate key: ".concat(String.valueOf(mo32517b)));
                    }
                    c5244a.mo32796b();
                }
                c5244a.mo32796b();
            } else {
                c5244a.mo32791c();
                while (c5244a.mo32788e()) {
                    AbstractC5214f.f18572a.mo32766a(c5244a);
                    K mo32517b2 = this.f18408b.mo32517b(c5244a);
                    if (mo32819a.put(mo32517b2, this.f18409c.mo32517b(c5244a)) != null) {
                        throw new C5270t("duplicate key: ".concat(String.valueOf(mo32517b2)));
                    }
                }
                c5244a.mo32789d();
            }
            return mo32819a;
        }

        @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5274v
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32518a(C5247c c5247c, Object obj) throws IOException {
            m32964a(c5247c, (Map) ((Map) obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public final void m32964a(C5247c c5247c, Map<K, V> map) throws IOException {
            boolean z;
            if (map == null) {
                c5247c.mo32745f();
            } else if (!C5131g.this.f18405a) {
                c5247c.mo32749d();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    c5247c.mo32758a(String.valueOf(entry.getKey()));
                    this.f18409c.mo32518a(c5247c, entry.getValue());
                }
                c5247c.mo32746e();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
                boolean z2 = false;
                while (true) {
                    z = z2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<K, V> next = it2.next();
                    AbstractC5262l m32676a = this.f18408b.m32676a(next.getKey());
                    arrayList.add(m32676a);
                    arrayList2.add(next.getValue());
                    z2 = z | (m32676a.m32697g() || m32676a.m32696h());
                }
                if (!z) {
                    c5247c.mo32749d();
                    int size = arrayList.size();
                    for (int i = 0; i < size; i++) {
                        c5247c.mo32758a(m32963a((AbstractC5262l) arrayList.get(i)));
                        this.f18409c.mo32518a(c5247c, arrayList2.get(i));
                    }
                    c5247c.mo32746e();
                    return;
                }
                c5247c.mo32756b();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    c5247c.mo32756b();
                    C5227l.m32813a((AbstractC5262l) arrayList.get(i2), c5247c);
                    this.f18409c.mo32518a(c5247c, arrayList2.get(i2));
                    c5247c.mo32752c();
                }
                c5247c.mo32752c();
            }
        }
    }

    public C5131g(C5196c c5196c, boolean z) {
        this.f18406b = c5196c;
        this.f18405a = z;
    }

    /* renamed from: a */
    private AbstractC5274v<?> m32966a(C5250f c5250f, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? C5149n.f18482f : c5250f.m32735a((C5236a) C5236a.m32806a(type));
    }

    @Override // com.bytedance.sdk.openadsdk.preload.p193a.AbstractC5276w
    /* renamed from: a */
    public final <T> AbstractC5274v<T> mo32675a(C5250f c5250f, C5236a<T> c5236a) {
        Type m32805b = c5236a.m32805b();
        if (!Map.class.isAssignableFrom(c5236a.m32808a())) {
            return null;
        }
        Type[] m32869b = C5189b.m32869b(m32805b, C5189b.m32865e(m32805b));
        return new C5132a(c5250f, m32869b[0], m32966a(c5250f, m32869b[0]), m32869b[1], c5250f.m32735a((C5236a) C5236a.m32806a(m32869b[1])), this.f18406b.m32856a(c5236a));
    }
}
