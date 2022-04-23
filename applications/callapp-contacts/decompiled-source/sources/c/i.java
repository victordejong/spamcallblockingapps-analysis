package c;

import c.a.b;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0005\n\u0002\b\u001a\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018�� Z2\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0001ZB\u000f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0016J\u0011\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��H\u0096\u0002J\u0015\u0010\u001b\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u001dJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020��J\u0013\u0010!\u001a\u00020\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b&J\u0015\u0010&\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0007¢\u0006\u0002\b'J\r\u0010(\u001a\u00020\tH\u0010¢\u0006\u0002\b)J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010*\u001a\u00020\u0010H\u0016J\u001d\u0010+\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010,\u001a\u00020��H\u0010¢\u0006\u0002\b-J\u0010\u0010.\u001a\u00020��2\u0006\u0010,\u001a\u00020��H\u0016J\u0010\u0010/\u001a\u00020��2\u0006\u0010,\u001a\u00020��H\u0016J\u0010\u00100\u001a\u00020��2\u0006\u0010,\u001a\u00020��H\u0016J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��2\b\b\u0002\u00102\u001a\u00020\tH\u0007J\r\u00103\u001a\u00020\u0004H\u0010¢\u0006\u0002\b4J\u0015\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\tH\u0010¢\u0006\u0002\b7J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��2\b\b\u0002\u00102\u001a\u00020\tH\u0007J\b\u00109\u001a\u00020��H\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\b\u0010B\u001a\u00020��H\u0016J\b\u0010C\u001a\u00020��H\u0016J\b\u0010D\u001a\u00020��H\u0016J\r\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0002\bEJ\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u0004J\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020��J\u0010\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0016J\u001c\u0010K\u001a\u00020��2\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010M\u001a\u00020\tH\u0017J\b\u0010N\u001a\u00020��H\u0016J\b\u0010O\u001a\u00020��H\u0016J\b\u0010P\u001a\u00020\u0004H\u0016J\b\u0010Q\u001a\u00020\u0010H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020TH\u0016J%\u0010R\u001a\u00020?2\u0006\u0010U\u001a\u00020V2\u0006\u0010;\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0010¢\u0006\u0002\bWJ\u0010\u0010X\u001a\u00020?2\u0006\u0010S\u001a\u00020YH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006["}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "data", "", "([B)V", "getData$okio", "()[B", "hashCode", "", "getHashCode$okio", "()I", "setHashCode$okio", "(I)V", "size", "utf8", "", "getUtf8$okio", "()Ljava/lang/String;", "setUtf8$okio", "(Ljava/lang/String;)V", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "base64Url", "compareTo", "other", "digest", "algorithm", "digest$okio", "endsWith", "", "suffix", "equals", "", "get", "", "index", "getByte", "-deprecated_getByte", "getSize", "getSize$okio", "hex", "hmac", "key", "hmac$okio", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "pos", "internalGet$okio", "lastIndexOf", "md5", "rangeEquals", VastIconXmlManager.OFFSET, "otherOffset", "byteCount", "readObject", "", "in", "Ljava/io/ObjectInputStream;", "sha1", "sha256", "sha512", "-deprecated_size", "startsWith", "prefix", "string", "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toString", "write", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeObject", "Ljava/io/ObjectOutputStream;", "Companion", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/i.class */
public class i implements Serializable, Comparable<i> {

    /* renamed from: a  reason: collision with root package name */
    transient String f6298a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f6299b;
    private transient int e;

    /* renamed from: d  reason: collision with root package name */
    public static final a f6297d = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public static final i f6296c = new i(new byte[0]);

    @Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\fJ\u001d\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\u0010J\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u0012J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0002\b\u0016J\u0014\u0010\u0013\u001a\u00020\u00042\n\u0010\u0017\u001a\u00020\u0018\"\u00020\u0019H\u0007J%\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u0016J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b!J\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\tH\u0007J\f\u0010\u000b\u001a\u00020\u0004*\u00020\tH\u0007J\u001b\u0010\"\u001a\u00020\u0004*\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\rJ\f\u0010\u0011\u001a\u00020\u0004*\u00020\tH\u0007J\u0019\u0010#\u001a\u00020\u0004*\u00020 2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u001eJ\u0011\u0010$\u001a\u00020\u0004*\u00020\u0015H\u0007¢\u0006\u0002\b\u0013J%\u0010$\u001a\u00020\u0004*\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u0013R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006%"}, d2 = {"Lokio/ByteString$Companion;", "", "()V", "EMPTY", "Lokio/ByteString;", "serialVersionUID", "", "decodeBase64", "string", "", "-deprecated_decodeBase64", "decodeHex", "-deprecated_decodeHex", "encodeString", "charset", "Ljava/nio/charset/Charset;", "-deprecated_encodeString", "encodeUtf8", "-deprecated_encodeUtf8", "of", "buffer", "Ljava/nio/ByteBuffer;", "-deprecated_of", "data", "", "", "array", VastIconXmlManager.OFFSET, "", "byteCount", "read", "inputstream", "Ljava/io/InputStream;", "-deprecated_read", "encode", "readByteString", "toByteString", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/i$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static i a(String encodeUtf8) {
            p.d(encodeUtf8, "$this$encodeUtf8");
            i iVar = new i(b.a(encodeUtf8));
            iVar.f6298a = encodeUtf8;
            return iVar;
        }

        public static i a(byte[] toByteString, int i, int i2) {
            p.d(toByteString, "$this$toByteString");
            c.a(toByteString.length, 0L, i2);
            return new i(kotlin.a.i.a(toByteString, 0, i2 + 0));
        }

        public static i b(String decodeBase64) {
            p.d(decodeBase64, "$this$decodeBase64");
            byte[] a2 = c.a.a(decodeBase64);
            if (a2 != null) {
                return new i(a2);
            }
            return null;
        }

        public static i c(String decodeHex) {
            p.d(decodeHex, "$this$decodeHex");
            if (decodeHex.length() % 2 == 0) {
                int length = decodeHex.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) ((b.a(decodeHex.charAt(i2)) << 4) + b.a(decodeHex.charAt(i2 + 1)));
                }
                return new i(bArr);
            }
            throw new IllegalArgumentException("Unexpected hex string: ".concat(String.valueOf(decodeHex)).toString());
        }
    }

    public i(byte[] data) {
        p.d(data, "data");
        this.f6299b = data;
    }

    public static final i a(byte[] bArr, int i) {
        return a.a(bArr, 0, i);
    }

    public static final i b(String str) {
        return a.a(str);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        int readInt = objectInputStream.readInt();
        ObjectInputStream readByteString = objectInputStream;
        p.d(readByteString, "$this$readByteString");
        int i = 0;
        if (readInt >= 0) {
            byte[] bArr = new byte[readInt];
            while (i < readInt) {
                int read = readByteString.read(bArr, i, readInt - i);
                if (read != -1) {
                    i += read;
                } else {
                    throw new EOFException();
                }
            }
            i iVar = new i(bArr);
            Field field = i.class.getDeclaredField(com.google.api.client.googleapis.notifications.b.f31754a);
            p.b(field, "field");
            field.setAccessible(true);
            field.set(this, iVar.f6299b);
            return;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(readInt)).toString());
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f6299b.length);
        objectOutputStream.write(this.f6299b);
    }

    public final int a() {
        return this.e;
    }

    public i a(String algorithm) {
        p.d(algorithm, "algorithm");
        byte[] digest = MessageDigest.getInstance(algorithm).digest(this.f6299b);
        p.b(digest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new i(digest);
    }

    public final void a(int i) {
        this.e = i;
    }

    public void a(f buffer, int i) {
        p.d(buffer, "buffer");
        b.a(this, buffer, 0, i);
    }

    public boolean a(int i, byte[] other, int i2, int i3) {
        p.d(other, "other");
        if (i < 0) {
            return false;
        }
        byte[] bArr = this.f6299b;
        return i <= bArr.length - i3 && i2 >= 0 && i2 <= other.length - i3 && c.a(bArr, i, other, i2, i3);
    }

    public final boolean a(i prefix) {
        p.d(prefix, "prefix");
        return a(prefix, prefix.f());
    }

    public boolean a(i other, int i) {
        p.d(other, "other");
        return other.a(0, this.f6299b, 0, i);
    }

    public byte b(int i) {
        return this.f6299b[i];
    }

    public final String b() {
        String str = this.f6298a;
        String str2 = str;
        if (str == null) {
            str2 = b.a(h());
            this.f6298a = str2;
        }
        return str2;
    }

    public String c() {
        return c.a.a(this.f6299b);
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(i iVar) {
        i other = iVar;
        p.d(other, "other");
        int f = f();
        int f2 = other.f();
        int min = Math.min(f, f2);
        for (int i = 0; i < min; i++) {
            int b2 = b(i) & 255;
            int b3 = other.b(i) & 255;
            if (b2 != b3) {
                return b2 < b3 ? -1 : 1;
            }
        }
        if (f == f2) {
            return 0;
        }
        return f < f2 ? -1 : 1;
    }

    public String d() {
        byte[] bArr = this.f6299b;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            cArr[i] = b.a()[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = b.a()[b2 & 15];
        }
        return new String(cArr);
    }

    public i e() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f6299b;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 < 65 || b2 > 90) {
                i++;
            } else {
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                p.b(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b3 = copyOf[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        copyOf[i2] = (byte) (b3 + 32);
                    }
                }
                return new i(copyOf);
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        int f = iVar.f();
        byte[] bArr = this.f6299b;
        return f == bArr.length && iVar.a(0, bArr, 0, bArr.length);
    }

    public int f() {
        return this.f6299b.length;
    }

    public byte[] g() {
        byte[] bArr = this.f6299b;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        p.b(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    public byte[] h() {
        return this.f6299b;
    }

    public int hashCode() {
        int i = this.e;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f6299b);
        this.e = hashCode;
        return hashCode;
    }

    public String toString() {
        String a2;
        String a3;
        String a4;
        byte[] bArr = this.f6299b;
        boolean z = true;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int a5 = b.a(bArr);
        if (a5 != -1) {
            String b2 = b();
            Objects.requireNonNull(b2, "null cannot be cast to non-null type java.lang.String");
            String substring = b2.substring(0, a5);
            p.b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            a2 = kotlin.h.p.a(substring, "\\", "\\\\", false);
            a3 = kotlin.h.p.a(a2, StringUtils.LF, "\\n", false);
            a4 = kotlin.h.p.a(a3, StringUtils.CR, "\\r", false);
            if (a5 < b2.length()) {
                return "[size=" + this.f6299b.length + " text=" + a4 + "…]";
            }
            return "[text=" + a4 + ']';
        } else if (this.f6299b.length <= 64) {
            return "[hex=" + d() + ']';
        } else {
            StringBuilder sb = new StringBuilder("[size=");
            sb.append(this.f6299b.length);
            sb.append(" hex=");
            byte[] bArr2 = this.f6299b;
            if (64 > bArr2.length) {
                z = false;
            }
            if (z) {
                sb.append((64 == bArr2.length ? this : new i(kotlin.a.i.a(this.f6299b, 0, 64))).d());
                sb.append("…]");
                return sb.toString();
            }
            throw new IllegalArgumentException(("endIndex > length(" + this.f6299b.length + ')').toString());
        }
    }
}
