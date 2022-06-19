package p000;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.AdResponse;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.List;
/* renamed from: fi1 */
/* loaded from: classes3-dex2jar.jar:fi1.class */
public class fi1 {

    /* renamed from: a */
    public Long f6634a = null;

    /* renamed from: b */
    public AdResponse f6635b;

    /* renamed from: fi1$a */
    /* loaded from: classes3-dex2jar.jar:fi1$a.class */
    public enum EnumC1433a {
        AD_LOADED("ad_loaded"),
        MISSING_ADAPTER("missing_adapter"),
        TIMEOUT("timeout"),
        INVALID_DATA("invalid_data");
        

        /* renamed from: a */
        public final String f6637a;

        EnumC1433a(String str) {
            this.f6637a = str;
        }
    }

    public fi1(AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        this.f6635b = adResponse;
    }

    /* renamed from: a */
    public final EnumC1433a m1733a(MoPubError moPubError) {
        int intCode;
        if (moPubError != null && (intCode = moPubError.getIntCode()) != 0) {
            return intCode != 1 ? intCode != 2 ? EnumC1433a.INVALID_DATA : EnumC1433a.TIMEOUT : EnumC1433a.MISSING_ADAPTER;
        }
        return EnumC1433a.AD_LOADED;
    }

    /* renamed from: b */
    public final List<String> m1732b(List<String> list, String str) {
        if (list == null || list.isEmpty() || this.f6634a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            arrayList.add(str2.replace("%%LOAD_DURATION_MS%%", String.valueOf(SystemClock.uptimeMillis() - this.f6634a.longValue())).replace("%%LOAD_RESULT%%", Uri.encode(str)));
        }
        return arrayList;
    }

    /* renamed from: c */
    public void m1731c(Context context, MoPubError moPubError) {
        if (context == null || this.f6634a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(m1732b(this.f6635b.getAfterLoadUrls(), m1733a(moPubError).f6637a), context);
    }

    /* renamed from: d */
    public void m1730d(Context context, MoPubError moPubError) {
        if (context == null || this.f6634a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(m1732b(this.f6635b.getAfterLoadFailUrls(), m1733a(moPubError).f6637a), context);
    }

    /* renamed from: e */
    public void m1729e(Context context) {
        if (context == null || this.f6634a == null) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(m1732b(this.f6635b.getAfterLoadSuccessUrls(), EnumC1433a.AD_LOADED.f6637a), context);
    }

    /* renamed from: f */
    public void m1728f(Context context) {
        if (context == null) {
            return;
        }
        List<String> beforeLoadUrls = this.f6635b.getBeforeLoadUrls();
        if (beforeLoadUrls.isEmpty()) {
            return;
        }
        this.f6634a = Long.valueOf(SystemClock.uptimeMillis());
        TrackingRequest.makeTrackingHttpRequest(beforeLoadUrls, context);
    }
}
