package p599h.p600d0.p605i;

import okio.ByteString;
import p599h.C10234r;
import p599h.p600d0.C10109c;
/* renamed from: h.d0.i.a */
/* loaded from: classes2-dex2jar.jar:h/d0/i/a.class */
public final class C10156a {

    /* renamed from: d */
    public static final ByteString f37489d = ByteString.encodeUtf8(":");

    /* renamed from: e */
    public static final ByteString f37490e = ByteString.encodeUtf8(":status");

    /* renamed from: f */
    public static final ByteString f37491f = ByteString.encodeUtf8(":method");

    /* renamed from: g */
    public static final ByteString f37492g = ByteString.encodeUtf8(":path");

    /* renamed from: h */
    public static final ByteString f37493h = ByteString.encodeUtf8(":scheme");

    /* renamed from: i */
    public static final ByteString f37494i = ByteString.encodeUtf8(":authority");

    /* renamed from: a */
    public final ByteString f37495a;

    /* renamed from: b */
    public final ByteString f37496b;

    /* renamed from: c */
    public final int f37497c;

    /* renamed from: h.d0.i.a$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/a$a.class */
    public interface AbstractC10157a {
        /* renamed from: a */
        void m1275a(C10234r rVar);
    }

    public C10156a(String str, String str2) {
        this(ByteString.encodeUtf8(str), ByteString.encodeUtf8(str2));
    }

    public C10156a(ByteString byteString, String str) {
        this(byteString, ByteString.encodeUtf8(str));
    }

    public C10156a(ByteString byteString, ByteString byteString2) {
        this.f37495a = byteString;
        this.f37496b = byteString2;
        this.f37497c = byteString.size() + 32 + byteString2.size();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C10156a) {
            C10156a aVar = (C10156a) obj;
            z = false;
            if (this.f37495a.equals(aVar.f37495a)) {
                z = false;
                if (this.f37496b.equals(aVar.f37496b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return ((527 + this.f37495a.hashCode()) * 31) + this.f37496b.hashCode();
    }

    public String toString() {
        return C10109c.m1452a("%s: %s", this.f37495a.utf8(), this.f37496b.utf8());
    }
}
