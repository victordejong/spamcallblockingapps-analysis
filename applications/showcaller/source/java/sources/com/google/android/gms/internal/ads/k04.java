package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k04.class */
public abstract class k04 implements l04 {

    /* renamed from: a */
    private static final Logger f25049a = Logger.getLogger(k04.class.getName());

    /* renamed from: b */
    final ThreadLocal<ByteBuffer> f25050b = new j04(this);

    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    @Override // com.google.android.gms.internal.ads.l04
    /* renamed from: a */
    public final o04 mo13748a(ni3 ni3Var, p04 p04Var) {
        int mo10639f0;
        char c;
        long mo10641c = ni3Var.mo10641c();
        this.f25050b.get().rewind().limit(8);
        do {
            mo10639f0 = ni3Var.mo10639f0(this.f25050b.get());
            if (mo10639f0 == 8) {
                this.f25050b.get().rewind();
                long m13023a = n04.m13023a(this.f25050b.get());
                byte[] bArr = null;
                if (m13023a < 8 && m13023a > 1) {
                    Logger logger = f25049a;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(m13023a);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                byte[] bArr2 = new byte[4];
                this.f25050b.get().get(bArr2);
                try {
                    String str = new String(bArr2, "ISO-8859-1");
                    if (m13023a == 1) {
                        this.f25050b.get().limit(16);
                        ni3Var.mo10639f0(this.f25050b.get());
                        this.f25050b.get().position(8);
                        c = n04.m13020d(this.f25050b.get()) - 16;
                    } else {
                        c = m13023a == 0 ? ni3Var.mo10642b() - ni3Var.mo10641c() : m13023a - 8;
                    }
                    char c2 = c;
                    if ("uuid".equals(str)) {
                        this.f25050b.get().limit(this.f25050b.get().limit() + 16);
                        ni3Var.mo10639f0(this.f25050b.get());
                        bArr = new byte[16];
                        for (int position = this.f25050b.get().position() - 16; position < this.f25050b.get().position(); position++) {
                            bArr[position - (this.f25050b.get().position() - 16)] = this.f25050b.get().get(position);
                        }
                        c2 = c - 16;
                    }
                    o04 mo9565b = mo9565b(str, bArr, p04Var instanceof o04 ? ((o04) p04Var).mo12761b() : "");
                    mo9565b.mo12762a(p04Var);
                    this.f25050b.get().rewind();
                    mo9565b.mo12760e(ni3Var, this.f25050b.get(), c2, this);
                    return mo9565b;
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } while (mo10639f0 >= 0);
        ni3Var.mo10638j(mo10641c);
        throw new EOFException();
    }

    /* renamed from: b */
    public abstract o04 mo9565b(String str, byte[] bArr, String str2);
}
