package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajl.class */
public abstract class ajl implements alm {

    /* renamed from: a */
    private static Logger f42221a = Logger.getLogger(ajl.class.getName());

    /* renamed from: b */
    private ThreadLocal<ByteBuffer> f42222b = new amm(this);

    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    @Override // com.google.android.gms.internal.ads.alm
    /* renamed from: a */
    public final aqp mo18581a(drt drtVar, apo apoVar) throws IOException {
        int mo15794a;
        char c;
        long mo15793b = drtVar.mo15793b();
        this.f42222b.get().rewind().limit(8);
        do {
            mo15794a = drtVar.mo15794a(this.f42222b.get());
            if (mo15794a == 8) {
                this.f42222b.get().rewind();
                long m18534a = anm.m18534a(this.f42222b.get());
                if (m18534a < 8 && m18534a > 1) {
                    Logger logger = f42221a;
                    Level level = Level.SEVERE;
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Plausibility check failed: size < 8 (size = ");
                    sb.append(m18534a);
                    sb.append("). Stop parsing!");
                    logger.logp(level, "com.coremedia.iso.AbstractBoxParser", "parseBox", sb.toString());
                    return null;
                }
                String m18529f = anm.m18529f(this.f42222b.get());
                if (m18534a == 1) {
                    this.f42222b.get().limit(16);
                    drtVar.mo15794a(this.f42222b.get());
                    this.f42222b.get().position(8);
                    c = anm.m18532c(this.f42222b.get()) - 16;
                } else {
                    c = m18534a == 0 ? drtVar.mo15797a() - drtVar.mo15793b() : m18534a - 8;
                }
                char c2 = c;
                if ("uuid".equals(m18529f)) {
                    this.f42222b.get().limit(this.f42222b.get().limit() + 16);
                    drtVar.mo15794a(this.f42222b.get());
                    byte[] bArr = new byte[16];
                    for (int position = this.f42222b.get().position() - 16; position < this.f42222b.get().position(); position++) {
                        bArr[position - (this.f42222b.get().position() - 16)] = this.f42222b.get().get(position);
                    }
                    c2 = c - 16;
                }
                if (apoVar instanceof aqp) {
                    ((aqp) apoVar).mo15807a();
                }
                aqp mo18635a = mo18635a(m18529f);
                mo18635a.mo15806a(apoVar);
                this.f42222b.get().rewind();
                mo18635a.mo15805a(drtVar, this.f42222b.get(), c2, this);
                return mo18635a;
            }
        } while (mo15794a >= 0);
        drtVar.mo15796a(mo15793b);
        throw new EOFException();
    }

    /* renamed from: a */
    public abstract aqp mo18635a(String str);
}
