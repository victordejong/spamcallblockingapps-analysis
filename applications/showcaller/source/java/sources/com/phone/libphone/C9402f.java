package com.phone.libphone;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.phone.libphone.f */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/f.class */
public final class C9402f implements AbstractC9401e {

    /* renamed from: a */
    private final String f40233a;

    /* renamed from: b */
    private final AbstractC9398c f40234b;

    /* renamed from: c */
    private final ConcurrentHashMap<String, Phonemetadata$PhoneMetadata> f40235c;

    /* renamed from: d */
    private final ConcurrentHashMap<Integer, Phonemetadata$PhoneMetadata> f40236d;

    public C9402f(AbstractC9398c abstractC9398c) {
        this(C9410k.f40249b, abstractC9398c);
    }

    C9402f(String str, AbstractC9398c abstractC9398c) {
        this.f40235c = new ConcurrentHashMap<>();
        this.f40236d = new ConcurrentHashMap<>();
        this.f40233a = str;
        this.f40234b = abstractC9398c;
    }

    /* renamed from: c */
    private boolean m675c(int i) {
        List<String> list = C9397b.m682a().get(Integer.valueOf(i));
        boolean z = false;
        if (list.size() == 1) {
            z = false;
            if ("001".equals(list.get(0))) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.phone.libphone.AbstractC9401e
    /* renamed from: a */
    public Phonemetadata$PhoneMetadata mo677a(int i) {
        if (!m675c(i)) {
            return null;
        }
        return C9399d.m681a(Integer.valueOf(i), this.f40236d, this.f40233a, this.f40234b);
    }

    @Override // com.phone.libphone.AbstractC9401e
    /* renamed from: b */
    public Phonemetadata$PhoneMetadata mo676b(String str) {
        return C9399d.m681a(str, this.f40235c, this.f40233a, this.f40234b);
    }
}
