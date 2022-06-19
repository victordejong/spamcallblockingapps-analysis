package com.mopub.mobileads;

import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastMacroHelper.class */
public class VastMacroHelper {

    /* renamed from: a */
    public final List<String> f4830a;

    /* renamed from: b */
    public final Map<nh1, String> f4831b;

    public VastMacroHelper(List<String> list) {
        Preconditions.checkNotNull(list, "uris cannot be null");
        this.f4830a = list;
        HashMap hashMap = new HashMap();
        this.f4831b = hashMap;
        hashMap.put(nh1.CACHEBUSTING, m3575b());
    }

    /* renamed from: a */
    public final String m3576a(int i) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j = i;
        return String.format("%02d:%02d:%02d.%03d", Long.valueOf(timeUnit.toHours(j)), Long.valueOf(timeUnit.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(timeUnit.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(i % 1000));
    }

    /* renamed from: b */
    public final String m3575b() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    public List<String> getUris() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f4830a.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!TextUtils.isEmpty(next)) {
                for (nh1 nh1Var : nh1.values()) {
                    String str = this.f4831b.get(nh1Var);
                    String str2 = str;
                    if (str == null) {
                        str2 = "";
                    }
                    next = next.replaceAll("\\[" + nh1Var.name() + "\\]", str2);
                }
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public VastMacroHelper withAssetUri(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, C0515C.UTF8_NAME);
            } catch (UnsupportedEncodingException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to encode url", e);
            }
            this.f4831b.put(nh1.ASSETURI, str);
        }
        return this;
    }

    public VastMacroHelper withContentPlayHead(Integer num) {
        if (num != null) {
            String m3576a = m3576a(num.intValue());
            if (!TextUtils.isEmpty(m3576a)) {
                this.f4831b.put(nh1.CONTENTPLAYHEAD, m3576a);
            }
        }
        return this;
    }

    public VastMacroHelper withErrorCode(VastErrorCode vastErrorCode) {
        if (vastErrorCode != null) {
            this.f4831b.put(nh1.ERRORCODE, vastErrorCode.m3588a());
        }
        return this;
    }
}
