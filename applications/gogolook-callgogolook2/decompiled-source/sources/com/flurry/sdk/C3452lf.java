package com.flurry.sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.media2.session.MediaSessionImplBase;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.lf */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/lf.class */
public final class C3452lf {

    /* renamed from: a */
    public static final Pattern f5942a = Pattern.compile("/");

    /* renamed from: a */
    public static String m32439a(String str) {
        URI h;
        int indexOf;
        if (!TextUtils.isEmpty(str) && (h = m32429h(str)) != null) {
            String scheme = h.getScheme();
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
    public static String m32438a(String str, String str2) {
        String str3;
        String str4;
        int i;
        String str5 = str;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                str5 = str;
            } else {
                URI h = m32429h(str);
                if (h == null) {
                    return str;
                }
                URI normalize = h.normalize();
                URI h2 = m32429h(str2);
                if (h2 == null) {
                    return str;
                }
                URI normalize2 = h2.normalize();
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
                        String[] split = f5942a.split(path, -1);
                        String[] split2 = f5942a.split(path2, -1);
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
                                sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
                                sb.append("/");
                                str4 = query;
                                str3 = fragment;
                            }
                        }
                        URI a = m32437a(null, null, sb.toString(), str4, str3);
                        if (a == null) {
                            return str;
                        }
                        str5 = a.toString();
                    }
                }
            }
        }
        return str5;
    }

    /* renamed from: a */
    public static URI m32437a(String str, String str2, String str3, String str4, String str5) {
        URI uri;
        try {
            uri = new URI(str, str2, str3, str4, str5);
        } catch (URISyntaxException e) {
            uri = null;
        }
        return uri;
    }

    /* renamed from: b */
    public static String m32436b(String str) {
        URI h;
        URI a;
        if (!TextUtils.isEmpty(str) && (h = m32429h(str)) != null) {
            URI normalize = h.normalize();
            if (!normalize.isOpaque() && (a = m32437a(normalize.getScheme(), normalize.getAuthority(), "/", null, null)) != null) {
                return a.toString();
            }
            return str;
        }
        return str;
    }

    /* renamed from: b */
    public static String m32435b(String str, String str2) {
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
    public static String m32434c(String str) {
        URI h;
        URI resolve;
        if (!TextUtils.isEmpty(str) && (h = m32429h(str)) != null) {
            URI normalize = h.normalize();
            if (!normalize.isOpaque() && (resolve = normalize.resolve("./")) != null) {
                return resolve.toString();
            }
            return str;
        }
        return str;
    }

    /* renamed from: d */
    public static boolean m32433d(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            z = false;
            if (parse.getScheme() != null) {
                z = false;
                if (parse.getScheme().equals(PlanProductRealmObject.MARKET)) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: e */
    public static boolean m32432e(String str) {
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

    /* renamed from: f */
    public static boolean m32431f(String str) {
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

    /* renamed from: g */
    public static boolean m32430g(String str) {
        URI h;
        if (!TextUtils.isEmpty(str) && (h = m32429h(str)) != null) {
            return h.getScheme() == null || "http".equalsIgnoreCase(h.getScheme()) || "https".equalsIgnoreCase(h.getScheme());
        }
        return false;
    }

    /* renamed from: h */
    public static URI m32429h(String str) {
        URI uri;
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            uri = null;
        }
        return uri;
    }
}
