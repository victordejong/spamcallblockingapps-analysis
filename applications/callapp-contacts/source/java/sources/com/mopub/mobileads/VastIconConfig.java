package com.mopub.mobileads;

import android.content.Context;
import android.os.Bundle;
import com.google.gson.C15965f;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.p399a.C15950a;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018�� '2\u00020\u0001:\u0001'BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\u000fJ$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\r2\b\u0010#\u001a\u0004\u0018\u00010\rH\u0016J \u0010$\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\rH\u0016R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0005\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0018¨\u0006("}, m4298d2 = {"Lcom/mopub/mobileads/VastIconConfig;", "Ljava/io/Serializable;", "width", "", "height", "offsetMS", "durationMS", "vastResource", "Lcom/mopub/mobileads/VastResource;", "clickTrackingUris", "", "Lcom/mopub/mobileads/VastTracker;", "clickThroughUri", "", "viewTrackingUris", "(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "getClickThroughUri", "()Ljava/lang/String;", "getClickTrackingUris", "()Ljava/util/List;", "getDurationMS", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHeight", "()I", "getOffsetMS", "getVastResource", "()Lcom/mopub/mobileads/VastResource;", "getViewTrackingUris", "getWidth", "handleClick", "", "context", "Landroid/content/Context;", "webViewClickThroughUri", "dspCreativeId", "handleImpression", "contentPlayHead", "assetUri", "Companion", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastIconConfig.class */
public class VastIconConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @AbstractC15952b(m7988a = Constants.VAST_SKIP_OFFSET_MS)

    /* renamed from: a */
    private int f59475a;
    @AbstractC15952b(m7988a = "width")

    /* renamed from: b */
    private int f59476b;
    @AbstractC15952b(m7988a = "height")

    /* renamed from: c */
    private int f59477c;
    @AbstractC15952b(m7988a = Constants.VAST_DURATION_MS)

    /* renamed from: d */
    private Integer f59478d;
    @AbstractC15952b(m7988a = Constants.VAST_RESOURCE)

    /* renamed from: e */
    private VastResource f59479e;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKERS_CLICK)

    /* renamed from: f */
    private List<VastTracker> f59480f;
    @AbstractC15952b(m7988a = Constants.VAST_URL_CLICKTHROUGH)

    /* renamed from: g */
    private String f59481g;
    @AbstractC15952b(m7988a = Constants.VAST_VIDEO_VIEWABILITY_TRACKER)

    /* renamed from: h */
    private List<VastTracker> f59482h;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/mopub/mobileads/VastIconConfig$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastIconConfig$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$18(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.mo123b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final /* synthetic */ void toJson$18(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public /* synthetic */ VastIconConfig() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastIconConfig(int i, int i2, Integer num, Integer num2, VastResource vastResource, List<? extends VastTracker> clickTrackingUris, String str, List<? extends VastTracker> viewTrackingUris) {
        C18524p.m3841c(vastResource, "vastResource");
        C18524p.m3841c(clickTrackingUris, "clickTrackingUris");
        C18524p.m3841c(viewTrackingUris, "viewTrackingUris");
        this.f59476b = i;
        this.f59477c = i2;
        this.f59478d = num2;
        this.f59479e = vastResource;
        this.f59480f = clickTrackingUris;
        this.f59481g = str;
        this.f59482h = viewTrackingUris;
        this.f59475a = num != null ? num.intValue() : 0;
    }

    public /* synthetic */ void fromJson$1(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        boolean z;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int mo123b = _optimizedjsonreader.mo123b(jsonReader);
            do {
                z = jsonReader.peek() != JsonToken.NULL;
                if (mo123b != 14) {
                    if (mo123b != 23) {
                        if (mo123b != 27) {
                            if (mo123b != 47) {
                                if (mo123b != 60) {
                                    if (mo123b == 66) {
                                        if (z) {
                                            this.f59478d = (Integer) c15965f.m7971a(Integer.class).read(jsonReader);
                                        } else {
                                            this.f59478d = null;
                                            jsonReader.nextNull();
                                        }
                                    }
                                } else if (z) {
                                    try {
                                        this.f59475a = jsonReader.nextInt();
                                    } catch (NumberFormatException e) {
                                        throw new JsonSyntaxException(e);
                                    }
                                } else {
                                    jsonReader.nextNull();
                                }
                            } else if (z) {
                                try {
                                    this.f59476b = jsonReader.nextInt();
                                } catch (NumberFormatException e2) {
                                    throw new JsonSyntaxException(e2);
                                }
                            } else {
                                jsonReader.nextNull();
                            }
                        } else if (z) {
                            this.f59481g = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
                        } else {
                            this.f59481g = null;
                            jsonReader.nextNull();
                        }
                    } else if (z) {
                        this.f59480f = (List) c15965f.m7977a((C15950a) new VastIconConfigclickTrackingUrisTypeToken()).read(jsonReader);
                    } else {
                        this.f59480f = null;
                        jsonReader.nextNull();
                    }
                } else if (z) {
                    try {
                        this.f59477c = jsonReader.nextInt();
                    } catch (NumberFormatException e3) {
                        throw new JsonSyntaxException(e3);
                    }
                } else {
                    jsonReader.nextNull();
                }
            } while (mo123b == 80);
            if (mo123b != 62) {
                if (mo123b != 63) {
                    jsonReader.skipValue();
                } else if (z) {
                    this.f59482h = (List) c15965f.m7977a((C15950a) new VastIconConfigviewTrackingUrisTypeToken()).read(jsonReader);
                } else {
                    this.f59482h = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                this.f59479e = (VastResource) c15965f.m7971a(VastResource.class).read(jsonReader);
            } else {
                this.f59479e = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
    }

    public String getClickThroughUri() {
        return this.f59481g;
    }

    public List<VastTracker> getClickTrackingUris() {
        return this.f59480f;
    }

    public Integer getDurationMS() {
        return this.f59478d;
    }

    public int getHeight() {
        return this.f59477c;
    }

    public int getOffsetMS() {
        return this.f59475a;
    }

    public VastResource getVastResource() {
        return this.f59479e;
    }

    public List<VastTracker> getViewTrackingUris() {
        return this.f59482h;
    }

    public int getWidth() {
        return this.f59476b;
    }

    public void handleClick(final Context context, String str, final String str2) {
        C18524p.m3841c(context, "context");
        String correctClickThroughUrl = getVastResource().getCorrectClickThroughUrl(getClickThroughUri(), str);
        if (correctClickThroughUrl != null) {
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl == null) {
                return;
            }
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastIconConfig$handleClick$$inlined$let$lambda$1
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
                            Intents.startActivity(context, Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle));
                        } catch (IntentNotResolvableException e) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                        }
                    }
                }
            }).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    public void handleImpression(Context context, int i, String assetUri) {
        C18524p.m3841c(context, "context");
        C18524p.m3841c(assetUri, "assetUri");
        TrackingRequest.makeVastTrackingHttpRequest(getViewTrackingUris(), null, Integer.valueOf(i), assetUri, context);
    }

    public /* synthetic */ void toJson$1(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        _optimizedjsonwriter.mo120b(jsonWriter, 60);
        jsonWriter.value(Integer.valueOf(this.f59475a));
        _optimizedjsonwriter.mo120b(jsonWriter, 47);
        jsonWriter.value(Integer.valueOf(this.f59476b));
        _optimizedjsonwriter.mo120b(jsonWriter, 14);
        jsonWriter.value(Integer.valueOf(this.f59477c));
        if (this != this.f59478d) {
            _optimizedjsonwriter.mo120b(jsonWriter, 66);
            Integer num = this.f59478d;
            C21025a.m117a(c15965f, Integer.class, num).write(jsonWriter, num);
        }
        if (this != this.f59479e) {
            _optimizedjsonwriter.mo120b(jsonWriter, 62);
            VastResource vastResource = this.f59479e;
            C21025a.m117a(c15965f, VastResource.class, vastResource).write(jsonWriter, vastResource);
        }
        if (this != this.f59480f) {
            _optimizedjsonwriter.mo120b(jsonWriter, 23);
            VastIconConfigclickTrackingUrisTypeToken vastIconConfigclickTrackingUrisTypeToken = new VastIconConfigclickTrackingUrisTypeToken();
            List<VastTracker> list = this.f59480f;
            C21025a.m118a(c15965f, vastIconConfigclickTrackingUrisTypeToken, list).write(jsonWriter, list);
        }
        if (this != this.f59481g) {
            _optimizedjsonwriter.mo120b(jsonWriter, 27);
            jsonWriter.value(this.f59481g);
        }
        if (this != this.f59482h) {
            _optimizedjsonwriter.mo120b(jsonWriter, 63);
            VastIconConfigviewTrackingUrisTypeToken vastIconConfigviewTrackingUrisTypeToken = new VastIconConfigviewTrackingUrisTypeToken();
            List<VastTracker> list2 = this.f59482h;
            C21025a.m118a(c15965f, vastIconConfigviewTrackingUrisTypeToken, list2).write(jsonWriter, list2);
        }
        jsonWriter.endObject();
    }
}
