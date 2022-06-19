package com.google.flatbuffers;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: com.google.flatbuffers.d */
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/d.class */
public class C15937d {

    /* renamed from: o */
    static final /* synthetic */ boolean f56571o = true;

    /* renamed from: a */
    ByteBuffer f56572a;

    /* renamed from: b */
    int f56573b;

    /* renamed from: c */
    int f56574c;

    /* renamed from: d */
    int[] f56575d;

    /* renamed from: e */
    int f56576e;

    /* renamed from: f */
    boolean f56577f;

    /* renamed from: g */
    boolean f56578g;

    /* renamed from: h */
    int f56579h;

    /* renamed from: i */
    int[] f56580i;

    /* renamed from: j */
    int f56581j;

    /* renamed from: k */
    int f56582k;

    /* renamed from: l */
    public boolean f56583l;

    /* renamed from: m */
    AbstractC15938a f56584m;

    /* renamed from: n */
    final AbstractC15945i f56585n;

    /* renamed from: com.google.flatbuffers.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/d$a.class */
    public static abstract class AbstractC15938a {
        /* renamed from: a */
        public abstract ByteBuffer mo8005a(int i);
    }

    /* renamed from: com.google.flatbuffers.d$b */
    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/d$b.class */
    public static final class C15939b extends AbstractC15938a {

        /* renamed from: a */
        public static final C15939b f56586a = new C15939b();

        @Override // com.google.flatbuffers.C15937d.AbstractC15938a
        /* renamed from: a */
        public final ByteBuffer mo8005a(int i) {
            return ByteBuffer.allocate(i).order(ByteOrder.LITTLE_ENDIAN);
        }
    }

    public C15937d() {
        this(1024);
    }

    public C15937d(int i) {
        this(i, C15939b.f56586a, null, AbstractC15945i.m8004a());
    }

    public C15937d(int i, AbstractC15938a abstractC15938a) {
        this(i, abstractC15938a, null, AbstractC15945i.m8004a());
    }

    public C15937d(int i, AbstractC15938a abstractC15938a, ByteBuffer byteBuffer, AbstractC15945i abstractC15945i) {
        this.f56574c = 1;
        this.f56575d = null;
        this.f56576e = 0;
        this.f56577f = false;
        this.f56578g = false;
        this.f56580i = new int[16];
        this.f56581j = 0;
        this.f56582k = 0;
        this.f56583l = false;
        int i2 = i <= 0 ? 1 : i;
        this.f56584m = abstractC15938a;
        if (byteBuffer != null) {
            this.f56572a = byteBuffer;
            byteBuffer.clear();
            this.f56572a.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f56572a = abstractC15938a.mo8005a(i2);
        }
        this.f56585n = abstractC15945i;
        this.f56573b = this.f56572a.capacity();
    }

    public C15937d(ByteBuffer byteBuffer) {
        this(byteBuffer, new C15939b());
    }

    public C15937d(ByteBuffer byteBuffer, AbstractC15938a abstractC15938a) {
        this(byteBuffer.capacity(), abstractC15938a, byteBuffer, AbstractC15945i.m8004a());
    }

    /* renamed from: a */
    private void m8024a(short s) {
        m8032a(2, 0);
        ByteBuffer byteBuffer = this.f56572a;
        int i = this.f56573b - 2;
        this.f56573b = i;
        byteBuffer.putShort(i, s);
    }

    /* renamed from: e */
    private void m8011e() {
        m8032a(1, 0);
        ByteBuffer byteBuffer = this.f56572a;
        int i = this.f56573b - 1;
        this.f56573b = i;
        byteBuffer.put(i, (byte) 0);
    }

    /* renamed from: e */
    private byte[] m8009e(int i, int i2) {
        if (this.f56578g) {
            byte[] bArr = new byte[i2];
            this.f56572a.position(i);
            this.f56572a.get(bArr);
            return bArr;
        }
        throw new AssertionError("FlatBuffers: you can only access the serialized buffer after it has been finished by FlatBufferBuilder.finish().");
    }

    /* renamed from: f */
    private void m8008f() {
        if (!this.f56577f) {
            return;
        }
        throw new AssertionError("FlatBuffers: object serialization must not be nested.");
    }

    /* renamed from: f */
    private void m8007f(int i) {
        m8032a(4, 0);
        m8020b(i);
    }

    /* renamed from: g */
    private void m8006g(int i) {
        this.f56575d[i] = m8034a();
    }

    /* renamed from: a */
    public final int m8034a() {
        return this.f56572a.capacity() - this.f56573b;
    }

    /* renamed from: a */
    public final int m8026a(CharSequence charSequence) {
        int mo7997a = this.f56585n.mo7997a(charSequence);
        m8011e();
        m8031a(1, mo7997a, 1);
        ByteBuffer byteBuffer = this.f56572a;
        int i = this.f56573b - mo7997a;
        this.f56573b = i;
        byteBuffer.position(i);
        this.f56585n.mo7996a(charSequence, this.f56572a);
        return m8021b();
    }

    /* renamed from: a */
    public final int m8025a(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        m8031a(1, remaining, 1);
        ByteBuffer byteBuffer2 = this.f56572a;
        int i = this.f56573b - remaining;
        this.f56573b = i;
        byteBuffer2.position(i);
        this.f56572a.put(byteBuffer);
        return m8021b();
    }

    /* renamed from: a */
    public final int m8023a(byte[] bArr) {
        int length = bArr.length;
        m8031a(1, length, 1);
        ByteBuffer byteBuffer = this.f56572a;
        int i = this.f56573b - length;
        this.f56573b = i;
        byteBuffer.position(i);
        this.f56572a.put(bArr);
        return m8021b();
    }

    /* renamed from: a */
    public final int m8022a(int[] iArr) {
        m8008f();
        m8031a(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            m8016c(iArr[length]);
        }
        return m8021b();
    }

    /* renamed from: a */
    public final void m8033a(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer byteBuffer = this.f56572a;
            int i3 = this.f56573b - 1;
            this.f56573b = i3;
            byteBuffer.put(i3, (byte) 0);
        }
    }

    /* renamed from: a */
    public final void m8032a(int i, int i2) {
        if (i > this.f56574c) {
            this.f56574c = i;
        }
        int capacity = ((((this.f56572a.capacity() - this.f56573b) + i2) ^ (-1)) + 1) & (i - 1);
        while (this.f56573b < capacity + i + i2) {
            int capacity2 = this.f56572a.capacity();
            ByteBuffer byteBuffer = this.f56572a;
            AbstractC15938a abstractC15938a = this.f56584m;
            int capacity3 = byteBuffer.capacity();
            if (((-1073741824) & capacity3) != 0) {
                throw new AssertionError("FlatBuffers: cannot grow buffer beyond 2 gigabytes.");
            }
            int i3 = capacity3 == 0 ? 1 : capacity3 << 1;
            byteBuffer.position(0);
            ByteBuffer mo8005a = abstractC15938a.mo8005a(i3);
            mo8005a.position(mo8005a.clear().capacity() - capacity3);
            mo8005a.put(byteBuffer);
            this.f56572a = mo8005a;
            this.f56573b += mo8005a.capacity() - capacity2;
        }
        m8033a(capacity);
    }

    /* renamed from: a */
    public final void m8031a(int i, int i2, int i3) {
        m8008f();
        this.f56582k = i2;
        int i4 = i * i2;
        m8032a(4, i4);
        m8032a(i3, i4);
        this.f56577f = true;
    }

    /* renamed from: a */
    public final void m8030a(int i, long j) {
        if (this.f56583l || j != 0) {
            m8032a(8, 0);
            m8027a(j);
            m8006g(i);
        }
    }

    /* renamed from: a */
    public final void m8029a(int i, short s) {
        if (this.f56583l || s != 0) {
            m8024a(s);
            m8006g(i);
        }
    }

    /* renamed from: a */
    public final void m8028a(int i, boolean z) {
        if (this.f56583l || z) {
            m8032a(1, 0);
            ByteBuffer byteBuffer = this.f56572a;
            int i2 = this.f56573b - 1;
            this.f56573b = i2;
            byteBuffer.put(i2, z ? (byte) 1 : (byte) 0);
            m8006g(i);
        }
    }

    /* renamed from: a */
    public final void m8027a(long j) {
        ByteBuffer byteBuffer = this.f56572a;
        int i = this.f56573b - 8;
        this.f56573b = i;
        byteBuffer.putLong(i, j);
    }

    /* renamed from: b */
    public final int m8021b() {
        if (this.f56577f) {
            this.f56577f = false;
            m8020b(this.f56582k);
            return m8034a();
        }
        throw new AssertionError("FlatBuffers: endVector called without startVector");
    }

    /* renamed from: b */
    public final void m8020b(int i) {
        ByteBuffer byteBuffer = this.f56572a;
        int i2 = this.f56573b - 4;
        this.f56573b = i2;
        byteBuffer.putInt(i2, i);
    }

    /* renamed from: b */
    public final void m8019b(int i, int i2) {
        if (this.f56583l || i2 != 0) {
            m8007f(i2);
            m8006g(i);
        }
    }

    /* renamed from: b */
    public void m8018b(int i, boolean z) {
        m8032a(this.f56574c, (z ? 4 : 0) + 4);
        m8016c(i);
        if (z) {
            m8007f(this.f56572a.capacity() - this.f56573b);
        }
        this.f56572a.position(this.f56573b);
        this.f56578g = true;
    }

    /* renamed from: c */
    public final int m8017c() {
        int i;
        if (this.f56575d == null || !this.f56577f) {
            throw new AssertionError("FlatBuffers: endTable called without startTable");
        }
        m8007f(0);
        int m8034a = m8034a();
        int i2 = this.f56576e - 1;
        while (i2 >= 0 && this.f56575d[i2] == 0) {
            i2--;
        }
        int i3 = i2;
        while (true) {
            int i4 = i3;
            if (i4 < 0) {
                break;
            }
            int[] iArr = this.f56575d;
            m8024a((short) (iArr[i4] != 0 ? m8034a - iArr[i4] : 0));
            i3 = i4 - 1;
        }
        m8024a((short) (m8034a - this.f56579h));
        m8024a((short) ((i2 + 1 + 2) * 2));
        int i5 = 0;
        loop2: while (true) {
            if (i5 >= this.f56581j) {
                i = 0;
                break;
            }
            int capacity = this.f56572a.capacity() - this.f56580i[i5];
            int i6 = this.f56573b;
            short s = this.f56572a.getShort(capacity);
            if (s == this.f56572a.getShort(i6)) {
                for (int i7 = 2; i7 < s; i7 += 2) {
                    if (this.f56572a.getShort(capacity + i7) == this.f56572a.getShort(i6 + i7)) {
                    }
                }
                i = this.f56580i[i5];
                break loop2;
            }
            i5++;
        }
        if (i != 0) {
            int capacity2 = this.f56572a.capacity() - m8034a;
            this.f56573b = capacity2;
            this.f56572a.putInt(capacity2, i - m8034a);
        } else {
            int i8 = this.f56581j;
            int[] iArr2 = this.f56580i;
            if (i8 == iArr2.length) {
                this.f56580i = Arrays.copyOf(iArr2, i8 * 2);
            }
            int[] iArr3 = this.f56580i;
            int i9 = this.f56581j;
            this.f56581j = i9 + 1;
            iArr3[i9] = m8034a();
            ByteBuffer byteBuffer = this.f56572a;
            byteBuffer.putInt(byteBuffer.capacity() - m8034a, m8034a() - m8034a);
        }
        this.f56577f = false;
        return m8034a;
    }

    /* renamed from: c */
    public final void m8016c(int i) {
        m8032a(4, 0);
        if (f56571o || i <= m8034a()) {
            m8020b((m8034a() - i) + 4);
            return;
        }
        throw new AssertionError();
    }

    /* renamed from: c */
    public final void m8015c(int i, int i2) {
        if (this.f56583l || i2 != 0) {
            m8016c(i2);
            m8006g(i);
        }
    }

    /* renamed from: d */
    public final void m8013d(int i) {
        m8008f();
        int[] iArr = this.f56575d;
        if (iArr == null || iArr.length < i) {
            this.f56575d = new int[i];
        }
        this.f56576e = i;
        Arrays.fill(this.f56575d, 0, i, 0);
        this.f56577f = true;
        this.f56579h = m8034a();
    }

    /* renamed from: d */
    public final void m8012d(int i, int i2) {
        if (i2 != 0) {
            if (i2 != m8034a()) {
                throw new AssertionError("FlatBuffers: struct must be serialized inline.");
            }
            m8006g(i);
        }
    }

    /* renamed from: d */
    public final byte[] m8014d() {
        return m8009e(this.f56573b, this.f56572a.capacity() - this.f56573b);
    }

    /* renamed from: e */
    public final void m8010e(int i) {
        m8018b(i, false);
    }
}
