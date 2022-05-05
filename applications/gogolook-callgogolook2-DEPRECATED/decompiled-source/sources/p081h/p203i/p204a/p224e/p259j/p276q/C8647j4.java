package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.j4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/j4.class */
public class C8647j4 extends IOException {
    public C8647j4(String str) {
        super(str);
    }

    /* renamed from: a */
    public static C8647j4 m17444a() {
        return new C8647j4("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C8647j4 m17442b() {
        return new C8647j4("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static C8647j4 m17441c() {
        return new C8647j4("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static C8647j4 m17440d() {
        return new C8647j4("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: e */
    public static C8656k4 m17439e() {
        return new C8656k4("Protocol message tag had invalid wire type.");
    }

    /* renamed from: f */
    public static C8647j4 m17438f() {
        return new C8647j4("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* renamed from: g */
    public static C8647j4 m17437g() {
        return new C8647j4("Failed to parse the message.");
    }

    /* renamed from: h */
    public static C8647j4 m17436h() {
        return new C8647j4("Protocol message had invalid UTF-8.");
    }

    /* renamed from: a */
    public final C8647j4 m17443a(AbstractC8648j5 j5Var) {
        return this;
    }
}
