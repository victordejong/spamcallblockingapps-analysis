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

    /* renamed from: a  reason: collision with root package name */
    private final CookieManager f23415a;

    public ajf(Context context) {
        this.f23415a = zzr.zzkx().zzbi(context);
    }

    @Override // com.google.android.gms.internal.ads.aiy
    public final void a(Map<String, String> map) {
        if (this.f23415a != null) {
            if (map.get(AdType.CLEAR) != null) {
                String str = (String) ekb.e().a(aq.ax);
                String cookie = this.f23415a.getCookie(str);
                if (cookie != null) {
                    cyf a2 = cyf.a(cxp.a(';'));
                    cyg.a(cookie);
                    Iterator<String> b2 = a2.b(cookie);
                    ArrayList arrayList = new ArrayList();
                    while (b2.hasNext()) {
                        arrayList.add(b2.next());
                    }
                    List unmodifiableList = Collections.unmodifiableList(arrayList);
                    for (int i = 0; i < unmodifiableList.size(); i++) {
                        CookieManager cookieManager = this.f23415a;
                        Iterable<String> a3 = cyf.a(cxp.a('=')).a((String) unmodifiableList.get(i));
                        cyg.a(a3);
                        Iterator<String> it2 = a3.iterator();
                        cyg.a(it2);
                        cyg.a(true, (Object) "numberToAdvance must be nonnegative");
                        if (it2.hasNext()) {
                            String valueOf = String.valueOf(it2.next());
                            String valueOf2 = String.valueOf((String) ekb.e().a(aq.an));
                            cookieManager.setCookie(str, valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
                        } else {
                            StringBuilder sb = new StringBuilder(91);
                            sb.append("position (0) must be less than the number of elements that remained (0)");
                            throw new IndexOutOfBoundsException(sb.toString());
                        }
                    }
                    return;
                }
                return;
            }
            String str2 = map.get("cookie");
            if (!TextUtils.isEmpty(str2)) {
                this.f23415a.setCookie((String) ekb.e().a(aq.ax), str2);
            }
        }
    }
}
