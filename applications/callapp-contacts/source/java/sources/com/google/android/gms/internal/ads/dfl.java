package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dgj;
import com.google.android.gms.internal.ads.dgv;
import com.google.android.gms.internal.ads.dhy;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dfl.class */
final class dfl implements djv {

    /* renamed from: a */
    private final String f47039a;

    /* renamed from: b */
    private final int f47040b;

    /* renamed from: c */
    private dgv f47041c;

    /* renamed from: d */
    private dgf f47042d;

    /* renamed from: e */
    private int f47043e;

    public dfl(dik dikVar) throws GeneralSecurityException {
        String str = dikVar.zzijv;
        this.f47039a = str;
        if (str.equals(dds.f46996b)) {
            try {
                dgy m16718a = dgy.m16718a(dikVar.zzijw, dmt.m16396a());
                this.f47041c = (dgv) ddm.m16834b(dikVar);
                this.f47040b = m16718a.zzihg;
            } catch (zzenn e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (!str.equals(dds.f46995a)) {
            String valueOf = String.valueOf(str);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        } else {
            try {
                dgi m16761a = dgi.m16761a(dikVar.zzijw, dmt.m16396a());
                this.f47042d = (dgf) ddm.m16834b(dikVar);
                this.f47043e = m16761a.m16762a().zzihg;
                this.f47040b = this.f47043e + m16761a.m16760b().zzihg;
            } catch (zzenn e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.djv
    /* renamed from: a */
    public final int mo16552a() {
        return this.f47040b;
    }

    @Override // com.google.android.gms.internal.ads.djv
    /* renamed from: a */
    public final dcn mo16551a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length == this.f47040b) {
            if (this.f47039a.equals(dds.f46996b)) {
                return (dcn) ddm.m16839a(this.f47039a, dgv.m16726a().m16330a((dgv.C12341a) this.f47041c).m16720a(dlw.m16474a(bArr, 0, this.f47040b)).mo16259f(), dcn.class);
            } else if (!this.f47039a.equals(dds.f46995a)) {
                throw new GeneralSecurityException("unknown DEM key type");
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f47043e);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f47043e, this.f47040b);
                dgj mo16259f = dgj.m16753b().m16330a((dgj.C12335a) this.f47042d.m16773a()).m16748a(dlw.m16475a(copyOfRange)).mo16259f();
                return (dcn) ddm.m16839a(this.f47039a, dgf.m16767c().m16765a(this.f47042d.zzihc).m16764a(mo16259f).m16763a(dhy.m16656b().m16330a((dhy.C12354a) this.f47042d.m16768b()).m16651a(dlw.m16475a(copyOfRange2)).mo16259f()).mo16259f(), dcn.class);
            }
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }
}
