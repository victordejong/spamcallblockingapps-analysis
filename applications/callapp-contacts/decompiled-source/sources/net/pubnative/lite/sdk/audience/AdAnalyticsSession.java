package net.pubnative.lite.sdk.audience;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.models.Ad;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u0018��2\u00020\u0001B1\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007¢\u0006\u0002\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0006\u0010\u0017\u001a\u00020\u0014J\u000e\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0014J\u0006\u0010\u001c\u001a\u00020\u0014J\u000e\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001aR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001e"}, d2 = {"Lnet/pubnative/lite/sdk/audience/AdAnalyticsSession;", "", "context", "Landroid/content/Context;", "ad", "Lnet/pubnative/lite/sdk/models/Ad;", "mCreativeType", "", "mAdFormat", "mAdSize", "(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/Ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAd", "()Lnet/pubnative/lite/sdk/models/Ad;", "getContext", "()Landroid/content/Context;", "eventAnalytics", "Lnet/pubnative/lite/sdk/audience/EventAnalytics;", "showTime", "", "onAdClicked", "", "onAdDismissed", "onAdFinished", "onAdImpression", "onAdMuted", "videoPosition", "", "onAdShowed", "onAdStarted", "onAdUnmuted", "hybid.sdk.core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/audience/AdAnalyticsSession.class */
public final class AdAnalyticsSession {
    private final Ad ad;
    private final Context context;
    private final EventAnalytics eventAnalytics;
    private final String mAdFormat;
    private final String mAdSize;
    private final String mCreativeType;
    private long showTime;

    public AdAnalyticsSession(Context context, Ad ad, String mCreativeType, String mAdFormat, String mAdSize) {
        p.d(mCreativeType, "mCreativeType");
        p.d(mAdFormat, "mAdFormat");
        p.d(mAdSize, "mAdSize");
        this.context = context;
        this.ad = ad;
        this.mCreativeType = mCreativeType;
        this.mAdFormat = mAdFormat;
        this.mAdSize = mAdSize;
        this.eventAnalytics = EventAnalytics.Companion.getInstance(context);
    }

    public final Ad getAd() {
        return this.ad;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void onAdClicked() {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireClickEvent(this.ad, this.showTime, this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }

    public final void onAdDismissed() {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireVideoDismissedEvent(this.ad, this.showTime, this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }

    public final void onAdFinished() {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireVideoFinishedEvent(this.ad, this.showTime, this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }

    public final void onAdImpression() {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireImpressionEvent(this.ad, this.showTime, this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }

    public final void onAdMuted(int i) {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireMuteEvent(this.ad, this.showTime, Integer.valueOf(i), this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }

    public final void onAdShowed() {
        this.showTime = System.currentTimeMillis();
    }

    public final void onAdStarted() {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireVideoStartedEvent(this.ad, this.showTime, this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }

    public final void onAdUnmuted(int i) {
        EventAnalytics eventAnalytics = this.eventAnalytics;
        if (eventAnalytics != null) {
            eventAnalytics.fireUnMuteEvent(this.ad, this.showTime, Integer.valueOf(i), this.mCreativeType, this.mAdFormat, this.mAdSize);
        }
    }
}
