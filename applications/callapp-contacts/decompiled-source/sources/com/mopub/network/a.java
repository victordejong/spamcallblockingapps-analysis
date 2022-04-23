package com.mopub.network;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.mopub.common.Preconditions;
import com.mopub.mobileads.MoPubError;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/network/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    Long f34772a = null;

    /* renamed from: b  reason: collision with root package name */
    AdResponse f34773b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.network.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/network/a$a.class */
    public enum EnumC0548a {
        AD_LOADED("ad_loaded"),
        MISSING_ADAPTER("missing_adapter"),
        TIMEOUT("timeout"),
        INVALID_DATA("invalid_data");
        
        private final String value;

        EnumC0548a(String str) {
            this.value = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        this.f34773b = adResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static EnumC0548a a(MoPubError moPubError) {
        int intCode;
        if (!(moPubError == null || (intCode = moPubError.getIntCode()) == 0)) {
            return intCode != 1 ? intCode != 2 ? EnumC0548a.INVALID_DATA : EnumC0548a.TIMEOUT : EnumC0548a.MISSING_ADAPTER;
        }
        return EnumC0548a.AD_LOADED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<String> a(List<String> list, String str) {
        if (list == null || list.isEmpty() || this.f34772a == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : list) {
            arrayList.add(str2.replace("%%LOAD_DURATION_MS%%", String.valueOf(SystemClock.uptimeMillis() - this.f34772a.longValue())).replace("%%LOAD_RESULT%%", Uri.encode(str)));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, MoPubError moPubError) {
        if (context != null && this.f34772a != null) {
            TrackingRequest.makeTrackingHttpRequest(a(this.f34773b.getAfterLoadUrls(), a(moPubError).value), context);
        }
    }
}
