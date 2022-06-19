package com.bytedance.sdk.openadsdk.component.p149c;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4166d;
import com.bytedance.sdk.openadsdk.TTInteractionAd;
import com.bytedance.sdk.openadsdk.core.AbstractC4591j;
import com.bytedance.sdk.openadsdk.core.DialogC4593l;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p151b.C4495b;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.bytedance.sdk.openadsdk.component.c.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/c/b.class */
public class C4384b implements TTInteractionAd {

    /* renamed from: i */
    private static boolean f16082i;

    /* renamed from: a */
    private final Context f16083a;

    /* renamed from: b */
    private final C4557i f16084b;

    /* renamed from: c */
    private Dialog f16085c;

    /* renamed from: d */
    private TTInteractionAd.AdInteractionListener f16086d;

    /* renamed from: e */
    private AbstractC3234c f16087e;

    /* renamed from: f */
    private AbstractC4591j f16088f;

    /* renamed from: g */
    private ImageView f16089g;

    /* renamed from: h */
    private ImageView f16090h;

    public C4384b(Context context, C4557i c4557i) {
        this.f16083a = context;
        this.f16084b = c4557i;
    }

    /* renamed from: a */
    private void m35672a() {
        if (this.f16085c == null) {
            DialogC4593l dialogC4593l = new DialogC4593l(this.f16083a);
            this.f16085c = dialogC4593l;
            dialogC4593l.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.component.c.b.1
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    if (C4384b.this.f16085c.isShowing()) {
                        C4811e.m33877a(C4384b.this.f16083a, C4384b.this.f16084b, "interaction", (Map<String, Object>) null);
                        if (C4384b.this.f16086d != null) {
                            C4384b.this.f16086d.onAdShow();
                        }
                        if (!C4384b.this.f16084b.m35222Y()) {
                            return;
                        }
                        C5438af.m32303a(C4384b.this.f16084b, C4384b.this.f16090h);
                    }
                }
            });
            this.f16085c.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.component.c.b.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                }
            });
            ((DialogC4593l) this.f16085c).m34829a(false, new DialogC4593l.AbstractC4595a() { // from class: com.bytedance.sdk.openadsdk.component.c.b.3
                @Override // com.bytedance.sdk.openadsdk.core.DialogC4593l.AbstractC4595a
                /* renamed from: a */
                public void mo34827a(View view) {
                    C4384b.this.m35663d();
                    C4811e.m33883a(C4384b.this.f16083a, C4384b.this.f16084b, "interaction");
                    if (C4384b.this.f16086d != null) {
                        C4384b.this.f16086d.onAdDismiss();
                    }
                    C5478q.m32112b("TTInteractionAdImpl", "dislike事件发出");
                }

                @Override // com.bytedance.sdk.openadsdk.core.DialogC4593l.AbstractC4595a
                /* renamed from: a */
                public void mo34826a(ImageView imageView, ImageView imageView2, FrameLayout frameLayout) {
                    C4384b.this.f16090h = imageView;
                    C4384b.this.f16089g = imageView2;
                    C4384b.this.m35668b();
                    C4384b.this.m35665c();
                }
            });
        }
    }

    /* renamed from: b */
    public void m35668b() {
        C4494a c4494a = new C4494a(this.f16083a, this.f16084b, "interaction", 3);
        c4494a.m35481a(this.f16090h);
        c4494a.m35472b(this.f16089g);
        c4494a.m35480a(this.f16087e);
        c4494a.m35477a(new C4495b.AbstractC4496a() { // from class: com.bytedance.sdk.openadsdk.component.c.b.4
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b.AbstractC4496a
            /* renamed from: a */
            public void mo34179a(View view, int i) {
                if (C4384b.this.f16086d != null) {
                    C4384b.this.f16086d.onAdClicked();
                }
                if (i == 2 || i == 3 || i == 5) {
                    C4384b.this.m35663d();
                    if (C4384b.this.f16086d == null) {
                        return;
                    }
                    C4384b.this.f16086d.onAdDismiss();
                }
            }
        });
        this.f16090h.setOnClickListener(c4494a);
        this.f16090h.setOnTouchListener(c4494a);
    }

    /* renamed from: c */
    public void m35665c() {
        int m35250b = this.f16084b.m35239H().get(0).m35250b();
        C4959e.m33434c().m33429h().m36257a(this.f16084b.m35239H().get(0).m35254a(), new C4166d.AbstractC4179e() { // from class: com.bytedance.sdk.openadsdk.component.c.b.5
            @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: a */
            public void mo33424a() {
            }

            @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: a */
            public void mo33423a(C4166d.C4177c c4177c, boolean z) {
                if (c4177c == null || c4177c.m36241a() == null) {
                    if (C4384b.this.f16088f == null) {
                        return;
                    }
                    C4384b.this.f16088f.mo34838b();
                    return;
                }
                C4384b.this.f16090h.setImageBitmap(c4177c.m36241a());
                if (C4384b.this.f16088f == null) {
                    return;
                }
                C4384b.this.f16088f.mo34839a();
            }

            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: a */
            public void mo33422a(C4218m<Bitmap> c4218m) {
            }

            @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: a */
            public boolean mo33421a(byte[] bArr) {
                return false;
            }

            @Override // com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: b */
            public void mo33420b() {
            }

            @Override // com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: b */
            public void mo33419b(C4218m<Bitmap> c4218m) {
                if (C4384b.this.f16088f != null) {
                    C4384b.this.f16088f.mo34838b();
                }
            }
        }, m35250b, m35250b);
    }

    /* renamed from: d */
    public void m35663d() {
        f16082i = false;
        this.f16085c.dismiss();
    }

    /* renamed from: a */
    public void m35669a(AbstractC4591j abstractC4591j) {
        this.f16088f = abstractC4591j;
        C4811e.m33874a(this.f16084b);
        if (getInteractionType() == 4) {
            this.f16087e = C3235d.m39089a(this.f16083a, this.f16084b, "interaction");
        }
        m35672a();
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public int getInteractionType() {
        C4557i c4557i = this.f16084b;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16084b;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public void setAdInteractionListener(TTInteractionAd.AdInteractionListener adInteractionListener) {
        this.f16086d = adInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTInteractionAd
    public void showInteractionAd(Activity activity) {
        if (activity.isFinishing()) {
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("can't not running in child thread >>> TTInteractionAd.showInteractionAd");
        }
        if (f16082i) {
            return;
        }
        f16082i = true;
        this.f16085c.show();
    }
}
