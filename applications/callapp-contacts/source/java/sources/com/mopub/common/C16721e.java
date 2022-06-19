package com.mopub.common;

import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.mopub.adsession.AbstractC16351b;
import com.iab.omid.library.mopub.adsession.C16345a;
import com.iab.omid.library.mopub.adsession.EnumC16354e;
import com.iab.omid.library.mopub.adsession.EnumC16357h;
import com.iab.omid.library.mopub.adsession.p429a.C16347b;
import com.iab.omid.library.mopub.adsession.p429a.EnumC16346a;
import com.iab.omid.library.mopub.adsession.p429a.EnumC16348c;
import com.iab.omid.library.mopub.p430b.C16370f;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p432d.C16382d;
import com.mopub.common.ViewabilityTracker;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Set;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
/* renamed from: com.mopub.common.e */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/e.class */
public final class C16721e extends ViewabilityTracker {

    /* renamed from: e */
    private C16347b f58862e;

    /* renamed from: com.mopub.common.e$1 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/e$1.class */
    static final /* synthetic */ class C167221 {

        /* renamed from: a */
        static final /* synthetic */ int[] f58863a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            int[] iArr = new int[VideoEvent.values().length];
            f58863a = iArr;
            try {
                iArr[VideoEvent.AD_IMPRESSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f58863a[VideoEvent.AD_PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f58863a[VideoEvent.AD_RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f58863a[VideoEvent.AD_SKIPPED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f58863a[VideoEvent.AD_CLICK_THRU.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f58863a[VideoEvent.RECORD_AD_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f58863a[VideoEvent.AD_BUFFER_START.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f58863a[VideoEvent.AD_BUFFER_END.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f58863a[VideoEvent.AD_VIDEO_FIRST_QUARTILE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f58863a[VideoEvent.AD_VIDEO_MIDPOINT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f58863a[VideoEvent.AD_VIDEO_THIRD_QUARTILE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f58863a[VideoEvent.AD_COMPLETE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f58863a[VideoEvent.AD_FULLSCREEN.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f58863a[VideoEvent.AD_NORMAL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f58863a[VideoEvent.AD_VOLUME_CHANGE.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private C16721e(com.iab.omid.library.mopub.adsession.AbstractC16351b r7, com.iab.omid.library.mopub.adsession.C16345a r8, android.view.View r9) throws java.lang.IllegalArgumentException, java.lang.IllegalStateException {
        /*
            r6 = this;
            r0 = r7
            com.iab.omid.library.mopub.adsession.k r0 = (com.iab.omid.library.mopub.adsession.C16360k) r0
            r10 = r0
            r0 = r7
            java.lang.String r1 = "AdSession is null"
            com.iab.omid.library.mopub.p432d.C16382d.m7325a(r0, r1)
            r0 = r10
            com.iab.omid.library.mopub.adsession.AdSessionConfiguration r0 = r0.f57782a
            boolean r0 = r0.isNativeMediaEventsOwner()
            if (r0 == 0) goto L62
            r0 = r10
            boolean r0 = r0.f57785d
            if (r0 != 0) goto L58
            r0 = r10
            com.iab.omid.library.mopub.p432d.C16382d.m7326a(r0)
            r0 = r10
            com.iab.omid.library.mopub.f.a r0 = r0.f57784c
            com.iab.omid.library.mopub.adsession.a.b r0 = r0.f57838c
            if (r0 != 0) goto L4e
            com.iab.omid.library.mopub.adsession.a.b r0 = new com.iab.omid.library.mopub.adsession.a.b
            r1 = r0
            r2 = r10
            r1.<init>(r2)
            r11 = r0
            r0 = r10
            com.iab.omid.library.mopub.f.a r0 = r0.f57784c
            r1 = r11
            r0.f57838c = r1
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            r0.<init>(r1, r2, r3, r4)
            return
        L4e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "MediaEvents already exists for AdSession"
            r1.<init>(r2)
            throw r0
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "AdSession is started"
            r1.<init>(r2)
            throw r0
        L62:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Cannot create MediaEvents for JavaScript AdSession"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.C16721e.<init>(com.iab.omid.library.mopub.adsession.b, com.iab.omid.library.mopub.adsession.a, android.view.View):void");
    }

    C16721e(AbstractC16351b abstractC16351b, C16345a c16345a, View view, C16347b c16347b) throws IllegalArgumentException, IllegalStateException {
        super(abstractC16351b, c16345a, view);
        this.f58862e = c16347b;
        m6693a("ViewabilityTrackerVideo() sesseionId:" + this.f58816d);
    }

    /* renamed from: b */
    public static ViewabilityTracker m6677b(View view, Set<ViewabilityVendor> set) throws IllegalArgumentException {
        AbstractC16351b a = m6696a(EnumC16354e.VIDEO, set, EnumC16357h.NATIVE);
        return new C16721e(a, C16345a.m7380a(a), view);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public final void startTracking() {
        m6693a("ViewabilityTrackerVideo.startTracking() sesseionId: " + this.f58816d);
        m6695a(ViewabilityTracker.STATE.STARTED_VIDEO);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public final void trackVideo(VideoEvent videoEvent) {
        if (!m6701a()) {
            m6693a("trackVideo() skip event: " + videoEvent.name());
            return;
        }
        m6693a("trackVideo() event: " + videoEvent.name() + StringUtils.SPACE + this.f58816d);
        switch (C167221.f58863a[videoEvent.ordinal()]) {
            case 1:
                trackImpression();
                return;
            case 2:
                C16347b c16347b = this.f58862e;
                C16382d.m7323b(c16347b.f57763a);
                c16347b.f57763a.f57784c.m7313a("pause");
                return;
            case 3:
                C16347b c16347b2 = this.f58862e;
                C16382d.m7323b(c16347b2.f57763a);
                c16347b2.f57763a.f57784c.m7313a("resume");
                return;
            case 4:
                this.f58862e.m7379a();
                return;
            case 5:
                C16347b c16347b3 = this.f58862e;
                EnumC16346a enumC16346a = EnumC16346a.CLICK;
                C16382d.m7325a(enumC16346a, "InteractionType is null");
                C16382d.m7323b(c16347b3.f57763a);
                JSONObject jSONObject = new JSONObject();
                C16379b.m7332a(jSONObject, "interactionType", enumC16346a);
                c16347b3.f57763a.f57784c.m7312a("adUserInteraction", jSONObject);
                return;
            case 6:
                this.f58862e.m7379a();
                return;
            case 7:
                C16347b c16347b4 = this.f58862e;
                C16382d.m7323b(c16347b4.f57763a);
                c16347b4.f57763a.f57784c.m7313a("bufferStart");
                return;
            case 8:
                C16347b c16347b5 = this.f58862e;
                C16382d.m7323b(c16347b5.f57763a);
                c16347b5.f57763a.f57784c.m7313a("bufferFinish");
                return;
            case 9:
                C16347b c16347b6 = this.f58862e;
                C16382d.m7323b(c16347b6.f57763a);
                c16347b6.f57763a.f57784c.m7313a(EventConstants.FIRST_QUARTILE);
                return;
            case 10:
                C16347b c16347b7 = this.f58862e;
                C16382d.m7323b(c16347b7.f57763a);
                c16347b7.f57763a.f57784c.m7313a("midpoint");
                return;
            case 11:
                C16347b c16347b8 = this.f58862e;
                C16382d.m7323b(c16347b8.f57763a);
                c16347b8.f57763a.f57784c.m7313a(EventConstants.THIRD_QUARTILE);
                return;
            case 12:
                C16347b c16347b9 = this.f58862e;
                C16382d.m7323b(c16347b9.f57763a);
                c16347b9.f57763a.f57784c.m7313a(EventConstants.COMPLETE);
                return;
            case 13:
                this.f58862e.m7378a(EnumC16348c.FULLSCREEN);
                return;
            case 14:
                this.f58862e.m7378a(EnumC16348c.NORMAL);
                return;
            case 15:
                C16347b c16347b10 = this.f58862e;
                C16382d.m7323b(c16347b10.f57763a);
                JSONObject jSONObject2 = new JSONObject();
                C16379b.m7332a(jSONObject2, "mediaPlayerVolume", Float.valueOf(1.0f));
                C16379b.m7332a(jSONObject2, "deviceVolume", Float.valueOf(C16370f.m7349a().f57814a));
                c16347b10.f57763a.f57784c.m7312a("volumeChange", jSONObject2);
                return;
            default:
                return;
        }
    }

    @Override // com.mopub.common.ViewabilityTracker
    public final void videoPrepared(float f) {
        m6693a("videoPrepared() duration= ".concat(String.valueOf(f)));
        if (!m6701a()) {
            m6693a("videoPrepared() not tracking yet: " + this.f58816d);
            return;
        }
        C16347b c16347b = this.f58862e;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException("Invalid Media duration");
        }
        C16382d.m7323b(c16347b.f57763a);
        JSONObject jSONObject = new JSONObject();
        C16379b.m7332a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
        C16379b.m7332a(jSONObject, "mediaPlayerVolume", Float.valueOf(1.0f));
        C16379b.m7332a(jSONObject, "deviceVolume", Float.valueOf(C16370f.m7349a().f57814a));
        c16347b.f57763a.f57784c.m7312a(EventConstants.START, jSONObject);
    }
}
