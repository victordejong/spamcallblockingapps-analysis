package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8083ah;
import com.inmobi.ads.C8122au;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* renamed from: com.inmobi.ads.at */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/at.class */
public class C8118at extends AbstractC8213cb.AbstractC8214a implements C8122au.AbstractC8133b {

    /* renamed from: b */
    public static final String f31765b = "at";

    /* renamed from: a */
    public final C8122au f31766a;

    /* renamed from: c */
    public final C8083ah f31767c;

    /* renamed from: d */
    public final C8122au.AbstractC8134c f31768d = new C8122au.AbstractC8134c() { // from class: com.inmobi.ads.at.1
        @Override // com.inmobi.ads.C8122au.AbstractC8134c
        /* renamed from: a */
        public final void mo6355a(int i, C8103ak akVar) {
            if (!C8118at.this.mo6180b()) {
                C8118at.this.f31767c.m6520a(i, akVar);
            }
        }
    };

    /* renamed from: e */
    public final C8122au.AbstractC8132a f31769e = new C8122au.AbstractC8132a() { // from class: com.inmobi.ads.at.2
        @Override // com.inmobi.ads.C8122au.AbstractC8132a
        /* renamed from: a */
        public final void mo6357a(View view, C8103ak akVar) {
            if (!C8118at.this.mo6180b()) {
                C8118at.this.f31767c.m6517a(view, akVar);
                C8118at.this.f31767c.m6508a(akVar, false);
            }
        }
    };

    /* renamed from: f */
    public final AbstractC8172bh f31770f = new AbstractC8172bh() { // from class: com.inmobi.ads.at.3
        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: a */
        public final void mo6276a() {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                ((C8148bd) C8118at.this.f31767c).m6317w();
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: a */
        public final void mo6275a(NativeVideoView nativeVideoView) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                C8148bd bdVar = (C8148bd) C8118at.this.f31767c;
                nativeVideoView.setIsLockScreen(bdVar.f31640u);
                NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) nativeVideoView.getParent();
                bdVar.f31837B = new WeakReference<>(nativeVideoWrapper);
                NativeVideoController mediaController = nativeVideoWrapper.getVideoView().getMediaController();
                if (mediaController != null) {
                    mediaController.setVideoAd(bdVar);
                }
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: a */
        public final void mo6274a(C8152be beVar) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                C8148bd bdVar = (C8148bd) C8118at.this.f31767c;
                if (!bdVar.f31631l) {
                    if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == bdVar.f31621b.f31277a) {
                        if (((Integer) beVar.f31697v.get("currentMediaVolume")).intValue() > 0 && ((Integer) beVar.f31697v.get("lastMediaVolume")).intValue() == 0) {
                            bdVar.m6324d(beVar);
                        }
                        if (((Integer) beVar.f31697v.get("currentMediaVolume")).intValue() == 0 && ((Integer) beVar.f31697v.get("lastMediaVolume")).intValue() > 0) {
                            bdVar.m6325c(beVar);
                        }
                    }
                    if (!((Boolean) beVar.f31697v.get("didStartPlaying")).booleanValue()) {
                        beVar.f31697v.put("didStartPlaying", true);
                        bdVar.getViewableAd().mo5944a(6);
                        try {
                            HashMap hashMap = new HashMap();
                            hashMap.put("isCached", "1");
                            bdVar.m6501a("VideoPlayed", hashMap);
                        } catch (Exception e) {
                            StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                            sb.append(e.getMessage());
                            sb.append(")");
                        }
                    }
                }
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: a */
        public final void mo6273a(C8152be beVar, int i) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                ((C8148bd) C8118at.this.f31767c).m6331a(beVar, i);
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: b */
        public final void mo6272b(C8152be beVar) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                ((C8148bd) C8118at.this.f31767c).m6332a(beVar);
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: b */
        public final void mo6271b(C8152be beVar, int i) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                ((C8148bd) C8118at.this.f31767c).m6327b(beVar, i);
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: c */
        public final void mo6270c(C8152be beVar) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                ((C8148bd) C8118at.this.f31767c).m6328b(beVar);
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: d */
        public final void mo6269d(C8152be beVar) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                C8148bd bdVar = (C8148bd) C8118at.this.f31767c;
                if (!((Boolean) beVar.f31697v.get("didSignalVideoCompleted")).booleanValue()) {
                    bdVar.m6479o();
                    C8083ah.AbstractC8093c e = bdVar.m6489e();
                    if (e != null) {
                        e.mo6014h();
                    }
                }
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == bdVar.f31621b.f31277a) {
                    bdVar.m6493c((C8103ak) beVar);
                }
            }
        }

        @Override // com.inmobi.ads.AbstractC8172bh
        /* renamed from: e */
        public final void mo6268e(C8152be beVar) {
            if (!C8118at.this.mo6180b() && (C8118at.this.f31767c instanceof C8148bd)) {
                ((C8148bd) C8118at.this.f31767c).m6323e(beVar);
            }
        }
    };

    public C8118at(Context context, C8197c cVar, C8083ah ahVar, C8109ao aoVar) {
        this.f31767c = ahVar;
        this.f31766a = new C8122au(context, cVar, this.f31767c, aoVar, this.f31768d, this.f31769e, this);
        C8154bf.m6309a(ahVar.f31638s);
        this.f31766a.f31776a = this.f31770f;
    }

    @Override // com.inmobi.ads.AbstractC8213cb.AbstractC8214a
    /* renamed from: a */
    public final View mo6181a(View view, ViewGroup viewGroup, boolean z, RenderView renderView) {
        C8136aw awVar;
        if (view == null) {
            awVar = z ? this.f31766a.m6369b(null, viewGroup, renderView) : this.f31766a.m6373a(null, viewGroup, renderView);
        } else {
            View findViewWithTag = view.findViewWithTag("InMobiAdView");
            if (findViewWithTag != null) {
                C8136aw awVar2 = (C8136aw) findViewWithTag;
                awVar = z ? this.f31766a.m6369b(awVar2, viewGroup, renderView) : this.f31766a.m6373a(awVar2, viewGroup, renderView);
            } else {
                awVar = z ? this.f31766a.m6369b(null, viewGroup, renderView) : this.f31766a.m6373a(null, viewGroup, renderView);
            }
        }
        awVar.f31816a = new WeakReference<>(this.f31767c);
        awVar.setTag("InMobiAdView");
        return awVar;
    }

    @Override // com.inmobi.ads.AbstractC8213cb.AbstractC8214a
    /* renamed from: a */
    public final void mo6182a() {
        this.f31766a.m6380a();
        super.mo6182a();
    }

    @Override // com.inmobi.ads.C8122au.AbstractC8133b
    /* renamed from: a */
    public final void mo6356a(C8146bb bbVar) {
        if (bbVar.f31686k == 1) {
            this.f31767c.mo5592b();
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb.AbstractC8214a
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ boolean mo6180b() {
        return super.mo6180b();
    }
}
