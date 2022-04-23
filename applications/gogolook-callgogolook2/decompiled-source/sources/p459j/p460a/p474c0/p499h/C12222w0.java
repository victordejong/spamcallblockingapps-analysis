package p459j.p460a.p474c0.p499h;

import android.net.Uri;
import android.text.TextUtils;
/* renamed from: j.a.c0.h.w0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/w0.class */
public class C12222w0 {
    /* renamed from: a */
    public static String m6721a(Uri uri) {
        String path = uri.getPath();
        if (TextUtils.isEmpty(path)) {
            return null;
        }
        if (path.startsWith("/watch")) {
            return uri.getQueryParameter("v");
        }
        if (path.startsWith("/embed/")) {
            return m6719a("/embed/", path);
        }
        if (path.startsWith("/v/")) {
            return m6719a("/v/", path);
        }
        if (path.startsWith("/apiplayer")) {
            return uri.getQueryParameter("video_id");
        }
        if ("youtu.be".equalsIgnoreCase(uri.getHost())) {
            return m6719a("/", path);
        }
        return null;
    }

    /* renamed from: a */
    public static String m6720a(String str) {
        String str2 = str;
        if (!str.startsWith("http")) {
            str2 = "http://" + str;
        }
        Uri parse = Uri.parse(str2);
        String host = parse.getHost();
        if (!"www.youtube.com".equalsIgnoreCase(host) && !"youtube.com".equalsIgnoreCase(host) && !"m.youtube.com".equalsIgnoreCase(host) && !"youtube.googleapis.com".equalsIgnoreCase(host) && !"youtu.be".equalsIgnoreCase(host)) {
            return null;
        }
        String a = m6721a(parse);
        if (TextUtils.isEmpty(a)) {
            return null;
        }
        return "https://img.youtube.com/vi/" + a + "/hqdefault.jpg";
    }

    /* renamed from: a */
    public static String m6719a(String str, String str2) {
        return str2.substring(str.length());
    }
}
