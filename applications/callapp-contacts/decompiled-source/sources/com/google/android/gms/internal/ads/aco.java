package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aco.class */
final class aco extends ajl {

    /* renamed from: a  reason: collision with root package name */
    static final aco f23107a = new aco();

    aco() {
    }

    @Override // com.google.android.gms.internal.ads.ajl
    public final aqp a(String str) {
        return "moov".equals(str) ? new asr() : "mvhd".equals(str) ? new arq() : new ats(str);
    }
}
