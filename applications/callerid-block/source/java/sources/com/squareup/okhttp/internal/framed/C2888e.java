package com.squareup.okhttp.internal.framed;

import okhttp3.internal.http2.Header;
import okio.ByteString;
/* renamed from: com.squareup.okhttp.internal.framed.e */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/e.class */
public final class C2888e {

    /* renamed from: d */
    public static final ByteString f12230d = ByteString.encodeUtf8(Header.RESPONSE_STATUS_UTF8);

    /* renamed from: e */
    public static final ByteString f12231e = ByteString.encodeUtf8(Header.TARGET_METHOD_UTF8);

    /* renamed from: f */
    public static final ByteString f12232f = ByteString.encodeUtf8(Header.TARGET_PATH_UTF8);

    /* renamed from: g */
    public static final ByteString f12233g = ByteString.encodeUtf8(Header.TARGET_SCHEME_UTF8);

    /* renamed from: h */
    public static final ByteString f12234h = ByteString.encodeUtf8(Header.TARGET_AUTHORITY_UTF8);

    /* renamed from: i */
    public static final ByteString f12235i = ByteString.encodeUtf8(":host");

    /* renamed from: j */
    public static final ByteString f12236j = ByteString.encodeUtf8(":version");

    /* renamed from: a */
    public final ByteString f12237a;

    /* renamed from: b */
    public final ByteString f12238b;

    /* renamed from: c */
    final int f12239c;

    public C2888e(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public C2888e(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public C2888e(ByteString byteString, ByteString byteString2) {
        this.f12237a = byteString;
        this.f12238b = byteString2;
        this.f12239c = byteString.size() + 32 + byteString2.size();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C2888e) {
            C2888e c2888e = (C2888e) obj;
            z = false;
            if (this.f12237a.equals(c2888e.f12237a)) {
                z = false;
                if (this.f12238b.equals(c2888e.f12238b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f12237a.hashCode()) * 31) + this.f12238b.hashCode();
    }

    public String toString() {
        return String.format("%s: %s", this.f12237a.utf8(), this.f12238b.utf8());
    }
}
