package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2299a;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.AbstractC2717n;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.hr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hr.class */
public final class C3202hr implements AbstractC3195hk, AbstractC3200hp {

    /* renamed from: a */
    private final act f16721a;

    /* renamed from: b */
    private final Context f16722b;

    public C3202hr(Context context, C3647yd c3647yd, ctl ctlVar, C2299a c2299a) {
        this.f16722b = context;
        C2341q.m14743d();
        this.f16721a = adb.m13597a(context, aei.m13555a(), "", false, false, ctlVar, c3647yd, null, null, null, dwi.m8443a(), null, false);
        this.f16721a.getView().setWillNotDraw(true);
    }

    /* renamed from: a */
    private static void m7779a(Runnable runnable) {
        dyx.m8162a();
        if (C3634xr.m6790b()) {
            runnable.run();
        } else {
            C3567ve.f17498a.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: a */
    public final void mo7782a() {
        this.f16721a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: a */
    public final void mo7780a(AbstractC3203hs abstractC3203hs) {
        aef mo13426v = this.f16721a.mo13426v();
        abstractC3203hs.getClass();
        mo13426v.mo13527a(C3207hw.m7770a(abstractC3203hs));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: a */
    public final void mo7778a(String str) {
        m7779a(new RunnableC3206hv(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3241jc
    /* renamed from: a */
    public final void mo7739a(String str, AbstractC3131fa<? super AbstractC3241jc> abstractC3131fa) {
        this.f16721a.mo13462a(str, new C3213ib(this, abstractC3131fa));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk
    /* renamed from: a */
    public final void mo7738a(String str, String str2) {
        C3194hj.m7796a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: a */
    public final void mo7737a(String str, Map map) {
        C3194hj.m7795a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: a */
    public final void mo7736a(String str, JSONObject jSONObject) {
        C3194hj.m7794a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: b */
    public final void mo7776b(String str) {
        m7779a(new RunnableC3210hz(this, str));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3241jc
    /* renamed from: b */
    public final void mo7735b(String str, AbstractC3131fa<? super AbstractC3241jc> abstractC3131fa) {
        this.f16721a.mo13464a(str, new AbstractC2717n(abstractC3131fa) { // from class: com.google.android.gms.internal.ads.ht

            /* renamed from: a */
            private final AbstractC3131fa f16723a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16723a = abstractC3131fa;
            }

            @Override // com.google.android.gms.common.util.AbstractC2717n
            /* renamed from: a */
            public final boolean mo7772a(Object obj) {
                boolean z;
                AbstractC3131fa abstractC3131fa2;
                AbstractC3131fa abstractC3131fa3 = this.f16723a;
                AbstractC3131fa abstractC3131fa4 = (AbstractC3131fa) obj;
                if (abstractC3131fa4 instanceof C3213ib) {
                    abstractC3131fa2 = ((C3213ib) abstractC3131fa4).f16741a;
                    if (abstractC3131fa2.equals(abstractC3131fa3)) {
                        z = true;
                        return z;
                    }
                }
                z = false;
                return z;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk, com.google.android.gms.internal.ads.AbstractC3187hc
    /* renamed from: b */
    public final void mo7734b(String str, JSONObject jSONObject) {
        C3194hj.m7793b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: b */
    public final boolean mo7777b() {
        return this.f16721a.mo13593B();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: c */
    public final AbstractC3240jb mo7775c() {
        return new C3242jd(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3200hp
    /* renamed from: c */
    public final void mo7774c(String str) {
        m7779a(new RunnableC3209hy(this, str));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3195hk, com.google.android.gms.internal.ads.AbstractC3212ia
    /* renamed from: d */
    public final void mo7733d(String str) {
        m7779a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.hu

            /* renamed from: a */
            private final C3202hr f16724a;

            /* renamed from: b */
            private final String f16725b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16724a = this;
                this.f16725b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16724a.m7773e(this.f16725b);
            }
        });
    }

    /* renamed from: e */
    public final /* synthetic */ void m7773e(String str) {
        this.f16721a.mo7733d(str);
    }
}
