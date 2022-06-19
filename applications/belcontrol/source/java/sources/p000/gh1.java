package p000;

import android.text.TextUtils;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdAdapter;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* renamed from: gh1 */
/* loaded from: classes3-dex2jar.jar:gh1.class */
public class gh1 {

    /* renamed from: a */
    public final Map<String, AdAdapter> f6696a = new TreeMap();

    /* renamed from: b */
    public final Map<String, MoPubReward> f6697b = new TreeMap();

    /* renamed from: c */
    public final Map<String, Set<MoPubReward>> f6698c = new TreeMap();

    /* renamed from: d */
    public final Map<String, String> f6699d = new TreeMap();

    /* renamed from: e */
    public final Map<String, String> f6700e = new TreeMap();

    /* renamed from: f */
    public final Map<AdAdapter, MoPubReward> f6701f = new HashMap();

    /* renamed from: g */
    public final Map<AdAdapter, Set<String>> f6702g = new HashMap();

    /* renamed from: h */
    public String f6703h;

    /* renamed from: i */
    public String f6704i;

    /* renamed from: a */
    public void m1680a(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency name and amount cannot be null: name = %s, amount = %s", str2, str3));
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt < 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
            } else if (this.f6698c.containsKey(str)) {
                this.f6698c.get(str).add(MoPubReward.success(str2, parseInt));
            } else {
                HashSet hashSet = new HashSet();
                hashSet.add(MoPubReward.success(str2, parseInt));
                this.f6698c.put(str, hashSet);
            }
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
        }
    }

    /* renamed from: b */
    public void m1679b(AdAdapter adAdapter, String str) {
        Iterator<Map.Entry<AdAdapter, Set<String>>> it = this.f6702g.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<AdAdapter, Set<String>> next = it.next();
            if (!next.getKey().equals(adAdapter) && next.getValue().contains(str)) {
                next.getValue().remove(str);
                if (next.getValue().isEmpty()) {
                    it.remove();
                }
            }
        }
        Set<String> set = this.f6702g.get(adAdapter);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            this.f6702g.put(adAdapter, hashSet);
        }
        hashSet.add(str);
    }

    /* renamed from: c */
    public AdAdapter m1678c(String str) {
        return this.f6696a.get(str);
    }

    /* renamed from: d */
    public Set<String> m1677d(AdAdapter adAdapter) {
        Preconditions.checkNotNull(adAdapter);
        HashSet hashSet = new HashSet();
        for (Map.Entry<AdAdapter, Set<String>> entry : this.f6702g.entrySet()) {
            if (adAdapter == entry.getKey()) {
                hashSet.addAll(entry.getValue());
            }
        }
        return hashSet;
    }

    /* renamed from: e */
    public Set<MoPubReward> m1676e(String str) {
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = this.f6698c.get(str);
        Set<MoPubReward> set2 = set;
        if (set == null) {
            set2 = Collections.emptySet();
        }
        return set2;
    }

    /* renamed from: f */
    public String m1675f() {
        return this.f6703h;
    }

    /* renamed from: g */
    public String m1674g(String str) {
        return this.f6700e.get(str);
    }

    /* renamed from: h */
    public String m1673h() {
        return this.f6704i;
    }

    /* renamed from: i */
    public MoPubReward m1672i(AdAdapter adAdapter) {
        return this.f6701f.get(adAdapter);
    }

    /* renamed from: j */
    public MoPubReward m1671j(String str) {
        return this.f6697b.get(str);
    }

    /* renamed from: k */
    public String m1670k(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f6699d.get(str);
    }

    /* renamed from: l */
    public void m1669l(String str) {
        Preconditions.checkNotNull(str);
        Set<MoPubReward> set = this.f6698c.get(str);
        if (set == null || set.isEmpty()) {
            return;
        }
        set.clear();
    }

    /* renamed from: m */
    public void m1668m(String str) {
        Preconditions.checkNotNull(str);
        m1663r(str, null, null);
    }

    /* renamed from: n */
    public void m1667n(String str, MoPubReward moPubReward) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubReward);
        Set<MoPubReward> set = this.f6698c.get(str);
        if (set == null || set.isEmpty()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "AdUnit %s does not have any rewards.", str));
        } else if (!set.contains(moPubReward)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Selected reward is invalid for AdUnit %s.", str));
        } else {
            m1663r(str, moPubReward.getLabel(), Integer.toString(moPubReward.getAmount()));
        }
    }

    /* renamed from: o */
    public void m1666o(String str) {
        this.f6703h = str;
    }

    /* renamed from: p */
    public void m1665p(String str) {
        this.f6704i = str;
    }

    /* renamed from: q */
    public void m1664q(String str, AdAdapter adAdapter) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(adAdapter);
        this.f6696a.put(str, adAdapter);
        m1679b(adAdapter, str);
    }

    /* renamed from: r */
    public void m1663r(String str, String str2, String str3) {
        Preconditions.checkNotNull(str);
        if (str2 == null || str3 == null) {
            this.f6697b.remove(str);
            return;
        }
        try {
            int parseInt = Integer.parseInt(str3);
            if (parseInt < 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount cannot be negative: %s", str3));
            } else {
                this.f6697b.put(str, MoPubReward.success(str2, parseInt));
            }
        } catch (NumberFormatException e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Currency amount must be an integer: %s", str3));
        }
    }

    /* renamed from: s */
    public void m1662s(String str, String str2) {
        Preconditions.NoThrow.checkNotNull(str);
        this.f6700e.put(str, str2);
    }

    /* renamed from: t */
    public void m1661t(String str, String str2) {
        Preconditions.checkNotNull(str);
        this.f6699d.put(str, str2);
    }

    /* renamed from: u */
    public void m1660u(AdAdapter adAdapter, MoPubReward moPubReward) {
        Preconditions.checkNotNull(adAdapter);
        this.f6701f.put(adAdapter, moPubReward);
    }
}
