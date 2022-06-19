package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubError;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.mopub.network.a */
/* loaded from: classes4-dex2jar.jar:com/mopub/network/a.class */
public final class C17004a {

    /* renamed from: a */
    Long f60342a = null;

    /* renamed from: b */
    AdResponse f60343b;

    /* renamed from: com.mopub.network.a$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/a$a.class */
    public enum EnumC17005a {
        AD_LOADED("ad_loaded"),
        MISSING_ADAPTER("missing_adapter"),
        TIMEOUT("timeout"),
        INVALID_DATA("invalid_data");
        
        private final String value;

        EnumC17005a(String str) {
            this.value = str;
        }

        public static /* synthetic */ String access$000(EnumC17005a enumC17005a) {
            return enumC17005a.value;
        }
    }

    public C17004a(AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        this.f60343b = adResponse;
    }

    /* renamed from: a */
    public static EnumC17005a m6038a(MoPubError moPubError) {
        int intCode;
        if (moPubError != null && (intCode = moPubError.getIntCode()) != 0) {
            return intCode != 1 ? intCode != 2 ? EnumC17005a.INVALID_DATA : EnumC17005a.TIMEOUT : EnumC17005a.MISSING_ADAPTER;
        }
        return EnumC17005a.AD_LOADED;
    }

    /* renamed from: a */
    public final List<String> m6037a(List<String> list, String str) {
        if (list == null || list.isEmpty() || this.f60342a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            arrayList.add(str2.replace("%%LOAD_DURATION_MS%%", String.valueOf(SystemClock.uptimeMillis() - this.f60342a.longValue())).replace("%%LOAD_RESULT%%", Uri.encode(str)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m6039a(Context context, MoPubError moPubError) {
        if (context == null || this.f60342a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(m6037a(this.f60343b.getAfterLoadUrls(), m6038a(moPubError).value), context);
    }
}
