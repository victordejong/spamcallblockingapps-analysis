package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.explorestack.iab.vast.VastError;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/h.class */
class h extends BackupView {
    private static i[] k = {new i(2, 3.0241935f, 375, 124), new i(3, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new i(4, 1.4044944f, 375, 267), new i(16, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new i(5, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new i(15, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER), new i(50, 1.25f, 375, VastError.ERROR_CODE_GENERAL_WRAPPER)};
    private View l;
    private NativeExpressView m;
    private c n;

    public h(Context context) {
        super(context);
        this.f9012a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.widget.ImageView r5) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.nativeexpress.h.a(android.widget.ImageView):void");
    }

    private i b(int i) {
        i iVar;
        i[] iVarArr = k;
        int i2 = 0;
        i iVar2 = iVarArr[0];
        try {
            int length = iVarArr.length;
            while (true) {
                iVar = iVar2;
                if (i2 >= length) {
                    break;
                }
                iVar = iVarArr[i2];
                if (iVar.f9051a == i) {
                    break;
                }
                i2++;
            }
        } catch (Throwable th) {
            iVar = iVar2;
        }
        return iVar;
    }

    private void b() {
        i b2 = b(this.f9013b.T());
        this.f = ag.c(this.f9012a, this.m.getExpectExpressWidth());
        this.g = ag.c(this.f9012a, this.m.getExpectExpressHeight());
        if (this.f <= 0) {
            this.f = ag.c(this.f9012a);
        }
        if (this.g <= 0) {
            this.g = Float.valueOf(this.f / b2.f9052b).intValue();
        }
        if (this.f > 0 && this.f > ag.c(this.f9012a)) {
            float c2 = ag.c(this.f9012a) / this.f;
            this.f = ag.c(this.f9012a);
            this.g = Float.valueOf(this.g * c2).intValue();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        ViewGroup.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new ViewGroup.LayoutParams(this.f, this.g);
        }
        layoutParams2.width = this.f;
        layoutParams2.height = this.g;
        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams2).gravity = 17;
        }
        setLayoutParams(layoutParams2);
        if (af.c(this.f9013b.S()) == 9) {
            this.e = "draw_ad";
            g();
            return;
        }
        this.e = "embeded_ad";
        int T = this.f9013b.T();
        if (T == 2) {
            d();
        } else if (T == 3) {
            e();
        } else if (T == 5) {
            h();
        } else if (T == 50) {
            c();
        } else if (T == 15) {
            f();
        } else if (T == 16) {
            i();
        }
    }

    private void b(ImageView imageView) {
        e.c().a(this.f9013b.H().get(0).a(), imageView);
    }

    private void c() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_feed_horizontal"), (ViewGroup) this, true);
        this.l = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container"));
        frameLayout.setVisibility(0);
        this.l.findViewById(x.e(this.f9012a, "tt_bu_img_container")).setVisibility(8);
        ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(this.f, (this.f * 9) / 16));
        }
        a((View) this, false);
        a((View) textView3, true);
    }

    private void d() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_feed_img_small"), (ViewGroup) this, true);
        this.l = inflate;
        ImageView imageView = (ImageView) inflate.findViewById(x.e(this.f9012a, "tt_bu_img"));
        ImageView imageView2 = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        a(imageView);
        textView.setText(getDescription());
        ((TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"))).setText(getTitle());
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.a();
            }
        });
        a((View) this, true);
    }

    private void e() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_feed_horizontal"), (ViewGroup) this, true);
        this.l = inflate;
        inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container")).setVisibility(8);
        this.l.findViewById(x.e(this.f9012a, "tt_bu_img_container")).setVisibility(0);
        ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_img"));
        ImageView imageView2 = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        imageView.setAdjustViewBounds(true);
        imageView.setMaxHeight(this.g);
        a(imageView);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        }
        a((View) this, false);
        a((View) textView3, true);
    }

    private void f() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_feed_vertical"), (ViewGroup) this, true);
        this.l = inflate;
        inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container")).setVisibility(0);
        this.l.findViewById(x.e(this.f9012a, "tt_bu_img_container")).setVisibility(8);
        FrameLayout frameLayout = (FrameLayout) this.l.findViewById(x.e(this.f9012a, "tt_bu_video_container_inner"));
        ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_video_icon"));
        ImageView imageView2 = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_video_name1"));
        TextView textView4 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_video_name2"));
        TextView textView5 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        TextView textView6 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_video_score"));
        TTRatingBar tTRatingBar = (TTRatingBar) this.l.findViewById(x.e(this.f9012a, "tt_bu_video_score_bar"));
        e.c().a(this.f9013b.E().a(), imageView);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.a();
            }
        });
        int d2 = this.f9013b.Q() != null ? this.f9013b.Q().d() : 4;
        textView6.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(d2)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(d2);
        tTRatingBar.setStarImageWidth(ag.c(this.f9012a, 15.0f));
        tTRatingBar.setStarImageHeight(ag.c(this.f9012a, 14.0f));
        tTRatingBar.setStarImagePadding(ag.c(this.f9012a, 4.0f));
        tTRatingBar.a();
        textView3.setText(getNameOrSource());
        textView4.setText(getTitle());
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView5.setText(this.f9013b.O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            int i = (this.f * 123) / 375;
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(i, (i * 16) / 9));
        }
        a((View) this, false);
        a((View) textView5, true);
    }

    private void g() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_draw"), (ViewGroup) this, true);
        this.l = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(-1, -1));
        }
        a((View) textView2, false);
        a((View) textView, false);
        a((View) textView3, true);
    }

    private void h() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_feed_horizontal"), (ViewGroup) this, true);
        this.l = inflate;
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container"));
        frameLayout.setVisibility(0);
        this.l.findViewById(x.e(this.f9012a, "tt_bu_img_container")).setVisibility(8);
        ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        }
        View videoView = getVideoView();
        if (videoView != null) {
            frameLayout.removeAllViews();
            frameLayout.addView(videoView, new ViewGroup.LayoutParams(this.f, (this.f * 9) / 16));
        }
        a((View) this, false);
        a((View) textView3, true);
    }

    private void i() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_feed_vertical"), (ViewGroup) this, true);
        this.l = inflate;
        inflate.findViewById(x.e(this.f9012a, "tt_bu_video_container")).setVisibility(8);
        this.l.findViewById(x.e(this.f9012a, "tt_bu_img_container")).setVisibility(0);
        ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_img"));
        ImageView imageView2 = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        b(imageView);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.h.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                h.this.a();
            }
        });
        textView.setText(getDescription());
        textView2.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        }
        a((View) this, false);
        a((View) textView3, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    protected void a(int i, g gVar) {
        NativeExpressView nativeExpressView = this.m;
        if (nativeExpressView != null) {
            nativeExpressView.a(i, gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(i iVar, NativeExpressView nativeExpressView, c cVar) {
        q.b("FeedExpressBackupView", "show backup view");
        setBackgroundColor(-1);
        this.f9013b = iVar;
        this.m = nativeExpressView;
        this.n = cVar;
        this.h = af.d(this.f9013b.S());
        a(this.h);
        b();
        this.m.addView(this, new ViewGroup.LayoutParams(-2, -2));
    }
}
