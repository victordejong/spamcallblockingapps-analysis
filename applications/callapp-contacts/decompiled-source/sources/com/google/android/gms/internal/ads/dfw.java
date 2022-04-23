package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfw.class */
class dfw implements ddh<ddb, ddb> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26812a = Logger.getLogger(dfw.class.getName());

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfw$a.class */
    static final class a implements ddb {

        /* renamed from: a  reason: collision with root package name */
        private final ddd<ddb> f26813a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f26814b;

        private a(ddd<ddb> dddVar) {
            this.f26814b = new byte[]{0};
            this.f26813a = dddVar;
        }

        /* JADX WARN: Type inference failed for: r0v6, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
        /* JADX WARN: Type inference failed for: r4v2, types: [byte[], byte[][]] */
        @Override // com.google.android.gms.internal.ads.ddb
        public final byte[] a(byte[] bArr) throws GeneralSecurityException {
            return this.f26813a.f26742b.f26746c.equals(djb.LEGACY) ? djs.a(new byte[]{this.f26813a.f26742b.a(), this.f26813a.f26742b.f26744a.a(djs.a(new byte[]{bArr, this.f26814b}))}) : djs.a(new byte[]{this.f26813a.f26742b.a(), this.f26813a.f26742b.f26744a.a(bArr)});
        }
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final Class<ddb> a() {
        return ddb.class;
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final /* synthetic */ ddb a(ddd<ddb> dddVar) throws GeneralSecurityException {
        return new a(dddVar);
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final Class<ddb> b() {
        return ddb.class;
    }
}
