package com.mopub.mobileads;

import android.text.TextUtils;
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
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastMacroHelper.class */
public class VastMacroHelper {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f34270a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<k, String> f34271b;

    public VastMacroHelper(List<String> list) {
        Preconditions.checkNotNull(list, "uris cannot be null");
        this.f34270a = list;
        HashMap hashMap = new HashMap();
        this.f34271b = hashMap;
        hashMap.put(k.CACHEBUSTING, String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d))));
    }

    public List<String> getUris() {
        k[] values;
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = this.f34270a.iterator();
        while (it2.hasNext()) {
            String next = it2.next();
            if (!TextUtils.isEmpty(next)) {
                for (k kVar : k.values()) {
                    String str = this.f34271b.get(kVar);
                    String str2 = str;
                    if (str == null) {
                        str2 = "";
                    }
                    next = next.replaceAll("\\[" + kVar.name() + "\\]", str2);
                }
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public VastMacroHelper withAssetUri(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to encode url", e);
            }
            this.f34271b.put(k.ASSETURI, str);
        }
        return this;
    }

    public VastMacroHelper withContentPlayHead(Integer num) {
        if (num != null) {
            int intValue = num.intValue();
            long j = intValue;
            String format = String.format("%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(intValue % 1000));
            if (!TextUtils.isEmpty(format)) {
                this.f34271b.put(k.CONTENTPLAYHEAD, format);
            }
        }
        return this;
    }

    public VastMacroHelper withErrorCode(VastErrorCode vastErrorCode) {
        if (vastErrorCode != null) {
            this.f34271b.put(k.ERRORCODE, vastErrorCode.getErrorCode());
        }
        return this;
    }
}
