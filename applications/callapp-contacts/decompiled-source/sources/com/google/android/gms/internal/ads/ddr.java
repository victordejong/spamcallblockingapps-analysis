package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddr.class */
public class ddr implements ddh<dcn, dcn> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26762a = Logger.getLogger(ddr.class.getName());

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddr$a.class */
    static final class a implements dcn {

        /* renamed from: a  reason: collision with root package name */
        private final ddd<dcn> f26763a;

        private a(ddd<dcn> dddVar) {
            this.f26763a = dddVar;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.dcn
        public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            return djs.a(new byte[]{this.f26763a.f26742b.a(), this.f26763a.f26742b.f26744a.a(bArr, bArr2)});
        }
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final Class<dcn> a() {
        return dcn.class;
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final /* synthetic */ dcn a(ddd<dcn> dddVar) throws GeneralSecurityException {
        return new a(dddVar);
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final Class<dcn> b() {
        return dcn.class;
    }
}
