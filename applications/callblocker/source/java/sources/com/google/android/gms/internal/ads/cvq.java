package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvq.class */
class cvq implements cth<ctd> {

    /* renamed from: a */
    private static final Logger f13734a = Logger.getLogger(cvq.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.cvq$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cvq$a.class */
    static final class C2903a implements ctd {

        /* renamed from: a */
        private final ctf<ctd> f13735a;

        /* renamed from: b */
        private final byte[] f13736b;

        private C2903a(ctf<ctd> ctfVar) {
            this.f13736b = new byte[]{0};
            this.f13735a = ctfVar;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r0v6, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.ctd
        /* renamed from: a */
        public final byte[] mo10275a(byte[] bArr) {
            return this.f13735a.m10694a().m10696c().equals(cyq.LEGACY) ? czh.m10302a(new byte[]{this.f13735a.m10694a().m10695d(), this.f13735a.m10694a().m10698a().mo10275a(czh.m10302a(new byte[]{bArr, this.f13736b}))}) : czh.m10302a(new byte[]{this.f13735a.m10694a().m10695d(), this.f13735a.m10694a().m10698a().mo10275a(bArr)});
        }
    }

    @Override // com.google.android.gms.internal.ads.cth
    /* renamed from: a */
    public final Class<ctd> mo10623a() {
        return ctd.class;
    }

    @Override // com.google.android.gms.internal.ads.cth
    /* renamed from: a */
    public final /* synthetic */ ctd mo10622a(ctf<ctd> ctfVar) {
        return new C2903a(ctfVar);
    }
}
