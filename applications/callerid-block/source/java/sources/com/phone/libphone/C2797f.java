package com.phone.libphone;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.phone.libphone.f */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/f.class */
public final class C2797f implements AbstractC2796e {

    /* renamed from: a */
    private final String f11630a;

    /* renamed from: b */
    private final AbstractC2793c f11631b;

    /* renamed from: c */
    private final ConcurrentHashMap<String, Phonemetadata$PhoneMetadata> f11632c;

    /* renamed from: d */
    private final ConcurrentHashMap<Integer, Phonemetadata$PhoneMetadata> f11633d;

    public C2797f(AbstractC2793c abstractC2793c) {
        this(C2805k.f11646b, abstractC2793c);
    }

    C2797f(String str, AbstractC2793c abstractC2793c) {
        this.f11632c = new ConcurrentHashMap<>();
        this.f11633d = new ConcurrentHashMap<>();
        this.f11630a = str;
        this.f11631b = abstractC2793c;
    }

    /* renamed from: c */
    private boolean m1658c(int i) {
        List<String> list = C2792b.m1665a().get(Integer.valueOf(i));
        boolean z = false;
        if (list.size() == 1) {
            z = false;
            if ("001".equals(list.get(0))) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.phone.libphone.AbstractC2796e
    /* renamed from: a */
    public Phonemetadata$PhoneMetadata mo1660a(int i) {
        if (!m1658c(i)) {
            return null;
        }
        return C2794d.m1664a(Integer.valueOf(i), this.f11633d, this.f11630a, this.f11631b);
    }

    @Override // com.phone.libphone.AbstractC2796e
    /* renamed from: b */
    public Phonemetadata$PhoneMetadata mo1659b(String str) {
        return C2794d.m1664a(str, this.f11632c, this.f11630a, this.f11631b);
    }
}
