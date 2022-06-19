package com.google.android.gms.internal.ads;

import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cts.class */
public class cts implements cth<csm> {

    /* renamed from: a */
    private static final Logger f13694a = Logger.getLogger(cts.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.cts$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cts$a.class */
    static final class C2899a implements csm {

        /* renamed from: a */
        private final ctf<csm> f13695a;

        private C2899a(ctf<csm> ctfVar) {
            this.f13695a = ctfVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.csm
        /* renamed from: a */
        public final byte[] mo10254a(byte[] bArr, byte[] bArr2) {
            return czh.m10302a(new byte[]{this.f13695a.m10694a().m10695d(), this.f13695a.m10694a().m10698a().mo10254a(bArr, bArr2)});
        }
    }

    @Override // com.google.android.gms.internal.ads.cth
    /* renamed from: a */
    public final Class<csm> mo10623a() {
        return csm.class;
    }

    @Override // com.google.android.gms.internal.ads.cth
    /* renamed from: a */
    public final /* synthetic */ csm mo10622a(ctf<csm> ctfVar) {
        return new C2899a(ctfVar);
    }
}
