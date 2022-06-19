package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.c1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c1.class */
public final class C6350c1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private static final C6277a2<q24> f21060i = new C6277a2<>();

    /* renamed from: j */
    private final Context f21061j;

    public C6350c1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2, Context context, c14 c14Var) {
        super(c6869q0, "NK1iwlHEHCICBCLEvTy0TnuhgEeSXovnPs9zKPvVW8trSfaaB+/inefY+5AxSSUI", "/qulcnd5BAOc2NixUFmrPgx+DAD1V/hpoK4nowHOBbg=", j14Var, i, 27);
        this.f21061j = context;
    }

    /* renamed from: d */
    private final String m16167d() {
        try {
            if (this.f32754b.m12069o() != null) {
                this.f32754b.m12069o().get();
            }
            z14 m12070n = this.f32754b.m12070n();
            if (m12070n != null && m12070n.m8581f0()) {
                return m12070n.m8567t0();
            }
            return null;
        } catch (InterruptedException | ExecutionException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        q24 q24Var;
        int i;
        AtomicReference<q24> m16716a = f21060i.m16716a(this.f21061j.getPackageName());
        synchronized (m16716a) {
            q24 q24Var2 = m16716a.get();
            if (q24Var2 == null || C6980t0.m10866e(q24Var2.f28300b) || q24Var2.f28300b.equals("E") || q24Var2.f28300b.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (!C6980t0.m10866e(null)) {
                    i = 5;
                } else {
                    i = (!(!C6980t0.m10866e(null) ? Boolean.FALSE : Boolean.FALSE).booleanValue() || !this.f32754b.m12073k()) ? 3 : 4;
                }
                boolean z = i == 3;
                Boolean bool = (Boolean) C7192yr.m8714c().m14263c(C6679kw.f25445B1);
                String m16168c = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25437A1)).booleanValue() ? m16168c() : null;
                String str = m16168c;
                if (bool.booleanValue()) {
                    str = m16168c;
                    if (this.f32754b.m12073k()) {
                        str = m16168c;
                        if (C6980t0.m10866e(m16168c)) {
                            str = m16167d();
                        }
                    }
                }
                q24 q24Var3 = new q24((String) this.f32758f.invoke(null, this.f21061j, Boolean.valueOf(z), str));
                if (C6980t0.m10866e(q24Var3.f28300b) || q24Var3.f28300b.equals("E")) {
                    int i2 = i - 1;
                    if (i2 == 3) {
                        String m16167d = m16167d();
                        if (!C6980t0.m10866e(m16167d)) {
                            q24Var3.f28300b = m16167d;
                        }
                    } else if (i2 == 4) {
                        throw null;
                    }
                }
                m16716a.set(q24Var3);
            }
            q24Var = m16716a.get();
        }
        synchronized (this.f32757e) {
            if (q24Var != null) {
                this.f32757e.m14208k0(q24Var.f28300b);
                this.f32757e.m14201q0(q24Var.f28301c);
                this.f32757e.m14203p0(q24Var.f28302d);
                this.f32757e.m14196t(q24Var.f28303e);
                this.f32757e.m14193v(q24Var.f28304f);
            }
        }
    }

    /* renamed from: c */
    protected final String m16168c() {
        String str = null;
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            byte[] m10868c = C6980t0.m10868c((String) C7192yr.m8714c().m14263c(C6679kw.f25453C1));
            ArrayList arrayList = new ArrayList();
            arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(m10868c)));
            if (!Build.TYPE.equals("user")) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(C6980t0.m10868c((String) C7192yr.m8714c().m14263c(C6679kw.f25461D1)))));
            }
            Context context = this.f21061j;
            str = C6351c2.m16132a(context, context.getPackageName(), arrayList, this.f32754b.m12079e());
        } catch (PackageManager.NameNotFoundException | InterruptedException | NoClassDefFoundError | CertificateEncodingException | CertificateException | ExecutionException e) {
        }
        return str;
    }
}
