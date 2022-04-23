package com.mopub.mobileads;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import p081h.p430l.p433b.EnumC10713m;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastMacroHelper.class */
public class VastMacroHelper {
    @NonNull

    /* renamed from: a */
    public final List<String> f8575a;
    @NonNull

    /* renamed from: b */
    public final Map<EnumC10713m, String> f8576b = new HashMap();

    public VastMacroHelper(@NonNull List<String> list) {
        Preconditions.checkNotNull(list, "uris cannot be null");
        this.f8575a = list;
        this.f8576b.put(EnumC10713m.CACHEBUSTING, m30480a());
    }

    @NonNull
    /* renamed from: a */
    public final String m30480a() {
        return String.format(Locale.US, "%08d", Long.valueOf(Math.round(Math.random() * 1.0E8d)));
    }

    @NonNull
    /* renamed from: a */
    public final String m30479a(int i) {
        long j = i;
        return String.format("%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) % TimeUnit.HOURS.toMinutes(1L)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) % TimeUnit.MINUTES.toSeconds(1L)), Integer.valueOf(i % 1000));
    }

    @NonNull
    public List<String> getUris() {
        EnumC10713m[] values;
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f8575a.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!TextUtils.isEmpty(next)) {
                for (EnumC10713m mVar : EnumC10713m.values()) {
                    String str = this.f8576b.get(mVar);
                    String str2 = str;
                    if (str == null) {
                        str2 = "";
                    }
                    next = next.replaceAll("\\[" + mVar.name() + "\\]", str2);
                }
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    @NonNull
    public VastMacroHelper withAssetUri(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                str = URLEncoder.encode(str, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to encode url", e);
            }
            this.f8576b.put(EnumC10713m.ASSETURI, str);
        }
        return this;
    }

    @NonNull
    public VastMacroHelper withContentPlayHead(@Nullable Integer num) {
        if (num != null) {
            String a = m30479a(num.intValue());
            if (!TextUtils.isEmpty(a)) {
                this.f8576b.put(EnumC10713m.CONTENTPLAYHEAD, a);
            }
        }
        return this;
    }

    @NonNull
    public VastMacroHelper withErrorCode(@Nullable VastErrorCode vastErrorCode) {
        if (vastErrorCode != null) {
            this.f8576b.put(EnumC10713m.ERRORCODE, vastErrorCode.m30494a());
        }
        return this;
    }
}
