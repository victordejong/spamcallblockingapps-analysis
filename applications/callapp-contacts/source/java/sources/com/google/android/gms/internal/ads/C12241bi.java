package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import net.pubnative.lite.sdk.analytics.Reporting;
@Deprecated
/* renamed from: com.google.android.gms.internal.ads.bi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bi.class */
public final class C12241bi {

    /* renamed from: c */
    C12241bi f44003c;

    /* renamed from: e */
    private final Map<String, String> f44005e;

    /* renamed from: d */
    private final List<C12239bg> f44004d = new LinkedList();

    /* renamed from: b */
    final Object f44002b = new Object();

    /* renamed from: a */
    final boolean f44001a = true;

    public C12241bi(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f44005e = linkedHashMap;
        linkedHashMap.put("action", str);
        linkedHashMap.put(Reporting.Key.AD_FORMAT, str2);
    }

    /* renamed from: a */
    public final C12239bg m17833a(long j) {
        if (!this.f44001a) {
            return null;
        }
        return new C12239bg(j, null, null);
    }

    /* renamed from: a */
    public final C12240bh m17834a() {
        C12240bh c12240bh;
        boolean booleanValue = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f44002b) {
            for (C12239bg c12239bg : this.f44004d) {
                long j = c12239bg.f43848a;
                String str = c12239bg.f43849b;
                C12239bg c12239bg2 = c12239bg.f43850c;
                if (c12239bg2 != null && j > 0) {
                    long j2 = c12239bg2.f43848a;
                    sb.append(str);
                    sb.append('.');
                    sb.append(j - j2);
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(c12239bg2.f43848a))) {
                            hashMap.put(Long.valueOf(c12239bg2.f43848a), new StringBuilder(str));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(c12239bg2.f43848a));
                            sb2.append('+');
                            sb2.append(str);
                        }
                    }
                }
            }
            this.f44004d.clear();
            String str2 = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (booleanValue) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append('.');
                    sb3.append(zzr.zzlc().mo19039a() + (((Long) entry.getKey()).longValue() - zzr.zzlc().mo19038b()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str2 = sb3.toString();
            }
            c12240bh = new C12240bh(sb.toString(), str2);
        }
        return c12240bh;
    }

    /* renamed from: a */
    public final void m17831a(String str, String str2) {
        C12202ax m13983a;
        if (!this.f44001a || TextUtils.isEmpty(str2) || (m13983a = zzr.zzkz().m13983a()) == null) {
            return;
        }
        synchronized (this.f44002b) {
            AbstractC12214bc m18347a = m13983a.m18347a(str);
            Map<String, String> map = this.f44005e;
            map.put(str, m18347a.mo18119a(map.get(str), str2));
        }
    }

    /* renamed from: a */
    public final boolean m17832a(C12239bg c12239bg, long j, String... strArr) {
        synchronized (this.f44002b) {
            for (String str : strArr) {
                this.f44004d.add(new C12239bg(j, str, c12239bg));
            }
        }
        return true;
    }

    /* renamed from: b */
    public final Map<String, String> m17830b() {
        C12241bi c12241bi;
        synchronized (this.f44002b) {
            C12202ax m13983a = zzr.zzkz().m13983a();
            return (m13983a == null || (c12241bi = this.f44003c) == null) ? this.f44005e : m13983a.m18345a(this.f44005e, c12241bi.m17830b());
        }
    }
}
