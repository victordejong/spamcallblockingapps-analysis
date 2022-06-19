package com.flurry.sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.mh */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/mh.class */
public final class C0508mh {

    /* renamed from: a */
    private static final Pattern f3588a = Pattern.compile("/");

    /* renamed from: a */
    public static String m4465a(String str) {
        URI m4454i;
        int indexOf;
        if (!TextUtils.isEmpty(str) && (m4454i = m4454i(str)) != null) {
            String scheme = m4454i.getScheme();
            if (TextUtils.isEmpty(scheme)) {
                return "http" + str;
            }
            String lowerCase = scheme.toLowerCase(Locale.getDefault());
            if (!scheme.equals(lowerCase) && (indexOf = str.indexOf(scheme)) >= 0) {
                return lowerCase + str.substring(indexOf + scheme.length());
            }
            return str;
        }
        return str;
    }

    /* renamed from: a */
    public static String m4464a(String str, String str2) {
        String str3;
        String str4;
        int i;
        String str5 = str;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                str5 = str;
            } else {
                URI m4454i = m4454i(str);
                if (m4454i == null) {
                    return str;
                }
                URI normalize = m4454i.normalize();
                URI m4454i2 = m4454i(str2);
                if (m4454i2 == null) {
                    return str;
                }
                URI normalize2 = m4454i2.normalize();
                str5 = str;
                if (!normalize.isOpaque()) {
                    if (normalize2.isOpaque()) {
                        str5 = str;
                    } else {
                        String scheme = normalize.getScheme();
                        String scheme2 = normalize2.getScheme();
                        if (scheme2 == null && scheme != null) {
                            return str;
                        }
                        if (scheme2 != null && !scheme2.equals(scheme)) {
                            return str;
                        }
                        String authority = normalize.getAuthority();
                        String authority2 = normalize2.getAuthority();
                        if (authority2 == null && authority != null) {
                            return str;
                        }
                        if (authority2 != null && !authority2.equals(authority)) {
                            return str;
                        }
                        String path = normalize.getPath();
                        String path2 = normalize2.getPath();
                        Pattern pattern = f3588a;
                        String[] split = pattern.split(path, -1);
                        String[] split2 = pattern.split(path2, -1);
                        int length = split.length;
                        int length2 = split2.length;
                        int i2 = 0;
                        while (i2 < length2 && i2 < length && split[i2].equals(split2[i2])) {
                            i2++;
                        }
                        String query = normalize.getQuery();
                        String fragment = normalize.getFragment();
                        StringBuilder sb = new StringBuilder();
                        if (i2 == length2 && i2 == length) {
                            String query2 = normalize2.getQuery();
                            String fragment2 = normalize2.getFragment();
                            boolean equals = TextUtils.equals(query, query2);
                            boolean equals2 = TextUtils.equals(fragment, fragment2);
                            if (!equals || !equals2) {
                                str4 = (!equals || TextUtils.isEmpty(fragment)) ? query : null;
                                if (!TextUtils.isEmpty(str4) || !TextUtils.isEmpty(fragment)) {
                                    str3 = fragment;
                                } else {
                                    sb.append(split[length - 1]);
                                    str3 = fragment;
                                    str4 = query;
                                }
                            } else {
                                str3 = null;
                                str4 = null;
                            }
                        } else {
                            int i3 = i2;
                            while (true) {
                                i = i2;
                                if (i3 < length2 - 1) {
                                    sb.append("..");
                                    sb.append("/");
                                    i3++;
                                }
                            }
                            while (i < length - 1) {
                                sb.append(split[i]);
                                sb.append("/");
                                i++;
                            }
                            if (i < length) {
                                sb.append(split[i]);
                            }
                            str3 = fragment;
                            str4 = query;
                            if (sb.length() == 0) {
                                sb.append(".");
                                sb.append("/");
                                str4 = query;
                                str3 = fragment;
                            }
                        }
                        URI m4463a = m4463a(null, null, sb.toString(), str4, str3);
                        if (m4463a == null) {
                            return str;
                        }
                        str5 = m4463a.toString();
                    }
                }
            }
        }
        return str5;
    }

    /* renamed from: a */
    private static URI m4463a(String str, String str2, String str3, String str4, String str5) {
        URI uri;
        try {
            uri = new URI(str, str2, str3, str4, str5);
        } catch (URISyntaxException e) {
            uri = null;
        }
        return uri;
    }

    /* renamed from: b */
    public static String m4462b(String str) {
        URI m4454i;
        URI m4463a;
        if (!TextUtils.isEmpty(str) && (m4454i = m4454i(str)) != null) {
            URI normalize = m4454i.normalize();
            if (!normalize.isOpaque() && (m4463a = m4463a(normalize.getScheme(), normalize.getAuthority(), "/", null, null)) != null) {
                return m4463a.toString();
            }
            return str;
        }
        return str;
    }

    /* renamed from: b */
    public static String m4461b(String str, String str2) {
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            try {
                str3 = str;
                if (!new URI(str).isAbsolute()) {
                    str3 = str;
                    if (!TextUtils.isEmpty(str2)) {
                        URI uri = new URI(str2);
                        str3 = uri.getScheme() + "://" + uri.getHost() + str;
                    }
                }
            } catch (Exception e) {
                str3 = str;
            }
        }
        return str3;
    }

    /* renamed from: c */
    public static String m4460c(String str) {
        URI m4454i;
        URI resolve;
        if (!TextUtils.isEmpty(str) && (m4454i = m4454i(str)) != null) {
            URI normalize = m4454i.normalize();
            if (!normalize.isOpaque() && (resolve = normalize.resolve("./")) != null) {
                return resolve.toString();
            }
            return str;
        }
        return str;
    }

    /* renamed from: d */
    public static boolean m4459d(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            z = false;
            if (parse.getScheme() != null) {
                z = false;
                if (parse.getScheme().equals("market")) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (r0.getScheme().equals("https") != false) goto L10;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m4458e(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L37
            r0 = r3
            android.net.Uri r0 = android.net.Uri.parse(r0)
            r3 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.getScheme()
            if (r0 == 0) goto L37
            r0 = r3
            java.lang.String r0 = r0.getScheme()
            java.lang.String r1 = "http"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L35
            r0 = r5
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.getScheme()
            java.lang.String r1 = "https"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L37
        L35:
            r0 = 1
            r6 = r0
        L37:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C0508mh.m4458e(java.lang.String):boolean");
    }

    /* renamed from: f */
    public static boolean m4457f(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            z = false;
            if (parse.getHost() != null) {
                z = false;
                if (parse.getHost().equals("play.google.com")) {
                    z = false;
                    if (parse.getScheme() != null) {
                        z = false;
                        if (parse.getScheme().startsWith("http")) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public static boolean m4456g(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(str));
            z = false;
            if (mimeTypeFromExtension != null) {
                z = false;
                if (mimeTypeFromExtension.startsWith("video/")) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: h */
    public static boolean m4455h(String str) {
        URI m4454i;
        if (!TextUtils.isEmpty(str) && (m4454i = m4454i(str)) != null) {
            return m4454i.getScheme() == null || "http".equalsIgnoreCase(m4454i.getScheme()) || "https".equalsIgnoreCase(m4454i.getScheme());
        }
        return false;
    }

    /* renamed from: i */
    private static URI m4454i(String str) {
        URI uri;
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            uri = null;
        }
        return uri;
    }
}
