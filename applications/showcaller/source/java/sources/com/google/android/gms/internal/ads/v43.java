package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v43.class */
final class v43 implements eb3 {

    /* renamed from: a */
    private final String f31070a;

    /* renamed from: b */
    private final int f31071b;

    /* renamed from: c */
    private s63 f31072c;

    /* renamed from: d */
    private u53 f31073d;

    /* renamed from: e */
    private int f31074e;

    /* renamed from: f */
    private e73 f31075f;

    public v43(d93 d93Var) {
        String m15860C = d93Var.m15860C();
        this.f31070a = m15860C;
        if (m15860C.equals(r23.f28748b)) {
            try {
                v63 m10083D = v63.m10083D(d93Var.m15859D(), vd3.m10041a());
                this.f31072c = (s63) p23.m12452h(d93Var);
                this.f31071b = m10083D.m10084C();
            } catch (zzggm e) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesGcmKeyFormat", e);
            }
        } else if (m15860C.equals(r23.f28747a)) {
            try {
                x53 m9343E = x53.m9343E(d93Var.m15859D(), vd3.m10041a());
                this.f31073d = (u53) p23.m12452h(d93Var);
                this.f31074e = m9343E.m9345C().m15934D();
                this.f31071b = this.f31074e + m9343E.m9344D().m10391D();
            } catch (zzggm e2) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e2);
            }
        } else if (!m15860C.equals(g43.f23236a)) {
            String valueOf = String.valueOf(m15860C);
            throw new GeneralSecurityException(valueOf.length() != 0 ? "unsupported AEAD DEM key type: ".concat(valueOf) : new String("unsupported AEAD DEM key type: "));
        } else {
            try {
                i73 m14469D = i73.m14469D(d93Var.m15859D(), vd3.m10041a());
                this.f31075f = (e73) p23.m12452h(d93Var);
                this.f31071b = m14469D.m14470C();
            } catch (zzggm e3) {
                throw new GeneralSecurityException("invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat", e3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eb3
    /* renamed from: a */
    public final w43 mo10089a(byte[] bArr) {
        if (bArr.length == this.f31071b) {
            if (this.f31070a.equals(r23.f28748b)) {
                r63 m11108F = s63.m11108F();
                m11108F.m15511o(this.f31072c);
                m11108F.m11674r(zzgex.zzs(bArr, 0, this.f31071b));
                return new w43((i13) p23.m12451i(this.f31070a, m11108F.m15512n(), i13.class));
            } else if (!this.f31070a.equals(r23.f28747a)) {
                if (!this.f31070a.equals(g43.f23236a)) {
                    throw new GeneralSecurityException("unknown DEM key type");
                }
                d73 m15557F = e73.m15557F();
                m15557F.m15511o(this.f31075f);
                m15557F.m15880r(zzgex.zzs(bArr, 0, this.f31071b));
                return new w43((l13) p23.m12451i(this.f31070a, m15557F.m15512n(), l13.class));
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, this.f31074e);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, this.f31074e, this.f31071b);
                z53 m16685G = a63.m16685G();
                m16685G.m15511o(this.f31073d.m10405D());
                m16685G.m8517s(zzgex.zzt(copyOfRange));
                a63 m15512n = m16685G.m15512n();
                q83 m11663G = r83.m11663G();
                m11663G.m15511o(this.f31073d.m10404E());
                m11663G.m12013s(zzgex.zzt(copyOfRange2));
                r83 m15512n2 = m11663G.m15512n();
                t53 m10402G = u53.m10402G();
                m10402G.m10796q(this.f31073d.m10406C());
                m10402G.m10795r(m15512n);
                m10402G.m10794s(m15512n2);
                return new w43((i13) p23.m12451i(this.f31070a, m10402G.m15512n(), i13.class));
            }
        }
        throw new GeneralSecurityException("Symmetric key has incorrect length");
    }

    @Override // com.google.android.gms.internal.ads.eb3
    public final int zza() {
        return this.f31071b;
    }
}
