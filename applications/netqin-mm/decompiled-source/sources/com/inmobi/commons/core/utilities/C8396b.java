package com.inmobi.commons.core.utilities;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.android.volley.Request;
import com.mopub.common.Constants;
import java.net.URISyntaxException;
import java.net.URLDecoder;
/* renamed from: com.inmobi.commons.core.utilities.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b.class */
public class C8396b {

    /* renamed from: a */
    public static final String f32649a = "b";

    /* renamed from: a */
    public static String m5698a(Context context, String str, String str2) {
        if (context == null) {
            return null;
        }
        try {
            Intent parseUri = Intent.parseUri(str, 0);
            if (parseUri.resolveActivity(context.getPackageManager()) != null) {
                parseUri.setFlags(268435456);
                context.startActivity(parseUri);
                return str;
            }
            StringBuilder sb = new StringBuilder("No app can handle the:");
            sb.append(str);
            sb.append(", trying with fallback URL if any");
            if (!TextUtils.isEmpty(str2)) {
                return m5698a(context, str2, null);
            }
            if (!Constants.INTENT_SCHEME.equals(Uri.parse(str).getScheme())) {
                return null;
            }
            String b = m5694b(str);
            if (!TextUtils.isEmpty(b)) {
                return m5698a(context, URLDecoder.decode(b, Request.DEFAULT_PARAMS_ENCODING), null);
            }
            return null;
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder("No app can handle the url:");
            sb2.append(str);
            sb2.append(", Log : ");
            sb2.append(e.getMessage());
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m5699a(Context context, String str) {
        if (str == null) {
            return false;
        }
        if (context == null) {
            return m5697a(Uri.parse(str));
        }
        try {
            return new Intent("android.intent.action.VIEW", Uri.parse(str)).resolveActivity(context.getPackageManager()) != null;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m5697a(Uri uri) {
        return "http".equals(uri.getScheme()) || "https".equals(uri.getScheme());
    }

    /* renamed from: a */
    public static boolean m5696a(String str) {
        Uri parse = Uri.parse(str);
        return m5697a(parse) && !"play.google.com".equals(parse.getHost()) && !"market.android.com".equals(parse.getHost()) && !"market".equals(parse.getScheme());
    }

    /* renamed from: b */
    public static String m5694b(String str) {
        String str2;
        try {
            str2 = Intent.parseUri(str, 1).getStringExtra("browser_fallback_url");
        } catch (URISyntaxException e) {
            new StringBuilder("Exception while getting Fallback Url :").append(e.getMessage());
            str2 = null;
        }
        return str2;
    }

    /* renamed from: b */
    public static void m5695b(Context context, String str) throws URISyntaxException, ActivityNotFoundException {
        while (context != null) {
            try {
                Intent parseUri = Intent.parseUri(str, 0);
                parseUri.setFlags(268435456);
                context.startActivity(parseUri);
                return;
            } catch (ActivityNotFoundException e) {
                if (Constants.INTENT_SCHEME.equals(Uri.parse(str).getScheme())) {
                    str = m5694b(str);
                    if (TextUtils.isEmpty(str)) {
                    }
                }
                throw e;
            }
        }
    }
}
