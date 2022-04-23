package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.multipro.aidl.a;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.c;
import com.bytedance.sdk.openadsdk.utils.q;
import com.facebook.AccessToken;
import com.mopub.common.AdType;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/k.class */
class k implements TTRewardVideoAd {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8699a;

    /* renamed from: b  reason: collision with root package name */
    private final i f8700b;

    /* renamed from: c  reason: collision with root package name */
    private final AdSlot f8701c;

    /* renamed from: d  reason: collision with root package name */
    private TTRewardVideoAd.RewardAdInteractionListener f8702d;
    private c e;
    private boolean g;
    private String h;
    private String i;
    private String k;
    private boolean f = true;
    private AtomicBoolean j = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, i iVar, AdSlot adSlot) {
        this.f8699a = context;
        this.f8700b = iVar;
        this.f8701c = adSlot;
        if (getInteractionType() == 4) {
            this.e = d.a(context, iVar, AdType.REWARDED_VIDEO);
        }
        this.g = false;
        this.k = com.bytedance.sdk.openadsdk.utils.i.a(iVar.hashCode() + iVar.ag().toString());
    }

    private void a(final int i) {
        if (b.b()) {
            e.b(new g("Reward_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.k.2
                @Override // java.lang.Runnable
                public void run() {
                    a a2 = a.a(k.this.f8699a);
                    if (i == 0 && k.this.f8702d != null) {
                        q.b("MultiProcess", "start registerRewardVideoListener ! ");
                        com.bytedance.sdk.openadsdk.multipro.aidl.b.b bVar = new com.bytedance.sdk.openadsdk.multipro.aidl.b.b(k.this.f8702d);
                        IListenerManager asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.a.e.asInterface(a2.a(0));
                        if (asInterface != null) {
                            try {
                                asInterface.registerRewardVideoListener(k.this.k, bVar);
                                q.b("MultiProcess", "end registerRewardVideoListener ! ");
                            } catch (RemoteException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            }, 5);
        }
    }

    public void a(String str) {
        if (!this.j.get()) {
            this.g = true;
            this.h = str;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public int getInteractionType() {
        i iVar = this.f8700b;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f8700b;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public int getRewardVideoAdType() {
        i iVar = this.f8700b;
        if (iVar == null) {
            return -1;
        }
        if (!iVar.w() || this.f8700b.f() != 1) {
            return (!this.f8700b.w() || this.f8700b.f() != 0) ? 0 : 1;
        }
        return 2;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setRewardAdInteractionListener(TTRewardVideoAd.RewardAdInteractionListener rewardAdInteractionListener) {
        this.f8702d = rewardAdInteractionListener;
        a(0);
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void setShowDownLoadBar(boolean z) {
        this.f = z;
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void showRewardVideoAd(Activity activity) {
        Activity activity2 = activity;
        if (activity != null) {
            activity2 = activity;
            if (activity.isFinishing()) {
                q.e("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
                activity2 = null;
            }
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            q.e("TTRewardVideoAdImpl", "showRewardVideoAd error2: not main looper");
            throw new IllegalStateException("不能在子线程调用 TTRewardVideoAd.showRewardVideoAd");
        } else if (!this.j.get()) {
            this.j.set(true);
            i iVar = this.f8700b;
            if (iVar != null && iVar.B() != null) {
                Context context = activity2 == null ? this.f8699a : activity2;
                Context context2 = context;
                if (context == null) {
                    context2 = n.a();
                }
                Intent intent = this.f8700b.c() == 2 ? new Intent(context2, TTRewardExpressVideoActivity.class) : new Intent(context2, TTRewardVideoActivity.class);
                if (activity2 == null) {
                    intent.addFlags(268435456);
                }
                intent.putExtra("reward_name", this.f8700b.a());
                intent.putExtra("reward_amount", this.f8700b.b());
                intent.putExtra("media_extra", this.f8701c.getMediaExtra());
                intent.putExtra(AccessToken.USER_ID_KEY, this.f8701c.getUserID());
                intent.putExtra("show_download_bar", this.f);
                intent.putExtra("orientation", this.f8701c.getOrientation());
                if (!TextUtils.isEmpty(this.i)) {
                    intent.putExtra("rit_scene", this.i);
                }
                if (this.g) {
                    intent.putExtra("video_cache_url", this.h);
                }
                if (b.b()) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.f8700b.ag().toString());
                    intent.putExtra("multi_process_meta_md5", this.k);
                } else {
                    t.a().g();
                    t.a().a(this.f8700b);
                    t.a().a(this.f8702d);
                    t.a().a(this.e);
                    this.f8702d = null;
                }
                com.bytedance.sdk.openadsdk.utils.c.a(context2, intent, new c.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.k.1
                    @Override // com.bytedance.sdk.openadsdk.utils.c.a
                    public void a() {
                    }

                    @Override // com.bytedance.sdk.openadsdk.utils.c.a
                    public void a(Throwable th) {
                        q.c("TTRewardVideoAdImpl", "show reward video error: ", th);
                    }
                });
                if (!TextUtils.isEmpty(this.f8700b.S())) {
                    try {
                        String optString = new JSONObject(this.f8700b.S()).optString("rit", null);
                        AdSlot b2 = h.a(this.f8699a).b(optString);
                        h.a(this.f8699a).a(optString);
                        if (b2 == null) {
                            return;
                        }
                        if (!this.g || TextUtils.isEmpty(this.h)) {
                            h.a(this.f8699a).a(b2);
                        } else {
                            h.a(this.f8699a).b(b2);
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTRewardVideoAd
    public void showRewardVideoAd(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (ritScenes == null) {
            q.e("TTRewardVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        if (ritScenes == TTAdConstant.RitScenes.CUSTOMIZE_SCENES) {
            this.i = str;
        } else {
            this.i = ritScenes.getScenesName();
        }
        showRewardVideoAd(activity);
    }
}
