package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aag.class */
public abstract class aag implements aci {

    /* renamed from: a */
    private static Logger f7624a = Logger.getLogger(aag.class.getName());

    /* renamed from: b */
    private ThreadLocal<ByteBuffer> f7625b = new C3676zf(this);

    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v95, types: [long] */
    @Override // com.google.android.gms.internal.ads.aci
    /* renamed from: a */
    public final adi mo13642a(dhf dhfVar, agj agjVar) {
        char mo9463a;
        byte[] bArr;
        adi adiVar;
        long mo9459b = dhfVar.mo9459b();
        this.f7625b.get().rewind().limit(8);
        int i = 0;
        while (true) {
            int i2 = i;
            int mo9460a = dhfVar.mo9460a(this.f7625b.get());
            if (mo9460a == 8) {
                this.f7625b.get().rewind();
                long m13544a = aej.m13544a(this.f7625b.get());
                if (m13544a >= 8 || m13544a <= 1) {
                    String m13539f = aej.m13539f(this.f7625b.get());
                    if (m13544a == 1) {
                        this.f7625b.get().limit(16);
                        dhfVar.mo9460a(this.f7625b.get());
                        this.f7625b.get().position(8);
                        mo9463a = aej.m13542c(this.f7625b.get()) - 16;
                    } else {
                        mo9463a = m13544a == 0 ? dhfVar.mo9463a() - dhfVar.mo9459b() : m13544a - 8;
                    }
                    if ("uuid".equals(m13539f)) {
                        this.f7625b.get().limit(this.f7625b.get().limit() + 16);
                        dhfVar.mo9460a(this.f7625b.get());
                        bArr = new byte[16];
                        for (int position = this.f7625b.get().position() - 16; position < this.f7625b.get().position(); position++) {
                            bArr[position - (this.f7625b.get().position() - 16)] = this.f7625b.get().get(position);
                        }
                        mo9463a -= 16;
                    } else {
                        bArr = null;
                    }
                    adi mo13667a = mo13667a(m13539f, bArr, agjVar instanceof adi ? ((adi) agjVar).mo9473a() : "");
                    mo13667a.mo9472a(agjVar);
                    this.f7625b.get().rewind();
                    mo13667a.mo9471a(dhfVar, this.f7625b.get(), mo9463a, this);
                    adiVar = mo13667a;
                } else {
                    f7624a.logp(Level.SEVERE, "com.coremedia.iso.AbstractBoxParser", "parseBox", new StringBuilder(80).append("Plausibility check failed: size < 8 (size = ").append(m13544a).append("). Stop parsing!").toString());
                    adiVar = null;
                }
                return adiVar;
            } else if (mo9460a < 0) {
                dhfVar.mo9462a(mo9459b);
                throw new EOFException();
            } else {
                i = mo9460a + i2;
            }
        }
    }

    /* renamed from: a */
    public abstract adi mo13667a(String str, byte[] bArr, String str2);
}
