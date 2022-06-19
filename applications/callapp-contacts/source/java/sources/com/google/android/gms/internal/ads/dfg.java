package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfg.class */
public class dfg implements ddh<dcr, dcr> {

    /* renamed from: a */
    private static final Logger f47036a = Logger.getLogger(dfg.class.getName());

    /* renamed from: com.google.android.gms.internal.ads.dfg$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfg$a.class */
    static final class C12327a implements dcr {

        /* renamed from: a */
        private final ddd<dcr> f47037a;

        public C12327a(ddd<dcr> dddVar) {
            this.f47037a = dddVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: a */
    public final Class<dcr> mo16794a() {
        return dcr.class;
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: a */
    public final /* synthetic */ dcr mo16793a(ddd<dcr> dddVar) throws GeneralSecurityException {
        return new C12327a(dddVar);
    }

    @Override // com.google.android.gms.internal.ads.ddh
    /* renamed from: b */
    public final Class<dcr> mo16792b() {
        return dcr.class;
    }
}
