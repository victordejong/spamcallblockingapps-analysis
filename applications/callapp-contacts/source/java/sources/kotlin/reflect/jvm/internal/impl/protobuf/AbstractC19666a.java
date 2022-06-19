package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19705p;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/a.class */
public abstract class AbstractC19666a implements AbstractC19705p {

    /* renamed from: r */
    protected int f65797r = 0;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/a$a.class */
    public static abstract class AbstractC19667a<BuilderType extends AbstractC19667a> implements AbstractC19705p.AbstractC19706a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a$a$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/a$a$a.class */
        static final class C19668a extends FilterInputStream {

            /* renamed from: a */
            private int f65798a;

            public C19668a(InputStream inputStream, int i) {
                super(inputStream);
                this.f65798a = i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int available() throws IOException {
                return Math.min(super.available(), this.f65798a);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read() throws IOException {
                if (this.f65798a <= 0) {
                    return -1;
                }
                int read = super.read();
                if (read >= 0) {
                    this.f65798a--;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = this.f65798a;
                if (i3 <= 0) {
                    return -1;
                }
                int read = super.read(bArr, i, Math.min(i2, i3));
                if (read >= 0) {
                    this.f65798a -= read;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final long skip(long j) throws IOException {
                long skip = super.skip(Math.min(j, this.f65798a));
                if (skip >= 0) {
                    this.f65798a = (int) (this.f65798a - skip);
                }
                return skip;
            }
        }

        /* renamed from: a */
        public static UninitializedMessageException m1778a(AbstractC19705p abstractC19705p) {
            return new UninitializedMessageException(abstractC19705p);
        }

        /* renamed from: a */
        public abstract BuilderType mo1657b(C19676e c19676e, C19678f c19678f) throws IOException;

        /* renamed from: c */
        public abstract BuilderType clone();
    }

    /* renamed from: a */
    public final void m1780a(OutputStream outputStream) throws IOException {
        int f = mo1660f();
        int m1792f = CodedOutputStream.m1792f(f) + f;
        int i = m1792f;
        if (m1792f > 4096) {
            i = 4096;
        }
        CodedOutputStream m1823a = CodedOutputStream.m1823a(outputStream, i);
        m1823a.m1795e(f);
        mo1662a(m1823a);
        m1823a.m1832a();
    }
}
