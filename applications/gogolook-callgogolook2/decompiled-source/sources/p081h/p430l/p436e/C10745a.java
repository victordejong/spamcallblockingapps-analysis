package p081h.p430l.p436e;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.AdResponse;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.List;
/* renamed from: h.l.e.a */
/* loaded from: classes2-dex2jar.jar:h/l/e/a.class */
public class C10745a {
    @Nullable

    /* renamed from: a */
    public Long f24507a = null;
    @NonNull

    /* renamed from: b */
    public AdResponse f24508b;

    /* renamed from: h.l.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/l/e/a$a.class */
    public enum EnumC10746a {
        AD_LOADED("ad_loaded"),
        MISSING_ADAPTER("missing_adapter"),
        TIMEOUT("timeout"),
        INVALID_DATA("invalid_data");
        
        @NonNull

        /* renamed from: a */
        public final String f24510a;

        EnumC10746a(@NonNull String str) {
            this.f24510a = str;
        }
    }

    public C10745a(@NonNull AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        this.f24508b = adResponse;
    }

    @NonNull
    /* renamed from: a */
    public final EnumC10746a m10745a(@Nullable MoPubError moPubError) {
        int intCode;
        if (!(moPubError == null || (intCode = moPubError.getIntCode()) == 0)) {
            return intCode != 1 ? intCode != 2 ? EnumC10746a.INVALID_DATA : EnumC10746a.TIMEOUT : EnumC10746a.MISSING_ADAPTER;
        }
        return EnumC10746a.AD_LOADED;
    }

    @Nullable
    /* renamed from: a */
    public final List<String> m10744a(@Nullable List<String> list, @NonNull String str) {
        if (list == null || list.isEmpty() || this.f24507a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            arrayList.add(str2.replace("%%LOAD_DURATION_MS%%", String.valueOf(SystemClock.uptimeMillis() - this.f24507a.longValue())).replace("%%LOAD_RESULT%%", Uri.encode(str)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m10747a(@Nullable Context context) {
        if (context != null && this.f24507a != null) {
            TrackingRequest.makeTrackingHttpRequest(m10744a(this.f24508b.getAfterLoadSuccessUrls(), EnumC10746a.AD_LOADED.f24510a), context);
        }
    }

    /* renamed from: a */
    public void m10746a(@Nullable Context context, @Nullable MoPubError moPubError) {
        if (context != null && this.f24507a != null) {
            TrackingRequest.makeTrackingHttpRequest(m10744a(this.f24508b.getAfterLoadUrls(), m10745a(moPubError).f24510a), context);
        }
    }

    /* renamed from: b */
    public void m10743b(@Nullable Context context) {
        if (context != null) {
            String beforeLoadUrl = this.f24508b.getBeforeLoadUrl();
            if (!TextUtils.isEmpty(beforeLoadUrl)) {
                this.f24507a = Long.valueOf(SystemClock.uptimeMillis());
                TrackingRequest.makeTrackingHttpRequest(beforeLoadUrl, context);
            }
        }
    }

    /* renamed from: b */
    public void m10742b(@Nullable Context context, @Nullable MoPubError moPubError) {
        if (context != null && this.f24507a != null) {
            TrackingRequest.makeTrackingHttpRequest(m10744a(this.f24508b.getAfterLoadFailUrls(), m10745a(moPubError).f24510a), context);
        }
    }
}
