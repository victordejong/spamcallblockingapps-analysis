package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.mobileads.VastResource;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018�� 12\u00020\u0001:\u00011BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u001a\u001a\u00020\u001b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cJ\u0014\u0010\u001d\u001a\u00020\u001b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001cJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0003H\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%H\u0096\u0002J\u0006\u0010&\u001a\u00020\u001fJ,\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00032\b\u0010+\u001a\u0004\u0018\u00010\b2\b\u0010,\u001a\u0004\u0018\u00010\bH\u0016J\u0016\u0010-\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010.\u001a\u00020\u0003J\b\u0010/\u001a\u00020\u0003H\u0016J\b\u00100\u001a\u00020\bH\u0016R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0012R\u0018\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0016¨\u00062"}, m4298d2 = {"Lcom/mopub/mobileads/VastCompanionAdConfig;", "Ljava/io/Serializable;", "width", "", "height", "vastResource", "Lcom/mopub/mobileads/VastResource;", "clickThroughUrl", "", "clickTrackers", "", "Lcom/mopub/mobileads/VastTracker;", "creativeViewTrackers", "customCtaText", "(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V", "getClickThroughUrl", "()Ljava/lang/String;", "getClickTrackers", "()Ljava/util/List;", "getCreativeViewTrackers", "getCustomCtaText", "getHeight", "()I", "getVastResource", "()Lcom/mopub/mobileads/VastResource;", "getWidth", "addClickTrackers", "", "", "addCreativeViewTrackers", "calculateScore", "", "containerWidth", "containerHeight", "equals", "", "other", "", "formatScore", "handleClick", "context", "Landroid/content/Context;", "requestCode", "webViewClickThroughUrl", "dspCreativeId", "handleImpression", "contentPlayHead", "hashCode", "toString", "Companion", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig.class */
public class VastCompanionAdConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @AbstractC15952b(m7988a = "width")

    /* renamed from: a */
    private int f59456a;
    @AbstractC15952b(m7988a = "height")

    /* renamed from: b */
    private int f59457b;
    @AbstractC15952b(m7988a = Constants.VAST_RESOURCE)

    /* renamed from: c */
    private VastResource f59458c;
    @AbstractC15952b(m7988a = Constants.VAST_URL_CLICKTHROUGH)

    /* renamed from: d */
    private String f59459d;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_CLICK)

    /* renamed from: e */
    private List<VastTracker> f59460e;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_IMPRESSION)

    /* renamed from: f */
    private List<VastTracker> f59461f;
    @AbstractC15952b(m7988a = Constants.VAST_CUSTOM_TEXT_CTA)

    /* renamed from: g */
    private String f59462g;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$17(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.mo123b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final /* synthetic */ void toJson$17(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfig$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VastResource.Type.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[VastResource.Type.STATIC_RESOURCE.ordinal()] = 1;
            iArr[VastResource.Type.HTML_RESOURCE.ordinal()] = 2;
            iArr[VastResource.Type.IFRAME_RESOURCE.ordinal()] = 3;
            iArr[VastResource.Type.BLURRED_LAST_FRAME.ordinal()] = 4;
        }
    }

    public /* synthetic */ VastCompanionAdConfig() {
    }

    public VastCompanionAdConfig(int i, int i2, VastResource vastResource, String str, List<VastTracker> clickTrackers, List<VastTracker> creativeViewTrackers, String str2) {
        C18524p.m3841c(vastResource, "vastResource");
        C18524p.m3841c(clickTrackers, "clickTrackers");
        C18524p.m3841c(creativeViewTrackers, "creativeViewTrackers");
        this.f59456a = i;
        this.f59457b = i2;
        this.f59458c = vastResource;
        this.f59459d = str;
        this.f59460e = clickTrackers;
        this.f59461f = creativeViewTrackers;
        this.f59462g = str2;
    }

    public final void addClickTrackers(Collection<? extends VastTracker> clickTrackers) {
        C18524p.m3841c(clickTrackers, "clickTrackers");
        this.f59460e.addAll(clickTrackers);
    }

    public final void addCreativeViewTrackers(Collection<? extends VastTracker> creativeViewTrackers) {
        C18524p.m3841c(creativeViewTrackers, "creativeViewTrackers");
        this.f59461f.addAll(creativeViewTrackers);
    }

    public double calculateScore(int i, int i2) {
        int i3;
        if (i2 == 0 || (i3 = this.f59457b) == 0) {
            return 0.0d;
        }
        double d = i;
        return formatScore() / ((Math.abs((d / i2) - (this.f59456a / i3)) + Math.abs((d - this.f59456a) / d)) + 1.0d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastCompanionAdConfig)) {
            return false;
        }
        VastCompanionAdConfig vastCompanionAdConfig = (VastCompanionAdConfig) obj;
        return this.f59456a == vastCompanionAdConfig.f59456a && this.f59457b == vastCompanionAdConfig.f59457b && !(C18524p.m3850a(this.f59458c, vastCompanionAdConfig.f59458c) ^ true) && !(C18524p.m3850a((Object) this.f59459d, (Object) vastCompanionAdConfig.f59459d) ^ true) && !(C18524p.m3850a(this.f59460e, vastCompanionAdConfig.f59460e) ^ true) && !(C18524p.m3850a(this.f59461f, vastCompanionAdConfig.f59461f) ^ true) && !(C18524p.m3850a((Object) this.f59462g, (Object) vastCompanionAdConfig.f59462g) ^ true);
    }

    public final double formatScore() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.f59458c.getType().ordinal()];
        if (i == 1) {
            if (VastResource.CreativeType.JAVASCRIPT.equals(this.f59458c.getCreativeType())) {
                return 1.0d;
            }
            return VastResource.CreativeType.IMAGE.equals(this.f59458c.getCreativeType()) ? 0.8d : 0.0d;
        } else if (i == 2) {
            return 1.2d;
        } else {
            if (i == 3) {
                return 1.0d;
            }
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            return 0.0d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e1, code lost:
        if (r10 == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e4, code lost:
        r5.f59456a = r7.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ef, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f8, code lost:
        throw new com.google.gson.JsonSyntaxException(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0153, code lost:
        if (r10 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0156, code lost:
        r5.f59457b = r7.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0161, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x016a, code lost:
        throw new com.google.gson.JsonSyntaxException(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x016b, code lost:
        r7.nextNull();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void fromJson$4(com.google.gson.C15965f r6, com.google.gson.stream.JsonReader r7, proguard.optimize.gson._OptimizedJsonReader r8) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastCompanionAdConfig.fromJson$4(com.google.gson.f, com.google.gson.stream.JsonReader, proguard.optimize.gson._OptimizedJsonReader):void");
    }

    public final String getClickThroughUrl() {
        return this.f59459d;
    }

    public final List<VastTracker> getClickTrackers() {
        return this.f59460e;
    }

    public final List<VastTracker> getCreativeViewTrackers() {
        return this.f59461f;
    }

    public final String getCustomCtaText() {
        return this.f59462g;
    }

    public final int getHeight() {
        return this.f59457b;
    }

    public final VastResource getVastResource() {
        return this.f59458c;
    }

    public final int getWidth() {
        return this.f59456a;
    }

    public void handleClick(final Context context, final int i, String str, final String str2) {
        C18524p.m3841c(context, "context");
        if (context instanceof Activity) {
            String correctClickThroughUrl = this.f59458c.getCorrectClickThroughUrl(this.f59459d, str);
            if (correctClickThroughUrl == null) {
                return;
            }
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl == null) {
                return;
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastCompanionAdConfig$handleClick$$inlined$let$lambda$1
                @Override // com.mopub.common.UrlHandler.ResultActions
                public final void urlHandlingFailed(String url, UrlAction lastFailedUrlAction) {
                    C18524p.m3841c(url, "url");
                    C18524p.m3841c(lastFailedUrlAction, "lastFailedUrlAction");
                }

                @Override // com.mopub.common.UrlHandler.ResultActions
                public final void urlHandlingSucceeded(String url, UrlAction urlAction) {
                    C18524p.m3841c(url, "url");
                    C18524p.m3841c(urlAction, "urlAction");
                    if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                        Bundle bundle = new Bundle();
                        bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, url);
                        String str3 = str2;
                        if (!(str3 == null || str3.length() == 0)) {
                            bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                        }
                        try {
                            ((Activity) context).startActivityForResult(Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle), i);
                        } catch (ActivityNotFoundException e) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                        }
                    }
                }
            }).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
            return;
        }
        throw new IllegalArgumentException("context must be an activity".toString());
    }

    public final void handleImpression(Context context, int i) {
        C18524p.m3841c(context, "context");
        TrackingRequest.makeVastTrackingHttpRequest(this.f59461f, null, Integer.valueOf(i), null, context);
    }

    public int hashCode() {
        int i = this.f59456a;
        int i2 = this.f59457b;
        int hashCode = this.f59458c.hashCode();
        String str = this.f59459d;
        int i3 = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        int hashCode3 = this.f59460e.hashCode();
        int hashCode4 = this.f59461f.hashCode();
        String str2 = this.f59462g;
        if (str2 != null) {
            i3 = str2.hashCode();
        }
        return (((((((((((i * 31) + i2) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i3;
    }

    public /* synthetic */ void toJson$4(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        _optimizedjsonwriter.mo120b(jsonWriter, 47);
        jsonWriter.value(Integer.valueOf(this.f59456a));
        _optimizedjsonwriter.mo120b(jsonWriter, 14);
        jsonWriter.value(Integer.valueOf(this.f59457b));
        if (this != this.f59458c) {
            _optimizedjsonwriter.mo120b(jsonWriter, 62);
            VastResource vastResource = this.f59458c;
            C21025a.m117a(c15965f, VastResource.class, vastResource).write(jsonWriter, vastResource);
        }
        if (this != this.f59459d) {
            _optimizedjsonwriter.mo120b(jsonWriter, 27);
            jsonWriter.value(this.f59459d);
        }
        if (this != this.f59460e) {
            _optimizedjsonwriter.mo120b(jsonWriter, 23);
            VastCompanionAdConfigclickTrackersTypeToken vastCompanionAdConfigclickTrackersTypeToken = new VastCompanionAdConfigclickTrackersTypeToken();
            List<VastTracker> list = this.f59460e;
            C21025a.m118a(c15965f, vastCompanionAdConfigclickTrackersTypeToken, list).write(jsonWriter, list);
        }
        if (this != this.f59461f) {
            _optimizedjsonwriter.mo120b(jsonWriter, 69);
            VastCompanionAdConfigcreativeViewTrackersTypeToken vastCompanionAdConfigcreativeViewTrackersTypeToken = new VastCompanionAdConfigcreativeViewTrackersTypeToken();
            List<VastTracker> list2 = this.f59461f;
            C21025a.m118a(c15965f, vastCompanionAdConfigcreativeViewTrackersTypeToken, list2).write(jsonWriter, list2);
        }
        if (this != this.f59462g) {
            _optimizedjsonwriter.mo120b(jsonWriter, 78);
            jsonWriter.value(this.f59462g);
        }
        jsonWriter.endObject();
    }

    public String toString() {
        return "VastCompanionAdConfig(width=" + this.f59456a + ", height=" + this.f59457b + ", vastResource=" + this.f59458c + ", clickThroughUrl=" + this.f59459d + ", clickTrackers=" + this.f59460e + ", creativeViewTrackers=" + this.f59461f + ", customCtaText=" + this.f59462g + ')';
    }
}
