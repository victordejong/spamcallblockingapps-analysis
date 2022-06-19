package org.jsoup.p590a;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Locale;
import java.util.regex.Pattern;
import org.jsoup.nodes.C20906f;
import org.jsoup.p592c.C20784b;
import org.jsoup.p592c.C20814g;
/* renamed from: org.jsoup.a.b */
/* loaded from: classes5-dex2jar.jar:org/jsoup/a/b.class */
public final class C20777b {

    /* renamed from: a */
    private static final Pattern f67288a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    /* renamed from: b */
    private static final char[] f67289b = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* renamed from: org.jsoup.a.b$a */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/a/b$a.class */
    public static final class C20778a {

        /* renamed from: a */
        final String f67290a;

        /* renamed from: b */
        final boolean f67291b;

        public C20778a(String str, boolean z) {
            this.f67290a = str;
            this.f67291b = z;
        }
    }

    private C20777b() {
    }

    /* renamed from: a */
    private static String m508a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        String replaceAll = str.trim().replaceAll("[\"']", "");
        try {
            if (Charset.isSupported(replaceAll)) {
                return replaceAll;
            }
            String upperCase = replaceAll.toUpperCase(Locale.ENGLISH);
            if (!Charset.isSupported(upperCase)) {
                return null;
            }
            return upperCase;
        } catch (IllegalCharsetNameException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static C20906f m510a(InputStream inputStream, String str, String str2) throws IOException {
        return m509a(inputStream, null, str2, new C20814g(new C20784b()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x02e0, code lost:
        if (r12 == false) goto L112;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.jsoup.nodes.C20906f m509a(java.io.InputStream r7, java.lang.String r8, java.lang.String r9, org.jsoup.p592c.C20814g r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.p590a.C20777b.m509a(java.io.InputStream, java.lang.String, java.lang.String, org.jsoup.c.g):org.jsoup.nodes.f");
    }
}
