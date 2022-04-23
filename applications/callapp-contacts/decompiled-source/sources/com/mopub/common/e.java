package com.mopub.common;

import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.mopub.adsession.a;
import com.iab.omid.library.mopub.adsession.a.b;
import com.iab.omid.library.mopub.adsession.a.c;
import com.iab.omid.library.mopub.adsession.h;
import com.iab.omid.library.mopub.b.f;
import com.iab.omid.library.mopub.d.d;
import com.mopub.common.ViewabilityTracker;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Set;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/mopub/common/e.class */
public final class e extends ViewabilityTracker {
    private b e;

    /* renamed from: com.mopub.common.e$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/common/e$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33917a;

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
            f33917a = iArr;
            try {
                iArr[VideoEvent.AD_IMPRESSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33917a[VideoEvent.AD_PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f33917a[VideoEvent.AD_RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f33917a[VideoEvent.AD_SKIPPED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f33917a[VideoEvent.AD_CLICK_THRU.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f33917a[VideoEvent.RECORD_AD_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f33917a[VideoEvent.AD_BUFFER_START.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f33917a[VideoEvent.AD_BUFFER_END.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f33917a[VideoEvent.AD_VIDEO_FIRST_QUARTILE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f33917a[VideoEvent.AD_VIDEO_MIDPOINT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f33917a[VideoEvent.AD_VIDEO_THIRD_QUARTILE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f33917a[VideoEvent.AD_COMPLETE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f33917a[VideoEvent.AD_FULLSCREEN.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f33917a[VideoEvent.AD_NORMAL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f33917a[VideoEvent.AD_VOLUME_CHANGE.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private e(com.iab.omid.library.mopub.adsession.b r7, com.iab.omid.library.mopub.adsession.a r8, android.view.View r9) throws java.lang.IllegalArgumentException, java.lang.IllegalStateException {
        /*
            r6 = this;
            r0 = r7
            com.iab.omid.library.mopub.adsession.k r0 = (com.iab.omid.library.mopub.adsession.k) r0
            r10 = r0
            r0 = r7
            java.lang.String r1 = "AdSession is null"
            com.iab.omid.library.mopub.d.d.a(r0, r1)
            r0 = r10
            com.iab.omid.library.mopub.adsession.AdSessionConfiguration r0 = r0.f33254a
            boolean r0 = r0.isNativeMediaEventsOwner()
            if (r0 == 0) goto L_0x0062
            r0 = r10
            boolean r0 = r0.f33257d
            if (r0 != 0) goto L_0x0058
            r0 = r10
            com.iab.omid.library.mopub.d.d.a(r0)
            r0 = r10
            com.iab.omid.library.mopub.f.a r0 = r0.f33256c
            com.iab.omid.library.mopub.adsession.a.b r0 = r0.f33297c
            if (r0 != 0) goto L_0x004e
            com.iab.omid.library.mopub.adsession.a.b r0 = new com.iab.omid.library.mopub.adsession.a.b
            r1 = r0
            r2 = r10
            r1.<init>(r2)
            r11 = r0
            r0 = r10
            com.iab.omid.library.mopub.f.a r0 = r0.f33256c
            r1 = r11
            r0.f33297c = r1
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            r0.<init>(r1, r2, r3, r4)
            return
        L_0x004e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "MediaEvents already exists for AdSession"
            r1.<init>(r2)
            throw r0
        L_0x0058:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "AdSession is started"
            r1.<init>(r2)
            throw r0
        L_0x0062:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Cannot create MediaEvents for JavaScript AdSession"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.common.e.<init>(com.iab.omid.library.mopub.adsession.b, com.iab.omid.library.mopub.adsession.a, android.view.View):void");
    }

    e(com.iab.omid.library.mopub.adsession.b bVar, a aVar, View view, b bVar2) throws IllegalArgumentException, IllegalStateException {
        super(bVar, aVar, view);
        this.e = bVar2;
        a("ViewabilityTrackerVideo() sesseionId:" + this.f33882d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewabilityTracker b(View view, Set<ViewabilityVendor> set) throws IllegalArgumentException {
        com.iab.omid.library.mopub.adsession.b a2 = a(com.iab.omid.library.mopub.adsession.e.VIDEO, set, h.NATIVE);
        return new e(a2, a.a(a2), view);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public final void startTracking() {
        a("ViewabilityTrackerVideo.startTracking() sesseionId: " + this.f33882d);
        a(ViewabilityTracker.STATE.STARTED_VIDEO);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public final void trackVideo(VideoEvent videoEvent) {
        if (!a()) {
            a("trackVideo() skip event: " + videoEvent.name());
            return;
        }
        a("trackVideo() event: " + videoEvent.name() + StringUtils.SPACE + this.f33882d);
        switch (AnonymousClass1.f33917a[videoEvent.ordinal()]) {
            case 1:
                trackImpression();
                return;
            case 2:
                b bVar = this.e;
                d.b(bVar.f33240a);
                bVar.f33240a.f33256c.a("pause");
                return;
            case 3:
                b bVar2 = this.e;
                d.b(bVar2.f33240a);
                bVar2.f33240a.f33256c.a("resume");
                return;
            case 4:
                this.e.a();
                return;
            case 5:
                b bVar3 = this.e;
                com.iab.omid.library.mopub.adsession.a.a aVar = com.iab.omid.library.mopub.adsession.a.a.CLICK;
                d.a(aVar, "InteractionType is null");
                d.b(bVar3.f33240a);
                JSONObject jSONObject = new JSONObject();
                com.iab.omid.library.mopub.d.b.a(jSONObject, "interactionType", aVar);
                bVar3.f33240a.f33256c.a("adUserInteraction", jSONObject);
                return;
            case 6:
                this.e.a();
                return;
            case 7:
                b bVar4 = this.e;
                d.b(bVar4.f33240a);
                bVar4.f33240a.f33256c.a("bufferStart");
                return;
            case 8:
                b bVar5 = this.e;
                d.b(bVar5.f33240a);
                bVar5.f33240a.f33256c.a("bufferFinish");
                return;
            case 9:
                b bVar6 = this.e;
                d.b(bVar6.f33240a);
                bVar6.f33240a.f33256c.a(EventConstants.FIRST_QUARTILE);
                return;
            case 10:
                b bVar7 = this.e;
                d.b(bVar7.f33240a);
                bVar7.f33240a.f33256c.a("midpoint");
                return;
            case 11:
                b bVar8 = this.e;
                d.b(bVar8.f33240a);
                bVar8.f33240a.f33256c.a(EventConstants.THIRD_QUARTILE);
                return;
            case 12:
                b bVar9 = this.e;
                d.b(bVar9.f33240a);
                bVar9.f33240a.f33256c.a(EventConstants.COMPLETE);
                return;
            case 13:
                this.e.a(c.FULLSCREEN);
                return;
            case 14:
                this.e.a(c.NORMAL);
                return;
            case 15:
                b bVar10 = this.e;
                d.b(bVar10.f33240a);
                JSONObject jSONObject2 = new JSONObject();
                com.iab.omid.library.mopub.d.b.a(jSONObject2, "mediaPlayerVolume", Float.valueOf(1.0f));
                com.iab.omid.library.mopub.d.b.a(jSONObject2, "deviceVolume", Float.valueOf(f.a().f33278a));
                bVar10.f33240a.f33256c.a("volumeChange", jSONObject2);
                return;
            default:
                return;
        }
    }

    @Override // com.mopub.common.ViewabilityTracker
    public final void videoPrepared(float f) {
        a("videoPrepared() duration= ".concat(String.valueOf(f)));
        if (!a()) {
            a("videoPrepared() not tracking yet: " + this.f33882d);
            return;
        }
        b bVar = this.e;
        if (f > BitmapDescriptorFactory.HUE_RED) {
            d.b(bVar.f33240a);
            JSONObject jSONObject = new JSONObject();
            com.iab.omid.library.mopub.d.b.a(jSONObject, VastIconXmlManager.DURATION, Float.valueOf(f));
            com.iab.omid.library.mopub.d.b.a(jSONObject, "mediaPlayerVolume", Float.valueOf(1.0f));
            com.iab.omid.library.mopub.d.b.a(jSONObject, "deviceVolume", Float.valueOf(f.a().f33278a));
            bVar.f33240a.f33256c.a(EventConstants.START, jSONObject);
            return;
        }
        throw new IllegalArgumentException("Invalid Media duration");
    }
}
