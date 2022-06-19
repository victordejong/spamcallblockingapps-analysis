package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.C5060h;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.i18n.phonenumbers.f */
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/f.class */
public final class C5054f implements AbstractC5053e {

    /* renamed from: a */
    private final String f21312a;

    /* renamed from: b */
    private final AbstractC5050c f21313b;

    /* renamed from: c */
    private final ConcurrentHashMap<String, C5060h.C5062b> f21314c;

    /* renamed from: d */
    private final ConcurrentHashMap<Integer, C5060h.C5062b> f21315d;

    public C5054f(AbstractC5050c abstractC5050c) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", abstractC5050c);
    }

    C5054f(String str, AbstractC5050c abstractC5050c) {
        this.f21314c = new ConcurrentHashMap<>();
        this.f21315d = new ConcurrentHashMap<>();
        this.f21312a = str;
        this.f21313b = abstractC5050c;
    }

    /* renamed from: b */
    private boolean m1746b(int i) {
        List<String> list = C5049b.m1753a().get(Integer.valueOf(i));
        return list.size() == 1 && "001".equals(list.get(0));
    }

    @Override // com.google.i18n.phonenumbers.AbstractC5053e
    /* renamed from: a */
    public C5060h.C5062b mo1748a(int i) {
        return !m1746b(i) ? null : C5051d.m1751a(Integer.valueOf(i), this.f21315d, this.f21312a, this.f21313b);
    }

    @Override // com.google.i18n.phonenumbers.AbstractC5053e
    /* renamed from: a */
    public C5060h.C5062b mo1747a(String str) {
        return C5051d.m1751a(str, this.f21314c, this.f21312a, this.f21313b);
    }
}
