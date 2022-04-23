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
import com.bytedance.sdk.openadsdk.TTFullScreenVideoAd;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.multipro.aidl.a;
import com.bytedance.sdk.openadsdk.multipro.b;
import com.bytedance.sdk.openadsdk.utils.c;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/j.class */
class j implements TTFullScreenVideoAd {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8692a;

    /* renamed from: b  reason: collision with root package name */
    private final i f8693b;

    /* renamed from: c  reason: collision with root package name */
    private final AdSlot f8694c;

    /* renamed from: d  reason: collision with root package name */
    private TTFullScreenVideoAd.FullScreenVideoAdInteractionListener f8695d;
    private c e;
    private boolean g;
    private String h;
    private String i;
    private String l;
    private boolean f = true;
    private AtomicBoolean j = new AtomicBoolean(false);
    private boolean k = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, i iVar, AdSlot adSlot) {
        this.f8692a = context;
        this.f8693b = iVar;
        this.f8694c = adSlot;
        if (getInteractionType() == 4) {
            this.e = d.a(context, iVar, "fullscreen_interstitial_ad");
        }
        this.g = false;
        this.l = com.bytedance.sdk.openadsdk.utils.i.a(iVar.hashCode() + iVar.ag().toString());
    }

    private void a(final int i) {
        if (b.b()) {
            e.b(new g("FullScreen_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.j.2
                @Override // java.lang.Runnable
                public void run() {
                    a a2 = a.a(j.this.f8692a);
                    if (i == 1 && j.this.f8695d != null) {
                        q.b("MultiProcess", "start registerFullScreenVideoListener ! ");
                        com.bytedance.sdk.openadsdk.multipro.aidl.b.a aVar = new com.bytedance.sdk.openadsdk.multipro.aidl.b.a(j.this.f8695d);
                        IListenerManager asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.a.d.asInterface(a2.a(1));
                        if (asInterface != null) {
                            try {
                                asInterface.registerFullVideoListener(j.this.l, aVar);
                                q.b("MultiProcess", "end registerFullScreenVideoListener ! ");
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

    public void a(boolean z) {
        this.k = z;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public int getFullVideoAdType() {
        i iVar = this.f8693b;
        if (iVar == null) {
            return -1;
        }
        if (!iVar.w() || this.f8693b.f() != 1) {
            return (!this.f8693b.w() || this.f8693b.f() != 0) ? 0 : 1;
        }
        return 2;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public int getInteractionType() {
        i iVar = this.f8693b;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f8693b;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setFullScreenVideoAdInteractionListener(TTFullScreenVideoAd.FullScreenVideoAdInteractionListener fullScreenVideoAdInteractionListener) {
        this.f8695d = fullScreenVideoAdInteractionListener;
        a(1);
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void setShowDownLoadBar(boolean z) {
        this.f = z;
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void showFullScreenVideoAd(Activity activity) {
        Activity activity2 = activity;
        if (activity != null) {
            activity2 = activity;
            if (activity.isFinishing()) {
                q.e("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
                activity2 = null;
            }
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            q.e("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("不能在子线程调用 TTFullScreenVideoAd.showFullScreenVideoAd");
        } else if (!this.j.get()) {
            this.j.set(true);
            i iVar = this.f8693b;
            if (iVar != null && iVar.B() != null) {
                Context context = activity2 == null ? this.f8692a : activity2;
                Context context2 = context;
                if (context == null) {
                    context2 = n.a();
                }
                Intent intent = this.f8693b.c() == 2 ? new Intent(context2, TTFullScreenExpressVideoActivity.class) : new Intent(context2, TTFullScreenVideoActivity.class);
                if (activity2 == null) {
                    intent.addFlags(268435456);
                }
                intent.putExtra("show_download_bar", this.f);
                intent.putExtra("orientation", this.f8694c.getOrientation());
                intent.putExtra("is_verity_playable", this.k);
                if (!TextUtils.isEmpty(this.i)) {
                    intent.putExtra("rit_scene", this.i);
                }
                if (this.g) {
                    intent.putExtra("video_cache_url", this.h);
                }
                if (b.b()) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.f8693b.ag().toString());
                    intent.putExtra("multi_process_meta_md5", this.l);
                } else {
                    t.a().g();
                    t.a().a(this.f8693b);
                    t.a().a(this.f8695d);
                    t.a().a(this.e);
                    this.f8695d = null;
                }
                com.bytedance.sdk.openadsdk.utils.c.a(context2, intent, new c.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.j.1
                    @Override // com.bytedance.sdk.openadsdk.utils.c.a
                    public void a() {
                        if (j.this.k) {
                            try {
                                com.bytedance.sdk.openadsdk.i.a.a().a(j.this.f8693b.B().i());
                            } catch (Throwable th) {
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.utils.c.a
                    public void a(Throwable th) {
                        q.c("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
                        if (j.this.k) {
                            try {
                                com.bytedance.sdk.openadsdk.i.a.a().a(j.this.f8693b.B().i(), -1, th != null ? th.getMessage() : "playable tool error open");
                            } catch (Throwable th2) {
                            }
                        }
                    }
                });
                if (!TextUtils.isEmpty(this.f8693b.S())) {
                    try {
                        String optString = new JSONObject(this.f8693b.S()).optString("rit", null);
                        AdSlot b2 = c.a(this.f8692a).b(optString);
                        c.a(this.f8692a).a(optString);
                        if (b2 == null) {
                            return;
                        }
                        if (!this.g || TextUtils.isEmpty(this.h)) {
                            c.a(this.f8692a).a(b2);
                        } else {
                            c.a(this.f8692a).b(b2);
                        }
                    } catch (Throwable th) {
                    }
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTFullScreenVideoAd
    public void showFullScreenVideoAd(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
        if (ritScenes == null) {
            q.e("TTFullScreenVideoAdImpl", "The param ritScenes can not be null!");
            return;
        }
        if (ritScenes == TTAdConstant.RitScenes.CUSTOMIZE_SCENES) {
            this.i = str;
        } else {
            this.i = ritScenes.getScenesName();
        }
        showFullScreenVideoAd(activity);
    }
}
