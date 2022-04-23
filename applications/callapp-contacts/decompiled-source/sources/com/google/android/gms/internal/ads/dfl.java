package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dgj;
import com.google.android.gms.internal.ads.dgv;
import com.google.android.gms.internal.ads.dhy;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfl.class */
final class dfl implements djv {

    /* renamed from: a  reason: collision with root package name */
    private final String f26799a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26800b;

    /* renamed from: c  reason: collision with root package name */
    private dgv f26801c;

    /* renamed from: d  reason: collision with root package name */
    private dgf f26802d;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dfl(dik dikVar) throws GeneralSecurityException {
        String str = dikVar.zzijv;
        this.f26799a = str;
        if (str.equals(dds.f26765b)) {
            try {
                dgy a2 = dgy.a(dikVar.zzijw, dmt.a());
                this.f26801c = (dgv) ddm.b(dikVar);
                this.f26800b = a2.zzihg;
            } catch (zzenn e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (str.equals(dds.f26764a)) {
            try {
                dgi a3 = dgi.a(dikVar.zzijw, dmt.a());
                this.f26802d = (dgf) ddm.b(dikVar);
                this.e = a3.a().zzihg;
                this.f26800b = this.e + a3.b().zzihg;
            } catch (zzenn e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else {
            String valueOf = String.valueOf(str);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.djv
    public final int a() {
        return this.f26800b;
    }

    @Override // com.google.android.gms.internal.ads.djv
    public final dcn a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length != this.f26800b) {
            throw new GeneralSecurityException("Symmetric key has incorrect length");
        } else if (this.f26799a.equals(dds.f26765b)) {
            return (dcn) ddm.a(this.f26799a, dgv.a().a((dgv.a) this.f26801c).a(dlw.a(bArr, 0, this.f26800b)).f(), dcn.class);
        } else if (this.f26799a.equals(dds.f26764a)) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.e);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.e, this.f26800b);
            dgj d2 = dgj.b().a((dgj.a) this.f26802d.a()).a(dlw.a(copyOfRange)).f();
            return (dcn) ddm.a(this.f26799a, dgf.c().a(this.f26802d.zzihc).a(d2).a(dhy.b().a((dhy.a) this.f26802d.b()).a(dlw.a(copyOfRange2)).f()).f(), dcn.class);
        } else {
            throw new GeneralSecurityException("unknown DEM key type");
        }
    }
}
