package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfp.class */
public final class dfp extends dcu<dhy> {
    public dfp() {
        super(dhy.class, new dfs(ddb.class));
    }

    /* renamed from: a */
    public static void m16805a(dhy dhyVar) throws GeneralSecurityException {
        dla.m16520b(dhyVar.zzihc);
        if (dhyVar.zzihd.mo16138b() >= 16) {
            m16804a(dhyVar.m16661a());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    /* renamed from: a */
    public static void m16804a(did didVar) throws GeneralSecurityException {
        if (didVar.zzihi >= 10) {
            int i = dfu.f47052a[didVar.m16646a().ordinal()];
            if (i == 1) {
                if (didVar.zzihi > 20) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (i == 2) {
                if (didVar.zzihi > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            } else if (i != 3) {
                throw new GeneralSecurityException("unknown hash type");
            } else {
                if (didVar.zzihi > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
                return;
            }
        }
        throw new GeneralSecurityException("tag size too small");
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dhy mo16803a(dlw dlwVar) throws zzenn {
        return dhy.m16657a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dhy dhyVar) throws GeneralSecurityException {
        m16805a(dhyVar);
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dhy> mo16800d() {
        return new dfr(this, dic.class);
    }
}
