package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfp.class */
public final class dfp extends dcu<dhy> {
    public dfp() {
        super(dhy.class, new dfs(ddb.class));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public static void a2(dhy dhyVar) throws GeneralSecurityException {
        dla.b(dhyVar.zzihc);
        if (dhyVar.zzihd.b() >= 16) {
            a(dhyVar.a());
            return;
        }
        throw new GeneralSecurityException("key too short");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(did didVar) throws GeneralSecurityException {
        if (didVar.zzihi >= 10) {
            int i = dfu.f26811a[didVar.a().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new GeneralSecurityException("unknown hash type");
                    } else if (didVar.zzihi > 64) {
                        throw new GeneralSecurityException("tag size too big");
                    }
                } else if (didVar.zzihi > 32) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (didVar.zzihi > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            throw new GeneralSecurityException("tag size too small");
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dhy a(dlw dlwVar) throws zzenn {
        return dhy.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dhy dhyVar) throws GeneralSecurityException {
        a2(dhyVar);
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dhy> d() {
        return new dfr(this, dic.class);
    }
}
