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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/d.class */
public final class d {
    String f;
    String g;

    /* renamed from: a  reason: collision with root package name */
    final Map<String, AdAdapter> f34389a = new TreeMap();
    private final Map<String, MoPubReward> h = new TreeMap();

    /* renamed from: b  reason: collision with root package name */
    final Map<String, Set<MoPubReward>> f34390b = new TreeMap();

    /* renamed from: c  reason: collision with root package name */
    final Map<String, String> f34391c = new TreeMap();

    /* renamed from: d  reason: collision with root package name */
    final Map<String, String> f34392d = new TreeMap();
    final Map<AdAdapter, MoPubReward> e = new HashMap();
    private final Map<AdAdapter, Set<String>> i = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final AdAdapter a(String str) {
        return this.f34389a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<String> a(AdAdapter adAdapter) {
        Preconditions.checkNotNull(adAdapter);
        HashSet hashSet = new HashSet();
        for (Map.Entry<AdAdapter, Set<String>> entry : this.i.entrySet()) {
            if (adAdapter == entry.getKey()) {
                hashSet.addAll(entry.getValue());
            }
        }
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(AdAdapter adAdapter, String str) {
        Iterator<Map.Entry<AdAdapter, Set<String>>> it2 = this.i.entrySet().iterator();
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
        Set<String> set = this.i.get(adAdapter);
        Set<String> set2 = set;
        if (set == null) {
            set2 = new HashSet<>();
            this.i.put(adAdapter, set2);
        }
        set2.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            this.h.remove(str);
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt < 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
            } else {
                this.h.put(str, MoPubReward.success(str2, parseInt));
            }
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final MoPubReward b(String str) {
        return this.h.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<MoPubReward> c(String str) {
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = this.f34390b.get(str);
        Set<MoPubReward> set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        return set2;
    }
}
