package com.esotericsoftware.kryo.a;

import com.esotericsoftware.b.a;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c.n;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/d.class */
public final class d extends c {
    public d() {
    }

    public d(int i) {
        super(i);
    }

    public d(OutputStream outputStream) {
        super(outputStream);
    }

    public d(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    public final void c() {
        flush();
        if (a.e) {
            a.b("kryo", "End chunk.");
        }
        try {
            a().write(0);
        } catch (IOException e) {
            throw new KryoException(e);
        }
    }

    @Override // com.esotericsoftware.kryo.a.c, java.io.OutputStream, java.io.Flushable
    public final void flush() throws KryoException {
        if (b() > 0) {
            try {
                int b2 = b();
                if (a.e) {
                    a.b("kryo", "Write chunk: " + b2 + n.a(b2));
                }
                OutputStream a2 = a();
                if ((b2 & (-128)) == 0) {
                    a2.write(b2);
                } else {
                    a2.write((b2 & 127) | 128);
                    int i = b2 >>> 7;
                    if ((i & (-128)) == 0) {
                        a2.write(i);
                    } else {
                        a2.write((i & 127) | 128);
                        int i2 = i >>> 7;
                        if ((i2 & (-128)) == 0) {
                            a2.write(i2);
                        } else {
                            a2.write((i2 & 127) | 128);
                            int i3 = i2 >>> 7;
                            if ((i3 & (-128)) == 0) {
                                a2.write(i3);
                            } else {
                                a2.write((i3 & 127) | 128);
                                a2.write(i3 >>> 7);
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
