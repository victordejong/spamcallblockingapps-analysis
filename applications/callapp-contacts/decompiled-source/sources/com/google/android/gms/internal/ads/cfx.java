package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfx.class */
public final class cfx implements chb<cfy> {

    /* renamed from: a  reason: collision with root package name */
    private String f25755a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25756b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cfx(String str, String str2) {
        this.f25755a = str;
        this.f25756b = str2;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cfy> a() {
        return dbh.a(new cfy(this.f25755a, this.f25756b));
    }
}
