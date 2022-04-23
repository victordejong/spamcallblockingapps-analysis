package com.criteo.publisher.h;

import com.criteo.publisher.i.a;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.p;
import com.criteo.publisher.model.s;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/e.class */
public final class e implements d {

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f17343b = Arrays.asList("crt_cpm", "crt_displayUrl", "crt_size");

    /* renamed from: a  reason: collision with root package name */
    public final g f17344a = h.a(getClass());

    private static boolean a(String str) {
        for (String str2 : f17343b) {
            if (str.startsWith(str2 + ":")) {
                return true;
            }
        }
        return false;
    }

    @Override // com.criteo.publisher.h.d
    public final a a() {
        return a.MOPUB_APP_BIDDING;
    }

    @Override // com.criteo.publisher.h.d
    public final void a(Object obj, com.criteo.publisher.m0.a aVar, s sVar) {
        String str;
        if (a(obj)) {
            StringBuilder sb = new StringBuilder();
            sb.append("crt_cpm");
            sb.append(":");
            sb.append(sVar.a());
            sb.append(",");
            sb.append("crt_displayUrl");
            sb.append(":");
            sb.append(sVar.d());
            if (aVar == com.criteo.publisher.m0.a.CRITEO_BANNER) {
                sb.append(",");
                sb.append("crt_size");
                sb.append(":");
                sb.append(sVar.k());
                sb.append("x");
                sb.append(sVar.e());
            }
            Object a2 = p.a(obj, "getKeywords", new Object[0]);
            if (a2 != null) {
                str = a2 + "," + sb.toString();
            } else {
                str = sb.toString();
            }
            p.a(obj, "setKeywords", str);
            this.f17344a.a(a.a(a.MOPUB_APP_BIDDING, sb.toString()));
        }
    }

    @Override // com.criteo.publisher.h.d
    public final boolean a(Object obj) {
        return p.a(obj, "com.mopub.mobileads.MoPubView") || p.a(obj, "com.mopub.mobileads.MoPubInterstitial");
    }

    @Override // com.criteo.publisher.h.d
    public final void b(Object obj) {
        String str;
        String[] split;
        if (a(obj) && (str = (String) p.a(obj, "getKeywords", new Object[0])) != null) {
            StringBuilder sb = new StringBuilder();
            for (String str2 : str.split(",")) {
                if (!a(str2)) {
                    sb.append(str2);
                    sb.append(",");
                }
            }
            p.a(obj, "setKeywords", sb.toString().replaceAll(",$", ""));
        }
    }
}
