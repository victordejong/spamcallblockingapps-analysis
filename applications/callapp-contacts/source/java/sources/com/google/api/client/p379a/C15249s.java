package com.google.api.client.p379a;

import com.google.common.base.C15391m;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.NumberFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.google.api.client.a.s */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/s.class */
public final class C15249s extends ByteArrayOutputStream {

    /* renamed from: a */
    private int f55125a;

    /* renamed from: b */
    private final int f55126b;

    /* renamed from: c */
    private boolean f55127c;

    /* renamed from: d */
    private final Level f55128d;

    /* renamed from: e */
    private final Logger f55129e;

    public C15249s(Logger logger, Level level, int i) {
        this.f55129e = (Logger) C15391m.m8946a(logger);
        this.f55128d = (Level) C15391m.m8946a(level);
        C15391m.m8943a(i >= 0);
        this.f55126b = i;
    }

    /* renamed from: a */
    private static void m9207a(StringBuilder sb, int i) {
        if (i == 1) {
            sb.append("1 byte");
            return;
        }
        sb.append(NumberFormat.getInstance().format(i));
        sb.append(" bytes");
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (!this.f55127c) {
                if (this.f55125a != 0) {
                    StringBuilder sb = new StringBuilder("Total: ");
                    m9207a(sb, this.f55125a);
                    if (this.count != 0 && this.count < this.f55125a) {
                        sb.append(" (logging first ");
                        m9207a(sb, this.count);
                        sb.append(")");
                    }
                    this.f55129e.config(sb.toString());
                    if (this.count != 0) {
                        this.f55129e.log(this.f55128d, toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", StringUtils.SPACE));
                    }
                }
                this.f55127c = true;
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(int i) {
        synchronized (this) {
            C15391m.m8943a(!this.f55127c);
            this.f55125a++;
            if (this.count < this.f55126b) {
                super.write(i);
            }
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            C15391m.m8943a(!this.f55127c);
            this.f55125a += i2;
            if (this.count < this.f55126b) {
                int i3 = this.count + i2;
                int i4 = this.f55126b;
                int i5 = i2;
                if (i3 > i4) {
                    i5 = i2 + (i4 - i3);
                }
                super.write(bArr, i, i5);
            }
        }
    }
}
