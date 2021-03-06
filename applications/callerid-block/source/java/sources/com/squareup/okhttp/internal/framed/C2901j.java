package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.Inflater;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.ForwardingSource;
import okio.InflaterSource;
import okio.Okio;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.okhttp.internal.framed.j */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/j.class */
public class C2901j {

    /* renamed from: a */
    private final InflaterSource f12280a;

    /* renamed from: b */
    private int f12281b;

    /* renamed from: c */
    private final BufferedSource f12282c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.j$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/j$a.class */
    public class C2902a extends ForwardingSource {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2902a(Source source) {
            super(source);
            C2901j.this = r4;
        }

        @Override // okio.ForwardingSource
        public long read(Buffer buffer, long j) {
            if (C2901j.this.f12281b == 0) {
                return -1L;
            }
            long read = super.read(buffer, Math.min(j, C2901j.this.f12281b));
            if (read == -1) {
                return -1L;
            }
            C2901j c2901j = C2901j.this;
            c2901j.f12281b = (int) (c2901j.f12281b - read);
            return read;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.j$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/j$b.class */
    public class C2903b extends Inflater {
        C2903b(C2901j c2901j) {
        }

        @Override // java.util.zip.Inflater
        public int inflate(byte[] bArr, int i, int i2) {
            int inflate = super.inflate(bArr, i, i2);
            int i3 = inflate;
            if (inflate == 0) {
                i3 = inflate;
                if (needsDictionary()) {
                    setDictionary(C2908n.f12292a);
                    i3 = super.inflate(bArr, i, i2);
                }
            }
            return i3;
        }
    }

    public C2901j(BufferedSource bufferedSource) {
        InflaterSource inflaterSource = new InflaterSource((Source) new C2902a(bufferedSource), (Inflater) new C2903b(this));
        this.f12280a = inflaterSource;
        this.f12282c = Okio.buffer((Source) inflaterSource);
    }

    /* renamed from: d */
    private void m1080d() {
        if (this.f12281b > 0) {
            this.f12280a.refill();
            if (this.f12281b == 0) {
                return;
            }
            throw new IOException("compressedLimit > 0: " + this.f12281b);
        }
    }

    /* renamed from: e */
    private ByteString m1079e() {
        return this.f12282c.readByteString(this.f12282c.readInt());
    }

    /* renamed from: c */
    public void m1081c() {
        this.f12282c.close();
    }

    /* renamed from: f */
    public List<C2888e> m1078f(int i) {
        this.f12281b += i;
        int readInt = this.f12282c.readInt();
        if (readInt < 0) {
            throw new IOException("numberOfPairs < 0: " + readInt);
        } else if (readInt > 1024) {
            throw new IOException("numberOfPairs > 1024: " + readInt);
        } else {
            ArrayList arrayList = new ArrayList(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                ByteString asciiLowercase = m1079e().toAsciiLowercase();
                ByteString m1079e = m1079e();
                if (asciiLowercase.size() == 0) {
                    throw new IOException("name.size == 0");
                }
                arrayList.add(new C2888e(asciiLowercase, m1079e));
            }
            m1080d();
            return arrayList;
        }
    }
}
