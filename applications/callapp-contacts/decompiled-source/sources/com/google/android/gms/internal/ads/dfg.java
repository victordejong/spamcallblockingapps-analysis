package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfg.class */
public class dfg implements ddh<dcr, dcr> {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f26796a = Logger.getLogger(dfg.class.getName());

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfg$a.class */
    static final class a implements dcr {

        /* renamed from: a  reason: collision with root package name */
        private final ddd<dcr> f26797a;

        public a(ddd<dcr> dddVar) {
            this.f26797a = dddVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final Class<dcr> a() {
        return dcr.class;
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final /* synthetic */ dcr a(ddd<dcr> dddVar) throws GeneralSecurityException {
        return new a(dddVar);
    }

    @Override // com.google.android.gms.internal.ads.ddh
    public final Class<dcr> b() {
        return dcr.class;
    }
}
