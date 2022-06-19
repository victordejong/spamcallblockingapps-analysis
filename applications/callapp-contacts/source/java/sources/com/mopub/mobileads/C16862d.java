package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: com.mopub.mobileads.d */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/d.class */
public final class C16862d {

    /* renamed from: f */
    String f59687f;

    /* renamed from: g */
    String f59688g;

    /* renamed from: a */
    final Map<String, AdAdapter> f59682a = new TreeMap();

    /* renamed from: h */
    private final Map<String, MoPubReward> f59689h = new TreeMap();

    /* renamed from: b */
    final Map<String, Set<MoPubReward>> f59683b = new TreeMap();

    /* renamed from: c */
    final Map<String, String> f59684c = new TreeMap();

    /* renamed from: d */
    final Map<String, String> f59685d = new TreeMap();

    /* renamed from: e */
    final Map<AdAdapter, MoPubReward> f59686e = new HashMap();

    /* renamed from: i */
    private final Map<AdAdapter, Set<String>> f59690i = new HashMap();

    /* renamed from: a */
    public final AdAdapter m6345a(String str) {
        return this.f59682a.get(str);
    }

    /* renamed from: a */
    public final Set<String> m6347a(AdAdapter adAdapter) {
        Preconditions.checkNotNull(adAdapter);
        HashSet hashSet = new HashSet();
        for (Map.Entry<AdAdapter, Set<String>> entry : this.f59690i.entrySet()) {
            if (adAdapter == entry.getKey()) {
                hashSet.addAll(entry.getValue());
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public final void m6346a(AdAdapter adAdapter, String str) {
        Iterator<Map.Entry<AdAdapter, Set<String>>> it2 = this.f59690i.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<AdAdapter, Set<String>> next = it2.next();
            if (!next.getKey().equals(adAdapter) && next.getValue().contains(str)) {
                next.getValue().remove(str);
                if (next.getValue().isEmpty()) {
                    it2.remove();
                }
            }
        }
        Set<String> set = this.f59690i.get(adAdapter);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            this.f59690i.put(adAdapter, hashSet);
        }
        hashSet.add(str);
    }

    /* renamed from: a */
    public final void m6344a(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            this.f59689h.remove(str);
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt < 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
            } else {
                this.f59689h.put(str, MoPubReward.success(str2, parseInt));
            }
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
        }
    }

    /* renamed from: b */
    public final MoPubReward m6343b(String str) {
        return this.f59689h.get(str);
    }

    /* renamed from: c */
    public final Set<MoPubReward> m6342c(String str) {
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = this.f59683b.get(str);
        Set<MoPubReward> set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        return set2;
    }
}
