package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dei.class */
public final class dei extends dcu<dgz> {
    public dei() {
        super(dgz.class, new deh(dcn.class));
    }

    /* renamed from: e */
    public static boolean m16820e() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dgz mo16803a(dlw dlwVar) throws zzenn {
        return dgz.m16714a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dgz dgzVar) throws GeneralSecurityException {
        dgz dgzVar2 = dgzVar;
        dla.m16520b(dgzVar2.zzihc);
        dla.m16521a(dgzVar2.zzihd.mo16138b());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dgz> mo16800d() {
        return new dek(this, dhc.class);
    }
}
