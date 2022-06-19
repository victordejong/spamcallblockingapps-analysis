package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abn.class */
final class abn extends aag {

    /* renamed from: a */
    static final abn f7755a = new abn();

    abn() {
    }

    @Override // com.google.android.gms.internal.ads.aag
    /* renamed from: a */
    public final adi mo13667a(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new afi() : "mvhd".equals(str) ? new ail() : new ahk(str);
    }
}
