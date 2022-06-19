package okhttp3.internal.http2;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018�� \u00132\u00020\u0001:\u0001\u0013B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0004\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000b\u001a\u00020\u0006HÆ\u0003J\t\u0010\f\u001a\u00020\u0006HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00062\b\b\u0002\u0010\u0004\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\nHÖ\u0001J\b\u0010\u0012\u001a\u00020\u0003H\u0016R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0002\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lokhttp3/internal/http2/Header;", "", "name", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "Lokio/ByteString;", "(Lokio/ByteString;Ljava/lang/String;)V", "(Lokio/ByteString;Lokio/ByteString;)V", "hpackSize", "", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Header.class */
public final class Header {
    public final int hpackSize;
    public final C3208i name;
    public final C3208i value;
    public static final Companion Companion = new Companion(null);
    public static final C3208i PSEUDO_PREFIX = C3208i.C3209a.m39170a(":");
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final C3208i RESPONSE_STATUS = C3208i.C3209a.m39170a(RESPONSE_STATUS_UTF8);
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final C3208i TARGET_METHOD = C3208i.C3209a.m39170a(TARGET_METHOD_UTF8);
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final C3208i TARGET_PATH = C3208i.C3209a.m39170a(TARGET_PATH_UTF8);
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public static final C3208i TARGET_SCHEME = C3208i.C3209a.m39170a(TARGET_SCHEME_UTF8);
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final C3208i TARGET_AUTHORITY = C3208i.C3209a.m39170a(TARGET_AUTHORITY_UTF8);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lokhttp3/internal/http2/Header$Companion;", "", "()V", "PSEUDO_PREFIX", "Lokio/ByteString;", "RESPONSE_STATUS", "RESPONSE_STATUS_UTF8", "", "TARGET_AUTHORITY", "TARGET_AUTHORITY_UTF8", "TARGET_METHOD", "TARGET_METHOD_UTF8", "TARGET_PATH", "TARGET_PATH_UTF8", "TARGET_SCHEME", "TARGET_SCHEME_UTF8", "okhttp"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* loaded from: classes5-dex2jar.jar:okhttp3/internal/http2/Header$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        C3208i.C3209a c3209a = C3208i.f11583d;
        C3208i.C3209a c3209a2 = C3208i.f11583d;
        C3208i.C3209a c3209a3 = C3208i.f11583d;
        C3208i.C3209a c3209a4 = C3208i.f11583d;
        C3208i.C3209a c3209a5 = C3208i.f11583d;
        C3208i.C3209a c3209a6 = C3208i.f11583d;
    }

    public Header(C3208i name, C3208i value) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(value, "value");
        this.name = name;
        this.value = value;
        this.hpackSize = name.mo39173f() + 32 + value.mo39173f();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(C3208i name, String value) {
        this(name, C3208i.C3209a.m39170a(value));
        C18524p.m3840d(name, "name");
        C18524p.m3840d(value, "value");
        C3208i.C3209a c3209a = C3208i.f11583d;
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
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            r0 = r6
            java.lang.String r1 = "value"
            kotlin.jvm.internal.C18524p.m3840d(r0, r1)
            c.i$a r0 = p092c.C3208i.f11583d
            r7 = r0
            r0 = r5
            c.i r0 = p092c.C3208i.C3209a.m39170a(r0)
            r7 = r0
            c.i$a r0 = p092c.C3208i.f11583d
            r5 = r0
            r0 = r4
            r1 = r7
            r2 = r6
            c.i r2 = p092c.C3208i.C3209a.m39170a(r2)
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Header.<init>(java.lang.String, java.lang.String):void");
    }

    public static /* synthetic */ Header copy$default(Header header, C3208i c3208i, C3208i c3208i2, int i, Object obj) {
        if ((i & 1) != 0) {
            c3208i = header.name;
        }
        if ((i & 2) != 0) {
            c3208i2 = header.value;
        }
        return header.copy(c3208i, c3208i2);
    }

    public final C3208i component1() {
        return this.name;
    }

    public final C3208i component2() {
        return this.value;
    }

    public final Header copy(C3208i name, C3208i value) {
        C18524p.m3840d(name, "name");
        C18524p.m3840d(value, "value");
        return new Header(name, value);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Header)) {
                return false;
            }
            Header header = (Header) obj;
            return C18524p.m3850a(this.name, header.name) && C18524p.m3850a(this.value, header.value);
        }
        return true;
    }

    public final int hashCode() {
        C3208i c3208i = this.name;
        int i = 0;
        int hashCode = c3208i != null ? c3208i.hashCode() : 0;
        C3208i c3208i2 = this.value;
        if (c3208i2 != null) {
            i = c3208i2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return this.name.m39179b() + ": " + this.value.m39179b();
    }
}
