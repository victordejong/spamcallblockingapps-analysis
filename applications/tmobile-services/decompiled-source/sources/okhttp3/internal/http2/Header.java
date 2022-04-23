package okhttp3.internal.http2;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\b\u0018�� \u001b:\u0001\u001bB\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0011\u0012\u0006\u0010\u0006\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0018B\u0019\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0011¢\u0006\u0004\b\u0017\u0010\u0019B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0017\u0010\u001aJ\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0003J$\u0010\u0007\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tHÖ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\u00020\u000e8\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0005\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0016R\u0016\u0010\u0006\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0016¨\u0006\u001c"}, d2 = {"Lokhttp3/internal/http2/Header;", "Lokio/ByteString;", "component1", "()Lokio/ByteString;", "component2", "name", FirebaseAnalytics.Param.VALUE, "copy", "(Lokio/ByteString;Lokio/ByteString;)Lokhttp3/internal/http2/Header;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "hpackSize", "I", "Lokio/ByteString;", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "(Lokio/ByteString;Ljava/lang/String;)V", "(Lokio/ByteString;Lokio/ByteString;)V", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Header.class */
public final class Header {
    @JvmField
    public final int hpackSize;
    @JvmField
    @NotNull
    public final ByteString name;
    @JvmField
    @NotNull
    public final ByteString value;
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final ByteString PSEUDO_PREFIX = ByteString.f24137j.m163d(":");
    @NotNull
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    @JvmField
    @NotNull
    public static final ByteString RESPONSE_STATUS = ByteString.f24137j.m163d(RESPONSE_STATUS_UTF8);
    @NotNull
    public static final String TARGET_METHOD_UTF8 = ":method";
    @JvmField
    @NotNull
    public static final ByteString TARGET_METHOD = ByteString.f24137j.m163d(TARGET_METHOD_UTF8);
    @NotNull
    public static final String TARGET_PATH_UTF8 = ":path";
    @JvmField
    @NotNull
    public static final ByteString TARGET_PATH = ByteString.f24137j.m163d(TARGET_PATH_UTF8);
    @NotNull
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    @JvmField
    @NotNull
    public static final ByteString TARGET_SCHEME = ByteString.f24137j.m163d(TARGET_SCHEME_UTF8);
    @NotNull
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    @JvmField
    @NotNull
    public static final ByteString TARGET_AUTHORITY = ByteString.f24137j.m163d(TARGET_AUTHORITY_UTF8);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0003R\u0016\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0003R\u0016\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0007R\u0016\u0010\f\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0003R\u0016\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0016\u0010\u000e\u001a\u00020\u00018\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0003R\u0016\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0007¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/http2/Header$Companion;", "Lokio/ByteString;", "PSEUDO_PREFIX", "Lokio/ByteString;", "RESPONSE_STATUS", "", "RESPONSE_STATUS_UTF8", "Ljava/lang/String;", "TARGET_AUTHORITY", "TARGET_AUTHORITY_UTF8", "TARGET_METHOD", "TARGET_METHOD_UTF8", "TARGET_PATH", "TARGET_PATH_UTF8", "TARGET_SCHEME", "TARGET_SCHEME_UTF8", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Header$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(@NotNull String name, @NotNull String value) {
        this(ByteString.f24137j.m163d(name), ByteString.f24137j.m163d(value));
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(value, "value");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(@NotNull ByteString name, @NotNull String value) {
        this(name, ByteString.f24137j.m163d(value));
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(value, "value");
    }

    public Header(@NotNull ByteString name, @NotNull ByteString value) {
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(value, "value");
        this.name = name;
        this.value = value;
        this.hpackSize = name.m178C() + 32 + this.value.m178C();
    }

    public static /* synthetic */ Header copy$default(Header header, ByteString byteString, ByteString byteString2, int i, Object obj) {
        if ((i & 1) != 0) {
            byteString = header.name;
        }
        if ((i & 2) != 0) {
            byteString2 = header.value;
        }
        return header.copy(byteString, byteString2);
    }

    @NotNull
    public final ByteString component1() {
        return this.name;
    }

    @NotNull
    public final ByteString component2() {
        return this.value;
    }

    @NotNull
    public final Header copy(@NotNull ByteString name, @NotNull ByteString value) {
        Intrinsics.m1830e(name, "name");
        Intrinsics.m1830e(value, "value");
        return new Header(name, value);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return Intrinsics.m1834a(this.name, header.name) && Intrinsics.m1834a(this.value, header.value);
    }

    public int hashCode() {
        ByteString byteString = this.name;
        int i = 0;
        int hashCode = byteString != null ? byteString.hashCode() : 0;
        ByteString byteString2 = this.value;
        if (byteString2 != null) {
            i = byteString2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    @NotNull
    public String toString() {
        return this.name.m176F() + ": " + this.value.m176F();
    }
}
