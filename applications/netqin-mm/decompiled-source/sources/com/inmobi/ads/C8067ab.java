package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8197c;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import java.lang.ref.WeakReference;
/* renamed from: com.inmobi.ads.ab */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ab.class */
public class C8067ab extends AbstractC8212ca {

    /* renamed from: d */
    public static final String f31563d = "ab";

    /* renamed from: e */
    public final WeakReference<Context> f31564e;

    /* renamed from: f */
    public final AbstractC8213cb f31565f;

    /* renamed from: g */
    public final C8094ai f31566g = new C8094ai(0);

    /* renamed from: h */
    public final C8083ah f31567h;

    public C8067ab(C8148bd bdVar, AbstractC8213cb cbVar) {
        super(bdVar);
        this.f31564e = new WeakReference<>(bdVar.m6483j());
        this.f31565f = cbVar;
        this.f31567h = bdVar;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        View b = this.f31565f.mo5936b();
        if (b != null) {
            this.f31566g.m6465a(this.f31564e.get(), b, this.f31567h);
        }
        return this.f31565f.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        this.f31565f.mo5944a(i);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0036 -> B:20:0x0027). Please submit an issue!!! */
    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        try {
            try {
            } catch (Exception e) {
                new StringBuilder("Exception in onActivityStateChanged with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            if (i == 0) {
                C8094ai.m6461b(context);
            } else if (i != 1) {
                if (i == 2) {
                    this.f31566g.m6466a(context);
                }
                this.f31565f.mo5943a(context, i);
            } else {
                C8094ai.m6460c(context);
            }
            this.f31565f.mo5943a(context, i);
        } catch (Throwable th) {
            this.f31565f.mo5943a(context, i);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                C8148bd bdVar = (C8148bd) this.f32074a;
                NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) bdVar.getVideoContainerView();
                Context context = this.f31564e.get();
                C8197c.C8209l lVar = this.f31565f.mo5935c().f31992k;
                if (!(context == null || nativeVideoWrapper == null || bdVar.f31631l)) {
                    NativeVideoView videoView = nativeVideoWrapper.getVideoView();
                    this.f31566g.m6463a(context, videoView, bdVar, lVar);
                    View b = this.f31565f.mo5936b();
                    if (!(videoView.getTag() == null || b == null)) {
                        C8152be beVar = (C8152be) videoView.getTag();
                        if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == bdVar.f31621b.f31277a && !((Boolean) beVar.f31697v.get("isFullScreen")).booleanValue()) {
                            this.f31566g.m6464a(context, b, this.f31567h, ((C8148bd) this.f31567h).f31838C, lVar);
                        }
                    }
                }
            } catch (Exception e) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31565f.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f31565f.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f31565f.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f31565f.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                Context context = this.f31564e.get();
                C8148bd bdVar = (C8148bd) this.f32074a;
                if (!bdVar.f31631l && context != null) {
                    this.f31566g.m6462a(context, bdVar);
                }
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31565f.mo5934d();
        } catch (Throwable th) {
            this.f31565f.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        this.f31566g.m6465a(this.f31564e.get(), this.f31565f.mo5936b(), this.f31567h);
        super.mo5933e();
        this.f31564e.clear();
        this.f31565f.mo5933e();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: f */
    public final AbstractC8213cb.AbstractC8214a mo5932f() {
        return this.f31565f.mo5932f();
    }
}
