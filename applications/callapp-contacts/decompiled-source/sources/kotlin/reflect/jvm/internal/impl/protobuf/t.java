package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Stack;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t.class */
public final class t extends kotlin.reflect.jvm.internal.impl.protobuf.d {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f38170a;

    /* renamed from: d  reason: collision with root package name */
    private final int f38171d;
    private final kotlin.reflect.jvm.internal.impl.protobuf.d e;
    private final kotlin.reflect.jvm.internal.impl.protobuf.d f;
    private final int g;
    private final int h;
    private int i;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Stack<kotlin.reflect.jvm.internal.impl.protobuf.d> f38172a;

        private a() {
            this.f38172a = new Stack<>();
        }

        private static int a(int i) {
            int binarySearch = Arrays.binarySearch(t.f38170a, i);
            int i2 = binarySearch;
            if (binarySearch < 0) {
                i2 = (-(binarySearch + 1)) - 1;
            }
            return i2;
        }

        final void a(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            while (!dVar.j()) {
                if (dVar instanceof t) {
                    t tVar = (t) dVar;
                    a(tVar.e);
                    dVar = tVar.f;
                } else {
                    String valueOf = String.valueOf(String.valueOf(dVar.getClass()));
                    StringBuilder sb = new StringBuilder(valueOf.length() + 49);
                    sb.append("Has a new type of ByteString been created? Found ");
                    sb.append(valueOf);
                    throw new IllegalArgumentException(sb.toString());
                }
            }
            int a2 = a(dVar.a());
            int i = t.f38170a[a2 + 1];
            if (this.f38172a.isEmpty() || this.f38172a.peek().a() >= i) {
                this.f38172a.push(dVar);
                return;
            }
            int i2 = t.f38170a[a2];
            kotlin.reflect.jvm.internal.impl.protobuf.d pop = this.f38172a.pop();
            while (!this.f38172a.isEmpty() && this.f38172a.peek().a() < i2) {
                pop = new t(this.f38172a.pop(), pop);
            }
            t tVar2 = new t(pop, dVar);
            while (!this.f38172a.isEmpty()) {
                if (this.f38172a.peek().a() >= t.f38170a[a(tVar2.a()) + 1]) {
                    break;
                }
                tVar2 = new t(this.f38172a.pop(), tVar2);
            }
            this.f38172a.push(tVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$b.class */
    public static final class b implements Iterator<o> {

        /* renamed from: a  reason: collision with root package name */
        private final Stack<t> f38173a;

        /* renamed from: b  reason: collision with root package name */
        private o f38174b;

        private b(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            this.f38173a = new Stack<>();
            this.f38174b = a(dVar);
        }

        private o a(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            while (dVar instanceof t) {
                t tVar = (t) dVar;
                this.f38173a.push(tVar);
                dVar = tVar.e;
            }
            return (o) dVar;
        }

        private o b() {
            while (!this.f38173a.isEmpty()) {
                o a2 = a(this.f38173a.pop().f);
                if (!(a2.a() == 0)) {
                    return a2;
                }
            }
            return null;
        }

        /* renamed from: a */
        public final o next() {
            o oVar = this.f38174b;
            if (oVar != null) {
                this.f38174b = b();
                return oVar;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38174b != null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$c.class */
    public final class c implements d.a {

        /* renamed from: a  reason: collision with root package name */
        int f38175a;

        /* renamed from: c  reason: collision with root package name */
        private final b f38177c;

        /* renamed from: d  reason: collision with root package name */
        private d.a f38178d;

        private c() {
            b bVar = new b(t.this);
            this.f38177c = bVar;
            this.f38178d = bVar.next().iterator();
            this.f38175a = t.this.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.d.a
        public final byte a() {
            if (!this.f38178d.hasNext()) {
                this.f38178d = this.f38177c.next().iterator();
            }
            this.f38175a--;
            return this.f38178d.a();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f38175a > 0;
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

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/t$d.class */
    final class d extends InputStream {

        /* renamed from: b  reason: collision with root package name */
        private b f38180b;

        /* renamed from: c  reason: collision with root package name */
        private o f38181c;

        /* renamed from: d  reason: collision with root package name */
        private int f38182d;
        private int e;
        private int f;
        private int g;

        public d() {
            a();
        }

        private int a(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (true) {
                if (i3 <= 0) {
                    break;
                }
                b();
                if (this.f38181c != null) {
                    int min = Math.min(this.f38182d - this.e, i3);
                    i = i;
                    if (bArr != null) {
                        this.f38181c.b(bArr, this.e, i, min);
                        i += min;
                    }
                    this.e += min;
                    i3 -= min;
                } else if (i3 == i2) {
                    return -1;
                }
            }
            return i2 - i3;
        }

        private void a() {
            b bVar = new b(t.this);
            this.f38180b = bVar;
            o a2 = bVar.next();
            this.f38181c = a2;
            this.f38182d = a2.a();
            this.e = 0;
            this.f = 0;
        }

        private void b() {
            if (this.f38181c != null) {
                int i = this.e;
                int i2 = this.f38182d;
                if (i == i2) {
                    this.f += i2;
                    this.e = 0;
                    if (this.f38180b.hasNext()) {
                        o a2 = this.f38180b.next();
                        this.f38181c = a2;
                        this.f38182d = a2.a();
                        return;
                    }
                    this.f38181c = null;
                    this.f38182d = 0;
                }
            }
        }

        @Override // java.io.InputStream
        public final int available() throws IOException {
            return t.this.a() - (this.f + this.e);
        }

        @Override // java.io.InputStream
        public final void mark(int i) {
            this.g = this.f + this.e;
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() throws IOException {
            b();
            o oVar = this.f38181c;
            if (oVar == null) {
                return -1;
            }
            int i = this.e;
            this.e = i + 1;
            return oVar.a(i) & 255;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i >= 0 && i2 >= 0 && i2 <= bArr.length - i) {
                return a(bArr, i, i2);
            }
            throw new IndexOutOfBoundsException();
        }

        @Override // java.io.InputStream
        public final void reset() {
            synchronized (this) {
                a();
                a(null, 0, this.g);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v2 */
        @Override // java.io.InputStream
        public final long skip(long j) {
            if (j >= 0) {
                long j2 = j;
                if (j > 2147483647L) {
                    j2 = 2147483647;
                }
                return a(null, 0, (int) j2);
            }
            throw new IndexOutOfBoundsException();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        for (int i2 = 1; i2 > 0; i2 = i + i2) {
            arrayList.add(Integer.valueOf(i2));
            i = i2;
        }
        arrayList.add(Integer.MAX_VALUE);
        f38170a = new int[arrayList.size()];
        int i3 = 0;
        while (true) {
            int[] iArr = f38170a;
            if (i3 < iArr.length) {
                iArr[i3] = ((Integer) arrayList.get(i3)).intValue();
                i3++;
            } else {
                return;
            }
        }
    }

    private t(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
        this.i = 0;
        this.e = dVar;
        this.f = dVar2;
        int a2 = dVar.a();
        this.g = a2;
        this.f38171d = a2 + dVar2.a();
        this.h = Math.max(dVar.i(), dVar2.i()) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static kotlin.reflect.jvm.internal.impl.protobuf.d a(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
        t tVar = dVar instanceof t ? (t) dVar : null;
        if (dVar2.a() != 0) {
            dVar = dVar2;
            if (dVar.a() != 0) {
                int a2 = dVar.a() + dVar2.a();
                if (a2 < 128) {
                    dVar = b(dVar, dVar2);
                } else if (tVar != null && tVar.f.a() + dVar2.a() < 128) {
                    dVar = new t(tVar.e, b(tVar.f, dVar2));
                } else if (tVar == null || tVar.e.i() <= tVar.f.i() || tVar.h <= dVar2.i()) {
                    if (a2 < f38170a[Math.max(dVar.i(), dVar2.i()) + 1]) {
                        a aVar = new a();
                        aVar.a(dVar);
                        aVar.a(dVar2);
                        kotlin.reflect.jvm.internal.impl.protobuf.d pop = aVar.f38172a.pop();
                        while (true) {
                            dVar = pop;
                            if (aVar.f38172a.isEmpty()) {
                                break;
                            }
                            pop = new t(aVar.f38172a.pop(), pop);
                        }
                    } else {
                        dVar = new t(dVar, dVar2);
                    }
                } else {
                    dVar = new t(tVar.e, new t(tVar.f, dVar2));
                }
            }
        }
        return dVar;
    }

    private static o b(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
        int a2 = dVar.a();
        int a3 = dVar2.a();
        byte[] bArr = new byte[a2 + a3];
        dVar.b(bArr, 0, 0, a2);
        dVar2.b(bArr, 0, a2, a3);
        return new o(bArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final int a() {
        return this.f38171d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int a(int i, int i2, int i3) {
        int i4 = this.g;
        if (i2 + i3 <= i4) {
            return this.e.a(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f.a(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f.a(this.e.a(i, i2, i5), 0, i3 - i5);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final void a(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.g;
        if (i + i3 <= i4) {
            this.e.a(bArr, i, i2, i3);
        } else if (i >= i4) {
            this.f.a(bArr, i - i4, i2, i3);
        } else {
            int i5 = i4 - i;
            this.e.a(bArr, i, i2, i5);
            this.f.a(bArr, 0, i2 + i5, i3 - i5);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int b(int i, int i2, int i3) {
        int i4 = this.g;
        if (i2 + i3 <= i4) {
            return this.e.b(i, i2, i3);
        }
        if (i2 >= i4) {
            return this.f.b(i, i2 - i4, i3);
        }
        int i5 = i4 - i2;
        return this.f.b(this.e.b(i, i2, i5), 0, i3 - i5);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final String b(String str) throws UnsupportedEncodingException {
        return new String(d(), str);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    final void b(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = this.g;
        if (i + i2 <= i3) {
            this.e.b(outputStream, i, i2);
        } else if (i >= i3) {
            this.f.b(outputStream, i - i3, i2);
        } else {
            int i4 = i3 - i;
            this.e.b(outputStream, i, i4);
            this.f.b(outputStream, 0, i2 - i4);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    /* renamed from: c */
    public final d.a iterator() {
        return new c();
    }

    public final boolean equals(Object obj) {
        int k;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof kotlin.reflect.jvm.internal.impl.protobuf.d)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.protobuf.d dVar = (kotlin.reflect.jvm.internal.impl.protobuf.d) obj;
        if (this.f38171d != dVar.a()) {
            return false;
        }
        if (this.f38171d == 0) {
            return true;
        }
        if (this.i != 0 && (k = dVar.k()) != 0 && this.i != k) {
            return false;
        }
        b bVar = new b(this);
        o next = bVar.next();
        b bVar2 = new b(dVar);
        o next2 = bVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int a2 = next.a() - i;
            int a3 = next2.a() - i2;
            int min = Math.min(a2, a3);
            if (!(i == 0 ? next.a(next2, i2, min) : next2.a(next, i, min))) {
                return false;
            }
            i3 += min;
            int i4 = this.f38171d;
            if (i3 < i4) {
                if (min == a2) {
                    next = bVar.next();
                    i = 0;
                } else {
                    i += min;
                }
                if (min == a3) {
                    next2 = bVar2.next();
                    i2 = 0;
                } else {
                    i2 += min;
                }
            } else if (i3 == i4) {
                return true;
            } else {
                throw new IllegalStateException();
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final boolean f() {
        int a2 = this.e.a(0, 0, this.g);
        kotlin.reflect.jvm.internal.impl.protobuf.d dVar = this.f;
        return dVar.a(a2, 0, dVar.a()) == 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public final e g() {
        return e.a(new d());
    }

    public final int hashCode() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            int i3 = this.f38171d;
            int b2 = b(i3, 0, i3);
            i2 = b2;
            if (b2 == 0) {
                i2 = 1;
            }
            this.i = i2;
        }
        return i2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int i() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final boolean j() {
        return this.f38171d >= f38170a[this.h];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected final int k() {
        return this.i;
    }
}
