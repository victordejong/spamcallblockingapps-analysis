package com.bytedance.sdk.openadsdk.core;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* renamed from: com.bytedance.sdk.openadsdk.core.l */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/l.class */
public class DialogC4593l extends Dialog {

    /* renamed from: a */
    private View f16801a;

    /* renamed from: b */
    private Context f16802b;

    /* renamed from: c */
    private ImageView f16803c;

    /* renamed from: d */
    private ImageView f16804d;

    /* renamed from: e */
    private ImageView f16805e;

    /* renamed from: f */
    private TextView f16806f;

    /* renamed from: g */
    private FrameLayout f16807g;

    /* renamed from: h */
    private AbstractC4595a f16808h;

    /* renamed from: i */
    private boolean f16809i;

    /* renamed from: com.bytedance.sdk.openadsdk.core.l$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/l$a.class */
    public interface AbstractC4595a {
        /* renamed from: a */
        void mo34827a(View view);

        /* renamed from: a */
        void mo34826a(ImageView imageView, ImageView imageView2, FrameLayout frameLayout);
    }

    public DialogC4593l(Context context) {
        this(context, 0);
    }

    public DialogC4593l(Context context, int i) {
        super(context, i == 0 ? C5486x.m32064g(context, "tt_wg_insert_dialog") : i);
        this.f16809i = false;
        this.f16802b = context;
    }

    /* renamed from: a */
    private void m34831a() {
        setCancelable(false);
        View inflate = LayoutInflater.from(this.f16802b).inflate(C5486x.m32065f(this.f16802b, "tt_insert_ad_layout"), (ViewGroup) null);
        this.f16801a = inflate;
        setContentView(inflate);
        this.f16803c = (ImageView) this.f16801a.findViewById(C5486x.m32066e(this.f16802b, "tt_insert_ad_img"));
        this.f16804d = (ImageView) this.f16801a.findViewById(C5486x.m32066e(this.f16802b, "tt_insert_dislike_icon_img"));
        this.f16805e = (ImageView) this.f16801a.findViewById(C5486x.m32066e(this.f16802b, "tt_insert_ad_logo"));
        this.f16806f = (TextView) this.f16801a.findViewById(C5486x.m32066e(this.f16802b, "tt_insert_ad_text"));
        this.f16807g = (FrameLayout) this.f16801a.findViewById(C5486x.m32066e(this.f16802b, "tt_insert_express_ad_fl"));
        int m32218c = C5443ag.m32218c(this.f16802b);
        int i = m32218c / 3;
        this.f16803c.setMaxWidth(m32218c);
        this.f16803c.setMinimumWidth(i);
        this.f16803c.setMinimumHeight(i);
        this.f16807g.setMinimumWidth(i);
        this.f16807g.setMinimumHeight(i);
        this.f16803c.setVisibility(this.f16809i ? 8 : 0);
        this.f16806f.setVisibility(this.f16809i ? 8 : 0);
        this.f16805e.setVisibility(this.f16809i ? 8 : 0);
        this.f16806f.setVisibility(this.f16809i ? 8 : 0);
        this.f16807g.setVisibility(this.f16809i ? 0 : 8);
        int m32232a = (int) C5443ag.m32232a(this.f16802b, 15.0f);
        C5443ag.m32227a(this.f16804d, m32232a, m32232a, m32232a, m32232a);
        this.f16804d.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.l.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (DialogC4593l.this.f16808h != null) {
                    DialogC4593l.this.f16808h.mo34827a(view);
                }
            }
        });
    }

    /* renamed from: b */
    private void m34828b() {
        AbstractC4595a abstractC4595a;
        try {
            FrameLayout frameLayout = this.f16807g;
            if (frameLayout != null && frameLayout.getChildCount() > 0) {
                View childAt = this.f16807g.getChildAt(0);
                if (!(childAt instanceof NativeExpressView)) {
                    return;
                }
                NativeExpressView nativeExpressView = (NativeExpressView) childAt;
                if (!nativeExpressView.m34762n()) {
                    return;
                }
                this.f16807g.setVisibility(0);
                this.f16803c.setVisibility(8);
                this.f16804d.setVisibility(8);
                this.f16805e.setVisibility(8);
                this.f16806f.setVisibility(8);
                View findViewById = nativeExpressView.findViewById(C5486x.m32066e(this.f16802b, "tt_bu_close"));
                if (findViewById == null || (abstractC4595a = this.f16808h) == null) {
                    return;
                }
                abstractC4595a.mo34827a(findViewById);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m34829a(boolean z, AbstractC4595a abstractC4595a) {
        this.f16809i = z;
        this.f16808h = abstractC4595a;
        m34831a();
        AbstractC4595a abstractC4595a2 = this.f16808h;
        if (abstractC4595a2 != null) {
            abstractC4595a2.mo34826a(this.f16803c, this.f16804d, this.f16807g);
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    public void show() {
        m34828b();
        super.show();
    }
}
