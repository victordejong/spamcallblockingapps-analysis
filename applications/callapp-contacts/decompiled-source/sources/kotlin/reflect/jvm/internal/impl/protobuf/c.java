package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/c.class */
public final class c extends o {

    /* renamed from: a  reason: collision with root package name */
    final int f38112a;
    private final int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/c$a.class */
    public final class a implements d.a {

        /* renamed from: b  reason: collision with root package name */
        private int f38114b;

        /* renamed from: c  reason: collision with root package name */
        private final int f38115c;

        private a() {
            int i = c.this.f38112a;
            this.f38114b = i;
            this.f38115c = i + c.this.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.d.a
        public final byte a() {
            if (this.f38114b < this.f38115c) {
                byte[] bArr = c.this.f38166d;
                int i = this.f38114b;
                this.f38114b = i + 1;
                return bArr[i];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38114b < this.f38115c;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(byte[] bArr, int i, int i2) {
        super(bArr);
        if (i < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Offset too small: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append("Length too small: ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        } else if (i + i2 <= bArr.length) {
            this.f38112a = i;
            this.e = i2;
        } else {
            StringBuilder sb3 = new StringBuilder(48);
            sb3.append("Offset+Length too large: ");
            sb3.append(i);
            sb3.append("+");
            sb3.append(i2);
            throw new IllegalArgumentException(sb3.toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
    public final byte a(int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(28);
            sb.append("Index too small: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        } else if (i < this.e) {
            return this.f38166d[this.f38112a + i];
        } else {
            int i2 = this.e;
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("Index too large: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.o, kotlin.reflect.jvm.internal.impl.protobuf.d
    public final int a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.o, kotlin.reflect.jvm.internal.impl.protobuf.d
    public final void a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f38166d, this.f38112a + i, bArr, i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.protobuf.o
    public final int b() {
        return this.f38112a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.o, kotlin.reflect.jvm.internal.impl.protobuf.d
    /* renamed from: c */
    public final d.a iterator() {
        return new a();
    }
}
