package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzear;
import com.google.android.gms.internal.ads.zzeec;
import com.google.android.gms.internal.ads.zzeei;
import com.google.android.gms.internal.ads.zzeeq;
import com.google.android.gms.internal.ads.zzeer;
import com.google.android.gms.internal.ads.zzegy;
import com.google.android.gms.internal.ads.zzegz;
import com.google.android.gms.internal.ads.zzeha;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
/* renamed from: c.d.b.d.g.a.y30 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y30.class */
public final class y30 {
    /* renamed from: a */
    public static zzegz m26144a(zzeec zzeecVar) throws GeneralSecurityException {
        int i = b40.f12334c[zzeecVar.ordinal()];
        if (i == 1) {
            return zzegz.UNCOMPRESSED;
        }
        if (i == 2) {
            return zzegz.DO_NOT_USE_CRUNCHY_UNCOMPRESSED;
        }
        if (i == 3) {
            return zzegz.COMPRESSED;
        }
        String valueOf = String.valueOf(zzeecVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 22);
        sb.append("unknown point format: ");
        sb.append(valueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    /* renamed from: a */
    public static zzeha m26142a(zzeeq zzeeqVar) throws GeneralSecurityException {
        int i = b40.f12333b[zzeeqVar.ordinal()];
        if (i == 1) {
            return zzeha.NIST_P256;
        }
        if (i == 2) {
            return zzeha.NIST_P384;
        }
        if (i == 3) {
            return zzeha.NIST_P521;
        }
        String valueOf = String.valueOf(zzeeqVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
        sb.append("unknown curve type: ");
        sb.append(valueOf);
        throw new GeneralSecurityException(sb.toString());
    }

    /* renamed from: a */
    public static String m26141a(zzeer zzeerVar) throws NoSuchAlgorithmException {
        int i = b40.f12332a[zzeerVar.ordinal()];
        if (i == 1) {
            return "HmacSha1";
        }
        if (i == 2) {
            return "HmacSha256";
        }
        if (i == 3) {
            return "HmacSha512";
        }
        String valueOf = String.valueOf(zzeerVar);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("hash unsupported for HMAC: ");
        sb.append(valueOf);
        throw new NoSuchAlgorithmException(sb.toString());
    }

    /* renamed from: a */
    public static void m26143a(zzeei zzeeiVar) throws GeneralSecurityException {
        zzegy.m12568a(m26142a(zzeeiVar.m12766m().m12726m()));
        m26141a(zzeeiVar.m12766m().m12725n());
        if (zzeeiVar.m12764o() != zzeec.UNKNOWN_FORMAT) {
            zzear.m12924a(zzeeiVar.m12765n().m12772m());
            return;
        }
        throw new GeneralSecurityException("unknown EC point format");
    }
}
