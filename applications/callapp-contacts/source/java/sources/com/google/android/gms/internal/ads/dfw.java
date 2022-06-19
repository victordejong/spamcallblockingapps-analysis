package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfw.class */
class dfw implements ddh<ddb, ddb> {

    /* renamed from: a */
    private static final Logger f47053a = Logger.getLogger(dfw.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.dfw$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfw$a.class */
    static final class C12328a implements ddb {

        /* renamed from: a */
        private final ddd<ddb> f47054a;

        /* renamed from: b */
        private final byte[] f47055b;

        private C12328a(ddd<ddb> dddVar) {
            this.f47055b = new byte[]{0};
            this.f47054a = dddVar;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.ddb
        /* renamed from: a */
        public final byte[] mo16527a(byte[] bArr) throws GeneralSecurityException {
            return this.f47054a.f46970b.f46974c.equals(djb.LEGACY) ? djs.m16560a(new byte[]{this.f47054a.f46970b.m16851a(), this.f47054a.f46970b.f46972a.mo16527a(djs.m16560a(new byte[]{bArr, this.f47055b}))}) : djs.m16560a(new byte[]{this.f47054a.f46970b.m16851a(), this.f47054a.f46970b.f46972a.mo16527a(bArr)});
        }
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: a */
    public final Class<ddb> mo16794a() {
        return ddb.class;
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: a */
    public final /* synthetic */ ddb mo16793a(ddd<ddb> dddVar) throws GeneralSecurityException {
        return new C12328a(dddVar);
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: b */
    public final Class<ddb> mo16792b() {
        return ddb.class;
    }
}
