package okio;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.internal.ByteStringKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0012\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b$\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0016\u0018�� r2\u00020\u00012\u00020\u0002:\u0001rB\u0011\b��\u0012\u0006\u0010e\u001a\u00020\u0012¢\u0006\u0004\bp\u0010qJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\bJ\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u0006H\u0010¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020��¢\u0006\u0004\b\u0015\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00142\b\u0010\n\u001a\u0004\u0018\u00010\u0018H\u0096\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001f\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u000bH\u0087\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u000bH\u0007¢\u0006\u0004\b \u0010\u001eJ\u000f\u0010#\u001a\u00020\u000bH\u0010¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020\u000bH\u0016¢\u0006\u0004\b$\u0010\"J\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010\bJ\u001f\u0010)\u001a\u00020��2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010&\u001a\u00020��H\u0010¢\u0006\u0004\b'\u0010(J\u0017\u0010*\u001a\u00020��2\u0006\u0010&\u001a\u00020��H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020��2\u0006\u0010&\u001a\u00020��H\u0016¢\u0006\u0004\b,\u0010+J\u0017\u0010-\u001a\u00020��2\u0006\u0010&\u001a\u00020��H\u0016¢\u0006\u0004\b-\u0010+J!\u0010/\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00122\b\b\u0002\u0010.\u001a\u00020\u000bH\u0017¢\u0006\u0004\b/\u00100J!\u0010/\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020��2\b\b\u0002\u0010.\u001a\u00020\u000bH\u0007¢\u0006\u0004\b/\u00101J\u000f\u00104\u001a\u00020\u0012H\u0010¢\u0006\u0004\b2\u00103J\u0017\u00107\u001a\u00020\u001c2\u0006\u00105\u001a\u00020\u000bH\u0010¢\u0006\u0004\b6\u0010\u001eJ!\u00108\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00122\b\b\u0002\u0010.\u001a\u00020\u000bH\u0017¢\u0006\u0004\b8\u00100J!\u00108\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020��2\b\b\u0002\u0010.\u001a\u00020\u000bH\u0007¢\u0006\u0004\b8\u00101J\u000f\u00109\u001a\u00020��H\u0016¢\u0006\u0004\b9\u0010:J/\u0010>\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00122\u0006\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000bH\u0016¢\u0006\u0004\b>\u0010?J/\u0010>\u001a\u00020\u00142\u0006\u0010;\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020��2\u0006\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000bH\u0016¢\u0006\u0004\b>\u0010@J\u0017\u0010D\u001a\u00020C2\u0006\u0010B\u001a\u00020AH\u0002¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020��H\u0016¢\u0006\u0004\bF\u0010:J\u000f\u0010G\u001a\u00020��H\u0016¢\u0006\u0004\bG\u0010:J\u000f\u0010H\u001a\u00020��H\u0016¢\u0006\u0004\bH\u0010:J\u000f\u0010J\u001a\u00020\u000bH\u0007¢\u0006\u0004\bI\u0010\"J\u0015\u0010L\u001a\u00020\u00142\u0006\u0010K\u001a\u00020\u0012¢\u0006\u0004\bL\u0010\u0016J\u0015\u0010L\u001a\u00020\u00142\u0006\u0010K\u001a\u00020��¢\u0006\u0004\bL\u0010\u0017J\u0017\u0010O\u001a\u00020\u00062\u0006\u0010N\u001a\u00020MH\u0016¢\u0006\u0004\bO\u0010PJ#\u0010S\u001a\u00020��2\b\b\u0002\u0010Q\u001a\u00020\u000b2\b\b\u0002\u0010R\u001a\u00020\u000bH\u0017¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020��H\u0016¢\u0006\u0004\bU\u0010:J\u000f\u0010V\u001a\u00020��H\u0016¢\u0006\u0004\bV\u0010:J\u000f\u0010W\u001a\u00020\u0012H\u0016¢\u0006\u0004\bW\u00103J\u000f\u0010X\u001a\u00020\u0006H\u0016¢\u0006\u0004\bX\u0010\bJ\u000f\u0010Y\u001a\u00020\u0006H\u0016¢\u0006\u0004\bY\u0010\bJ\u0017\u0010\\\u001a\u00020C2\u0006\u0010[\u001a\u00020ZH\u0016¢\u0006\u0004\b\\\u0010]J'\u0010\\\u001a\u00020C2\u0006\u0010_\u001a\u00020^2\u0006\u0010;\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020\u000bH\u0010¢\u0006\u0004\b`\u0010aJ\u0017\u0010c\u001a\u00020C2\u0006\u0010[\u001a\u00020bH\u0002¢\u0006\u0004\bc\u0010dR\u001c\u0010e\u001a\u00020\u00128��@��X\u0080\u0004¢\u0006\f\n\u0004\be\u0010f\u001a\u0004\bg\u00103R\"\u0010$\u001a\u00020\u000b8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b$\u0010h\u001a\u0004\bi\u0010\"\"\u0004\bj\u0010kR\u0013\u0010J\u001a\u00020\u000b8G@\u0006¢\u0006\u0006\u001a\u0004\bJ\u0010\"R$\u0010Y\u001a\u0004\u0018\u00010\u00068��@��X\u0080\u000e¢\u0006\u0012\n\u0004\bY\u0010l\u001a\u0004\bm\u0010\b\"\u0004\bn\u0010o¨\u0006s"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "Ljava/lang/Comparable;", "Ljava/nio/ByteBuffer;", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "", "base64", "()Ljava/lang/String;", "base64Url", "other", "", "compareTo", "(Lokio/ByteString;)I", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "", "suffix", "", "endsWith", "([B)Z", "(Lokio/ByteString;)Z", "", "equals", "(Ljava/lang/Object;)Z", FirebaseAnalytics.Param.INDEX, "", "getByte", "(I)B", "get", "-deprecated_getByte", "getSize$okio", "()I", "getSize", "hashCode", "hex", "key", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "fromIndex", "indexOf", "([BI)I", "(Lokio/ByteString;I)I", "internalArray$okio", "()[B", "internalArray", "pos", "internalGet$okio", "internalGet", "lastIndexOf", "md5", "()Lokio/ByteString;", "offset", "otherOffset", "byteCount", "rangeEquals", "(I[BII)Z", "(ILokio/ByteString;II)Z", "Ljava/io/ObjectInputStream;", "in", "", "readObject", "(Ljava/io/ObjectInputStream;)V", "sha1", "sha256", "sha512", "-deprecated_size", "size", "prefix", "startsWith", "Ljava/nio/charset/Charset;", "charset", "string", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "beginIndex", "endIndex", "substring", "(II)Lokio/ByteString;", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toString", "utf8", "Ljava/io/OutputStream;", "out", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", "buffer", "write$okio", "(Lokio/Buffer;II)V", "Ljava/io/ObjectOutputStream;", "writeObject", "(Ljava/io/ObjectOutputStream;)V", "data", "[B", "getData$okio", "I", "getHashCode$okio", "setHashCode$okio", "(I)V", "Ljava/lang/String;", "getUtf8$okio", "setUtf8$okio", "(Ljava/lang/String;)V", "<init>", "([B)V", "Companion", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/ByteString.class */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;

    /* renamed from: f */
    private transient int f24138f;
    @Nullable

    /* renamed from: g */
    private transient String f24139g;
    @NotNull

    /* renamed from: h */
    private final byte[] f24140h;

    /* renamed from: j */
    public static final Companion f24137j = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: i */
    public static final ByteString f24136i = new ByteString(new byte[0]);

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\u0005J\u001f\u0010\r\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u000e\u0010\u0005J\u0017\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u00032\n\u0010\u0017\u001a\u00020\u0015\"\u00020\u0016H\u0007¢\u0006\u0004\b\u0014\u0010\u0018J'\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u0012\u0010\u001dJ\u001f\u0010\"\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u001aH\u0007¢\u0006\u0004\b \u0010!J\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0003*\u00020\u0001H\u0007¢\u0006\u0004\b\u0006\u0010\u0005J\u0013\u0010\b\u001a\u00020\u0003*\u00020\u0001H\u0007¢\u0006\u0004\b\b\u0010\u0005J\u001d\u0010#\u001a\u00020\u0003*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\fJ\u0013\u0010\u000f\u001a\u00020\u0003*\u00020\u0001H\u0007¢\u0006\u0004\b\u000f\u0010\u0005J\u001b\u0010$\u001a\u00020\u0003*\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\"\u0010!J\u0013\u0010%\u001a\u00020\u0003*\u00020\u0010H\u0007¢\u0006\u0004\b\u0014\u0010\u0013J'\u0010%\u001a\u00020\u0003*\u00020\u00152\b\b\u0002\u0010\u001b\u001a\u00020\u001a2\b\b\u0002\u0010\u001c\u001a\u00020\u001aH\u0007¢\u0006\u0004\b\u0014\u0010\u001dR\u0016\u0010&\u001a\u00020\u00038\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006-"}, d2 = {"Lokio/ByteString$Companion;", "", "string", "Lokio/ByteString;", "-deprecated_decodeBase64", "(Ljava/lang/String;)Lokio/ByteString;", "decodeBase64", "-deprecated_decodeHex", "decodeHex", "Ljava/nio/charset/Charset;", "charset", "-deprecated_encodeString", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;", "encodeString", "-deprecated_encodeUtf8", "encodeUtf8", "Ljava/nio/ByteBuffer;", "buffer", "-deprecated_of", "(Ljava/nio/ByteBuffer;)Lokio/ByteString;", "of", "", "", "data", "([B)Lokio/ByteString;", "array", "", "offset", "byteCount", "([BII)Lokio/ByteString;", "Ljava/io/InputStream;", "inputstream", "-deprecated_read", "(Ljava/io/InputStream;I)Lokio/ByteString;", "read", "encode", "readByteString", "toByteString", "EMPTY", "Lokio/ByteString;", "", "serialVersionUID", "J", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/ByteString$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: f */
        public static /* synthetic */ ByteString m161f(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            return companion.m162e(bArr, i, i2);
        }

        @JvmStatic
        @Nullable
        /* renamed from: a */
        public final ByteString m166a(@NotNull String decodeBase64) {
            Intrinsics.m1830e(decodeBase64, "$this$decodeBase64");
            byte[] a = _Base64.m29a(decodeBase64);
            return a != null ? new ByteString(a) : null;
        }

        @JvmStatic
        @NotNull
        /* renamed from: b */
        public final ByteString m165b(@NotNull String decodeHex) {
            int e;
            int e2;
            Intrinsics.m1830e(decodeHex, "$this$decodeHex");
            if (decodeHex.length() % 2 == 0) {
                int length = decodeHex.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    e = ByteStringKt.m9e(decodeHex.charAt(i2));
                    e2 = ByteStringKt.m9e(decodeHex.charAt(i2 + 1));
                    bArr[i] = (byte) ((e << 4) + e2);
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(("Unexpected hex string: " + decodeHex).toString());
        }

        @JvmStatic
        @JvmName
        @NotNull
        /* renamed from: c */
        public final ByteString m164c(@NotNull String encode, @NotNull Charset charset) {
            Intrinsics.m1830e(encode, "$this$encode");
            Intrinsics.m1830e(charset, "charset");
            byte[] bytes = encode.getBytes(charset);
            Intrinsics.m1831d(bytes, "(this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        @JvmStatic
        @NotNull
        /* renamed from: d */
        public final ByteString m163d(@NotNull String encodeUtf8) {
            Intrinsics.m1830e(encodeUtf8, "$this$encodeUtf8");
            ByteString byteString = new ByteString(_Platform.m26a(encodeUtf8));
            byteString.m167z(encodeUtf8);
            return byteString;
        }

        @JvmStatic
        @JvmName
        @NotNull
        /* renamed from: e */
        public final ByteString m162e(@NotNull byte[] toByteString, int i, int i2) {
            byte[] g;
            Intrinsics.m1830e(toByteString, "$this$toByteString");
            _Util.m23b(toByteString.length, i, i2);
            g = ArraysKt___ArraysJvmKt.m2299g(toByteString, i, i2 + i);
            return new ByteString(g);
        }

        @JvmStatic
        @JvmName
        @NotNull
        /* renamed from: g */
        public final ByteString m160g(@NotNull InputStream readByteString, int i) throws IOException {
            Intrinsics.m1830e(readByteString, "$this$readByteString");
            int i2 = 0;
            if (i >= 0) {
                byte[] bArr = new byte[i];
                while (i2 < i) {
                    int read = readByteString.read(bArr, i2, i - i2);
                    if (read != -1) {
                        i2 += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(("byteCount < 0: " + i).toString());
        }
    }

    public ByteString(@NotNull byte[] data) {
        Intrinsics.m1830e(data, "data");
        this.f24140h = data;
    }

    @JvmStatic
    @NotNull
    /* renamed from: g */
    public static final ByteString m174g(@NotNull String str) {
        return f24137j.m163d(str);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString g = f24137j.m160g(objectInputStream, objectInputStream.readInt());
        Field field = ByteString.class.getDeclaredField("h");
        Intrinsics.m1831d(field, "field");
        field.setAccessible(true);
        field.set(this, g.f24140h);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.f24140h.length);
        objectOutputStream.write(this.f24140h);
    }

    @NotNull
    /* renamed from: A */
    public ByteString m180A() {
        return mo42e("SHA-1");
    }

    @NotNull
    /* renamed from: B */
    public ByteString m179B() {
        return mo42e("SHA-256");
    }

    @JvmName
    /* renamed from: C */
    public final int m178C() {
        return mo41l();
    }

    /* renamed from: D */
    public final boolean m177D(@NotNull ByteString prefix) {
        Intrinsics.m1830e(prefix, "prefix");
        return mo37w(0, prefix, 0, prefix.m178C());
    }

    @NotNull
    /* renamed from: E */
    public ByteString mo49E() {
        ByteString byteString;
        byte b;
        int i = 0;
        while (true) {
            if (i >= m172i().length) {
                byteString = this;
                break;
            }
            byte b2 = m172i()[i];
            byte b3 = (byte) 65;
            if (b2 < b3 || b2 > (b = (byte) 90)) {
                i++;
            } else {
                byte[] i2 = m172i();
                byte[] copyOf = Arrays.copyOf(i2, i2.length);
                Intrinsics.m1831d(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i] = (byte) (b2 + 32);
                for (int i3 = i + 1; i3 < copyOf.length; i3++) {
                    byte b4 = copyOf[i3];
                    if (b4 >= b3 && b4 <= b) {
                        copyOf[i3] = (byte) (b4 + 32);
                    }
                }
                byteString = new ByteString(copyOf);
            }
        }
        return byteString;
    }

    @NotNull
    /* renamed from: F */
    public String m176F() {
        String m = m170m();
        String str = m;
        if (m == null) {
            str = _Platform.m25b(mo39p());
            m167z(str);
        }
        return str;
    }

    /* renamed from: G */
    public void mo48G(@NotNull Buffer buffer, int i, int i2) {
        Intrinsics.m1830e(buffer, "buffer");
        ByteStringKt.m10d(this, buffer, i, i2);
    }

    @NotNull
    /* renamed from: a */
    public String mo43a() {
        return _Base64.m27c(m172i(), null, 1, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0062, code lost:
        if (r0 < r0) goto L_0x0065;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006b, code lost:
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004e, code lost:
        if (r0 < r0) goto L_0x0065;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int compareTo(@org.jetbrains.annotations.NotNull okio.ByteString r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "other"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r3
            int r0 = r0.m178C()
            r5 = r0
            r0 = r4
            int r0 = r0.m178C()
            r6 = r0
            r0 = r5
            r1 = r6
            int r0 = java.lang.Math.min(r0, r1)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x001e:
            r0 = r9
            r1 = r7
            if (r0 >= r1) goto L_0x0054
            r0 = r3
            r1 = r9
            byte r0 = r0.m173h(r1)
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r10 = r0
            r0 = r4
            r1 = r9
            byte r0 = r0.m173h(r1)
            r1 = 255(0xff, float:3.57E-43)
            r0 = r0 & r1
            r11 = r0
            r0 = r10
            r1 = r11
            if (r0 != r1) goto L_0x004a
            int r9 = r9 + 1
            goto L_0x001e
        L_0x004a:
            r0 = r10
            r1 = r11
            if (r0 >= r1) goto L_0x006b
            goto L_0x0065
        L_0x0054:
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L_0x0060
            r0 = r8
            r9 = r0
            goto L_0x006e
        L_0x0060:
            r0 = r5
            r1 = r6
            if (r0 >= r1) goto L_0x006b
        L_0x0065:
            r0 = -1
            r9 = r0
            goto L_0x006e
        L_0x006b:
            r0 = 1
            r9 = r0
        L_0x006e:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(okio.ByteString):int");
    }

    @NotNull
    /* renamed from: e */
    public ByteString mo42e(@NotNull String algorithm) {
        Intrinsics.m1830e(algorithm, "algorithm");
        byte[] digest = MessageDigest.getInstance(algorithm).digest(this.f24140h);
        Intrinsics.m1831d(digest, "MessageDigest.getInstance(algorithm).digest(data)");
        return new ByteString(digest);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        if (r0.mo36x(0, m172i(), 0, m172i().length) != false) goto L_0x0039;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L_0x000a
            goto L_0x0039
        L_0x000a:
            r0 = r7
            boolean r0 = r0 instanceof okio.ByteString
            if (r0 == 0) goto L_0x0037
            r0 = r7
            okio.ByteString r0 = (okio.ByteString) r0
            r7 = r0
            r0 = r7
            int r0 = r0.m178C()
            r1 = r6
            byte[] r1 = r1.m172i()
            int r1 = r1.length
            if (r0 != r1) goto L_0x0037
            r0 = r7
            r1 = 0
            r2 = r6
            byte[] r2 = r2.m172i()
            r3 = 0
            r4 = r6
            byte[] r4 = r4.m172i()
            int r4 = r4.length
            boolean r0 = r0.mo36x(r1, r2, r3, r4)
            if (r0 == 0) goto L_0x0037
            goto L_0x0039
        L_0x0037:
            r0 = 0
            r8 = r0
        L_0x0039:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.equals(java.lang.Object):boolean");
    }

    @JvmName
    /* renamed from: h */
    public final byte m173h(int i) {
        return mo38q(i);
    }

    public int hashCode() {
        int k = m171k();
        if (k == 0) {
            k = Arrays.hashCode(m172i());
            m168y(k);
        }
        return k;
    }

    @NotNull
    /* renamed from: i */
    public final byte[] m172i() {
        return this.f24140h;
    }

    /* renamed from: k */
    public final int m171k() {
        return this.f24138f;
    }

    /* renamed from: l */
    public int mo41l() {
        return m172i().length;
    }

    @Nullable
    /* renamed from: m */
    public final String m170m() {
        return this.f24139g;
    }

    @NotNull
    /* renamed from: o */
    public String mo40o() {
        byte[] i;
        char[] cArr = new char[m172i().length * 2];
        int i2 = 0;
        for (byte b : m172i()) {
            int i3 = i2 + 1;
            cArr[i2] = ByteStringKt.m8f()[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = ByteStringKt.m8f()[b & 15];
        }
        return new String(cArr);
    }

    @NotNull
    /* renamed from: p */
    public byte[] mo39p() {
        return m172i();
    }

    /* renamed from: q */
    public byte mo38q(int i) {
        return m172i()[i];
    }

    @NotNull
    /* renamed from: t */
    public ByteString m169t() {
        return mo42e("MD5");
    }

    @NotNull
    public String toString() {
        String str;
        int c;
        String y;
        String y2;
        String y3;
        ByteString byteString;
        byte[] g;
        boolean z = true;
        if (m172i().length == 0) {
            str = "[size=0]";
        } else {
            c = ByteStringKt.m11c(m172i(), 64);
            if (c != -1) {
                String F = m176F();
                if (F != null) {
                    String substring = F.substring(0, c);
                    Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    y = StringsKt__StringsJVMKt.m1478y(substring, "\\", "\\\\", false, 4, null);
                    y2 = StringsKt__StringsJVMKt.m1478y(y, "\n", "\\n", false, 4, null);
                    y3 = StringsKt__StringsJVMKt.m1478y(y2, "\r", "\\r", false, 4, null);
                    if (c < F.length()) {
                        str = "[size=" + m172i().length + " text=" + y3 + "…]";
                    } else {
                        str = "[text=" + y3 + ']';
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            } else if (m172i().length <= 64) {
                str = "[hex=" + mo40o() + ']';
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("[size=");
                sb.append(m172i().length);
                sb.append(" hex=");
                if (64 > m172i().length) {
                    z = false;
                }
                if (z) {
                    if (64 == m172i().length) {
                        byteString = this;
                    } else {
                        g = ArraysKt___ArraysJvmKt.m2299g(m172i(), 0, 64);
                        byteString = new ByteString(g);
                    }
                    sb.append(byteString.mo40o());
                    sb.append("…]");
                    str = sb.toString();
                } else {
                    throw new IllegalArgumentException(("endIndex > length(" + m172i().length + ')').toString());
                }
            }
        }
        return str;
    }

    /* renamed from: w */
    public boolean mo37w(int i, @NotNull ByteString other, int i2, int i3) {
        Intrinsics.m1830e(other, "other");
        return other.mo36x(i2, m172i(), i, i3);
    }

    /* renamed from: x */
    public boolean mo36x(int i, @NotNull byte[] other, int i2, int i3) {
        Intrinsics.m1830e(other, "other");
        return i >= 0 && i <= m172i().length - i3 && i2 >= 0 && i2 <= other.length - i3 && _Util.m24a(m172i(), i, other, i2, i3);
    }

    /* renamed from: y */
    public final void m168y(int i) {
        this.f24138f = i;
    }

    /* renamed from: z */
    public final void m167z(@Nullable String str) {
        this.f24139g = str;
    }
}
