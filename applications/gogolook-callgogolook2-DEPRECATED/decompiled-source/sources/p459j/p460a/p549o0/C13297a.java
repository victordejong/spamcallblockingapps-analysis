package p459j.p460a.p549o0;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.main.MainActivity;
import java.util.List;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14198w;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.o0.a */
/* loaded from: classes3-dex2jar.jar:j/a/o0/a.class */
public class C13297a {
    @Deprecated

    /* renamed from: a */
    public static final String f29903a = C14198w.m2238c("offlinedb");
    @Deprecated

    /* renamed from: b */
    public static final String f29904b = C14198w.m2240b("offlinedb", "notification");
    @Deprecated

    /* renamed from: c */
    public static final String f29905c = C14198w.m2240b("offlinedb", "update_notification");
    @Deprecated

    /* renamed from: d */
    public static final String f29906d = C14198w.m2241b("set_default_phone");
    @Deprecated

    /* renamed from: e */
    public static final String f29907e = C14198w.m2240b("iap_ad_free", "notification");

    @NonNull
    /* renamed from: a */
    public static Intent m4313a(@NonNull Context context) {
        Intent intent = new Intent(context, MainActivity.class);
        intent.putExtra("action", "invalid_deeplink_handle");
        return intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:80:0x02ce, code lost:
        if (android.text.TextUtils.equals(r0, "in_app_dialog_full") != false) goto L_0x02d1;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent m4312a(android.content.Context r6, @androidx.annotation.NonNull android.net.Uri r7, java.lang.String r8, java.lang.String r9, int r10) {
        /*
            Method dump skipped, instructions count: 1588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p549o0.C13297a.m4312a(android.content.Context, android.net.Uri, java.lang.String, java.lang.String, int):android.content.Intent");
    }

    /* renamed from: a */
    public static Intent m4311a(Context context, String str) {
        Intent intent;
        List<String> pathSegments = Uri.parse(str).getPathSegments();
        if (C14217x3.m2130j(context, "com.facebook.katana") && C14217x3.m2136h(context, "com.facebook.katana") > 5278) {
            if (str.contains("www.facebook.com") && str.contains("posts")) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://post/" + pathSegments.get(0) + "_" + pathSegments.get(2)));
            } else if (str.contains("www.facebook.com/whoscall.southkorea")) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/1554170021530935"));
            } else if (str.contains("www.facebook.com/WhosCall.Taiwan")) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/148353431949142"));
            } else if (str.contains("www.facebook.com/whoscall.thailand")) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/1411621989099588"));
            } else if (str.contains("www.facebook.com/WhosCall")) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/253352914728379"));
            } else if (str.contains("www.facebook.com/") && m4308a(pathSegments.get(0))) {
                intent = new Intent("android.intent.action.VIEW", Uri.parse("fb://page/" + pathSegments.get(0)));
            } else if (str.contains("www.facebook.com/sharer/sharer.php")) {
                String queryParameter = Uri.parse(str).getQueryParameter("u");
                intent = new Intent("android.intent.action.SEND");
                intent.setPackage("com.facebook.katana");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", queryParameter);
            }
            return intent;
        }
        intent = null;
        return intent;
    }

    /* renamed from: a */
    public static Intent m4310a(Context context, String str, String str2) {
        String str3;
        String str4;
        Uri parse = Uri.parse(str);
        if (!C14217x3.m2160b(str2) && !C14217x3.m2130j(context, str2)) {
            return C14217x3.m2139g(context, str2);
        }
        if (str.startsWith("kakaolink")) {
            str3 = parse.getQueryParameter(NotificationCompat.CATEGORY_MESSAGE) + "\n" + parse.getQueryParameter("url");
            str4 = "com.kakao.talk";
        } else if (str.startsWith("whatsapp")) {
            str3 = parse.getQueryParameter("text");
            str4 = "com.whatsapp";
        } else {
            str3 = null;
            str4 = null;
        }
        if (str4 != null) {
            try {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.SUBJECT", "");
                intent.putExtra("android.intent.extra.TEXT", str3);
                intent.setPackage(str4);
                return intent;
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(Uri.parse(str));
            return intent2;
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m4309a(Uri uri, String str) {
        return uri.toString().startsWith("whoscall://") && uri.getQueryParameter("page") != null && uri.getQueryParameter("page").equals(str);
    }

    /* renamed from: a */
    public static boolean m4308a(String str) {
        try {
            Long.parseLong(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}
