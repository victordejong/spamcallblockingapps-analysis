package org.apache.commons.lang3;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.p585c.p586a.AbstractC20740b;
import org.apache.commons.lang3.p585c.p586a.C20739a;
import org.apache.commons.lang3.p585c.p586a.C20742d;
import org.apache.commons.lang3.p585c.p586a.C20743e;
import org.apache.commons.lang3.p585c.p586a.C20744f;
import org.apache.commons.lang3.p585c.p586a.C20745g;
import org.apache.commons.lang3.p585c.p586a.C20746h;
import org.apache.commons.lang3.p585c.p586a.C20748i;
import org.apache.commons.lang3.p585c.p586a.C20750k;
import org.apache.commons.lang3.p585c.p586a.C20751l;
@Deprecated
/* renamed from: org.apache.commons.lang3.g */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/g.class */
public final class C20763g {

    /* renamed from: j */
    public static final AbstractC20740b f67268j;

    /* renamed from: k */
    public static final AbstractC20740b f67269k;

    /* renamed from: l */
    public static final AbstractC20740b f67270l;

    /* renamed from: a */
    public static final AbstractC20740b f67259a = new C20744f(new String[]{new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}}).m550a(new C20744f(C20742d.m540i())).m550a(C20743e.m538a());

    /* renamed from: b */
    public static final AbstractC20740b f67260b = new C20739a(new C20744f(new String[]{new String[]{"'", "\\'"}, new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}}), new C20744f(C20742d.m540i()), C20743e.m538a());

    /* renamed from: c */
    public static final AbstractC20740b f67261c = new C20739a(new C20744f(new String[]{new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}}), new C20744f(C20742d.m540i()), C20743e.m538a());
    @Deprecated

    /* renamed from: d */
    public static final AbstractC20740b f67262d = new C20739a(new C20744f(C20742d.m544e()), new C20744f(C20742d.m542g()));

    /* renamed from: e */
    public static final AbstractC20740b f67263e = new C20739a(new C20744f(C20742d.m544e()), new C20744f(C20742d.m542g()), new C20744f(new String[]{new String[]{"��", ""}, new String[]{"\u0001", ""}, new String[]{"\u0002", ""}, new String[]{"\u0003", ""}, new String[]{"\u0004", ""}, new String[]{"\u0005", ""}, new String[]{"\u0006", ""}, new String[]{"\u0007", ""}, new String[]{"\b", ""}, new String[]{"\u000b", ""}, new String[]{"\f", ""}, new String[]{"\u000e", ""}, new String[]{"\u000f", ""}, new String[]{"\u0010", ""}, new String[]{"\u0011", ""}, new String[]{"\u0012", ""}, new String[]{"\u0013", ""}, new String[]{"\u0014", ""}, new String[]{"\u0015", ""}, new String[]{"\u0016", ""}, new String[]{"\u0017", ""}, new String[]{"\u0018", ""}, new String[]{"\u0019", ""}, new String[]{"\u001a", ""}, new String[]{"\u001b", ""}, new String[]{"\u001c", ""}, new String[]{"\u001d", ""}, new String[]{"\u001e", ""}, new String[]{"\u001f", ""}, new String[]{"\ufffe", ""}, new String[]{"\uffff", ""}}), C20745g.m537a(127, 132), C20745g.m537a(134, 159), new C20751l());

    /* renamed from: f */
    public static final AbstractC20740b f67264f = new C20739a(new C20744f(C20742d.m544e()), new C20744f(C20742d.m542g()), new C20744f(new String[]{new String[]{"��", ""}, new String[]{"\u000b", "&#11;"}, new String[]{"\f", "&#12;"}, new String[]{"\ufffe", ""}, new String[]{"\uffff", ""}}), C20745g.m537a(1, 8), C20745g.m537a(14, 31), C20745g.m537a(127, 132), C20745g.m537a(134, 159), new C20751l());

    /* renamed from: g */
    public static final AbstractC20740b f67265g = new C20739a(new C20744f(C20742d.m544e()), new C20744f(C20742d.m549a()));

    /* renamed from: h */
    public static final AbstractC20740b f67266h = new C20739a(new C20744f(C20742d.m544e()), new C20744f(C20742d.m549a()), new C20744f(C20742d.m546c()));

    /* renamed from: i */
    public static final AbstractC20740b f67267i = new C20764a();

    /* renamed from: m */
    public static final AbstractC20740b f67271m = new C20739a(new C20744f(C20742d.m543f()), new C20744f(C20742d.m547b()), new C20746h(new C20746h.EnumC20747a[0]));

    /* renamed from: n */
    public static final AbstractC20740b f67272n = new C20739a(new C20744f(C20742d.m543f()), new C20744f(C20742d.m547b()), new C20744f(C20742d.m545d()), new C20746h(new C20746h.EnumC20747a[0]));

    /* renamed from: o */
    public static final AbstractC20740b f67273o = new C20739a(new C20744f(C20742d.m543f()), new C20744f(C20742d.m541h()), new C20746h(new C20746h.EnumC20747a[0]));

    /* renamed from: p */
    public static final AbstractC20740b f67274p = new C20765b();

    /* renamed from: org.apache.commons.lang3.g$a */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/g$a.class */
    static final class C20764a extends AbstractC20740b {

        /* renamed from: b */
        private static final String f67275b = "\"";

        /* renamed from: c */
        private static final char[] f67276c = {',', '\"', '\r', '\n'};

        C20764a() {
        }

        @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
        /* renamed from: a */
        public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i == 0) {
                if (StringUtils.containsNone(charSequence.toString(), f67276c)) {
                    writer.write(charSequence.toString());
                } else {
                    writer.write(34);
                    String charSequence2 = charSequence.toString();
                    String str = f67275b;
                    writer.write(StringUtils.replace(charSequence2, str, str + str));
                    writer.write(34);
                }
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            throw new IllegalStateException("CsvEscaper should never reach the [1] index");
        }
    }

    /* renamed from: org.apache.commons.lang3.g$b */
    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/g$b.class */
    static final class C20765b extends AbstractC20740b {

        /* renamed from: b */
        private static final String f67277b = "\"";

        /* renamed from: c */
        private static final char[] f67278c = {',', '\"', '\r', '\n'};

        C20765b() {
        }

        @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
        /* renamed from: a */
        public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i == 0) {
                if (charSequence.charAt(0) != '\"' || charSequence.charAt(charSequence.length() - 1) != '\"') {
                    writer.write(charSequence.toString());
                    return Character.codePointCount(charSequence, 0, charSequence.length());
                }
                String charSequence2 = charSequence.subSequence(1, charSequence.length() - 1).toString();
                if (StringUtils.containsAny(charSequence2, f67278c)) {
                    StringBuilder sb = new StringBuilder();
                    String str = f67277b;
                    sb.append(str);
                    sb.append(str);
                    writer.write(StringUtils.replace(charSequence2, sb.toString(), str));
                } else {
                    writer.write(charSequence.toString());
                }
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v23, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.CharSequence[][], java.lang.String[]] */
    static {
        C20739a c20739a = new C20739a(new C20748i(), new C20750k(), new C20744f(C20742d.m539j()), new C20744f(new String[]{new String[]{"\\\\", "\\"}, new String[]{"\\\"", "\""}, new String[]{"\\'", "'"}, new String[]{"\\", ""}}));
        f67268j = c20739a;
        f67269k = c20739a;
        f67270l = c20739a;
    }

    /* renamed from: a */
    public static final String m516a(String str) {
        return f67261c.m552a(str);
    }
}
