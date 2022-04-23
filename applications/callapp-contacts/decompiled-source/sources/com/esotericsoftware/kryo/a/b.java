package com.esotericsoftware.kryo.a;

import com.esotericsoftware.b.a;
import com.esotericsoftware.kryo.KryoException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/b.class */
public final class b extends a {
    private int i = -1;

    public b() {
    }

    public b(int i) {
        super(i);
    }

    public b(InputStream inputStream) {
        super(inputStream);
    }

    public b(InputStream inputStream, int i) {
        super(inputStream, i);
    }

    private boolean p() {
        try {
            InputStream a2 = a();
            int i = 0;
            for (int i2 = 0; i2 < 32; i2 += 7) {
                int read = a2.read();
                if (read == -1) {
                    return false;
                }
                i |= (read & 127) << i2;
                if ((read & 128) == 0) {
                    this.i = i;
                    if (!a.e || this.i <= 0) {
                        return true;
                    }
                    a.b("kryo", "Read chunk: " + this.i);
                    return true;
                }
            }
            throw new KryoException("Unable to read chunk size: malformed integer");
        } catch (IOException e) {
            throw new KryoException("Unable to read chunk size.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.a.a
    public final void a(byte[] bArr, int i, int i2) {
        super.a(bArr, i, i2);
        this.i = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.esotericsoftware.kryo.a.a
    public final int b(byte[] bArr, int i, int i2) throws KryoException {
        int i3 = this.i;
        if (i3 == -1) {
            if (!p()) {
                return -1;
            }
        } else if (i3 == 0) {
            return -1;
        }
        int b2 = super.b(bArr, i, Math.min(this.i, i2));
        int i4 = this.i - b2;
        this.i = i4;
        if (i4 != 0 || p()) {
            return b2;
        }
        return -1;
    }

    public final void o() {
        if (this.i == -1) {
            p();
        }
        while (true) {
            int i = this.i;
            if (i <= 0) {
                break;
            }
            a(i);
        }
        this.i = -1;
        if (a.e) {
            a.b("kryo", "Next chunk.");
        }
    }

    @Override // com.esotericsoftware.kryo.a.a, java.io.InputStream
    public final void reset() {
        super.reset();
        this.i = -1;
    }
}
