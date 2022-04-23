package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.j;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/f.class */
public final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    private final String f32859a;

    /* renamed from: b  reason: collision with root package name */
    private final c f32860b;

    /* renamed from: c  reason: collision with root package name */
    private final ConcurrentHashMap<String, j.b> f32861c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentHashMap<Integer, j.b> f32862d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(c cVar) {
        this("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", cVar);
    }

    f(String str, c cVar) {
        this.f32861c = new ConcurrentHashMap<>();
        this.f32862d = new ConcurrentHashMap<>();
        this.f32859a = str;
        this.f32860b = cVar;
    }

    @Override // com.google.i18n.phonenumbers.e
    public final j.b a(int i) {
        List<String> list = b.a().get(Integer.valueOf(i));
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
        return d.a(Integer.valueOf(i), this.f32862d, this.f32859a, this.f32860b);
    }

    @Override // com.google.i18n.phonenumbers.e
    public final j.b a(String str) {
        return d.a(str, this.f32861c, this.f32859a, this.f32860b);
    }
}
