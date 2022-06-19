package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c23.class */
public final /* synthetic */ class c23 implements lb3 {

    /* renamed from: a */
    static final lb3 f21078a = new c23();

    private c23() {
    }

    @Override // com.google.android.gms.internal.ads.lb3
    /* renamed from: a */
    public final int mo13594a(Object obj) {
        int i = mc3.f26537d;
        String str = ((vw2) obj).f31383a;
        int i2 = 0;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            i2 = 1;
        } else if (C7101wa.f31475a < 26) {
            if (!str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return 0;
            }
            i2 = -1;
        }
        return i2;
    }
}
