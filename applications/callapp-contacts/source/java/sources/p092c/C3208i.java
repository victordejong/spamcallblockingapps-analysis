package p092c;

import com.google.api.client.googleapis.notifications.C15291b;
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
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p532h.C18425p;
import org.apache.commons.lang3.StringUtils;
import p092c.p093a.C3185b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0005\n\u0002\b\u001a\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018�� Z2\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0001ZB\u000f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0016J\u0011\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��H\u0096\u0002J\u0015\u0010\u001b\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u001dJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020��J\u0013\u0010!\u001a\u00020\u001f2\b\u0010\u001a\u001a\u0004\u0018\u00010\"H\u0096\u0002J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b&J\u0015\u0010&\u001a\u00020$2\u0006\u0010%\u001a\u00020\tH\u0007¢\u0006\u0002\b'J\r\u0010(\u001a\u00020\tH\u0010¢\u0006\u0002\b)J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010*\u001a\u00020\u0010H\u0016J\u001d\u0010+\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010,\u001a\u00020��H\u0010¢\u0006\u0002\b-J\u0010\u0010.\u001a\u00020��2\u0006\u0010,\u001a\u00020��H\u0016J\u0010\u0010/\u001a\u00020��2\u0006\u0010,\u001a\u00020��H\u0016J\u0010\u00100\u001a\u00020��2\u0006\u0010,\u001a\u00020��H\u0016J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00101\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��2\b\b\u0002\u00102\u001a\u00020\tH\u0007J\r\u00103\u001a\u00020\u0004H\u0010¢\u0006\u0002\b4J\u0015\u00105\u001a\u00020$2\u0006\u00106\u001a\u00020\tH\u0010¢\u0006\u0002\b7J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\tH\u0017J\u001a\u00108\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��2\b\b\u0002\u00102\u001a\u00020\tH\u0007J\b\u00109\u001a\u00020��H\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J(\u0010:\u001a\u00020\u001f2\u0006\u0010;\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020��2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0016J\u0010\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020AH\u0002J\b\u0010B\u001a\u00020��H\u0016J\b\u0010C\u001a\u00020��H\u0016J\b\u0010D\u001a\u00020��H\u0016J\r\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0002\bEJ\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020\u0004J\u000e\u0010F\u001a\u00020\u001f2\u0006\u0010G\u001a\u00020��J\u0010\u0010H\u001a\u00020\u00102\u0006\u0010I\u001a\u00020JH\u0016J\u001c\u0010K\u001a\u00020��2\b\b\u0002\u0010L\u001a\u00020\t2\b\b\u0002\u0010M\u001a\u00020\tH\u0017J\b\u0010N\u001a\u00020��H\u0016J\b\u0010O\u001a\u00020��H\u0016J\b\u0010P\u001a\u00020\u0004H\u0016J\b\u0010Q\u001a\u00020\u0010H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010R\u001a\u00020?2\u0006\u0010S\u001a\u00020TH\u0016J%\u0010R\u001a\u00020?2\u0006\u0010U\u001a\u00020V2\u0006\u0010;\u001a\u00020\t2\u0006\u0010=\u001a\u00020\tH\u0010¢\u0006\u0002\bWJ\u0010\u0010X\u001a\u00020?2\u0006\u0010S\u001a\u00020YH\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006["}, m4298d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "data", "", "([B)V", "getData$okio", "()[B", "hashCode", "", "getHashCode$okio", "()I", "setHashCode$okio", "(I)V", "size", "utf8", "", "getUtf8$okio", "()Ljava/lang/String;", "setUtf8$okio", "(Ljava/lang/String;)V", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "base64Url", "compareTo", "other", "digest", "algorithm", "digest$okio", "endsWith", "", "suffix", "equals", "", "get", "", "index", "getByte", "-deprecated_getByte", "getSize", "getSize$okio", "hex", "hmac", "key", "hmac$okio", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "pos", "internalGet$okio", "lastIndexOf", "md5", "rangeEquals", VastIconXmlManager.OFFSET, "otherOffset", "byteCount", "readObject", "", "in", "Ljava/io/ObjectInputStream;", "sha1", "sha256", "sha512", "-deprecated_size", "startsWith", "prefix", "string", "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toString", "write", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeObject", "Ljava/io/ObjectOutputStream;", "Companion", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.i */
/* loaded from: classes-dex2jar.jar:c/i.class */
public class C3208i implements Serializable, Comparable<C3208i> {

    /* renamed from: a */
    transient String f11584a;

    /* renamed from: b */
    public final byte[] f11585b;

    /* renamed from: e */
    private transient int f11586e;

    /* renamed from: d */
    public static final C3209a f11583d = new C3209a(null);

    /* renamed from: c */
    public static final C3208i f11582c = new C3208i(new byte[0]);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\fJ\u001d\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\u0010J\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u0012J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0002\b\u0016J\u0014\u0010\u0013\u001a\u00020\u00042\n\u0010\u0017\u001a\u00020\u0018\"\u00020\u0019H\u0007J%\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u0016J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b!J\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\tH\u0007J\f\u0010\u000b\u001a\u00020\u0004*\u00020\tH\u0007J\u001b\u0010\"\u001a\u00020\u0004*\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\rJ\f\u0010\u0011\u001a\u00020\u0004*\u00020\tH\u0007J\u0019\u0010#\u001a\u00020\u0004*\u00020 2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u001eJ\u0011\u0010$\u001a\u00020\u0004*\u00020\u0015H\u0007¢\u0006\u0002\b\u0013J%\u0010$\u001a\u00020\u0004*\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u0013R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006%"}, m4298d2 = {"Lokio/ByteString$Companion;", "", "()V", "EMPTY", "Lokio/ByteString;", "serialVersionUID", "", "decodeBase64", "string", "", "-deprecated_decodeBase64", "decodeHex", "-deprecated_decodeHex", "encodeString", "charset", "Ljava/nio/charset/Charset;", "-deprecated_encodeString", "encodeUtf8", "-deprecated_encodeUtf8", "of", "buffer", "Ljava/nio/ByteBuffer;", "-deprecated_of", "data", "", "", "array", VastIconXmlManager.OFFSET, "", "byteCount", "read", "inputstream", "Ljava/io/InputStream;", "-deprecated_read", "encode", "readByteString", "toByteString", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.i$a */
    /* loaded from: classes-dex2jar.jar:c/i$a.class */
    public static final class C3209a {
        private C3209a() {
        }

        public /* synthetic */ C3209a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static C3208i m39170a(String encodeUtf8) {
            C18524p.m3840d(encodeUtf8, "$this$encodeUtf8");
            C3208i c3208i = new C3208i(C3194b.m39230a(encodeUtf8));
            c3208i.f11584a = encodeUtf8;
            return c3208i;
        }

        /* renamed from: a */
        public static C3208i m39168a(byte[] toByteString, int i, int i2) {
            C18524p.m3840d(toByteString, "$this$toByteString");
            C3195c.m39226a(toByteString.length, 0L, i2);
            return new C3208i(C18273i.m4225a(toByteString, 0, i2 + 0));
        }

        /* renamed from: b */
        public static C3208i m39167b(String decodeBase64) {
            C18524p.m3840d(decodeBase64, "$this$decodeBase64");
            byte[] m39245a = C3183a.m39245a(decodeBase64);
            if (m39245a != null) {
                return new C3208i(m39245a);
            }
            return null;
        }

        /* renamed from: c */
        public static C3208i m39166c(String decodeHex) {
            C18524p.m3840d(decodeHex, "$this$decodeHex");
            if (decodeHex.length() % 2 == 0) {
                int length = decodeHex.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) ((C3185b.m39237a(decodeHex.charAt(i2)) << 4) + C3185b.m39237a(decodeHex.charAt(i2 + 1)));
                }
                return new C3208i(bArr);
            }
            throw new IllegalArgumentException("Unexpected hex string: ".concat(String.valueOf(decodeHex)).toString());
        }
    }

    public C3208i(byte[] data) {
        C18524p.m3840d(data, "data");
        this.f11585b = data;
    }

    /* renamed from: a */
    public static final C3208i m39180a(byte[] bArr, int i) {
        return C3209a.m39168a(bArr, 0, i);
    }

    /* renamed from: b */
    public static final C3208i m39177b(String str) {
        return C3209a.m39170a(str);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        int readInt = objectInputStream.readInt();
        ObjectInputStream readByteString = objectInputStream;
        C18524p.m3840d(readByteString, "$this$readByteString");
        if (readInt >= 0) {
            byte[] bArr = new byte[readInt];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= readInt) {
                    C3208i c3208i = new C3208i(bArr);
                    Field field = C3208i.class.getDeclaredField(C15291b.f55271a);
                    C18524p.m3843b(field, "field");
                    field.setAccessible(true);
                    field.set(this, c3208i.f11585b);
                    return;
                }
                int read = readByteString.read(bArr, i2, readInt - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i = i2 + read;
            }
        } else {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(readInt)).toString());
        }
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f11585b.length);
        objectOutputStream.write(this.f11585b);
    }

    /* renamed from: a */
    public final int m39187a() {
        return this.f11586e;
    }

    /* renamed from: a */
    public C3208i mo39181a(String algorithm) {
        C18524p.m3840d(algorithm, "algorithm");
        byte[] digest = MessageDigest.getInstance(algorithm).digest(this.f11585b);
        C18524p.m3843b(digest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new C3208i(digest);
    }

    /* renamed from: a */
    public final void m39186a(int i) {
        this.f11586e = i;
    }

    /* renamed from: a */
    public void mo39184a(C3202f buffer, int i) {
        C18524p.m3840d(buffer, "buffer");
        C3185b.m39236a(this, buffer, 0, i);
    }

    /* renamed from: a */
    public boolean mo39185a(int i, byte[] other, int i2, int i3) {
        C18524p.m3840d(other, "other");
        if (i >= 0) {
            byte[] bArr = this.f11585b;
            return i <= bArr.length - i3 && i2 >= 0 && i2 <= other.length - i3 && C3195c.m39225a(bArr, i, other, i2, i3);
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m39183a(C3208i prefix) {
        C18524p.m3840d(prefix, "prefix");
        return mo39182a(prefix, prefix.mo39173f());
    }

    /* renamed from: a */
    public boolean mo39182a(C3208i other, int i) {
        C18524p.m3840d(other, "other");
        return other.mo39185a(0, this.f11585b, 0, i);
    }

    /* renamed from: b */
    public byte mo39178b(int i) {
        return this.f11585b[i];
    }

    /* renamed from: b */
    public final String m39179b() {
        String str = this.f11584a;
        String str2 = str;
        if (str == null) {
            str2 = C3194b.m39229a(mo39171h());
            this.f11584a = str2;
        }
        return str2;
    }

    /* renamed from: c */
    public String mo39176c() {
        return C3183a.m39244a(this.f11585b);
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(C3208i c3208i) {
        C3208i other = c3208i;
        C18524p.m3840d(other, "other");
        int mo39173f = mo39173f();
        int mo39173f2 = other.mo39173f();
        int min = Math.min(mo39173f, mo39173f2);
        for (int i = 0; i < min; i++) {
            int mo39178b = mo39178b(i) & 255;
            int mo39178b2 = other.mo39178b(i) & 255;
            if (mo39178b != mo39178b2) {
                return mo39178b < mo39178b2 ? -1 : 1;
            }
        }
        if (mo39173f == mo39173f2) {
            return 0;
        }
        return mo39173f < mo39173f2 ? -1 : 1;
    }

    /* renamed from: d */
    public String mo39175d() {
        byte[] bArr = this.f11585b;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            cArr[i] = C3185b.m39238a()[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = C3185b.m39238a()[b & 15];
        }
        return new String(cArr);
    }

    /* renamed from: e */
    public C3208i mo39174e() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f11585b;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                    C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, size)");
                    copyOf[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                        byte b2 = copyOf[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            copyOf[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new C3208i(copyOf);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3208i)) {
            return false;
        }
        C3208i c3208i = (C3208i) obj;
        int mo39173f = c3208i.mo39173f();
        byte[] bArr = this.f11585b;
        return mo39173f == bArr.length && c3208i.mo39185a(0, bArr, 0, bArr.length);
    }

    /* renamed from: f */
    public int mo39173f() {
        return this.f11585b.length;
    }

    /* renamed from: g */
    public byte[] mo39172g() {
        byte[] bArr = this.f11585b;
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    /* renamed from: h */
    public byte[] mo39171h() {
        return this.f11585b;
    }

    public int hashCode() {
        int i = this.f11586e;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f11585b);
        this.f11586e = hashCode;
        return hashCode;
    }

    public String toString() {
        String a;
        String a2;
        String a3;
        byte[] bArr = this.f11585b;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int m39235a = C3185b.m39235a(bArr);
        if (m39235a == -1) {
            if (this.f11585b.length <= 64) {
                return "[hex=" + mo39175d() + ']';
            }
            StringBuilder sb = new StringBuilder("[size=");
            sb.append(this.f11585b.length);
            sb.append(" hex=");
            byte[] bArr2 = this.f11585b;
            if (64 <= bArr2.length) {
                sb.append((64 == bArr2.length ? this : new C3208i(C18273i.m4225a(this.f11585b, 0, 64))).mo39175d());
                sb.append("…]");
                return sb.toString();
            }
            throw new IllegalArgumentException(("endIndex > length(" + this.f11585b.length + ')').toString());
        }
        String m39179b = m39179b();
        Objects.requireNonNull(m39179b, "null cannot be cast to non-null type java.lang.String");
        String substring = m39179b.substring(0, m39235a);
        C18524p.m3843b(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        a = C18425p.m3958a(substring, "\\", "\\\\", false);
        a2 = C18425p.m3958a(a, StringUtils.f67179LF, "\\n", false);
        a3 = C18425p.m3958a(a2, StringUtils.f67178CR, "\\r", false);
        if (m39235a >= m39179b.length()) {
            return "[text=" + a3 + ']';
        }
        return "[size=" + this.f11585b.length + " text=" + a3 + "…]";
    }
}
