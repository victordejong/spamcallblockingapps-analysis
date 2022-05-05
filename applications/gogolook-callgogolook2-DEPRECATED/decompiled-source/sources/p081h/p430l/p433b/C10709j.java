package p081h.p430l.p433b;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10118a;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: h.l.b.j */
/* loaded from: classes2-dex2jar.jar:h/l/b/j.class */
public class C10709j implements Serializable {
    @AbstractC10120c("width")
    @AbstractC10118a

    /* renamed from: a */
    public final int f24405a;
    @AbstractC10120c("height")
    @AbstractC10118a

    /* renamed from: b */
    public final int f24406b;
    @AbstractC10120c(Constants.VAST_SKIP_OFFSET_MS)
    @AbstractC10118a

    /* renamed from: c */
    public final int f24407c;
    @Nullable
    @AbstractC10120c(Constants.VAST_DURATION_MS)
    @AbstractC10118a

    /* renamed from: d */
    public final Integer f24408d;
    @NonNull
    @AbstractC10120c(Constants.VAST_RESOURCE)
    @AbstractC10118a

    /* renamed from: e */
    public final C10715o f24409e;
    @NonNull
    @AbstractC10120c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC10118a

    /* renamed from: f */
    public final List<VastTracker> f24410f;
    @Nullable
    @AbstractC10120c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC10118a

    /* renamed from: g */
    public final String f24411g;
    @NonNull
    @AbstractC10120c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC10118a

    /* renamed from: h */
    public final List<VastTracker> f24412h;

    /* renamed from: h.l.b.j$a */
    /* loaded from: classes2-dex2jar.jar:h/l/b/j$a.class */
    public class C10710a implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ String f24413a;

        /* renamed from: b */
        public final /* synthetic */ Context f24414b;

        public C10710a(C10709j jVar, String str, Context context) {
            this.f24413a = str;
            this.f24414b = context;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                Bundle bundle = new Bundle();
                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                if (!TextUtils.isEmpty(this.f24413a)) {
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, this.f24413a);
                }
                try {
                    Intents.startActivity(this.f24414b, Intents.getStartActivityIntent(this.f24414b, MoPubBrowser.class, bundle));
                } catch (IntentNotResolvableException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                }
            }
        }
    }

    public C10709j(int i, int i2, @Nullable Integer num, @Nullable Integer num2, @NonNull C10715o oVar, @NonNull List<VastTracker> list, @Nullable String str, @NonNull List<VastTracker> list2) {
        Preconditions.checkNotNull(oVar);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.f24405a = i;
        this.f24406b = i2;
        this.f24407c = num == null ? 0 : num.intValue();
        this.f24408d = num2;
        this.f24409e = oVar;
        this.f24410f = list;
        this.f24411g = str;
        this.f24412h = list2;
    }

    @NonNull
    /* renamed from: a */
    public List<VastTracker> m10857a() {
        return this.f24410f;
    }

    /* renamed from: a */
    public void m10856a(@NonNull Context context, int i, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        TrackingRequest.makeVastTrackingHttpRequest(this.f24412h, null, Integer.valueOf(i), str, context);
    }

    /* renamed from: a */
    public void m10855a(@NonNull Context context, @Nullable String str, @Nullable String str2) {
        Preconditions.checkNotNull(context);
        String correctClickThroughUrl = this.f24409e.getCorrectClickThroughUrl(this.f24411g, str);
        if (!TextUtils.isEmpty(correctClickThroughUrl)) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new C10710a(this, str2, context)).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    @Nullable
    /* renamed from: b */
    public Integer m10854b() {
        return this.f24408d;
    }

    /* renamed from: c */
    public int m10853c() {
        return this.f24406b;
    }

    /* renamed from: d */
    public int m10852d() {
        return this.f24407c;
    }

    @NonNull
    /* renamed from: e */
    public C10715o m10851e() {
        return this.f24409e;
    }

    /* renamed from: f */
    public int m10850f() {
        return this.f24405a;
    }
}
