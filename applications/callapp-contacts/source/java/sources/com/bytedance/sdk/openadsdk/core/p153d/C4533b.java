package com.bytedance.sdk.openadsdk.core.p153d;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.DialogC4593l;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4616d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4617e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p151b.C4495b;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.core.d.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d/b.class */
public class C4533b extends C4632l {

    /* renamed from: a */
    protected NativeExpressView f16429a;

    /* renamed from: b */
    protected final Context f16430b;

    /* renamed from: c */
    protected C4557i f16431c;

    /* renamed from: d */
    protected TTNativeExpressAd.ExpressAdInteractionListener f16432d;

    /* renamed from: e */
    protected TTNativeExpressAd.AdInteractionListener f16433e;

    /* renamed from: f */
    protected C4852b f16434f;

    /* renamed from: g */
    protected Dialog f16435g;

    /* renamed from: h */
    protected FrameLayout f16436h;

    /* renamed from: i */
    C4523a f16437i;

    /* renamed from: k */
    private AbstractC3234c f16438k;

    /* renamed from: l */
    private long f16439l = 0;

    /* renamed from: m */
    private String f16440m = "interaction";

    public C4533b(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16430b = context;
        this.f16431c = c4557i;
        mo35357a(context, c4557i, adSlot, "interaction");
        m35363a(this.f16429a, this.f16431c);
    }

    /* renamed from: a */
    private AbstractC3234c m35364a(C4557i c4557i) {
        if (c4557i.m35243D() == 4) {
            return C3235d.m39089a(this.f16430b, c4557i, this.f16440m);
        }
        return null;
    }

    /* renamed from: a */
    private EmptyView m35367a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m35370a() {
        C4617e c4617e = new C4617e(this.f16430b, this.f16431c, this.f16440m, 3);
        c4617e.m35481a(this.f16429a);
        c4617e.m35480a(this.f16438k);
        c4617e.m35478a(this);
        this.f16429a.setClickListener(c4617e);
        C4616d c4616d = new C4616d(this.f16430b, this.f16431c, this.f16440m, 3);
        c4616d.m35481a(this.f16429a);
        c4616d.m35478a(this);
        c4616d.m35480a(this.f16438k);
        c4616d.m35477a(new C4495b.AbstractC4496a() { // from class: com.bytedance.sdk.openadsdk.core.d.b.5
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b.AbstractC4496a
            /* renamed from: a */
            public void mo34179a(View view, int i) {
                if (i == 2 || i == 3 || i == 5) {
                    C4533b.this.m35362b();
                }
            }
        });
        this.f16429a.setClickCreativeListener(c4616d);
    }

    /* renamed from: a */
    private void m35369a(Activity activity) {
        if (this.f16435g == null) {
            DialogC4593l dialogC4593l = new DialogC4593l(activity);
            this.f16435g = dialogC4593l;
            dialogC4593l.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.core.d.b.3
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (C4533b.this.f16433e != null) {
                        C4533b.this.f16433e.onAdDismiss();
                    }
                }
            });
            ((DialogC4593l) this.f16435g).m34829a(true, new DialogC4593l.AbstractC4595a() { // from class: com.bytedance.sdk.openadsdk.core.d.b.4
                @Override // com.bytedance.sdk.openadsdk.core.DialogC4593l.AbstractC4595a
                /* renamed from: a */
                public void mo34827a(View view) {
                    C4533b.this.m35362b();
                    C4811e.m33883a(C4533b.this.f16430b, C4533b.this.f16431c, "interaction");
                    if (C4533b.this.f16433e != null) {
                        C4533b.this.f16433e.onAdDismiss();
                    }
                    C5478q.m32112b("TTInteractionExpressAd", "dislike事件发出");
                }

                @Override // com.bytedance.sdk.openadsdk.core.DialogC4593l.AbstractC4595a
                /* renamed from: a */
                public void mo34826a(ImageView imageView, ImageView imageView2, FrameLayout frameLayout) {
                    C4533b.this.f16436h = frameLayout;
                    C4533b.this.f16436h.addView(C4533b.this.f16429a, new FrameLayout.LayoutParams(-1, -1));
                    C4533b.this.m35370a();
                }
            });
        }
        C4523a c4523a = this.f16437i;
        if (c4523a != null) {
            c4523a.m35391a(this.f16435g);
        }
        if (this.f16435g.isShowing() || C4570g.m35020b().m35029a()) {
            return;
        }
        this.f16435g.show();
    }

    /* renamed from: a */
    private void m35368a(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.f16434f == null) {
            this.f16434f = new C4852b(activity, this.f16431c);
        }
        this.f16434f.setDislikeInteractionCallback(dislikeInteractionCallback);
        NativeExpressView nativeExpressView = this.f16429a;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.f16434f);
        }
    }

    /* renamed from: a */
    private void m35363a(NativeExpressView nativeExpressView, final C4557i c4557i) {
        this.f16431c = c4557i;
        this.f16429a.setBackupListener(new AbstractC4615c() { // from class: com.bytedance.sdk.openadsdk.core.d.b.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c
            /* renamed from: a */
            public boolean mo34693a(NativeExpressView nativeExpressView2, int i) {
                try {
                    C4533b.this.f16429a.m34763m();
                    C4533b.this.f16437i = new C4523a(nativeExpressView2.getContext());
                    C4533b.this.f16437i.m35388a(C4533b.this.f16431c, C4533b.this.f16429a, C4533b.this.f16438k);
                    return true;
                } catch (Exception e) {
                    return false;
                }
            }
        });
        this.f16438k = m35364a(c4557i);
        C4811e.m33874a(c4557i);
        EmptyView m35367a = m35367a(nativeExpressView);
        EmptyView emptyView = m35367a;
        if (m35367a == null) {
            emptyView = new EmptyView(this.f16430b, nativeExpressView);
            nativeExpressView.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.AbstractC4461a() { // from class: com.bytedance.sdk.openadsdk.core.d.b.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34692a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34691a(View view) {
                C5478q.m32112b("TTInteractionExpressAd", "ExpressView SHOW");
                C4533b.this.f16439l = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("dynamic_show_type", Integer.valueOf(C4533b.this.f16429a.m34762n() ? 1 : 0));
                C4811e.m33877a(C4533b.this.f16430b, c4557i, C4533b.this.f16440m, hashMap);
                if (C4533b.this.f16432d != null) {
                    C4533b.this.f16432d.onAdShow(view, c4557i.m35243D());
                }
                if (c4557i.m35222Y()) {
                    C5438af.m32303a(c4557i, view);
                }
                if (!C4533b.this.f16952j.getAndSet(true) && C4533b.this.f16429a != null) {
                    C5443ag.m32231a(C4533b.this.f16430b, C4533b.this.f16431c, C4533b.this.f16440m, C4533b.this.f16429a.getWebView());
                }
                if (C4533b.this.f16429a != null) {
                    C4533b.this.f16429a.m34766j();
                    C4533b.this.f16429a.m34768h();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34690a(boolean z) {
                C5478q.m32112b("TTInteractionExpressAd", "ExpressView onWindowFocusChanged=".concat(String.valueOf(z)));
                if (z) {
                    C4533b.this.f16439l = System.currentTimeMillis();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - C4533b.this.f16439l);
                C4811e.m33870a(sb.toString(), c4557i, C4533b.this.f16440m);
                C4533b.this.f16439l = 0L;
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: b */
            public void mo34689b() {
                if (C4533b.this.f16439l > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - C4533b.this.f16439l);
                    C4811e.m33870a(sb.toString(), c4557i, C4533b.this.f16440m);
                    C4533b.this.f16439l = 0L;
                }
            }
        });
        emptyView.setNeedCheckingShow(true);
    }

    /* renamed from: b */
    public void m35362b() {
        Dialog dialog = this.f16435g;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: a */
    protected void mo35357a(Context context, C4557i c4557i, AdSlot adSlot, String str) {
        this.f16429a = new NativeExpressView(context, c4557i, adSlot, this.f16440m);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        NativeExpressView nativeExpressView = this.f16429a;
        if (nativeExpressView != null) {
            nativeExpressView.m34764l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return this.f16429a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public List<FilterWord> getFilterWords() {
        C4557i c4557i = this.f16431c;
        if (c4557i == null) {
            return null;
        }
        return c4557i.m35226U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        C4557i c4557i = this.f16431c;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35227T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        C4557i c4557i = this.f16431c;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16431c;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.f16429a.m34767i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback == null || activity == null) {
            return;
        }
        m35368a(activity, dislikeInteractionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract == null) {
            C5478q.m32113b("dialog is null, please check");
            return;
        }
        tTDislikeDialogAbstract.setMaterialMeta(this.f16431c);
        NativeExpressView nativeExpressView = this.f16429a;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.setOuterDislike(tTDislikeDialogAbstract);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.f16433e = adInteractionListener;
        this.f16432d = adInteractionListener;
        this.f16429a.setExpressInteractionListener(adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f16432d = expressAdInteractionListener;
        this.f16429a.setExpressInteractionListener(expressAdInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void showInteractionExpressAd(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            C5478q.m32113b("can't invoke in child thread TTInteractionExpressAd.showInteractionAd");
        } else {
            m35369a(activity);
        }
    }
}
