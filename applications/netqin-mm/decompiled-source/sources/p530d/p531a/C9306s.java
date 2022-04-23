package p530d.p531a;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4922i;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9257k;
/* renamed from: d.a.s */
/* loaded from: classes2-dex2jar.jar:d/a/s.class */
public final class C9306s {

    /* renamed from: c */
    public static final C4922i f35874c = C4922i.m24830a(',');

    /* renamed from: d */
    public static final C9306s f35875d = m2961c().m2964a(new AbstractC9257k.C9258a(), true).m2964a(AbstractC9257k.C9259b.f35812a, false);

    /* renamed from: a */
    public final Map<String, C9307a> f35876a;

    /* renamed from: b */
    public final byte[] f35877b;

    /* renamed from: d.a.s$a */
    /* loaded from: classes2-dex2jar.jar:d/a/s$a.class */
    public static final class C9307a {

        /* renamed from: a */
        public final AbstractC9302r f35878a;

        /* renamed from: b */
        public final boolean f35879b;

        public C9307a(AbstractC9302r rVar, boolean z) {
            C4933n.m24794a(rVar, "decompressor");
            this.f35878a = rVar;
            this.f35879b = z;
        }
    }

    public C9306s() {
        this.f35876a = new LinkedHashMap(0);
        this.f35877b = new byte[0];
    }

    public C9306s(AbstractC9302r rVar, boolean z, C9306s sVar) {
        String a = rVar.mo2973a();
        C4933n.m24790a(!a.contains(","), "Comma is currently not allowed in message encoding");
        int size = sVar.f35876a.size();
        LinkedHashMap linkedHashMap = new LinkedHashMap(!sVar.f35876a.containsKey(rVar.mo2973a()) ? size + 1 : size);
        for (C9307a aVar : sVar.f35876a.values()) {
            String a2 = aVar.f35878a.mo2973a();
            if (!a2.equals(a)) {
                linkedHashMap.put(a2, new C9307a(aVar.f35878a, aVar.f35879b));
            }
        }
        linkedHashMap.put(a, new C9307a(rVar, z));
        this.f35876a = Collections.unmodifiableMap(linkedHashMap);
        this.f35877b = f35874c.m24828a((Iterable<?>) m2965a()).getBytes(Charset.forName("US-ASCII"));
    }

    /* renamed from: c */
    public static C9306s m2961c() {
        return new C9306s();
    }

    /* renamed from: d */
    public static C9306s m2960d() {
        return f35875d;
    }

    /* renamed from: a */
    public AbstractC9302r m2963a(String str) {
        C9307a aVar = this.f35876a.get(str);
        return aVar != null ? aVar.f35878a : null;
    }

    /* renamed from: a */
    public C9306s m2964a(AbstractC9302r rVar, boolean z) {
        return new C9306s(rVar, z, this);
    }

    /* renamed from: a */
    public Set<String> m2965a() {
        HashSet hashSet = new HashSet(this.f35876a.size());
        for (Map.Entry<String, C9307a> entry : this.f35876a.entrySet()) {
            if (entry.getValue().f35879b) {
                hashSet.add(entry.getKey());
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: b */
    public byte[] m2962b() {
        return this.f35877b;
    }
}
