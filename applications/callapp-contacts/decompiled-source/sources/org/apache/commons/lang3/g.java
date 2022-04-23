package org.apache.commons.lang3;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.c.a.d;
import org.apache.commons.lang3.c.a.e;
import org.apache.commons.lang3.c.a.f;
import org.apache.commons.lang3.c.a.h;
import org.apache.commons.lang3.c.a.i;
import org.apache.commons.lang3.c.a.k;
import org.apache.commons.lang3.c.a.l;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/g.class */
public final class g {
    public static final org.apache.commons.lang3.c.a.b j;
    public static final org.apache.commons.lang3.c.a.b k;
    public static final org.apache.commons.lang3.c.a.b l;

    /* renamed from: a  reason: collision with root package name */
    public static final org.apache.commons.lang3.c.a.b f39181a = new f(new String[]{new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}}).a(new f(d.i())).a(e.a());

    /* renamed from: b  reason: collision with root package name */
    public static final org.apache.commons.lang3.c.a.b f39182b = new org.apache.commons.lang3.c.a.a(new f(new String[]{new String[]{"'", "\\'"}, new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}}), new f(d.i()), e.a());

    /* renamed from: c  reason: collision with root package name */
    public static final org.apache.commons.lang3.c.a.b f39183c = new org.apache.commons.lang3.c.a.a(new f(new String[]{new String[]{"\"", "\\\""}, new String[]{"\\", "\\\\"}, new String[]{"/", "\\/"}}), new f(d.i()), e.a());
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public static final org.apache.commons.lang3.c.a.b f39184d = new org.apache.commons.lang3.c.a.a(new f(d.e()), new f(d.g()));
    public static final org.apache.commons.lang3.c.a.b e = new org.apache.commons.lang3.c.a.a(new f(d.e()), new f(d.g()), new f(new String[]{new String[]{"��", ""}, new String[]{"\u0001", ""}, new String[]{"\u0002", ""}, new String[]{"\u0003", ""}, new String[]{"\u0004", ""}, new String[]{"\u0005", ""}, new String[]{"\u0006", ""}, new String[]{"\u0007", ""}, new String[]{"\b", ""}, new String[]{"\u000b", ""}, new String[]{"\f", ""}, new String[]{"\u000e", ""}, new String[]{"\u000f", ""}, new String[]{"\u0010", ""}, new String[]{"\u0011", ""}, new String[]{"\u0012", ""}, new String[]{"\u0013", ""}, new String[]{"\u0014", ""}, new String[]{"\u0015", ""}, new String[]{"\u0016", ""}, new String[]{"\u0017", ""}, new String[]{"\u0018", ""}, new String[]{"\u0019", ""}, new String[]{"\u001a", ""}, new String[]{"\u001b", ""}, new String[]{"\u001c", ""}, new String[]{"\u001d", ""}, new String[]{"\u001e", ""}, new String[]{"\u001f", ""}, new String[]{"\ufffe", ""}, new String[]{"\uffff", ""}}), org.apache.commons.lang3.c.a.g.a(127, 132), org.apache.commons.lang3.c.a.g.a(134, 159), new l());
    public static final org.apache.commons.lang3.c.a.b f = new org.apache.commons.lang3.c.a.a(new f(d.e()), new f(d.g()), new f(new String[]{new String[]{"��", ""}, new String[]{"\u000b", "&#11;"}, new String[]{"\f", "&#12;"}, new String[]{"\ufffe", ""}, new String[]{"\uffff", ""}}), org.apache.commons.lang3.c.a.g.a(1, 8), org.apache.commons.lang3.c.a.g.a(14, 31), org.apache.commons.lang3.c.a.g.a(127, 132), org.apache.commons.lang3.c.a.g.a(134, 159), new l());
    public static final org.apache.commons.lang3.c.a.b g = new org.apache.commons.lang3.c.a.a(new f(d.e()), new f(d.a()));
    public static final org.apache.commons.lang3.c.a.b h = new org.apache.commons.lang3.c.a.a(new f(d.e()), new f(d.a()), new f(d.c()));
    public static final org.apache.commons.lang3.c.a.b i = new a();
    public static final org.apache.commons.lang3.c.a.b m = new org.apache.commons.lang3.c.a.a(new f(d.f()), new f(d.b()), new h(new h.a[0]));
    public static final org.apache.commons.lang3.c.a.b n = new org.apache.commons.lang3.c.a.a(new f(d.f()), new f(d.b()), new f(d.d()), new h(new h.a[0]));
    public static final org.apache.commons.lang3.c.a.b o = new org.apache.commons.lang3.c.a.a(new f(d.f()), new f(d.h()), new h(new h.a[0]));
    public static final org.apache.commons.lang3.c.a.b p = new b();

    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/g$a.class */
    static final class a extends org.apache.commons.lang3.c.a.b {

        /* renamed from: b  reason: collision with root package name */
        private static final String f39185b = "\"";

        /* renamed from: c  reason: collision with root package name */
        private static final char[] f39186c = {',', '\"', '\r', '\n'};

        a() {
        }

        @Override // org.apache.commons.lang3.c.a.b
        public final int a(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i == 0) {
                if (StringUtils.containsNone(charSequence.toString(), f39186c)) {
                    writer.write(charSequence.toString());
                } else {
                    writer.write(34);
                    String charSequence2 = charSequence.toString();
                    String str = f39185b;
                    writer.write(StringUtils.replace(charSequence2, str, str + str));
                    writer.write(34);
                }
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
            throw new IllegalStateException("CsvEscaper should never reach the [1] index");
        }
    }

    /* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/g$b.class */
    static final class b extends org.apache.commons.lang3.c.a.b {

        /* renamed from: b  reason: collision with root package name */
        private static final String f39187b = "\"";

        /* renamed from: c  reason: collision with root package name */
        private static final char[] f39188c = {',', '\"', '\r', '\n'};

        b() {
        }

        @Override // org.apache.commons.lang3.c.a.b
        public final int a(CharSequence charSequence, int i, Writer writer) throws IOException {
            if (i != 0) {
                throw new IllegalStateException("CsvUnescaper should never reach the [1] index");
            } else if (charSequence.charAt(0) == '\"' && charSequence.charAt(charSequence.length() - 1) == '\"') {
                String charSequence2 = charSequence.subSequence(1, charSequence.length() - 1).toString();
                if (StringUtils.containsAny(charSequence2, f39188c)) {
                    StringBuilder sb = new StringBuilder();
                    String str = f39187b;
                    sb.append(str);
                    sb.append(str);
                    writer.write(StringUtils.replace(charSequence2, sb.toString(), str));
                } else {
                    writer.write(charSequence.toString());
                }
                return Character.codePointCount(charSequence, 0, charSequence.length());
            } else {
                writer.write(charSequence.toString());
                return Character.codePointCount(charSequence, 0, charSequence.length());
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v23, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.CharSequence[][], java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.lang.CharSequence[][], java.lang.String[]] */
    static {
        org.apache.commons.lang3.c.a.a aVar = new org.apache.commons.lang3.c.a.a(new i(), new k(), new f(d.j()), new f(new String[]{new String[]{"\\\\", "\\"}, new String[]{"\\\"", "\""}, new String[]{"\\'", "'"}, new String[]{"\\", ""}}));
        j = aVar;
        k = aVar;
        l = aVar;
    }

    public static final String a(String str) {
        return f39183c.a(str);
    }
}
