package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.NoSuchElementException;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/c.class */
public final class C19670c extends C19702o {

    /* renamed from: a */
    final int f65800a;

    /* renamed from: e */
    private final int f65801e;

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/c$a.class */
    public final class C19672a implements AbstractC19673d.AbstractC19674a {

        /* renamed from: b */
        private int f65803b;

        /* renamed from: c */
        private final int f65804c;

        private C19672a() {
            C19670c.this = r5;
            int i = r5.f65800a;
            this.f65803b = i;
            this.f65804c = i + r5.mo1649a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d.AbstractC19674a
        /* renamed from: a */
        public final byte mo1627a() {
            if (this.f65803b < this.f65804c) {
                byte[] bArr = C19670c.this.f65870d;
                int i = this.f65803b;
                this.f65803b = i + 1;
                return bArr[i];
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f65803b < this.f65804c;
        }

        @Override // java.util.Iterator
        public final /* synthetic */ Byte next() {
            return Byte.valueOf(mo1627a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C19670c(byte[] bArr, int i, int i2) {
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
            this.f65800a = i;
            this.f65801e = i2;
        } else {
            StringBuilder sb3 = new StringBuilder(48);
            sb3.append("Offset+Length too large: ");
            sb3.append(i);
            sb3.append("+");
            sb3.append(i2);
            throw new IllegalArgumentException(sb3.toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19702o
    /* renamed from: a */
    public final byte mo1666a(int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(28);
            sb.append("Index too small: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        } else if (i < this.f65801e) {
            return this.f65870d[this.f65800a + i];
        } else {
            int i2 = this.f65801e;
            StringBuilder sb2 = new StringBuilder(41);
            sb2.append("Index too large: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19702o, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public final int mo1649a() {
        return this.f65801e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19702o, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: a */
    public final void mo1645a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f65870d, this.f65800a + i, bArr, i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19702o
    /* renamed from: b */
    public final int mo1663b() {
        return this.f65800a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.C19702o, kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19673d
    /* renamed from: c */
    public final AbstractC19673d.AbstractC19674a iterator() {
        return new C19672a();
    }
}
