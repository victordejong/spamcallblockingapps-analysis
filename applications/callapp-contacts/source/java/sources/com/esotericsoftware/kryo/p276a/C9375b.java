package com.esotericsoftware.kryo.p276a;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.p274b.C9366a;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.esotericsoftware.kryo.a.b */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/a/b.class */
public final class C9375b extends C9374a {

    /* renamed from: i */
    private int f32212i = -1;

    public C9375b() {
    }

    public C9375b(int i) {
        super(i);
    }

    public C9375b(InputStream inputStream) {
        super(inputStream);
    }

    public C9375b(InputStream inputStream, int i) {
        super(inputStream, i);
    }

    /* renamed from: p */
    private boolean m24426p() {
        try {
            InputStream a = m24462a();
            int i = 0;
            for (int i2 = 0; i2 < 32; i2 += 7) {
                int read = a.read();
                if (read == -1) {
                    return false;
                }
                i |= (read & 127) << i2;
                if ((read & 128) == 0) {
                    this.f32212i = i;
                    if (!C9366a.f32190e || this.f32212i <= 0) {
                        return true;
                    }
                    C9366a.m24494b("kryo", "Read chunk: " + this.f32212i);
                    return true;
                }
            }
            throw new KryoException("Unable to read chunk size: malformed integer");
        } catch (IOException e) {
            throw new KryoException("Unable to read chunk size.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.p276a.C9374a
    /* renamed from: a */
    public final void mo24429a(byte[] bArr, int i, int i2) {
        super.mo24429a(bArr, i, i2);
        this.f32212i = -1;
    }

    @Override // com.esotericsoftware.kryo.p276a.C9374a
    /* renamed from: b */
    public final int mo24428b(byte[] bArr, int i, int i2) throws KryoException {
        int i3 = this.f32212i;
        if (i3 == -1) {
            if (!m24426p()) {
                return -1;
            }
        } else if (i3 == 0) {
            return -1;
        }
        int mo24428b = super.mo24428b(bArr, i, Math.min(this.f32212i, i2));
        int i4 = this.f32212i - mo24428b;
        this.f32212i = i4;
        if (i4 != 0 || m24426p()) {
            return mo24428b;
        }
        return -1;
    }

    /* renamed from: o */
    public final void m24427o() {
        if (this.f32212i == -1) {
            m24426p();
        }
        while (true) {
            int i = this.f32212i;
            if (i <= 0) {
                break;
            }
            m24461a(i);
        }
        this.f32212i = -1;
        if (C9366a.f32190e) {
            C9366a.m24494b("kryo", "Next chunk.");
        }
    }

    @Override // com.esotericsoftware.kryo.p276a.C9374a, java.io.InputStream
    public final void reset() {
        super.reset();
        this.f32212i = -1;
    }
}
