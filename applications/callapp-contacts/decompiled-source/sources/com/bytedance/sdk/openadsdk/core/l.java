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
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/l.class */
public class l extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private View f8990a;

    /* renamed from: b  reason: collision with root package name */
    private Context f8991b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f8992c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f8993d;
    private ImageView e;
    private TextView f;
    private FrameLayout g;
    private a h;
    private boolean i;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/l$a.class */
    public interface a {
        void a(View view);

        void a(ImageView imageView, ImageView imageView2, FrameLayout frameLayout);
    }

    public l(Context context) {
        this(context, 0);
    }

    public l(Context context, int i) {
        super(context, i == 0 ? x.g(context, "tt_wg_insert_dialog") : i);
        this.i = false;
        this.f8991b = context;
    }

    private void a() {
        int i = 0;
        setCancelable(false);
        View inflate = LayoutInflater.from(this.f8991b).inflate(x.f(this.f8991b, "tt_insert_ad_layout"), (ViewGroup) null);
        this.f8990a = inflate;
        setContentView(inflate);
        this.f8992c = (ImageView) this.f8990a.findViewById(x.e(this.f8991b, "tt_insert_ad_img"));
        this.f8993d = (ImageView) this.f8990a.findViewById(x.e(this.f8991b, "tt_insert_dislike_icon_img"));
        this.e = (ImageView) this.f8990a.findViewById(x.e(this.f8991b, "tt_insert_ad_logo"));
        this.f = (TextView) this.f8990a.findViewById(x.e(this.f8991b, "tt_insert_ad_text"));
        this.g = (FrameLayout) this.f8990a.findViewById(x.e(this.f8991b, "tt_insert_express_ad_fl"));
        int c2 = ag.c(this.f8991b);
        int i2 = c2 / 3;
        this.f8992c.setMaxWidth(c2);
        this.f8992c.setMinimumWidth(i2);
        this.f8992c.setMinimumHeight(i2);
        this.g.setMinimumWidth(i2);
        this.g.setMinimumHeight(i2);
        this.f8992c.setVisibility(this.i ? 8 : 0);
        this.f.setVisibility(this.i ? 8 : 0);
        this.e.setVisibility(this.i ? 8 : 0);
        this.f.setVisibility(this.i ? 8 : 0);
        FrameLayout frameLayout = this.g;
        if (!this.i) {
            i = 8;
        }
        frameLayout.setVisibility(i);
        int a2 = (int) ag.a(this.f8991b, 15.0f);
        ag.a(this.f8993d, a2, a2, a2, a2);
        this.f8993d.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.l.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (l.this.h != null) {
                    l.this.h.a(view);
                }
            }
        });
    }

    private void b() {
        a aVar;
        try {
            FrameLayout frameLayout = this.g;
            if (frameLayout != null && frameLayout.getChildCount() > 0) {
                View childAt = this.g.getChildAt(0);
                if (childAt instanceof NativeExpressView) {
                    NativeExpressView nativeExpressView = (NativeExpressView) childAt;
                    if (nativeExpressView.n()) {
                        this.g.setVisibility(0);
                        this.f8992c.setVisibility(8);
                        this.f8993d.setVisibility(8);
                        this.e.setVisibility(8);
                        this.f.setVisibility(8);
                        View findViewById = nativeExpressView.findViewById(x.e(this.f8991b, "tt_bu_close"));
                        if (findViewById != null && (aVar = this.h) != null) {
                            aVar.a(findViewById);
                        }
                    }
                }
            }
        } catch (Throwable th) {
        }
    }

    public void a(boolean z, a aVar) {
        this.i = z;
        this.h = aVar;
        a();
        a aVar2 = this.h;
        if (aVar2 != null) {
            aVar2.a(this.f8992c, this.f8993d, this.g);
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
    }

    @Override // android.app.Dialog
    public void show() {
        b();
        super.show();
    }
}
