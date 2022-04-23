package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubError;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/ContentDownloadAnalytics.class */
public class ContentDownloadAnalytics {

    /* renamed from: a */
    public Long f35021a = null;

    /* renamed from: b */
    public AdResponse f35022b;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/ContentDownloadAnalytics$DownloadResult.class */
    public enum DownloadResult {
        AD_LOADED("ad_loaded"),
        MISSING_ADAPTER("missing_adapter"),
        TIMEOUT("timeout"),
        INVALID_DATA("invalid_data");
        
        public final String value;

        DownloadResult(String str) {
            this.value = str;
        }
    }

    public ContentDownloadAnalytics(AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        this.f35022b = adResponse;
    }

    /* renamed from: a */
    public final DownloadResult m3807a(MoPubError moPubError) {
        int intCode;
        if (!(moPubError == null || (intCode = moPubError.getIntCode()) == 0)) {
            return intCode != 1 ? intCode != 2 ? DownloadResult.INVALID_DATA : DownloadResult.TIMEOUT : DownloadResult.MISSING_ADAPTER;
        }
        return DownloadResult.AD_LOADED;
    }

    /* renamed from: a */
    public final List<String> m3806a(List<String> list, String str) {
        if (list == null || list.isEmpty() || this.f35021a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            arrayList.add(str2.replace("%%LOAD_DURATION_MS%%", String.valueOf(SystemClock.uptimeMillis() - this.f35021a.longValue())).replace("%%LOAD_RESULT%%", Uri.encode(str)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m3809a(Context context) {
        if (context != null && this.f35021a != null) {
            TrackingRequest.makeTrackingHttpRequest(m3806a(this.f35022b.getAfterLoadSuccessUrls(), DownloadResult.AD_LOADED.value), context);
        }
    }

    /* renamed from: a */
    public void m3808a(Context context, MoPubError moPubError) {
        if (context != null && this.f35021a != null) {
            TrackingRequest.makeTrackingHttpRequest(m3806a(this.f35022b.getAfterLoadUrls(), m3807a(moPubError).value), context);
        }
    }

    /* renamed from: b */
    public void m3805b(Context context) {
        if (context != null) {
            String beforeLoadUrl = this.f35022b.getBeforeLoadUrl();
            if (!TextUtils.isEmpty(beforeLoadUrl)) {
                this.f35021a = Long.valueOf(SystemClock.uptimeMillis());
                TrackingRequest.makeTrackingHttpRequest(beforeLoadUrl, context);
            }
        }
    }

    /* renamed from: b */
    public void m3804b(Context context, MoPubError moPubError) {
        if (context != null && this.f35021a != null) {
            TrackingRequest.makeTrackingHttpRequest(m3806a(this.f35022b.getAfterLoadFailUrls(), m3807a(moPubError).value), context);
        }
    }
}
