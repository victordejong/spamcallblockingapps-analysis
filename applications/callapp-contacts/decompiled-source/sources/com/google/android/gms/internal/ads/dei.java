package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dei.class */
public final class dei extends dcu<dgz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dei() {
        super(dgz.class, new deh(dcn.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean e() {
        try {
            Cipher.getInstance("AES/GCM-SIV/NoPadding");
            return true;
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dgz a(dlw dlwVar) throws zzenn {
        return dgz.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dgz dgzVar) throws GeneralSecurityException {
        dgz dgzVar2 = dgzVar;
        dla.b(dgzVar2.zzihc);
        dla.a(dgzVar2.zzihd.b());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dgz> d() {
        return new dek(this, dhc.class);
    }
}
