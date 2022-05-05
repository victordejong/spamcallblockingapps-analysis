package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
/* renamed from: h.i.a.e.j.q.v7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/v7.class */
public final class C8759v7 extends IOException {
    public C8759v7(String str) {
        super(str);
    }

    public C8759v7(String str, Exception exc) {
        super(str, exc);
    }

    /* renamed from: a */
    public static C8759v7 m17095a() {
        return new C8759v7("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static C8759v7 m17094b() {
        return new C8759v7("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static C8759v7 m17093c() {
        return new C8759v7("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static C8759v7 m17092d() {
        return new C8759v7("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
