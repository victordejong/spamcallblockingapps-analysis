package com.mopub.mobileads;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.tenor.android.core.constant.StringConstant;
import e.n.b.v0;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/VastMacroHelper.class */
public class VastMacroHelper {

    /* renamed from: a */
    public final List<String> f8875a;

    /* renamed from: b */
    public final Map<v0, String> f8876b;

    public VastMacroHelper(List<String> list) {
        Preconditions.checkNotNull(list, "uris cannot be null");
        this.f8875a = list;
        HashMap hashMap = new HashMap();
        this.f8876b = hashMap;
        hashMap.put(v0.CACHEBUSTING, String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d))));
    }

    public List<String> getUris() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f8875a.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!TextUtils.isEmpty(next)) {
                Enum[] values = v0.values();
                for (int i = 0; i < 4; i++) {
                    Enum r0 = values[i];
                    String str = this.f8876b.get(r0);
                    String str2 = str;
                    if (str == null) {
                        str2 = "";
                    }
                    StringBuilder m8728C = C22128a.m8728C("\\[");
                    m8728C.append(r0.name());
                    m8728C.append("\\]");
                    next = next.replaceAll(m8728C.toString(), str2);
                }
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public VastMacroHelper withAssetUri(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, StringConstant.UTF8);
            } catch (UnsupportedEncodingException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to encode url", e);
            }
            this.f8876b.put(v0.ASSETURI, str);
        }
        return this;
    }

    public VastMacroHelper withContentPlayHead(Integer num) {
        if (num != null) {
            int intValue = num.intValue();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long j = intValue;
            String format = String.format("%02d:%02d:%02d.%03d", Long.valueOf(timeUnit.toHours(j)), Long.valueOf(timeUnit.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(timeUnit.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(intValue % 1000));
            if (!TextUtils.isEmpty(format)) {
                this.f8876b.put(v0.CONTENTPLAYHEAD, format);
            }
        }
        return this;
    }

    public VastMacroHelper withErrorCode(VastErrorCode vastErrorCode) {
        if (vastErrorCode != null) {
            this.f8876b.put(v0.ERRORCODE, vastErrorCode.f8857a);
        }
        return this;
    }
}
