package org.jsoup.a;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.util.Locale;
import java.util.regex.Pattern;
import org.jsoup.c.g;
import org.jsoup.nodes.f;
/* loaded from: classes5-dex2jar.jar:org/jsoup/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f39198a = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f39199b = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:org/jsoup/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String f39200a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f39201b;

        public a(String str, boolean z) {
            this.f39200a = str;
            this.f39201b = z;
        }
    }

    private b() {
    }

    private static String a(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        String replaceAll = str.trim().replaceAll("[\"']", "");
        try {
            if (Charset.isSupported(replaceAll)) {
                return replaceAll;
            }
            String upperCase = replaceAll.toUpperCase(Locale.ENGLISH);
            if (Charset.isSupported(upperCase)) {
                return upperCase;
            }
            return null;
        } catch (IllegalCharsetNameException e) {
            return null;
        }
    }

    public static f a(InputStream inputStream, String str, String str2) throws IOException {
        return a(inputStream, null, str2, new g(new org.jsoup.c.b()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x02e0, code lost:
        if (r12 == false) goto L_0x02f6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.jsoup.nodes.f a(java.io.InputStream r7, java.lang.String r8, java.lang.String r9, org.jsoup.c.g r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.a.b.a(java.io.InputStream, java.lang.String, java.lang.String, org.jsoup.c.g):org.jsoup.nodes.f");
    }
}
