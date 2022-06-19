package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddr.class */
public class ddr implements ddh<dcn, dcn> {

    /* renamed from: a */
    private static final Logger f46993a = Logger.getLogger(ddr.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.ddr$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddr$a.class */
    static final class C12324a implements dcn {

        /* renamed from: a */
        private final ddd<dcn> f46994a;

        private C12324a(ddd<dcn> dddVar) {
            this.f46994a = dddVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.dcn
        /* renamed from: a */
        public final byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            return djs.m16560a(new byte[]{this.f46994a.f46970b.m16851a(), this.f46994a.f46970b.f46972a.mo16516a(bArr, bArr2)});
        }
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: a */
    public final Class<dcn> mo16794a() {
        return dcn.class;
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: a */
    public final /* synthetic */ dcn mo16793a(ddd<dcn> dddVar) throws GeneralSecurityException {
        return new C12324a(dddVar);
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: b */
    public final Class<dcn> mo16792b() {
        return dcn.class;
    }
}
