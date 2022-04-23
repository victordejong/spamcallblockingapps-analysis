package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/d.class */
public abstract class d implements Iterable<Byte> {

    /* renamed from: b  reason: collision with root package name */
    public static final d f38116b = new o(new byte[0]);

    /* renamed from: c  reason: collision with root package name */
    static final /* synthetic */ boolean f38117c = true;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/d$a.class */
    public interface a extends Iterator<Byte> {
        byte a();
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/d$b.class */
    public static final class b extends OutputStream {

        /* renamed from: a  reason: collision with root package name */
        private static final byte[] f38118a = new byte[0];

        /* renamed from: b  reason: collision with root package name */
        private final int f38119b;

        /* renamed from: c  reason: collision with root package name */
        private final ArrayList<d> f38120c;

        /* renamed from: d  reason: collision with root package name */
        private int f38121d;
        private byte[] e;
        private int f;

        b(int i) {
            if (i >= 0) {
                this.f38119b = i;
                this.f38120c = new ArrayList<>();
                this.e = new byte[i];
                return;
            }
            throw new IllegalArgumentException("Buffer size < 0");
        }

        private void a(int i) {
            this.f38120c.add(new o(this.e));
            int length = this.f38121d + this.e.length;
            this.f38121d = length;
            this.e = new byte[Math.max(this.f38119b, Math.max(i, length >>> 1))];
            this.f = 0;
        }

        private int b() {
            int i;
            int i2;
            synchronized (this) {
                i = this.f38121d;
                i2 = this.f;
            }
            return i + i2;
        }

        public final d a() {
            d a2;
            synchronized (this) {
                int i = this.f;
                byte[] bArr = this.e;
                if (i >= bArr.length) {
                    this.f38120c.add(new o(this.e));
                    this.e = f38118a;
                } else if (i > 0) {
                    byte[] bArr2 = new byte[i];
                    System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
                    this.f38120c.add(new o(bArr2));
                }
                this.f38121d += this.f;
                this.f = 0;
                a2 = d.a(this.f38120c);
            }
            return a2;
        }

        public final String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(b()));
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            synchronized (this) {
                if (this.f == this.e.length) {
                    a(1);
                }
                byte[] bArr = this.e;
                int i2 = this.f;
                this.f = i2 + 1;
                bArr[i2] = (byte) i;
            }
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            synchronized (this) {
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i3 = this.f;
                if (i2 <= length - i3) {
                    System.arraycopy(bArr, i, bArr2, i3, i2);
                    this.f += i2;
                    return;
                }
                int length2 = bArr2.length - i3;
                System.arraycopy(bArr, i, bArr2, i3, length2);
                int i4 = i2 - length2;
                a(i4);
                System.arraycopy(bArr, i + length2, this.e, 0, i4);
                this.f = i4;
            }
        }
    }

    public static d a(Iterable<d> iterable) {
        Collection collection;
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList();
            Iterator<d> it2 = iterable.iterator();
            while (true) {
                collection = arrayList;
                if (!it2.hasNext()) {
                    break;
                }
                arrayList.add(it2.next());
            }
        } else {
            collection = (Collection) iterable;
        }
        return collection.isEmpty() ? f38116b : a(collection.iterator(), collection.size());
    }

    public static d a(String str) {
        try {
            return new o(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    private static d a(Iterator<d> it2, int i) {
        d dVar;
        if (f38117c || i > 0) {
            if (i == 1) {
                dVar = it2.next();
            } else {
                int i2 = i >>> 1;
                dVar = a(it2, i2).a(a(it2, i - i2));
            }
            return dVar;
        }
        throw new AssertionError();
    }

    public static d a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static d a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new o(bArr2);
    }

    public static b h() {
        return new b(128);
    }

    public abstract int a();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int a(int i, int i2, int i3);

    public final d a(d dVar) {
        int a2 = a();
        int a3 = dVar.a();
        if (a2 + a3 < 2147483647L) {
            return t.a(this, dVar);
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(a2);
        sb.append("+");
        sb.append(a3);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(OutputStream outputStream, int i, int i2) throws IOException {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 > a()) {
                StringBuilder sb2 = new StringBuilder(39);
                sb2.append("Source end offset exceeded: ");
                sb2.append(i3);
                throw new IndexOutOfBoundsException(sb2.toString());
            } else if (i2 > 0) {
                b(outputStream, i, i2);
            }
        } else {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i2);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(byte[] bArr, int i, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int b(int i, int i2, int i3);

    public abstract String b(String str) throws UnsupportedEncodingException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(OutputStream outputStream, int i, int i2) throws IOException;

    public final void b(byte[] bArr, int i, int i2, int i3) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        } else if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        } else if (i3 >= 0) {
            int i4 = i + i3;
            if (i4 <= a()) {
                int i5 = i2 + i3;
                if (i5 > bArr.length) {
                    StringBuilder sb3 = new StringBuilder(34);
                    sb3.append("Target end offset < 0: ");
                    sb3.append(i5);
                    throw new IndexOutOfBoundsException(sb3.toString());
                } else if (i3 > 0) {
                    a(bArr, i, i2, i3);
                }
            } else {
                StringBuilder sb4 = new StringBuilder(34);
                sb4.append("Source end offset < 0: ");
                sb4.append(i4);
                throw new IndexOutOfBoundsException(sb4.toString());
            }
        } else {
            StringBuilder sb5 = new StringBuilder(23);
            sb5.append("Length < 0: ");
            sb5.append(i3);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    /* renamed from: c */
    public abstract a iterator();

    public final byte[] d() {
        int a2 = a();
        if (a2 == 0) {
            return j.f38154a;
        }
        byte[] bArr = new byte[a2];
        a(bArr, 0, 0, a2);
        return bArr;
    }

    public final String e() {
        try {
            return b("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    public abstract boolean f();

    public abstract e g();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int i();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean j();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int k();

    public String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(a()));
    }
}
