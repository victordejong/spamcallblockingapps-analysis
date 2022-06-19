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
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4651t;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.multipro.C5094b;
import com.bytedance.sdk.openadsdk.multipro.aidl.C5072a;
import com.bytedance.sdk.openadsdk.multipro.aidl.p188a.BinderC5079e;
import com.bytedance.sdk.openadsdk.multipro.aidl.p189b.BinderC5086b;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5450c;
import com.bytedance.sdk.openadsdk.utils.C5465i;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.facebook.AccessToken;
import com.mopub.common.AdType;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/k.class */
public class C4444k implements TTRewardVideoAd {

    /* renamed from: a */
    private final Context f16203a;

    /* renamed from: b */
    private final C4557i f16204b;

    /* renamed from: c */
    private final AdSlot f16205c;

    /* renamed from: d */
    private TTRewardVideoAd.RewardAdInteractionListener f16206d;

    /* renamed from: e */
    private AbstractC3234c f16207e;

    /* renamed from: g */
    private boolean f16209g;

    /* renamed from: h */
    private String f16210h;

    /* renamed from: i */
    private String f16211i;

    /* renamed from: k */
    private String f16213k;

    /* renamed from: f */
    private boolean f16208f = true;

    /* renamed from: j */
    private AtomicBoolean f16212j = new AtomicBoolean(false);

    public C4444k(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16203a = context;
        this.f16204b = c4557i;
        this.f16205c = adSlot;
        if (getInteractionType() == 4) {
            this.f16207e = C3235d.m39089a(context, c4557i, AdType.REWARDED_VIDEO);
        }
        this.f16209g = false;
        this.f16213k = C5465i.m32148a(c4557i.hashCode() + c4557i.m35196ag().toString());
    }

    /* renamed from: a */
    private void m35563a(final int i) {
        if (!C5094b.m33091b()) {
            return;
        }
        C5052e.m33157b(new AbstractRunnableC5055g("Reward_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.k.2
            @Override // java.lang.Runnable
            public void run() {
                C5072a m33111a = C5072a.m33111a(C4444k.this.f16203a);
                if (i == 0 && C4444k.this.f16206d != null) {
                    C5478q.m32112b("MultiProcess", "start registerRewardVideoListener ! ");
                    BinderC5086b binderC5086b = new BinderC5086b(C4444k.this.f16206d);
                    IListenerManager asInterface = BinderC5079e.asInterface(m33111a.m33112a(0));
                    if (asInterface == null) {
                        return;
                    }
                    try {
                        asInterface.registerRewardVideoListener(C4444k.this.f16213k, binderC5086b);
                        C5478q.m32112b("MultiProcess", "end registerRewardVideoListener ! ");
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, 5);
    }

    /* renamed from: a */
    public void m35561a(String str) {
        if (this.f16212j.get()) {
            return;
        }
        this.f16209g = true;
        this.f16210h = str;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public int getInteractionType() {
        C4557i c4557i = this.f16204b;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16204b;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public int getRewardVideoAdType() {
        C4557i c4557i = this.f16204b;
        if (c4557i == null) {
            return -1;
        }
        if (c4557i.m35137w() && this.f16204b.m35175f() == 1) {
            return 2;
        }
        return (!this.f16204b.m35137w() || this.f16204b.m35175f() != 0) ? 0 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setRewardAdInteractionListener(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f16206d = rewardAdInteractionListener;
        m35563a(0);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setShowDownLoadBar(boolean z) {
        this.f16208f = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v86, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r0v89, types: [android.content.Context] */
    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void showRewardVideoAd(Activity activity) {
        Activity activity2 = activity;
        if (activity != null) {
            activity2 = activity;
            if (activity.isFinishing()) {
                C5478q.m32106e("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
                activity2 = null;
            }
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            C5478q.m32106e("TTRewardVideoAdImpl", "showRewardVideoAd error2: not main looper");
            throw new IllegalStateException("不能在子线程调用 TTRewardVideoAd.showRewardVideoAd");
        } else if (this.f16212j.get()) {
        } else {
            this.f16212j.set(true);
            C4557i c4557i = this.f16204b;
            if (c4557i == null || c4557i.m35245B() == null) {
                return;
            }
            Activity activity3 = activity2 == null ? this.f16203a : activity2;
            Activity activity4 = activity3;
            if (activity3 == null) {
                activity4 = C4600n.m34815a();
            }
            Intent intent = this.f16204b.m35187c() == 2 ? new Intent(activity4, TTRewardExpressVideoActivity.class) : new Intent(activity4, TTRewardVideoActivity.class);
            if (activity2 == null) {
                intent.addFlags(268435456);
            }
            intent.putExtra("reward_name", this.f16204b.m35220a());
            intent.putExtra("reward_amount", this.f16204b.m35195b());
            intent.putExtra("media_extra", this.f16205c.getMediaExtra());
            intent.putExtra(AccessToken.USER_ID_KEY, this.f16205c.getUserID());
            intent.putExtra("show_download_bar", this.f16208f);
            intent.putExtra("orientation", this.f16205c.getOrientation());
            if (!TextUtils.isEmpty(this.f16211i)) {
                intent.putExtra("rit_scene", this.f16211i);
            }
            if (this.f16209g) {
                intent.putExtra("video_cache_url", this.f16210h);
            }
            if (C5094b.m33091b()) {
                intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.f16204b.m35196ag().toString());
                intent.putExtra("multi_process_meta_md5", this.f16213k);
            } else {
                C4651t.m34621a().m34609g();
                C4651t.m34621a().m34617a(this.f16204b);
                C4651t.m34621a().m34618a(this.f16206d);
                C4651t.m34621a().m34620a(this.f16207e);
                this.f16206d = null;
            }
            C5450c.m32194a(activity4, intent, new C5450c.AbstractC5451a() { // from class: com.bytedance.sdk.openadsdk.component.reward.k.1
                @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
                /* renamed from: a */
                public void mo32193a() {
                }

                @Override // com.bytedance.sdk.openadsdk.utils.C5450c.AbstractC5451a
                /* renamed from: a */
                public void mo32192a(Throwable th) {
                    C5478q.m32108c("TTRewardVideoAdImpl", "show reward video error: ", th);
                }
            });
            if (TextUtils.isEmpty(this.f16204b.m35228S())) {
                return;
            }
            try {
                String optString = new JSONObject(this.f16204b.m35228S()).optString("rit", null);
                AdSlot m35589b = C4431h.m35601a(this.f16203a).m35589b(optString);
                C4431h.m35601a(this.f16203a).m35594a(optString);
                if (m35589b == null) {
                    return;
                }
                if (!this.f16209g || TextUtils.isEmpty(this.f16210h)) {
                    C4431h.m35601a(this.f16203a).m35600a(m35589b);
                } else {
                    C4431h.m35601a(this.f16203a).m35592b(m35589b);
                }
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void showRewardVideoAd(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (ritScenes == null) {
            C5478q.m32106e("TTRewardVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        if (ritScenes == TTAdConstant.RitScenes.CUSTOMIZE_SCENES) {
            this.f16211i = str;
        } else {
            this.f16211i = ritScenes.getScenesName();
        }
        showRewardVideoAd(activity);
    }
}
