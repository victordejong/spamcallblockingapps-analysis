package com.google.flatbuffers;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/d.class */
public class d {
    static final /* synthetic */ boolean o = true;

    /* renamed from: a  reason: collision with root package name */
    ByteBuffer f32658a;

    /* renamed from: b  reason: collision with root package name */
    int f32659b;

    /* renamed from: c  reason: collision with root package name */
    int f32660c;

    /* renamed from: d  reason: collision with root package name */
    int[] f32661d;
    int e;
    boolean f;
    boolean g;
    int h;
    int[] i;
    int j;
    int k;
    public boolean l;
    a m;
    final i n;

    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/d$a.class */
    public static abstract class a {
        public abstract ByteBuffer a(int i);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/d$b.class */
    public static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        public static final b f32662a = new b();

        @Override // com.google.flatbuffers.d.a
        public final ByteBuffer a(int i) {
            return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public d() {
        this(1024);
    }

    public d(int i) {
        this(i, b.f32662a, null, i.a());
    }

    public d(int i, a aVar) {
        this(i, aVar, null, i.a());
    }

    public d(int i, a aVar, ByteBuffer byteBuffer, i iVar) {
        this.f32660c = 1;
        this.f32661d = null;
        this.e = 0;
        this.f = false;
        this.g = false;
        this.i = new int[16];
        this.j = 0;
        this.k = 0;
        this.l = false;
        int i2 = i <= 0 ? 1 : i;
        this.m = aVar;
        if (byteBuffer != null) {
            this.f32658a = byteBuffer;
            byteBuffer.clear();
            this.f32658a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f32658a = aVar.a(i2);
        }
        this.n = iVar;
        this.f32659b = this.f32658a.capacity();
    }

    public d(ByteBuffer byteBuffer) {
        this(byteBuffer, new b());
    }

    public d(ByteBuffer byteBuffer, a aVar) {
        this(byteBuffer.capacity(), aVar, byteBuffer, i.a());
    }

    private void a(short s) {
        a(2, 0);
        ByteBuffer byteBuffer = this.f32658a;
        int i = this.f32659b - 2;
        this.f32659b = i;
        byteBuffer.putShort(i, s);
    }

    private void e() {
        a(1, 0);
        ByteBuffer byteBuffer = this.f32658a;
        int i = this.f32659b - 1;
        this.f32659b = i;
        byteBuffer.put(i, (byte) 0);
    }

    private byte[] e(int i, int i2) {
        if (this.g) {
            byte[] bArr = new byte[i2];
            this.f32658a.position(i);
            this.f32658a.get(bArr);
            return bArr;
        }
        throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
    }

    private void f() {
        if (this.f) {
            throw new AssertionError("FlatBuffers: object serialization must not be nested.");
        }
    }

    private void f(int i) {
        a(4, 0);
        b(i);
    }

    private void g(int i) {
        this.f32661d[i] = a();
    }

    public final int a() {
        return this.f32658a.capacity() - this.f32659b;
    }

    public final int a(CharSequence charSequence) {
        int a2 = this.n.a(charSequence);
        e();
        a(1, a2, 1);
        ByteBuffer byteBuffer = this.f32658a;
        int i = this.f32659b - a2;
        this.f32659b = i;
        byteBuffer.position(i);
        this.n.a(charSequence, this.f32658a);
        return b();
    }

    public final int a(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        a(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f32658a;
        int i = this.f32659b - remaining;
        this.f32659b = i;
        byteBuffer2.position(i);
        this.f32658a.put(byteBuffer);
        return b();
    }

    public final int a(byte[] bArr) {
        int length = bArr.length;
        a(1, length, 1);
        ByteBuffer byteBuffer = this.f32658a;
        int i = this.f32659b - length;
        this.f32659b = i;
        byteBuffer.position(i);
        this.f32658a.put(bArr);
        return b();
    }

    public final int a(int[] iArr) {
        f();
        a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            c(iArr[length]);
        }
        return b();
    }

    public final void a(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f32658a;
            int i3 = this.f32659b - 1;
            this.f32659b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    public final void a(int i, int i2) {
        if (i > this.f32660c) {
            this.f32660c = i;
        }
        int capacity = ((((this.f32658a.capacity() - this.f32659b) + i2) ^ (-1)) + 1) & (i - 1);
        while (this.f32659b < capacity + i + i2) {
            int capacity2 = this.f32658a.capacity();
            ByteBuffer byteBuffer = this.f32658a;
            a aVar = this.m;
            int capacity3 = byteBuffer.capacity();
            if (((-1073741824) & capacity3) == 0) {
                int i3 = capacity3 == 0 ? 1 : capacity3 << 1;
                byteBuffer.position(0);
                ByteBuffer a2 = aVar.a(i3);
                a2.position(a2.clear().capacity() - capacity3);
                a2.put(byteBuffer);
                this.f32658a = a2;
                this.f32659b += a2.capacity() - capacity2;
            } else {
                throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
            }
        }
        a(capacity);
    }

    public final void a(int i, int i2, int i3) {
        f();
        this.k = i2;
        int i4 = i * i2;
        a(4, i4);
        a(i3, i4);
        this.f = true;
    }

    public final void a(int i, long j) {
        if (this.l || j != 0) {
            a(8, 0);
            a(j);
            g(i);
        }
    }

    public final void a(int i, short s) {
        if (this.l || s != 0) {
            a(s);
            g(i);
        }
    }

    public final void a(int i, boolean z) {
        if (this.l || z) {
            a(1, 0);
            ByteBuffer byteBuffer = this.f32658a;
            int i2 = this.f32659b - 1;
            this.f32659b = i2;
            byteBuffer.put(i2, z ? (byte) 1 : (byte) 0);
            g(i);
        }
    }

    public final void a(long j) {
        ByteBuffer byteBuffer = this.f32658a;
        int i = this.f32659b - 8;
        this.f32659b = i;
        byteBuffer.putLong(i, j);
    }

    public final int b() {
        if (this.f) {
            this.f = false;
            b(this.k);
            return a();
        }
        throw new AssertionError("FlatBuffers: endVector called without startVector");
    }

    public final void b(int i) {
        ByteBuffer byteBuffer = this.f32658a;
        int i2 = this.f32659b - 4;
        this.f32659b = i2;
        byteBuffer.putInt(i2, i);
    }

    public final void b(int i, int i2) {
        if (this.l || i2 != 0) {
            f(i2);
            g(i);
        }
    }

    public void b(int i, boolean z) {
        a(this.f32660c, (z ? 4 : 0) + 4);
        c(i);
        if (z) {
            f(this.f32658a.capacity() - this.f32659b);
        }
        this.f32658a.position(this.f32659b);
        this.g = true;
    }

    public final int c() {
        int i;
        if (this.f32661d == null || !this.f) {
            throw new AssertionError("FlatBuffers: endTable called without startTable");
        }
        f(0);
        int a2 = a();
        int i2 = this.e - 1;
        while (i2 >= 0 && this.f32661d[i2] == 0) {
            i2--;
        }
        for (int i3 = i2; i3 >= 0; i3--) {
            int[] iArr = this.f32661d;
            a((short) (iArr[i3] != 0 ? a2 - iArr[i3] : 0));
        }
        a((short) (a2 - this.h));
        a((short) ((i2 + 1 + 2) * 2));
        int i4 = 0;
        loop2: while (true) {
            if (i4 >= this.j) {
                i = 0;
                break;
            }
            int capacity = this.f32658a.capacity() - this.i[i4];
            int i5 = this.f32659b;
            short s = this.f32658a.getShort(capacity);
            if (s == this.f32658a.getShort(i5)) {
                for (int i6 = 2; i6 < s; i6 += 2) {
                    if (this.f32658a.getShort(capacity + i6) == this.f32658a.getShort(i5 + i6)) {
                    }
                }
                i = this.i[i4];
                break loop2;
            }
            i4++;
        }
        if (i != 0) {
            int capacity2 = this.f32658a.capacity() - a2;
            this.f32659b = capacity2;
            this.f32658a.putInt(capacity2, i - a2);
        } else {
            int i7 = this.j;
            int[] iArr2 = this.i;
            if (i7 == iArr2.length) {
                this.i = Arrays.copyOf(iArr2, i7 * 2);
            }
            int[] iArr3 = this.i;
            int i8 = this.j;
            this.j = i8 + 1;
            iArr3[i8] = a();
            ByteBuffer byteBuffer = this.f32658a;
            byteBuffer.putInt(byteBuffer.capacity() - a2, a() - a2);
        }
        this.f = false;
        return a2;
    }

    public final void c(int i) {
        a(4, 0);
        if (o || i <= a()) {
            b((a() - i) + 4);
            return;
        }
        throw new AssertionError();
    }

    public final void c(int i, int i2) {
        if (this.l || i2 != 0) {
            c(i2);
            g(i);
        }
    }

    public final void d(int i) {
        f();
        int[] iArr = this.f32661d;
        if (iArr == null || iArr.length < i) {
            this.f32661d = new int[i];
        }
        this.e = i;
        Arrays.fill(this.f32661d, 0, i, 0);
        this.f = true;
        this.h = a();
    }

    public final void d(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        if (i2 == a()) {
            g(i);
            return;
        }
        throw new AssertionError("FlatBuffers: struct must be serialized inline.");
    }

    public final byte[] d() {
        return e(this.f32659b, this.f32658a.capacity() - this.f32659b);
    }

    public final void e(int i) {
        b(i, false);
    }
}
