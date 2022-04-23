package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.b;
import com.bytedance.sdk.openadsdk.core.nativeexpress.l;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/b.class */
public class b extends l implements ah.a {

    /* renamed from: a  reason: collision with root package name */
    protected a f8816a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f8817b;

    /* renamed from: c  reason: collision with root package name */
    protected i f8818c;

    /* renamed from: d  reason: collision with root package name */
    protected AdSlot f8819d;
    protected TTNativeExpressAd.ExpressAdInteractionListener e;
    TTDislikeDialogAbstract f;
    private com.bytedance.sdk.openadsdk.dislike.b g;
    private c h;
    private ah i;
    private int k;
    private TTAdDislike.DislikeInteractionCallback l;
    private Context m;
    private final Queue<Long> n = new LinkedList();
    private String o = "banner_ad";

    public b(Context context, i iVar, AdSlot adSlot) {
        this.f8817b = context;
        this.f8818c = iVar;
        this.f8819d = adSlot;
        a(context, iVar, adSlot);
    }

    private c a(i iVar) {
        if (iVar.D() == 4) {
            return d.a(this.f8817b, iVar, this.o);
        }
        return null;
    }

    private EmptyView a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ah ahVar = this.i;
        if (ahVar != null) {
            ahVar.removeCallbacksAndMessages(null);
            this.i.sendEmptyMessageDelayed(112201, this.k);
        }
    }

    private void a(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.g == null) {
            this.g = new com.bytedance.sdk.openadsdk.dislike.b(activity, this.f8818c);
        }
        this.m = activity;
        this.g.setDislikeInteractionCallback(dislikeInteractionCallback);
        a aVar = this.f8816a;
        if (aVar != null && aVar.getCurView() != null) {
            this.f8816a.getCurView().setDislike(this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, i iVar) {
        try {
            if (z) {
                this.n.offer(Long.valueOf(System.currentTimeMillis()));
            } else if (this.n.size() > 0) {
                long longValue = this.n.poll().longValue();
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - longValue);
                e.a(sb.toString(), iVar, this.o);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ah ahVar = this.i;
        if (ahVar != null) {
            ahVar.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(i iVar) {
        if (this.f8816a.getNextView() != null && this.f8816a.b()) {
            b(this.f8816a.getNextView(), iVar);
            a(this.f8816a.getNextView(), iVar);
        }
    }

    private void b(NativeExpressView nativeExpressView, i iVar) {
        if (nativeExpressView != null && iVar != null) {
            if (this.l != null) {
                this.g.a(iVar);
                if (nativeExpressView != null) {
                    nativeExpressView.setDislike(this.g);
                }
            }
            TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f;
            if (tTDislikeDialogAbstract != null) {
                tTDislikeDialogAbstract.setMaterialMeta(iVar);
                if (nativeExpressView != null) {
                    nativeExpressView.setOuterDislike(this.f);
                }
            }
        }
    }

    private void c() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.b.a(this.f8817b).a(this.f8819d, 1, null, new b.a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.b.3
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.b.a
            public void a() {
                b.this.a();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.b.a
            public void a(List<i> list) {
                if (list == null || list.isEmpty()) {
                    b.this.a();
                    return;
                }
                i iVar = list.get(0);
                b.this.f8816a.a(iVar, b.this.f8819d);
                b.this.b(iVar);
                b.this.f8816a.c();
                b.this.a();
            }
        }, 5000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(i iVar) {
        Queue<Long> queue = this.n;
        if (queue != null && queue.size() > 0 && iVar != null) {
            try {
                long longValue = this.n.poll().longValue();
                if (longValue > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - longValue);
                    e.a(sb.toString(), iVar, this.o);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(Context context, i iVar, AdSlot adSlot) {
        a aVar = new a(context, iVar, adSlot);
        this.f8816a = aVar;
        a(aVar.getCurView(), this.f8818c);
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message.what == 112201) {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final NativeExpressView nativeExpressView, final i iVar) {
        if (nativeExpressView != null && iVar != null) {
            this.f8818c = iVar;
            this.h = a(iVar);
            nativeExpressView.setBackupListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.c() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.b.1
                @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.c
                public boolean a(NativeExpressView nativeExpressView2, int i) {
                    try {
                        nativeExpressView2.m();
                        BannerExpressBackupView bannerExpressBackupView = new BannerExpressBackupView(nativeExpressView2.getContext());
                        bannerExpressBackupView.a(b.this.f8818c, nativeExpressView2, b.this.h);
                        bannerExpressBackupView.setDislikeInner(b.this.g);
                        bannerExpressBackupView.setDislikeOuter(b.this.f);
                        return true;
                    } catch (Exception e) {
                        return false;
                    }
                }
            });
            e.a(iVar);
            EmptyView a2 = a(nativeExpressView);
            EmptyView emptyView = a2;
            if (a2 == null) {
                emptyView = new EmptyView(this.f8817b, nativeExpressView);
                nativeExpressView.addView(emptyView);
            }
            emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.b.2
                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a() {
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a(View view) {
                    q.b("TTBannerExpressAd", "ExpressView SHOW");
                    if (b.this.n != null) {
                        b.this.n.offer(Long.valueOf(System.currentTimeMillis()));
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put("dynamic_show_type", Integer.valueOf(nativeExpressView.n() ? 1 : 0));
                    e.a(b.this.f8817b, iVar, b.this.o, hashMap);
                    if (b.this.e != null) {
                        b.this.e.onAdShow(view, iVar.D());
                    }
                    if (iVar.Y()) {
                        af.a(iVar, view);
                    }
                    b.this.a();
                    if (!(b.this.j.getAndSet(true) || b.this.f8816a == null || b.this.f8816a.getCurView() == null)) {
                        ag.a(b.this.f8817b, b.this.f8818c, b.this.o, b.this.f8816a.getCurView().getWebView());
                    }
                    if (b.this.f8816a != null && b.this.f8816a.getCurView() != null) {
                        b.this.f8816a.getCurView().j();
                        b.this.f8816a.getCurView().h();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void a(boolean z) {
                    if (z) {
                        b.this.a();
                        q.b("TTBannerExpressAd", "获得焦点，开始计时");
                    } else {
                        q.b("TTBannerExpressAd", "失去焦点，停止计时");
                        b.this.b();
                    }
                    b.this.a(z, iVar);
                }

                @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
                public void b() {
                    b.this.c(iVar);
                }
            });
            com.bytedance.sdk.openadsdk.core.nativeexpress.e eVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.e(this.f8817b, iVar, this.o, 2);
            eVar.a(nativeExpressView);
            eVar.a(this);
            eVar.a(this.h);
            nativeExpressView.setClickListener(eVar);
            com.bytedance.sdk.openadsdk.core.nativeexpress.d dVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.d(this.f8817b, iVar, this.o, 2);
            dVar.a(nativeExpressView);
            eVar.a(this);
            dVar.a(this.h);
            nativeExpressView.setClickCreativeListener(dVar);
            emptyView.setNeedCheckingShow(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        a aVar = this.f8816a;
        if (aVar != null) {
            aVar.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return this.f8816a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public List<FilterWord> getFilterWords() {
        i iVar = this.f8818c;
        if (iVar == null) {
            return null;
        }
        return iVar.U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        i iVar = this.f8818c;
        if (iVar == null) {
            return -1;
        }
        return iVar.T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        i iVar = this.f8818c;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f8818c;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.f8816a.e();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null && activity != null) {
            this.l = dislikeInteractionCallback;
            a(activity, dislikeInteractionCallback);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract == null) {
            q.b("dialog is null, please check");
            return;
        }
        this.f = tTDislikeDialogAbstract;
        tTDislikeDialogAbstract.setMaterialMeta(this.f8818c);
        a aVar = this.f8816a;
        if (aVar != null && aVar.getCurView() != null) {
            this.f8816a.getCurView().setOuterDislike(tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.e = adInteractionListener;
        this.f8816a.setExpressInteractionListener(adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.e = expressAdInteractionListener;
        this.f8816a.setExpressInteractionListener(expressAdInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setSlideIntervalTime(int i) {
        int i2;
        if (i > 0) {
            this.o = "slide_banner_ad";
            a(this.f8816a.getCurView(), this.f8818c);
            this.f8816a.setDuration(1000);
            if (i < 30000) {
                i2 = 30000;
            } else {
                i2 = i;
                if (i > 120000) {
                    i2 = 120000;
                }
            }
            this.k = i2;
            this.i = new ah(Looper.getMainLooper(), this);
        }
    }
}
