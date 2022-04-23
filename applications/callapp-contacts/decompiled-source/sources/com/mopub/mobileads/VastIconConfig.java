package com.mopub.mobileads;

import android.content.Context;
import android.os.Bundle;
import com.google.gson.JsonSyntaxException;
import com.google.gson.a.a;
import com.google.gson.annotations.b;
import com.google.gson.f;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018�� '2\u00020\u0001:\u0001'BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0002\u0010\u000fJ$\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\r2\b\u0010#\u001a\u0004\u0018\u00010\rH\u0016J \u0010$\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\rH\u0016R\u0018\u0010\f\u001a\u0004\u0018\u00010\r8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0005\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\b8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u0013R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\b\n��\u001a\u0004\b\u001d\u0010\u0018¨\u0006("}, d2 = {"Lcom/mopub/mobileads/VastIconConfig;", "Ljava/io/Serializable;", "width", "", "height", "offsetMS", "durationMS", "vastResource", "Lcom/mopub/mobileads/VastResource;", "clickTrackingUris", "", "Lcom/mopub/mobileads/VastTracker;", "clickThroughUri", "", "viewTrackingUris", "(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "getClickThroughUri", "()Ljava/lang/String;", "getClickTrackingUris", "()Ljava/util/List;", "getDurationMS", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getHeight", "()I", "getOffsetMS", "getVastResource", "()Lcom/mopub/mobileads/VastResource;", "getViewTrackingUris", "getWidth", "handleClick", "", "context", "Landroid/content/Context;", "webViewClickThroughUri", "dspCreativeId", "handleImpression", "contentPlayHead", "assetUri", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
@Mockable
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastIconConfig.class */
public class VastIconConfig implements Serializable {
    public static final Companion Companion = new Companion(null);
    @b(a = Constants.VAST_SKIP_OFFSET_MS)

    /* renamed from: a  reason: collision with root package name */
    private int f34262a;
    @b(a = "width")

    /* renamed from: b  reason: collision with root package name */
    private int f34263b;
    @b(a = "height")

    /* renamed from: c  reason: collision with root package name */
    private int f34264c;
    @b(a = Constants.VAST_DURATION_MS)

    /* renamed from: d  reason: collision with root package name */
    private Integer f34265d;
    @b(a = Constants.VAST_RESOURCE)
    private VastResource e;
    @b(a = Constants.VAST_TRACKERS_CLICK)
    private List<VastTracker> f;
    @b(a = Constants.VAST_URL_CLICKTHROUGH)
    private String g;
    @b(a = Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    private List<VastTracker> h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/mopub/mobileads/VastIconConfig$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastIconConfig$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$18(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final /* synthetic */ void toJson$18(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public /* synthetic */ VastIconConfig() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastIconConfig(int i, int i2, Integer num, Integer num2, VastResource vastResource, List<? extends VastTracker> clickTrackingUris, String str, List<? extends VastTracker> viewTrackingUris) {
        p.c(vastResource, "vastResource");
        p.c(clickTrackingUris, "clickTrackingUris");
        p.c(viewTrackingUris, "viewTrackingUris");
        this.f34263b = i;
        this.f34264c = i2;
        this.f34265d = num2;
        this.e = vastResource;
        this.f = clickTrackingUris;
        this.g = str;
        this.h = viewTrackingUris;
        this.f34262a = num != null ? num.intValue() : 0;
    }

    public /* synthetic */ void fromJson$1(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        boolean z;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int b2 = _optimizedjsonreader.b(jsonReader);
            do {
                z = jsonReader.peek() != JsonToken.NULL;
                if (b2 != 14) {
                    if (b2 != 23) {
                        if (b2 != 27) {
                            if (b2 != 47) {
                                if (b2 != 60) {
                                    if (b2 == 66) {
                                        if (z) {
                                            this.f34265d = (Integer) fVar.a(Integer.class).read(jsonReader);
                                        } else {
                                            this.f34265d = null;
                                            jsonReader.nextNull();
                                        }
                                    }
                                } else if (z) {
                                    try {
                                        this.f34262a = jsonReader.nextInt();
                                    } catch (NumberFormatException e) {
                                        throw new JsonSyntaxException(e);
                                    }
                                } else {
                                    jsonReader.nextNull();
                                }
                            } else if (z) {
                                try {
                                    this.f34263b = jsonReader.nextInt();
                                } catch (NumberFormatException e2) {
                                    throw new JsonSyntaxException(e2);
                                }
                            } else {
                                jsonReader.nextNull();
                            }
                        } else if (z) {
                            this.g = jsonReader.peek() != JsonToken.BOOLEAN ? jsonReader.nextString() : Boolean.toString(jsonReader.nextBoolean());
                        } else {
                            this.g = null;
                            jsonReader.nextNull();
                        }
                    } else if (z) {
                        this.f = (List) fVar.a((a) new VastIconConfigclickTrackingUrisTypeToken()).read(jsonReader);
                    } else {
                        this.f = null;
                        jsonReader.nextNull();
                    }
                } else if (z) {
                    try {
                        this.f34264c = jsonReader.nextInt();
                    } catch (NumberFormatException e3) {
                        throw new JsonSyntaxException(e3);
                    }
                } else {
                    jsonReader.nextNull();
                }
            } while (b2 == 80);
            if (b2 != 62) {
                if (b2 != 63) {
                    jsonReader.skipValue();
                } else if (z) {
                    this.h = (List) fVar.a((a) new VastIconConfigviewTrackingUrisTypeToken()).read(jsonReader);
                } else {
                    this.h = null;
                    jsonReader.nextNull();
                }
            } else if (z) {
                this.e = (VastResource) fVar.a(VastResource.class).read(jsonReader);
            } else {
                this.e = null;
                jsonReader.nextNull();
            }
        }
        jsonReader.endObject();
    }

    public String getClickThroughUri() {
        return this.g;
    }

    public List<VastTracker> getClickTrackingUris() {
        return this.f;
    }

    public Integer getDurationMS() {
        return this.f34265d;
    }

    public int getHeight() {
        return this.f34264c;
    }

    public int getOffsetMS() {
        return this.f34262a;
    }

    public VastResource getVastResource() {
        return this.e;
    }

    public List<VastTracker> getViewTrackingUris() {
        return this.h;
    }

    public int getWidth() {
        return this.f34263b;
    }

    public void handleClick(final Context context, String str, final String str2) {
        p.c(context, "context");
        String correctClickThroughUrl = getVastResource().getCorrectClickThroughUrl(getClickThroughUri(), str);
        if (correctClickThroughUrl != null) {
            if (!(correctClickThroughUrl.length() > 0)) {
                correctClickThroughUrl = null;
            }
            if (correctClickThroughUrl != null) {
                new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastIconConfig$handleClick$$inlined$let$lambda$1
                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public final void urlHandlingFailed(String url, UrlAction lastFailedUrlAction) {
                        p.c(url, "url");
                        p.c(lastFailedUrlAction, "lastFailedUrlAction");
                    }

                    @Override // com.mopub.common.UrlHandler.ResultActions
                    public final void urlHandlingSucceeded(String url, UrlAction urlAction) {
                        p.c(url, "url");
                        p.c(urlAction, "urlAction");
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
    }

    public void handleImpression(Context context, int i, String assetUri) {
        p.c(context, "context");
        p.c(assetUri, "assetUri");
        TrackingRequest.makeVastTrackingHttpRequest(getViewTrackingUris(), null, Integer.valueOf(i), assetUri, context);
    }

    public /* synthetic */ void toJson$1(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        _optimizedjsonwriter.b(jsonWriter, 60);
        jsonWriter.value(Integer.valueOf(this.f34262a));
        _optimizedjsonwriter.b(jsonWriter, 47);
        jsonWriter.value(Integer.valueOf(this.f34263b));
        _optimizedjsonwriter.b(jsonWriter, 14);
        jsonWriter.value(Integer.valueOf(this.f34264c));
        if (this != this.f34265d) {
            _optimizedjsonwriter.b(jsonWriter, 66);
            Integer num = this.f34265d;
            proguard.optimize.gson.a.a(fVar, Integer.class, num).write(jsonWriter, num);
        }
        if (this != this.e) {
            _optimizedjsonwriter.b(jsonWriter, 62);
            VastResource vastResource = this.e;
            proguard.optimize.gson.a.a(fVar, VastResource.class, vastResource).write(jsonWriter, vastResource);
        }
        if (this != this.f) {
            _optimizedjsonwriter.b(jsonWriter, 23);
            VastIconConfigclickTrackingUrisTypeToken vastIconConfigclickTrackingUrisTypeToken = new VastIconConfigclickTrackingUrisTypeToken();
            List<VastTracker> list = this.f;
            proguard.optimize.gson.a.a(fVar, vastIconConfigclickTrackingUrisTypeToken, list).write(jsonWriter, list);
        }
        if (this != this.g) {
            _optimizedjsonwriter.b(jsonWriter, 27);
            jsonWriter.value(this.g);
        }
        if (this != this.h) {
            _optimizedjsonwriter.b(jsonWriter, 63);
            VastIconConfigviewTrackingUrisTypeToken vastIconConfigviewTrackingUrisTypeToken = new VastIconConfigviewTrackingUrisTypeToken();
            List<VastTracker> list2 = this.h;
            proguard.optimize.gson.a.a(fVar, vastIconConfigviewTrackingUrisTypeToken, list2).write(jsonWriter, list2);
        }
        jsonWriter.endObject();
    }
}
