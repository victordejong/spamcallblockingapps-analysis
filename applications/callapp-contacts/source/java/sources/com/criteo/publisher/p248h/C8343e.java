package com.criteo.publisher.p248h;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p256m0.C8445p;
import com.criteo.publisher.p256m0.EnumC8423a;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.criteo.publisher.h.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/e.class */
public final class C8343e implements AbstractC8342d {

    /* renamed from: b */
    private static final List<String> f29987b = Arrays.asList("crt_cpm", "crt_displayUrl", "crt_size");

    /* renamed from: a */
    public final C8402g f29988a = C8404h.m25741a(getClass());

    /* renamed from: a */
    private static boolean m25820a(String str) {
        for (String str2 : f29987b) {
            if (str.startsWith(str2 + ":")) {
                return true;
            }
        }
        return false;
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final EnumC8347a mo25819a() {
        return EnumC8347a.MOPUB_APP_BIDDING;
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final void mo25817a(Object obj, EnumC8423a enumC8423a, C8503s c8503s) {
        String str;
        if (!mo25818a(obj)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("crt_cpm");
        sb.append(":");
        sb.append(c8503s.m25554a());
        sb.append(",");
        sb.append("crt_displayUrl");
        sb.append(":");
        sb.append(c8503s.m25547d());
        if (enumC8423a == EnumC8423a.CRITEO_BANNER) {
            sb.append(",");
            sb.append("crt_size");
            sb.append(":");
            sb.append(c8503s.m25540k());
            sb.append("x");
            sb.append(c8503s.m25546e());
        }
        Object m25673a = C8445p.m25673a(obj, "getKeywords", new Object[0]);
        if (m25673a != null) {
            str = m25673a + "," + sb.toString();
        } else {
            str = sb.toString();
        }
        C8445p.m25673a(obj, "setKeywords", str);
        this.f29988a.m25744a(C8337a.m25826a(EnumC8347a.MOPUB_APP_BIDDING, sb.toString()));
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final boolean mo25818a(Object obj) {
        return C8445p.m25674a(obj, "com.mopub.mobileads.MoPubView") || C8445p.m25674a(obj, "com.mopub.mobileads.MoPubInterstitial");
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: b */
    public final void mo25816b(Object obj) {
        String str;
        String[] split;
        if (mo25818a(obj) && (str = (String) C8445p.m25673a(obj, "getKeywords", new Object[0])) != null) {
            StringBuilder sb = new StringBuilder();
            for (String str2 : str.split(",")) {
                if (!m25820a(str2)) {
                    sb.append(str2);
                    sb.append(",");
                }
            }
            C8445p.m25673a(obj, "setKeywords", sb.toString().replaceAll(",$", ""));
        }
    }
}
