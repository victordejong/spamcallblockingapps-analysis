package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/a.class */
public abstract class a implements p {
    protected int r = 0;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/a$a.class */
    public static abstract class AbstractC0701a<BuilderType extends AbstractC0701a> implements p.a {

        /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/a$a$a.class */
        static final class C0702a extends FilterInputStream {

            /* renamed from: a  reason: collision with root package name */
            private int f38110a;

            /* JADX INFO: Access modifiers changed from: package-private */
            public C0702a(InputStream inputStream, int i) {
                super(inputStream);
                this.f38110a = i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int available() throws IOException {
                return Math.min(super.available(), this.f38110a);
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read() throws IOException {
                if (this.f38110a <= 0) {
                    return -1;
                }
                int read = super.read();
                if (read >= 0) {
                    this.f38110a--;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final int read(byte[] bArr, int i, int i2) throws IOException {
                int i3 = this.f38110a;
                if (i3 <= 0) {
                    return -1;
                }
                int read = super.read(bArr, i, Math.min(i2, i3));
                if (read >= 0) {
                    this.f38110a -= read;
                }
                return read;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public final long skip(long j) throws IOException {
                long skip = super.skip(Math.min(j, this.f38110a));
                if (skip >= 0) {
                    this.f38110a = (int) (this.f38110a - skip);
                }
                return skip;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static UninitializedMessageException a(p pVar) {
            return new UninitializedMessageException(pVar);
        }

        /* renamed from: a */
        public abstract BuilderType b(e eVar, f fVar) throws IOException;

        /* renamed from: c */
        public abstract BuilderType clone();
    }

    public final void a(OutputStream outputStream) throws IOException {
        int f = f();
        int f2 = CodedOutputStream.f(f) + f;
        int i = f2;
        if (f2 > 4096) {
            i = 4096;
        }
        CodedOutputStream a2 = CodedOutputStream.a(outputStream, i);
        a2.e(f);
        a(a2);
        a2.a();
    }
}
