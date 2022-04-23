package p626l.p632u;

import androidx.exifinterface.media.ExifInterface;
import com.flurry.sdk.C3478n;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p628b0.C14896i;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��>\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n��\n\u0002\u0010(\n\u0002\b\b\b\u0002\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001d\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010\fJ\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028��¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028��0��2\u0006\u0010\u0018\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00028��2\u0006\u0010\u001a\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028��0\u001fH\u0096\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0006J\u0015\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014¢\u0006\u0002\u0010#J'\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\b\u0001\u0010\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00010\tH\u0014¢\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0082\bR\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��¨\u0006'"}, m815d2 = {"Lkotlin/collections/RingBuffer;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "capacity", "", "(I)V", "buffer", "", "", "filledSize", "([Ljava/lang/Object;I)V", "[Ljava/lang/Object;", "<set-?>", "size", "getSize", "()I", "startIndex", "add", "", "element", "(Ljava/lang/Object;)V", "expanded", "maxCapacity", "get", "index", "(I)Ljava/lang/Object;", "isFull", "", "iterator", "", "removeFirst", C3478n.f5989a, "toArray", "()[Ljava/lang/Object;", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "forward", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.u.f0 */
/* loaded from: classes3-dex2jar.jar:l/u/f0.class */
public final class C15007f0<T> extends AbstractC14998d<T> implements RandomAccess {

    /* renamed from: b */
    public final int f33037b;

    /* renamed from: c */
    public int f33038c;

    /* renamed from: d */
    public int f33039d;

    /* renamed from: e */
    public final Object[] f33040e;

    /* renamed from: l.u.f0$a */
    /* loaded from: classes3-dex2jar.jar:l/u/f0$a.class */
    public static final class C15008a extends AbstractC14996c<T> {

        /* renamed from: c */
        public int f33041c;

        /* renamed from: d */
        public int f33042d;

        public C15008a() {
            this.f33041c = C15007f0.this.size();
            this.f33042d = C15007f0.this.f33038c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p626l.p632u.AbstractC14996c
        /* renamed from: a */
        public void mo437a() {
            if (this.f33041c == 0) {
                m642b();
                return;
            }
            m643a(C15007f0.this.f33040e[this.f33042d]);
            this.f33042d = (this.f33042d + 1) % C15007f0.this.f33037b;
            this.f33041c--;
        }
    }

    public C15007f0(int i) {
        this(new Object[i], 0);
    }

    public C15007f0(Object[] objArr, int i) {
        C15149k.m377b(objArr, "buffer");
        this.f33040e = objArr;
        boolean z = true;
        if (i >= 0) {
            if (i > this.f33040e.length) {
                z = false;
            }
            if (z) {
                this.f33037b = this.f33040e.length;
                this.f33039d = i;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + this.f33040e.length).toString());
        }
        throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i).toString());
    }

    @Override // p626l.p632u.AbstractC14991a, java.util.Collection
    public final void add(T t) {
        if (!m617c()) {
            this.f33040e[(this.f33038c + size()) % this.f33037b] = t;
            this.f33039d = size() + 1;
            return;
        }
        throw new IllegalStateException("ring buffer is full");
    }

    @Override // p626l.p632u.AbstractC14991a
    /* renamed from: b */
    public int mo619b() {
        return this.f33039d;
    }

    /* renamed from: c */
    public final boolean m617c() {
        return size() == this.f33037b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final C15007f0<T> m615g(int i) {
        Object[] objArr;
        int i2 = this.f33037b;
        int b = C14896i.m793b(i2 + (i2 >> 1) + 1, i);
        if (this.f33038c == 0) {
            objArr = Arrays.copyOf(this.f33040e, b);
            C15149k.m383a((Object) objArr, "java.util.Arrays.copyOf(this, newSize)");
        } else {
            objArr = toArray(new Object[b]);
        }
        return new C15007f0<>(objArr, size());
    }

    @Override // p626l.p632u.AbstractC14998d, java.util.List
    public T get(int i) {
        AbstractC14998d.f33028a.m640a(i, size());
        return (T) this.f33040e[(this.f33038c + i) % this.f33037b];
    }

    /* renamed from: h */
    public final void m614h(int i) {
        boolean z = true;
        if (i >= 0) {
            if (i > size()) {
                z = false;
            }
            if (!z) {
                throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
            } else if (i > 0) {
                int i2 = this.f33038c;
                int i3 = (i2 + i) % this.f33037b;
                if (i2 > i3) {
                    C15011h.m603a(this.f33040e, (Object) null, i2, this.f33037b);
                    C15011h.m603a(this.f33040e, (Object) null, 0, i3);
                } else {
                    C15011h.m603a(this.f33040e, (Object) null, i2, i3);
                }
                this.f33038c = i3;
                this.f33039d = size() - i;
            }
        } else {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i).toString());
        }
    }

    @Override // p626l.p632u.AbstractC14998d, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<T> iterator() {
        return new C15008a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p626l.p632u.AbstractC14991a, java.util.Collection
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p626l.p632u.AbstractC14991a, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int i;
        int i2;
        C15149k.m377b(tArr, "array");
        T[] tArr2 = tArr;
        if (tArr.length < size()) {
            tArr2 = (T[]) Arrays.copyOf(tArr, size());
            C15149k.m383a((Object) tArr2, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i3 = this.f33038c;
        int i4 = 0;
        while (true) {
            i = i4;
            i2 = 0;
            if (i4 >= size) {
                break;
            }
            i = i4;
            i2 = 0;
            if (i3 >= this.f33037b) {
                break;
            }
            tArr2[i4] = this.f33040e[i3];
            i4++;
            i3++;
        }
        while (i < size) {
            tArr2[i] = this.f33040e[i2];
            i++;
            i2++;
        }
        if (tArr2.length > size()) {
            tArr2[size()] = null;
        }
        if (tArr2 != null) {
            return tArr2;
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }
}
