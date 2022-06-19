package p148k7;

import android.annotation.TargetApi;
import android.os.Looper;
import android.support.p012v4.media.C0082b;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import p255u7.C4535b;
@TargetApi(9)
/* renamed from: k7.l */
/* loaded from: classes2-dex2jar.jar:k7/l.class */
public class C3358l {

    /* renamed from: d */
    public static PriorityQueue<ByteBuffer> f11373d = new PriorityQueue<>(8, new C3359a());

    /* renamed from: e */
    public static int f11374e = 1048576;

    /* renamed from: f */
    public static int f11375f = 262144;

    /* renamed from: g */
    public static int f11376g = 0;

    /* renamed from: h */
    public static int f11377h = 0;

    /* renamed from: i */
    public static final Object f11378i = new Object();

    /* renamed from: j */
    public static final ByteBuffer f11379j = ByteBuffer.allocate(0);

    /* renamed from: a */
    public C4535b<ByteBuffer> f11380a = new C4535b<>();

    /* renamed from: b */
    public ByteOrder f11381b = ByteOrder.BIG_ENDIAN;

    /* renamed from: c */
    public int f11382c = 0;

    /* renamed from: k7.l$a */
    /* loaded from: classes2-dex2jar.jar:k7/l$a.class */
    public static class C3359a implements Comparator<ByteBuffer> {
        @Override // java.util.Comparator
        public int compare(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            ByteBuffer byteBuffer3 = byteBuffer;
            ByteBuffer byteBuffer4 = byteBuffer2;
            return byteBuffer3.capacity() == byteBuffer4.capacity() ? 0 : byteBuffer3.capacity() > byteBuffer4.capacity() ? 1 : -1;
        }
    }

    /* renamed from: h */
    public static PriorityQueue<ByteBuffer> m2345h() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || Thread.currentThread() != mainLooper.getThread()) {
            return f11373d;
        }
        return null;
    }

    /* renamed from: k */
    public static ByteBuffer m2342k(int i) {
        PriorityQueue<ByteBuffer> m2345h;
        ByteBuffer remove;
        if (i <= f11377h && (m2345h = m2345h()) != null) {
            synchronized (f11378i) {
                do {
                    if (m2345h.size() > 0) {
                        remove = m2345h.remove();
                        if (m2345h.size() == 0) {
                            f11377h = 0;
                        }
                        f11376g -= remove.capacity();
                    }
                } while (remove.capacity() < i);
                return remove;
            }
        }
        return ByteBuffer.allocate(Math.max(8192, i));
    }

    /* renamed from: m */
    public static void m2340m(ByteBuffer byteBuffer) {
        PriorityQueue<ByteBuffer> m2345h;
        if (byteBuffer == null || byteBuffer.isDirect() || byteBuffer.arrayOffset() != 0 || byteBuffer.array().length != byteBuffer.capacity() || byteBuffer.capacity() < 8192 || byteBuffer.capacity() > f11375f || (m2345h = m2345h()) == null) {
            return;
        }
        synchronized (f11378i) {
            while (f11376g > f11374e && m2345h.size() > 0 && m2345h.peek().capacity() < byteBuffer.capacity()) {
                f11376g -= m2345h.remove().capacity();
            }
            if (f11376g > f11374e) {
                return;
            }
            byteBuffer.position(0);
            byteBuffer.limit(byteBuffer.capacity());
            f11376g += byteBuffer.capacity();
            m2345h.add(byteBuffer);
            f11377h = Math.max(f11377h, byteBuffer.capacity());
        }
    }

    /* renamed from: a */
    public C3358l m2352a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            m2340m(byteBuffer);
            return this;
        }
        int remaining = byteBuffer.remaining();
        int i = this.f11382c;
        if (i >= 0) {
            this.f11382c = i + remaining;
        }
        if (this.f11380a.size() > 0) {
            C4535b<ByteBuffer> c4535b = this.f11380a;
            Object[] objArr = c4535b.f13943a;
            Object obj = objArr[(c4535b.f13945c - 1) & (objArr.length - 1)];
            if (obj == null) {
                throw new NoSuchElementException();
            }
            ByteBuffer byteBuffer2 = (ByteBuffer) obj;
            if (byteBuffer2.capacity() - byteBuffer2.limit() >= byteBuffer.remaining()) {
                byteBuffer2.mark();
                byteBuffer2.position(byteBuffer2.limit());
                byteBuffer2.limit(byteBuffer2.capacity());
                byteBuffer2.put(byteBuffer);
                byteBuffer2.limit(byteBuffer2.position());
                byteBuffer2.reset();
                m2340m(byteBuffer);
                m2341l(0);
                return this;
            }
        }
        this.f11380a.addLast(byteBuffer);
        m2341l(0);
        return this;
    }

    /* renamed from: b */
    public void m2351b(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            m2340m(byteBuffer);
            return;
        }
        int remaining = byteBuffer.remaining();
        int i = this.f11382c;
        if (i >= 0) {
            this.f11382c = i + remaining;
        }
        if (this.f11380a.size() > 0) {
            C4535b<ByteBuffer> c4535b = this.f11380a;
            Object obj = c4535b.f13943a[c4535b.f13944b];
            if (obj == null) {
                throw new NoSuchElementException();
            }
            ByteBuffer byteBuffer2 = (ByteBuffer) obj;
            if (byteBuffer2.position() >= byteBuffer.remaining()) {
                byteBuffer2.position(byteBuffer2.position() - byteBuffer.remaining());
                byteBuffer2.mark();
                byteBuffer2.put(byteBuffer);
                byteBuffer2.reset();
                m2340m(byteBuffer);
                return;
            }
        }
        this.f11380a.addFirst(byteBuffer);
    }

    /* renamed from: c */
    public byte m2350c() {
        byte b = m2341l(1).get();
        this.f11382c--;
        return b;
    }

    /* renamed from: d */
    public void m2349d(C3358l c3358l, int i) {
        if (this.f11382c >= i) {
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    break;
                }
                ByteBuffer remove = this.f11380a.remove();
                int remaining = remove.remaining();
                if (remaining == 0) {
                    m2340m(remove);
                } else {
                    int i3 = remaining + i2;
                    if (i3 > i) {
                        int i4 = i - i2;
                        ByteBuffer m2342k = m2342k(i4);
                        m2342k.limit(i4);
                        remove.get(m2342k.array(), 0, i4);
                        c3358l.m2352a(m2342k);
                        this.f11380a.addFirst(remove);
                        break;
                    }
                    c3358l.m2352a(remove);
                    i2 = i3;
                }
            }
            this.f11382c -= i;
            return;
        }
        throw new IllegalArgumentException("length");
    }

    /* renamed from: e */
    public void m2348e(byte[] bArr, int i, int i2) {
        if (this.f11382c >= i2) {
            int i3 = i2;
            while (i3 > 0) {
                ByteBuffer peek = this.f11380a.peek();
                int min = Math.min(peek.remaining(), i3);
                if (bArr != null) {
                    peek.get(bArr, i, min);
                } else {
                    peek.position(peek.position() + min);
                }
                int i4 = i3 - min;
                int i5 = i + min;
                i3 = i4;
                i = i5;
                if (peek.remaining() == 0) {
                    this.f11380a.remove();
                    m2340m(peek);
                    i3 = i4;
                    i = i5;
                }
            }
            this.f11382c -= i2;
            return;
        }
        throw new IllegalArgumentException("length");
    }

    /* renamed from: f */
    public ByteBuffer[] m2347f() {
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) this.f11380a.toArray(new ByteBuffer[this.f11380a.size()]);
        this.f11380a.clear();
        this.f11382c = 0;
        return byteBufferArr;
    }

    /* renamed from: g */
    public char m2346g() {
        char c = (char) m2341l(1).get();
        this.f11382c--;
        return c;
    }

    /* renamed from: i */
    public boolean m2344i() {
        return this.f11382c > 0;
    }

    /* renamed from: j */
    public boolean m2343j() {
        return this.f11382c == 0;
    }

    /* renamed from: l */
    public final ByteBuffer m2341l(int i) {
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2;
        ByteBuffer remove;
        int i2;
        if (this.f11382c < i) {
            StringBuilder m8752j = C0082b.m8752j("count : ");
            m8752j.append(this.f11382c);
            m8752j.append("/");
            m8752j.append(i);
            throw new IllegalArgumentException(m8752j.toString());
        }
        ByteBuffer peek = this.f11380a.peek();
        while (true) {
            byteBuffer = peek;
            if (byteBuffer == null || byteBuffer.hasRemaining()) {
                break;
            }
            m2340m(this.f11380a.remove());
            peek = this.f11380a.peek();
        }
        if (byteBuffer == null) {
            return f11379j;
        }
        if (byteBuffer.remaining() >= i) {
            return byteBuffer.order(this.f11381b);
        }
        ByteBuffer m2342k = m2342k(i);
        m2342k.limit(i);
        byte[] array = m2342k.array();
        int i3 = 0;
        loop1: while (true) {
            int i4 = i3;
            byteBuffer2 = null;
            while (i4 < i) {
                remove = this.f11380a.remove();
                int min = Math.min(i - i4, remove.remaining());
                remove.get(array, i4, min);
                i2 = i4 + min;
                i4 = i2;
                byteBuffer2 = remove;
                if (remove.remaining() == 0) {
                    break;
                }
            }
            m2340m(remove);
            i3 = i2;
        }
        if (byteBuffer2 != null && byteBuffer2.remaining() > 0) {
            this.f11380a.addFirst(byteBuffer2);
        }
        this.f11380a.addFirst(m2342k);
        return m2342k.order(this.f11381b);
    }

    /* renamed from: n */
    public void m2339n() {
        while (this.f11380a.size() > 0) {
            m2340m(this.f11380a.remove());
        }
        this.f11382c = 0;
    }

    /* renamed from: o */
    public ByteBuffer m2338o() {
        ByteBuffer remove = this.f11380a.remove();
        this.f11382c -= remove.remaining();
        return remove;
    }

    /* renamed from: p */
    public int m2337p() {
        return this.f11380a.size();
    }
}
