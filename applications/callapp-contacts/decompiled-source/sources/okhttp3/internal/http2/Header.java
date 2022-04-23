package okhttp3.internal.http2;

import c.i;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0004\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000b\u001a\u00020\u0006HÆ\u0003J\t\u0010\f\u001a\u00020\u0006HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00062\b\b\u0002\u0010\u0004\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\nHÖ\u0001J\b\u0010\u0012\u001a\u00020\u0003H\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/http2/Header;", "", "name", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "Lokio/ByteString;", "(Lokio/ByteString;Ljava/lang/String;)V", "(Lokio/ByteString;Lokio/ByteString;)V", "hpackSize", "", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Header.class */
public final class Header {
    public final int hpackSize;
    public final i name;
    public final i value;
    public static final Companion Companion = new Companion(null);
    public static final i PSEUDO_PREFIX = i.a.a(":");
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final i RESPONSE_STATUS = i.a.a(RESPONSE_STATUS_UTF8);
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final i TARGET_METHOD = i.a.a(TARGET_METHOD_UTF8);
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final i TARGET_PATH = i.a.a(TARGET_PATH_UTF8);
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public static final i TARGET_SCHEME = i.a.a(TARGET_SCHEME_UTF8);
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final i TARGET_AUTHORITY = i.a.a(TARGET_AUTHORITY_UTF8);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http2/Header$Companion;", "", "()V", "PSEUDO_PREFIX", "Lokio/ByteString;", "RESPONSE_STATUS", "RESPONSE_STATUS_UTF8", "", "TARGET_AUTHORITY", "TARGET_AUTHORITY_UTF8", "TARGET_METHOD", "TARGET_METHOD_UTF8", "TARGET_PATH", "TARGET_PATH_UTF8", "TARGET_SCHEME", "TARGET_SCHEME_UTF8", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Header$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        i.a aVar = i.f6297d;
        i.a aVar2 = i.f6297d;
        i.a aVar3 = i.f6297d;
        i.a aVar4 = i.f6297d;
        i.a aVar5 = i.f6297d;
        i.a aVar6 = i.f6297d;
    }

    public Header(i name, i value) {
        p.d(name, "name");
        p.d(value, "value");
        this.name = name;
        this.value = value;
        this.hpackSize = name.f() + 32 + value.f();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(i name, String value) {
        this(name, i.a.a(value));
        p.d(name, "name");
        p.d(value, "value");
        i.a aVar = i.f6297d;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Header(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "name"
            kotlin.jvm.internal.p.d(r0, r1)
            r0 = r6
            java.lang.String r1 = "value"
            kotlin.jvm.internal.p.d(r0, r1)
            c.i$a r0 = c.i.f6297d
            r7 = r0
            r0 = r5
            c.i r0 = c.i.a.a(r0)
            r7 = r0
            c.i$a r0 = c.i.f6297d
            r5 = r0
            r0 = r4
            r1 = r7
            r2 = r6
            c.i r2 = c.i.a.a(r2)
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Header.<init>(java.lang.String, java.lang.String):void");
    }

    public static /* synthetic */ Header copy$default(Header header, i iVar, i iVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            iVar = header.name;
        }
        if ((i & 2) != 0) {
            iVar2 = header.value;
        }
        return header.copy(iVar, iVar2);
    }

    public final i component1() {
        return this.name;
    }

    public final i component2() {
        return this.value;
    }

    public final Header copy(i name, i value) {
        p.d(name, "name");
        p.d(value, "value");
        return new Header(name, value);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return p.a(this.name, header.name) && p.a(this.value, header.value);
    }

    public final int hashCode() {
        i iVar = this.name;
        int i = 0;
        int hashCode = iVar != null ? iVar.hashCode() : 0;
        i iVar2 = this.value;
        if (iVar2 != null) {
            i = iVar2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return this.name.b() + ": " + this.value.b();
    }
}
