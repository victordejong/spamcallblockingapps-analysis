package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.aidl.C5072a;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5078d;
import com.bytedance.sdk.openadsdk.multipro.aidl.p189b.BinderC5080a;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5450c;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.j */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/j.class */
public class C4441j implements TTFullScreenVideoAd {

    /* renamed from: a */
    private final Context f16188a;

    /* renamed from: b */
    private final C4557i f16189b;

    /* renamed from: c */
    private final AdSlot f16190c;

    /* renamed from: d */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f16191d;

    /* renamed from: e */
    private AbstractC3234c f16192e;

    /* renamed from: g */
    private boolean f16194g;

    /* renamed from: h */
    private String f16195h;

    /* renamed from: i */
    private String f16196i;

    /* renamed from: l */
    private String f16199l;

    /* renamed from: f */
    private boolean f16193f = true;

    /* renamed from: j */
    private AtomicBoolean f16197j = new AtomicBoolean(false);

    /* renamed from: k */
    private boolean f16198k = false;

    public C4441j(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16188a = context;
        this.f16189b = c4557i;
        this.f16190c = adSlot;
        if (getInteractionType() == 4) {
            this.f16192e = C3235d.m39089a(context, c4557i, "fullscreen_interstitial_ad");
        }
        this.f16194g = false;
        this.f16199l = C5465i.m32148a(c4557i.hashCode() + c4557i.m35196ag().toString());
    }

    /* renamed from: a */
    private void m35571a(final int i) {
        if (!C5094b.m33091b()) {
            return;
        }
        C5052e.m33157b(new AbstractRunnableC5055g("FullScreen_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.j.2
            @Override // java.lang.Runnable
            public void run() {
                C5072a m33111a = C5072a.m33111a(C4441j.this.f16188a);
                if (i == 1 && C4441j.this.f16191d != null) {
                    C5478q.m32112b("MultiProcess", "start registerFullScreenVideoListener ! ");
                    BinderC5080a binderC5080a = new BinderC5080a(C4441j.this.f16191d);
                    IListenerManager asInterface = BinderC5078d.asInterface(m33111a.m33112a(1));
                    if (asInterface == null) {
                        return;
                    }
                    try {
                        asInterface.registerFullVideoListener(C4441j.this.f16199l, binderC5080a);
                        C5478q.m32112b("MultiProcess", "end registerFullScreenVideoListener ! ");
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, 5);
    }

    /* renamed from: a */
    public void m35569a(String str) {
        if (this.f16197j.get()) {
            return;
        }
        this.f16194g = true;
        this.f16195h = str;
    }

    /* renamed from: a */
    public void m35568a(boolean z) {
        this.f16198k = z;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public int getFullVideoAdType() {
        C4557i c4557i = this.f16189b;
        if (c4557i == null) {
            return -1;
        }
        if (c4557i.m35137w() && this.f16189b.m35175f() == 1) {
            return 2;
        }
        return (!this.f16189b.m35137w() || this.f16189b.m35175f() != 0) ? 0 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public int getInteractionType() {
        C4557i c4557i = this.f16189b;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16189b;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setFullScreenVideoAdInteractionListener(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f16191d = fullScreenVideoAdInteractionListener;
        m35571a(1);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setShowDownLoadBar(boolean z) {
        this.f16193f = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v80, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r0v83, types: [android.content.Context] */
    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void showFullScreenVideoAd(Activity activity) {
        Activity activity2 = activity;
        if (activity != null) {
            activity2 = activity;
            if (activity.isFinishing()) {
                C5478q.m32106e("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
                activity2 = null;
            }
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            C5478q.m32106e("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("不能在子线程调用 TTFullScreenVideoAd.showFullScreenVideoAd");
        } else if (this.f16197j.get()) {
        } else {
            this.f16197j.set(true);
            C4557i c4557i = this.f16189b;
            if (c4557i == null || c4557i.m35245B() == null) {
                return;
            }
            Activity activity3 = activity2 == null ? this.f16188a : activity2;
            Activity activity4 = activity3;
            if (activity3 == null) {
                activity4 = C4600n.m34815a();
            }
            Intent intent = this.f16189b.m35187c() == 2 ? new Intent(activity4, TTFullScreenExpressVideoActivity.class) : new Intent(activity4, TTFullScreenVideoActivity.class);
            if (activity2 == null) {
                intent.addFlags(268435456);
            }
            intent.putExtra("show_download_bar", this.f16193f);
            intent.putExtra("orientation", this.f16190c.getOrientation());
            intent.putExtra("is_verity_playable", this.f16198k);
            if (!TextUtils.isEmpty(this.f16196i)) {
                intent.putExtra("rit_scene", this.f16196i);
            }
            if (this.f16194g) {
                intent.putExtra("video_cache_url", this.f16195h);
            }
            if (C5094b.m33091b()) {
                intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.f16189b.m35196ag().toString());
                intent.putExtra("multi_process_meta_md5", this.f16199l);
            } else {
                C4651t.m34621a().m34609g();
                C4651t.m34621a().m34617a(this.f16189b);
                C4651t.m34621a().m34619a(this.f16191d);
                C4651t.m34621a().m34620a(this.f16192e);
                this.f16191d = null;
            }
            C5450c.m32194a(activity4, intent, new C5450c.AbstractC5451a() { // from class: com.bytedance.sdk.openadsdk.component.reward.j.1
                @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
                /* renamed from: a */
                public void mo32193a() {
                    if (C4441j.this.f16198k) {
                        try {
                            C4927a.m33549a().m33544a(C4441j.this.f16189b.m35245B().m35042i());
                        } catch (Throwable th) {
                        }
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
                /* renamed from: a */
                public void mo32192a(Throwable th) {
                    C5478q.m32108c("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
                    if (C4441j.this.f16198k) {
                        try {
                            C4927a.m33549a().m33542a(C4441j.this.f16189b.m35245B().m35042i(), -1, th != null ? th.getMessage() : "playable tool error open");
                        } catch (Throwable th2) {
                        }
                    }
                }
            });
            if (TextUtils.isEmpty(this.f16189b.m35228S())) {
                return;
            }
            try {
                String optString = new JSONObject(this.f16189b.m35228S()).optString("rit", null);
                AdSlot m35625b = C4408c.m35637a(this.f16188a).m35625b(optString);
                C4408c.m35637a(this.f16188a).m35630a(optString);
                if (m35625b == null) {
                    return;
                }
                if (!this.f16194g || TextUtils.isEmpty(this.f16195h)) {
                    C4408c.m35637a(this.f16188a).m35636a(m35625b);
                } else {
                    C4408c.m35637a(this.f16188a).m35628b(m35625b);
                }
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void showFullScreenVideoAd(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (ritScenes == null) {
            C5478q.m32106e("TTFullScreenVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        if (ritScenes == TTAdConstant.RitScenes.CUSTOMIZE_SCENES) {
            this.f16196i = str;
        } else {
            this.f16196i = ritScenes.getScenesName();
        }
        showFullScreenVideoAd(activity);
    }
}
