package com.esotericsoftware.kryo.p276a;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p278c.C9408n;
import com.esotericsoftware.p274b.C9366a;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.esotericsoftware.kryo.a.d */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/d.class */
public final class C9377d extends C9376c {
    public C9377d() {
    }

    public C9377d(int i) {
        super(i);
    }

    public C9377d(OutputStream outputStream) {
        super(outputStream);
    }

    public C9377d(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    /* renamed from: c */
    public final void m24397c() {
        flush();
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "End chunk.");
        }
        try {
            m24425a().write(0);
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.p276a.C9376c, java.io.OutputStream, java.io.Flushable
    public final void flush() throws KryoException {
        if (m24404b() > 0) {
            try {
                int b = m24404b();
                if (C9366a.f32190e) {
                    C9366a.m24494b("kryo", "Write chunk: " + b + C9408n.m24304a(b));
                }
                OutputStream a = m24425a();
                if ((b & (-128)) == 0) {
                    a.write(b);
                } else {
                    a.write((b & 127) | 128);
                    int i = b >>> 7;
                    if ((i & (-128)) == 0) {
                        a.write(i);
                    } else {
                        a.write((i & 127) | 128);
                        int i2 = i >>> 7;
                        if ((i2 & (-128)) == 0) {
                            a.write(i2);
                        } else {
                            a.write((i2 & 127) | 128);
                            int i3 = i2 >>> 7;
                            if ((i3 & (-128)) == 0) {
                                a.write(i3);
                            } else {
                                a.write((i3 & 127) | 128);
                                a.write(i3 >>> 7);
                            }
                        }
                    }
                }
                super.flush();
            } catch (IOException e) {
                throw new KryoException(e);
            }
        }
        super.flush();
    }
}
