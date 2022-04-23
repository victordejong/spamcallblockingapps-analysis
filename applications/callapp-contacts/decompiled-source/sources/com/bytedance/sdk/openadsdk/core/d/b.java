package com.bytedance.sdk.openadsdk.core.d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.l;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d/b.class */
public class b extends l {

    /* renamed from: a  reason: collision with root package name */
    protected NativeExpressView f8844a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f8845b;

    /* renamed from: c  reason: collision with root package name */
    protected i f8846c;

    /* renamed from: d  reason: collision with root package name */
    protected TTNativeExpressAd.ExpressAdInteractionListener f8847d;
    protected TTNativeExpressAd.AdInteractionListener e;
    protected com.bytedance.sdk.openadsdk.dislike.b f;
    protected Dialog g;
    protected FrameLayout h;
    a i;
    private c k;
    private long l = 0;
    private String m = "interaction";

    public b(Context context, i iVar, AdSlot adSlot) {
        this.f8845b = context;
        this.f8846c = iVar;
        a(context, iVar, adSlot, "interaction");
        a(this.f8844a, this.f8846c);
    }

    private c a(i iVar) {
        if (iVar.D() == 4) {
            return d.a(this.f8845b, iVar, this.m);
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
        e eVar = new e(this.f8845b, this.f8846c, this.m, 3);
        eVar.a(this.f8844a);
        eVar.a(this.k);
        eVar.a(this);
        this.f8844a.setClickListener(eVar);
        com.bytedance.sdk.openadsdk.core.nativeexpress.d dVar = new com.bytedance.sdk.openadsdk.core.nativeexpress.d(this.f8845b, this.f8846c, this.m, 3);
        dVar.a(this.f8844a);
        dVar.a(this);
        dVar.a(this.k);
        dVar.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.d.b.5
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view, int i) {
                if (i == 2 || i == 3 || i == 5) {
                    b.this.b();
                }
            }
        });
        this.f8844a.setClickCreativeListener(dVar);
    }

    private void a(Activity activity) {
        if (this.g == null) {
            com.bytedance.sdk.openadsdk.core.l lVar = new com.bytedance.sdk.openadsdk.core.l(activity);
            this.g = lVar;
            lVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.core.d.b.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (b.this.e != null) {
                        b.this.e.onAdDismiss();
                    }
                }
            });
            ((com.bytedance.sdk.openadsdk.core.l) this.g).a(true, new l.a() { // from class: com.bytedance.sdk.openadsdk.core.d.b.4
                @Override // com.bytedance.sdk.openadsdk.core.l.a
                public void a(View view) {
                    b.this.b();
                    com.bytedance.sdk.openadsdk.d.e.a(b.this.f8845b, b.this.f8846c, "interaction");
                    if (b.this.e != null) {
                        b.this.e.onAdDismiss();
                    }
                    q.b("TTInteractionExpressAd", "dislike事件发出");
                }

                @Override // com.bytedance.sdk.openadsdk.core.l.a
                public void a(ImageView imageView, ImageView imageView2, FrameLayout frameLayout) {
                    b.this.h = frameLayout;
                    b.this.h.addView(b.this.f8844a, new FrameLayout.LayoutParams(-1, -1));
                    b.this.a();
                }
            });
        }
        a aVar = this.i;
        if (aVar != null) {
            aVar.a(this.g);
        }
        if (!this.g.isShowing() && !g.b().a()) {
            this.g.show();
        }
    }

    private void a(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.f == null) {
            this.f = new com.bytedance.sdk.openadsdk.dislike.b(activity, this.f8846c);
        }
        this.f.setDislikeInteractionCallback(dislikeInteractionCallback);
        NativeExpressView nativeExpressView = this.f8844a;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.f);
        }
    }

    private void a(NativeExpressView nativeExpressView, final i iVar) {
        this.f8846c = iVar;
        this.f8844a.setBackupListener(new com.bytedance.sdk.openadsdk.core.nativeexpress.c() { // from class: com.bytedance.sdk.openadsdk.core.d.b.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.c
            public boolean a(NativeExpressView nativeExpressView2, int i) {
                try {
                    b.this.f8844a.m();
                    b.this.i = new a(nativeExpressView2.getContext());
                    b.this.i.a(b.this.f8846c, b.this.f8844a, b.this.k);
                    return true;
                } catch (Exception e) {
                    return false;
                }
            }
        });
        this.k = a(iVar);
        com.bytedance.sdk.openadsdk.d.e.a(iVar);
        EmptyView a2 = a(nativeExpressView);
        EmptyView emptyView = a2;
        if (a2 == null) {
            emptyView = new EmptyView(this.f8845b, nativeExpressView);
            nativeExpressView.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.core.d.b.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(View view) {
                q.b("TTInteractionExpressAd", "ExpressView SHOW");
                b.this.l = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("dynamic_show_type", Integer.valueOf(b.this.f8844a.n() ? 1 : 0));
                com.bytedance.sdk.openadsdk.d.e.a(b.this.f8845b, iVar, b.this.m, hashMap);
                if (b.this.f8847d != null) {
                    b.this.f8847d.onAdShow(view, iVar.D());
                }
                if (iVar.Y()) {
                    af.a(iVar, view);
                }
                if (!b.this.j.getAndSet(true) && b.this.f8844a != null) {
                    ag.a(b.this.f8845b, b.this.f8846c, b.this.m, b.this.f8844a.getWebView());
                }
                if (b.this.f8844a != null) {
                    b.this.f8844a.j();
                    b.this.f8844a.h();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(boolean z) {
                q.b("TTInteractionExpressAd", "ExpressView onWindowFocusChanged=".concat(String.valueOf(z)));
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - b.this.l);
                    com.bytedance.sdk.openadsdk.d.e.a(sb.toString(), iVar, b.this.m);
                    b.this.l = 0L;
                    return;
                }
                b.this.l = System.currentTimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void b() {
                if (b.this.l > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - b.this.l);
                    com.bytedance.sdk.openadsdk.d.e.a(sb.toString(), iVar, b.this.m);
                    b.this.l = 0L;
                }
            }
        });
        emptyView.setNeedCheckingShow(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        Dialog dialog = this.g;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    protected void a(Context context, i iVar, AdSlot adSlot, String str) {
        this.f8844a = new NativeExpressView(context, iVar, adSlot, this.m);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        NativeExpressView nativeExpressView = this.f8844a;
        if (nativeExpressView != null) {
            nativeExpressView.l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return this.f8844a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public List<FilterWord> getFilterWords() {
        i iVar = this.f8846c;
        if (iVar == null) {
            return null;
        }
        return iVar.U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        i iVar = this.f8846c;
        if (iVar == null) {
            return -1;
        }
        return iVar.T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        i iVar = this.f8846c;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f8846c;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.f8844a.i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null && activity != null) {
            a(activity, dislikeInteractionCallback);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract == null) {
            q.b("dialog is null, please check");
            return;
        }
        tTDislikeDialogAbstract.setMaterialMeta(this.f8846c);
        NativeExpressView nativeExpressView = this.f8844a;
        if (nativeExpressView != null) {
            nativeExpressView.setOuterDislike(tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.e = adInteractionListener;
        this.f8847d = adInteractionListener;
        this.f8844a.setExpressInteractionListener(adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f8847d = expressAdInteractionListener;
        this.f8844a.setExpressInteractionListener(expressAdInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void showInteractionExpressAd(Activity activity) {
        if (activity != null && !activity.isFinishing()) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                q.b("can't invoke in child thread TTInteractionExpressAd.showInteractionAd");
            } else {
                a(activity);
            }
        }
    }
}
