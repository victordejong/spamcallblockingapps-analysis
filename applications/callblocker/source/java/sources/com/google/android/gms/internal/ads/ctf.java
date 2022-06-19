package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.cye;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ctf.class */
public final class ctf<P> {

    /* renamed from: a */
    private static final Charset f13659a = Charset.forName("UTF-8");

    /* renamed from: b */
    private ConcurrentMap<String, List<cte<P>>> f13660b = new ConcurrentHashMap();

    /* renamed from: c */
    private cte<P> f13661c;

    /* renamed from: d */
    private final Class<P> f13662d;

    private ctf(Class<P> cls) {
        this.f13662d = cls;
    }

    /* renamed from: a */
    public static <P> ctf<P> m10692a(Class<P> cls) {
        return new ctf<>(cls);
    }

    /* renamed from: a */
    public final cte<P> m10694a() {
        return this.f13661c;
    }

    /* renamed from: a */
    public final cte<P> m10691a(P p, cye.C2935a c2935a) {
        byte[] bArr;
        if (c2935a.m10390c() != cxy.ENABLED) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        switch (csr.f13643a[c2935a.m10388e().ordinal()]) {
            case 1:
            case 2:
                bArr = ByteBuffer.allocate(5).put((byte) 0).putInt(c2935a.m10389d()).array();
                break;
            case 3:
                bArr = ByteBuffer.allocate(5).put((byte) 1).putInt(c2935a.m10389d()).array();
                break;
            case 4:
                bArr = cso.f13642a;
                break;
            default:
                throw new GeneralSecurityException("unknown output prefix type");
        }
        cte<P> cteVar = new cte<>(p, bArr, c2935a.m10390c(), c2935a.m10388e(), c2935a.m10389d());
        ArrayList arrayList = new ArrayList();
        arrayList.add(cteVar);
        String str = new String(cteVar.m10695d(), f13659a);
        List<cte<P>> put = this.f13660b.put(str, Collections.unmodifiableList(arrayList));
        if (put != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(put);
            arrayList2.add(cteVar);
            this.f13660b.put(str, Collections.unmodifiableList(arrayList2));
        }
        return cteVar;
    }

    /* renamed from: a */
    public final void m10693a(cte<P> cteVar) {
        if (cteVar == null) {
            throw new IllegalArgumentException("the primary entry must be non-null");
        }
        if (cteVar.m10697b() != cxy.ENABLED) {
            throw new IllegalArgumentException("the primary entry has to be ENABLED");
        }
        List<cte<P>> list = this.f13660b.get(new String(cteVar.m10695d(), f13659a));
        if (list == null) {
            list = Collections.emptyList();
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("the primary entry cannot be set to an entry which is not held by this primitive set");
        }
        this.f13661c = cteVar;
    }

    /* renamed from: b */
    public final Class<P> m10690b() {
        return this.f13662d;
    }
}
