package p081h.p203i.p401g;

import java.io.IOException;
/* renamed from: h.i.g.a0 */
/* loaded from: classes2-dex2jar.jar:h/i/g/a0.class */
public class C10222a0 extends IOException {

    /* renamed from: a */
    public AbstractC10437l0 f23055a = null;

    /* renamed from: h.i.g.a0$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/a0$a.class */
    public static class C10223a extends C10222a0 {
        public C10223a(String str) {
            super(str);
        }
    }

    public C10222a0(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public C10222a0(String str) {
        super(str);
    }

    /* renamed from: c */
    public static C10222a0 m13076c() {
        return new C10222a0("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: d */
    public static C10222a0 m13075d() {
        return new C10222a0("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: e */
    public static C10222a0 m13074e() {
        return new C10222a0("Protocol message had invalid UTF-8.");
    }

    /* renamed from: f */
    public static C10223a m13073f() {
        return new C10223a("Protocol message tag had invalid wire type.");
    }

    /* renamed from: g */
    public static C10222a0 m13072g() {
        return new C10222a0("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: h */
    public static C10222a0 m13071h() {
        return new C10222a0("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: i */
    public static C10222a0 m13070i() {
        return new C10222a0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: j */
    public static C10222a0 m13069j() {
        return new C10222a0("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: a */
    public C10222a0 m13078a(AbstractC10437l0 l0Var) {
        this.f23055a = l0Var;
        return this;
    }

    /* renamed from: a */
    public AbstractC10437l0 m13079a() {
        return this.f23055a;
    }

    /* renamed from: b */
    public IOException m13077b() {
        return getCause() instanceof IOException ? (IOException) getCause() : this;
    }
}
