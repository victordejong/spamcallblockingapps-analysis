package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import com.android.volley.toolbox.HttpHeaderParser;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvs.class */
public final class zzdvs {

    /* renamed from: a */
    public static final Charset f27900a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    static {
        Charset.forName("US-ASCII");
        Charset.forName(HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        Charset.forName("UTF-16BE");
        Charset.forName("UTF-16LE");
        Charset.forName("UTF-16");
    }
}
