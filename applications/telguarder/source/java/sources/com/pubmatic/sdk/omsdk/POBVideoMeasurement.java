package com.pubmatic.sdk.omsdk;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.pubmatic.Omid;
import com.iab.omid.library.pubmatic.adsession.AdEvents;
import com.iab.omid.library.pubmatic.adsession.AdSession;
import com.iab.omid.library.pubmatic.adsession.AdSessionConfiguration;
import com.iab.omid.library.pubmatic.adsession.AdSessionContext;
import com.iab.omid.library.pubmatic.adsession.CreativeType;
import com.iab.omid.library.pubmatic.adsession.ErrorType;
import com.iab.omid.library.pubmatic.adsession.ImpressionType;
import com.iab.omid.library.pubmatic.adsession.Owner;
import com.iab.omid.library.pubmatic.adsession.Partner;
import com.iab.omid.library.pubmatic.adsession.VerificationScriptResource;
import com.iab.omid.library.pubmatic.adsession.media.InteractionType;
import com.iab.omid.library.pubmatic.adsession.media.MediaEvents;
import com.iab.omid.library.pubmatic.adsession.media.PlayerState;
import com.iab.omid.library.pubmatic.adsession.media.Position;
import com.iab.omid.library.pubmatic.adsession.media.VastProperties;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBDataType;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.viewability.POBMeasurementProvider;
import com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBVideoMeasurement.class */
public class POBVideoMeasurement extends POBMeasurement implements POBVideoMeasurementProvider {

    /* renamed from: a */
    private MediaEvents f628a;

    /* renamed from: b */
    private Handler f629b = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.omsdk.POBVideoMeasurement$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBVideoMeasurement$a.class */
    public class C1916a implements POBMeasurementProvider.POBScriptListener {

        /* renamed from: a */
        final /* synthetic */ List f630a;

        /* renamed from: b */
        final /* synthetic */ View f631b;

        /* renamed from: c */
        final /* synthetic */ POBVideoMeasurementProvider.POBOmidSessionListener f632c;

        /* renamed from: com.pubmatic.sdk.omsdk.POBVideoMeasurement$a$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBVideoMeasurement$a$a.class */
        class RunnableC1917a implements Runnable {
            RunnableC1917a() {
                C1916a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                AdSession adSession = POBVideoMeasurement.this.adSession;
                if (adSession != null) {
                    adSession.start();
                    C1916a.this.f632c.onOmidSessionInitialized();
                    PMLog.debug("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_START_SESSION, POBVideoMeasurement.this.adSession.getAdSessionId());
                }
            }
        }

        C1916a(List list, View view, POBVideoMeasurementProvider.POBOmidSessionListener pOBOmidSessionListener) {
            POBVideoMeasurement.this = r4;
            this.f630a = list;
            this.f631b = view;
            this.f632c = pOBOmidSessionListener;
        }

        @Override // com.pubmatic.sdk.common.viewability.POBMeasurementProvider.POBScriptListener
        public void onMeasurementScriptReceived(String str) {
            AdSessionContext createNativeAdSessionContext = AdSessionContext.createNativeAdSessionContext(Partner.createPartner(POBCommonConstants.PARTNER_NAME, "1.8.2"), str, this.f630a, null, "");
            Owner owner = Owner.NATIVE;
            AdSessionConfiguration createAdSessionConfiguration = AdSessionConfiguration.createAdSessionConfiguration(CreativeType.VIDEO, ImpressionType.ONE_PIXEL, owner, owner, false);
            POBVideoMeasurement.this.adSession = AdSession.createAdSession(createAdSessionConfiguration, createNativeAdSessionContext);
            POBVideoMeasurement pOBVideoMeasurement = POBVideoMeasurement.this;
            pOBVideoMeasurement.adEvents = AdEvents.createAdEvents(pOBVideoMeasurement.adSession);
            POBVideoMeasurement pOBVideoMeasurement2 = POBVideoMeasurement.this;
            pOBVideoMeasurement2.f628a = MediaEvents.createMediaEvents(pOBVideoMeasurement2.adSession);
            POBVideoMeasurement.this.setTrackView(this.f631b);
            POBVideoMeasurement.this.f629b.post(new RunnableC1917a());
        }
    }

    /* renamed from: com.pubmatic.sdk.omsdk.POBVideoMeasurement$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/omsdk/POBVideoMeasurement$b.class */
    static /* synthetic */ class C1918b {

        /* renamed from: a */
        static final /* synthetic */ int[] f635a;

        /* renamed from: b */
        static final /* synthetic */ int[] f636b;

        /* renamed from: c */
        static final /* synthetic */ int[] f637c;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00e8 -> B:63:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00ec -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00f0 -> B:73:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f4 -> B:85:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00f8 -> B:81:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00fc -> B:93:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0100 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0104 -> B:67:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0108 -> B:61:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x010c -> B:75:0x0089). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0110 -> B:71:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0114 -> B:83:0x009f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0118 -> B:79:0x00ab). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x011c -> B:91:0x00b7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0120 -> B:87:0x00c3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0124 -> B:65:0x00cf). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0128 -> B:59:0x00db). Please submit an issue!!! */
        static {
            int[] iArr = new int[POBVideoMeasurementProvider.POBVideoAdErrorType.values().length];
            f637c = iArr;
            try {
                iArr[POBVideoMeasurementProvider.POBVideoAdErrorType.GENERIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f637c[POBVideoMeasurementProvider.POBVideoAdErrorType.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            int[] iArr2 = new int[POBVideoMeasurementProvider.POBVideoPlayerState.values().length];
            f636b = iArr2;
            try {
                iArr2[POBVideoMeasurementProvider.POBVideoPlayerState.FULLSCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f636b[POBVideoMeasurementProvider.POBVideoPlayerState.COLLAPSED.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f636b[POBVideoMeasurementProvider.POBVideoPlayerState.EXPANDED.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f636b[POBVideoMeasurementProvider.POBVideoPlayerState.MINIMIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f636b[POBVideoMeasurementProvider.POBVideoPlayerState.NORMAL.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            int[] iArr3 = new int[POBDataType.POBVideoAdEventType.values().length];
            f635a = iArr3;
            try {
                iArr3[POBDataType.POBVideoAdEventType.FIRST_QUARTILE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.MID_POINT.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.THIRD_QUARTILE.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.SKIPPED.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.MUTE.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.UNMUTE.ordinal()] = 7;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.CLICKED.ordinal()] = 8;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.PAUSE.ordinal()] = 9;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.RESUME.ordinal()] = 10;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f635a[POBDataType.POBVideoAdEventType.ICON_CLICKED.ordinal()] = 11;
            } catch (NoSuchFieldError e18) {
            }
        }
    }

    @Override // com.pubmatic.sdk.omsdk.POBMeasurement, com.pubmatic.sdk.common.viewability.POBMeasurementProvider
    public void finishAdSession() {
        super.finishAdSession();
        this.adEvents = null;
        this.f628a = null;
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void impressionOccurred() {
        if (this.adEvents == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_EVENT, POBOMSDKLogConstants.MSG_OMSDK_IMPRESSION_EVENT);
            return;
        }
        try {
            PMLog.info("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_SIGNALING_EVENT, POBOMSDKLogConstants.MSG_OMSDK_IMPRESSION_EVENT);
            this.adEvents.impressionOccurred();
        } catch (Exception e) {
            PMLog.error("OMSDK", "Unable to signal event : %s Exception : %s", POBOMSDKLogConstants.MSG_OMSDK_IMPRESSION_EVENT, e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void loaded(boolean z, float f) {
        if (this.adEvents == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_EVENT, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT);
            return;
        }
        try {
            PMLog.info("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_SIGNALING_EVENT, POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT);
            this.adEvents.loaded(z ? VastProperties.createVastPropertiesForSkippableMedia(f, true, Position.STANDALONE) : VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE));
        } catch (Exception e) {
            PMLog.error("OMSDK", "Unable to signal event : %s Exception : %s", POBOMSDKLogConstants.MSG_OMSDK_LOADED_EVENT, e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void signalAdEvent(POBDataType.POBVideoAdEventType pOBVideoAdEventType) {
        InteractionType interactionType;
        MediaEvents mediaEvents;
        if (this.f628a == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_EVENT, pOBVideoAdEventType.name());
            return;
        }
        try {
            PMLog.info("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_SIGNALING_EVENT, pOBVideoAdEventType.name());
            switch (C1918b.f635a[pOBVideoAdEventType.ordinal()]) {
                case 1:
                    this.f628a.firstQuartile();
                    return;
                case 2:
                    this.f628a.midpoint();
                    return;
                case 3:
                    this.f628a.thirdQuartile();
                    return;
                case 4:
                    this.f628a.complete();
                    return;
                case 5:
                    this.f628a.skipped();
                    return;
                case 6:
                    this.f628a.volumeChange(0.0f);
                    return;
                case 7:
                    this.f628a.volumeChange(1.0f);
                    return;
                case 8:
                    mediaEvents = this.f628a;
                    interactionType = InteractionType.CLICK;
                    break;
                case 9:
                    this.f628a.pause();
                    return;
                case 10:
                    this.f628a.resume();
                    return;
                case 11:
                    mediaEvents = this.f628a;
                    interactionType = InteractionType.INVITATION_ACCEPTED;
                    break;
                default:
                    return;
            }
            mediaEvents.adUserInteraction(interactionType);
        } catch (Exception e) {
            PMLog.error("OMSDK", "Unable to signal event : %s Exception : %s", pOBVideoAdEventType.name(), e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void signalError(POBVideoMeasurementProvider.POBVideoAdErrorType pOBVideoAdErrorType, String str) {
        ErrorType errorType;
        AdSession adSession;
        if (this.adSession == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_ERROR, pOBVideoAdErrorType.name());
            return;
        }
        int i = C1918b.f637c[pOBVideoAdErrorType.ordinal()];
        if (i == 1) {
            adSession = this.adSession;
            errorType = ErrorType.GENERIC;
        } else if (i != 2) {
            return;
        } else {
            adSession = this.adSession;
            errorType = ErrorType.VIDEO;
        }
        adSession.error(errorType, str);
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void signalPlayerStateChange(POBVideoMeasurementProvider.POBVideoPlayerState pOBVideoPlayerState) {
        PlayerState playerState;
        MediaEvents mediaEvents;
        if (this.f628a == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_PLAYERSTATE_EVENT, pOBVideoPlayerState.name());
            return;
        }
        try {
            PMLog.info("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_SIGNALING_EVENT, pOBVideoPlayerState.name());
            int i = C1918b.f636b[pOBVideoPlayerState.ordinal()];
            if (i == 1) {
                mediaEvents = this.f628a;
                playerState = PlayerState.FULLSCREEN;
            } else if (i == 2) {
                mediaEvents = this.f628a;
                playerState = PlayerState.COLLAPSED;
            } else if (i == 3) {
                mediaEvents = this.f628a;
                playerState = PlayerState.EXPANDED;
            } else if (i == 4) {
                mediaEvents = this.f628a;
                playerState = PlayerState.MINIMIZED;
            } else if (i != 5) {
                return;
            } else {
                mediaEvents = this.f628a;
                playerState = PlayerState.NORMAL;
            }
            mediaEvents.playerStateChange(playerState);
        } catch (Exception e) {
            PMLog.error("OMSDK", "Unable to signal player state event : %s Exception : %s", pOBVideoPlayerState.name(), e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void start(float f, float f2) {
        if (this.f628a == null) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_SIGNALING_EVENT, POBOMSDKLogConstants.MSG_OMSDK_START_EVENT);
            return;
        }
        try {
            PMLog.info("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_SIGNALING_EVENT, POBOMSDKLogConstants.MSG_OMSDK_START_EVENT);
            this.f628a.start(f, f2);
        } catch (Exception e) {
            PMLog.error("OMSDK", "Unable to signal event : %s Exception : %s", POBOMSDKLogConstants.MSG_OMSDK_START_EVENT, e.getMessage());
        }
    }

    @Override // com.pubmatic.sdk.common.viewability.POBVideoMeasurementProvider
    public void startAdSession(View view, List<POBVideoMeasurementProvider.POBVerificationScriptResource> list, POBVideoMeasurementProvider.POBOmidSessionListener pOBOmidSessionListener) {
        try {
            Context applicationContext = view.getContext().getApplicationContext();
            if (!Omid.isActive()) {
                Omid.activate(applicationContext);
            }
            ArrayList arrayList = new ArrayList();
            for (POBVideoMeasurementProvider.POBVerificationScriptResource pOBVerificationScriptResource : list) {
                for (String str : pOBVerificationScriptResource.getJavaScriptResource()) {
                    try {
                        arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(pOBVerificationScriptResource.getVendorKey(), new URL(str), pOBVerificationScriptResource.getVerificationParameter()));
                    } catch (Exception e) {
                        PMLog.warn("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_URL_EXCEPTION, str);
                    }
                }
            }
            omidJsServiceScript(applicationContext, new C1916a(arrayList, view, pOBOmidSessionListener));
        } catch (Exception e2) {
            PMLog.error("OMSDK", POBOMSDKLogConstants.MSG_OMSDK_UNABLE_START_SESSION, e2.getMessage());
        }
    }
}
