package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C16129j;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.i18n.phonenumbers.f */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/f.class */
public final class C16123f implements AbstractC16122e {

    /* renamed from: a */
    private final String f56918a;

    /* renamed from: b */
    private final AbstractC16119c f56919b;

    /* renamed from: c */
    private final ConcurrentHashMap<String, C16129j.C16132b> f56920c;

    /* renamed from: d */
    private final ConcurrentHashMap<Integer, C16129j.C16132b> f56921d;

    public C16123f(AbstractC16119c abstractC16119c) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", abstractC16119c);
    }

    C16123f(String str, AbstractC16119c abstractC16119c) {
        this.f56920c = new ConcurrentHashMap<>();
        this.f56921d = new ConcurrentHashMap<>();
        this.f56918a = str;
        this.f56919b = abstractC16119c;
    }

    @Override // com.google.i18n.phonenumbers.AbstractC16122e
    /* renamed from: a */
    public final C16129j.C16132b mo7817a(int i) {
        List<String> list = C16112b.m7839a().get(Integer.valueOf(i));
        boolean z = false;
        if (list.size() == 1) {
            z = false;
            if (PhoneNumberUtil.REGION_CODE_FOR_NON_GEO_ENTITY.equals(list.get(0))) {
                z = true;
            }
        }
        if (!z) {
            return null;
        }
        return C16120d.m7820a(Integer.valueOf(i), this.f56921d, this.f56918a, this.f56919b);
    }

    @Override // com.google.i18n.phonenumbers.AbstractC16122e
    /* renamed from: a */
    public final C16129j.C16132b mo7816a(String str) {
        return C16120d.m7820a(str, this.f56920c, this.f56918a, this.f56919b);
    }
}
