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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bi.class */
public final class bi {

    /* renamed from: c  reason: collision with root package name */
    bi f24488c;
    private final Map<String, String> e;

    /* renamed from: d  reason: collision with root package name */
    private final List<bg> f24489d = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    final Object f24487b = new Object();

    /* renamed from: a  reason: collision with root package name */
    final boolean f24486a = true;

    public bi(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.e = linkedHashMap;
        linkedHashMap.put("action", str);
        linkedHashMap.put(Reporting.Key.AD_FORMAT, str2);
    }

    public final bg a(long j) {
        if (!this.f24486a) {
            return null;
        }
        return new bg(j, null, null);
    }

    public final bh a() {
        bh bhVar;
        boolean booleanValue = ((Boolean) ekb.e().a(aq.bl)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.f24487b) {
            for (bg bgVar : this.f24489d) {
                long j = bgVar.f24368a;
                String str = bgVar.f24369b;
                bg bgVar2 = bgVar.f24370c;
                if (bgVar2 != null && j > 0) {
                    long j2 = bgVar2.f24368a;
                    sb.append(str);
                    sb.append('.');
                    sb.append(j - j2);
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(bgVar2.f24368a))) {
                            long j3 = bgVar2.f24368a;
                            hashMap.put(Long.valueOf(j3), new StringBuilder(str));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(bgVar2.f24368a));
                            sb2.append('+');
                            sb2.append(str);
                        }
                    }
                }
            }
            this.f24489d.clear();
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
                    sb3.append(zzr.zzlc().a() + (((Long) entry.getKey()).longValue() - zzr.zzlc().b()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str2 = sb3.toString();
            }
            bhVar = new bh(sb.toString(), str2);
        }
        return bhVar;
    }

    public final void a(String str, String str2) {
        ax a2;
        if (this.f24486a && !TextUtils.isEmpty(str2) && (a2 = zzr.zzkz().a()) != null) {
            synchronized (this.f24487b) {
                bc a3 = a2.a(str);
                Map<String, String> map = this.e;
                map.put(str, a3.a(map.get(str), str2));
            }
        }
    }

    public final boolean a(bg bgVar, long j, String... strArr) {
        synchronized (this.f24487b) {
            for (String str : strArr) {
                this.f24489d.add(new bg(j, str, bgVar));
            }
        }
        return true;
    }

    public final Map<String, String> b() {
        bi biVar;
        synchronized (this.f24487b) {
            ax a2 = zzr.zzkz().a();
            return (a2 == null || (biVar = this.f24488c) == null) ? this.e : a2.a(this.e, biVar.b());
        }
    }
}
