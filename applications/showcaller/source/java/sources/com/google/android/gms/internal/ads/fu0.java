package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.C5667s;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fu0.class */
public final class fu0 implements pt0 {

    /* renamed from: a */
    private final CookieManager f23136a;

    public fu0(Context context) {
        this.f23136a = C5667s.m18158f().mo18016k(context);
    }

    @Override // com.google.android.gms.internal.ads.pt0
    /* renamed from: a */
    public final void mo8187a(Map<String, String> map) {
        if (this.f23136a == null) {
            return;
        }
        if (map.get("clear") == null) {
            String str = map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f23136a.setCookie((String) C7192yr.m8714c().m14263c(C6679kw.f25847z0), str);
            return;
        }
        String str2 = (String) C7192yr.m8714c().m14263c(C6679kw.f25847z0);
        String cookie = this.f23136a.getCookie(str2);
        if (cookie == null) {
            return;
        }
        List<String> m14531f = hv2.m14535b(ku2.m13780b(';')).m14531f(cookie);
        for (int i = 0; i < m14531f.size(); i++) {
            CookieManager cookieManager = this.f23136a;
            Iterator<String> it = hv2.m14535b(ku2.m13780b('=')).m14533d(m14531f.get(i)).iterator();
            Objects.requireNonNull(it);
            if (!it.hasNext()) {
                StringBuilder sb = new StringBuilder(91);
                sb.append("position (0) must be less than the number of elements that remained (");
                sb.append(0);
                sb.append(")");
                throw new IndexOutOfBoundsException(sb.toString());
            }
            String valueOf = String.valueOf(it.next());
            String valueOf2 = String.valueOf((String) C7192yr.m8714c().m14263c(C6679kw.f25775q0));
            cookieManager.setCookie(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
    }
}
