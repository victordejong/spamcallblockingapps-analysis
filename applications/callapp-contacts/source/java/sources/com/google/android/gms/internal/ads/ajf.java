package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.zzr;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajf.class */
public final class ajf implements aiy {

    /* renamed from: a */
    private final CookieManager f42201a;

    public ajf(Context context) {
        this.f42201a = zzr.zzkx().zzbi(context);
    }

    @Override // com.google.android.gms.internal.ads.aiy
    /* renamed from: a */
    public final void mo18642a(Map<String, String> map) {
        if (this.f42201a == null) {
            return;
        }
        if (map.get(AdType.CLEAR) == null) {
            String str = map.get("cookie");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f42201a.setCookie((String) ekb.m14831e().m18571a(C12187aq.f42687ax), str);
            return;
        }
        String str2 = (String) ekb.m14831e().m18571a(C12187aq.f42687ax);
        String cookie = this.f42201a.getCookie(str2);
        if (cookie == null) {
            return;
        }
        cyf m17066a = cyf.m17066a(cxp.m17075a(';'));
        cyg.m17060a(cookie);
        Iterator<String> m17064b = m17066a.m17064b(cookie);
        ArrayList arrayList = new ArrayList();
        while (m17064b.hasNext()) {
            arrayList.add(m17064b.next());
        }
        List unmodifiableList = Collections.unmodifiableList(arrayList);
        for (int i = 0; i < unmodifiableList.size(); i++) {
            CookieManager cookieManager = this.f42201a;
            Iterable<String> m17065a = cyf.m17066a(cxp.m17075a('=')).m17065a((String) unmodifiableList.get(i));
            cyg.m17060a(m17065a);
            Iterator<String> it2 = m17065a.iterator();
            cyg.m17060a(it2);
            cyg.m17057a(true, (Object) "numberToAdvance must be nonnegative");
            if (!it2.hasNext()) {
                StringBuilder sb = new StringBuilder(91);
                sb.append("position (0) must be less than the number of elements that remained (0)");
                throw new IndexOutOfBoundsException(sb.toString());
            }
            String valueOf = String.valueOf(it2.next());
            String valueOf2 = String.valueOf((String) ekb.m14831e().m18571a(C12187aq.f42677an));
            cookieManager.setCookie(str2, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
        }
    }
}
