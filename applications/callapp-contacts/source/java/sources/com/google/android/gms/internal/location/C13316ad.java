package com.google.android.gms.internal.location;

import java.util.List;
/* renamed from: com.google.android.gms.internal.location.ad */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ad.class */
public final class C13316ad extends AbstractC13317ae {

    /* renamed from: a */
    final transient int f50549a;

    /* renamed from: b */
    final transient int f50550b;

    /* renamed from: c */
    final /* synthetic */ AbstractC13317ae f50551c;

    public C13316ad(AbstractC13317ae abstractC13317ae, int i, int i2) {
        this.f50551c = abstractC13317ae;
        this.f50549a = i;
        this.f50550b = i2;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13317ae
    /* renamed from: a */
    public final AbstractC13317ae mo13347a(int i, int i2) {
        C13350y.m13324a(i, i2, this.f50550b);
        AbstractC13317ae abstractC13317ae = this.f50551c;
        int i3 = this.f50549a;
        return abstractC13317ae.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: b */
    public final Object[] mo13341b() {
        return this.f50551c.mo13341b();
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: c */
    public final int mo13340c() {
        return this.f50551c.mo13340c() + this.f50549a;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: d */
    final int mo13339d() {
        return this.f50551c.mo13340c() + this.f50549a + this.f50550b;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13314ab
    /* renamed from: f */
    public final boolean mo13338f() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        C13350y.m13325a(i, this.f50550b);
        return this.f50551c.get(i + this.f50549a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f50550b;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13317ae, java.util.List
    public final /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
