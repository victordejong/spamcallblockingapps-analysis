package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.i;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.RatioImageView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
import com.explorestack.iab.vast.VastError;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/BannerExpressBackupView.class */
public class BannerExpressBackupView extends BackupView {
    private static i[] k = {new i(1, 6.4f, 320, 50), new i(4, 1.2f, VastError.ERROR_CODE_GENERAL_WRAPPER, 250)};
    private View l;
    private NativeExpressView m;
    private c n;
    private int o = 1;

    public BannerExpressBackupView(Context context) {
        super(context);
        this.f9012a = context;
    }

    private i a(int i, int i2) {
        float f = i / i2;
        try {
            i[] iVarArr = k;
            i iVar = iVarArr[0];
            float f2 = Float.MAX_VALUE;
            for (i iVar2 : iVarArr) {
                float abs = Math.abs(iVar2.f9052b - f);
                f2 = f2;
                if (abs <= f2) {
                    iVar = iVar2;
                    f2 = abs;
                }
            }
            return iVar;
        } catch (Throwable th) {
            return k[0];
        }
    }

    private void a(ImageView imageView) {
        e.c().a(this.f9013b.H().get(0).a(), imageView);
    }

    private void b() {
        i a2 = a(this.m.getExpectExpressWidth(), this.m.getExpectExpressHeight());
        if (this.m.getExpectExpressWidth() <= 0 || this.m.getExpectExpressHeight() <= 0) {
            this.f = ag.c(this.f9012a);
            this.g = Float.valueOf(this.f / a2.f9052b).intValue();
        } else if (this.m.getExpectExpressWidth() > this.m.getExpectExpressHeight()) {
            this.f = ag.c(this.f9012a, this.m.getExpectExpressHeight() * a2.f9052b);
            this.g = ag.c(this.f9012a, this.m.getExpectExpressHeight());
        } else {
            this.f = ag.c(this.f9012a, this.m.getExpectExpressWidth());
            this.g = ag.c(this.f9012a, this.m.getExpectExpressWidth() / a2.f9052b);
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
        if (a2.f9051a == 1) {
            c();
        } else {
            d();
        }
    }

    private void c() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_banner_layout1"), (ViewGroup) this, true);
        this.l = inflate;
        View findViewById = inflate.findViewById(x.e(this.f9012a, "tt_bu_close"));
        ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_icon"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_score"));
        TTRatingBar tTRatingBar = (TTRatingBar) this.l.findViewById(x.e(this.f9012a, "tt_bu_score_bar"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        View findViewById2 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.a(BannerExpressBackupView.this.f9012a, BannerExpressBackupView.this.f9013b, BannerExpressBackupView.this.e);
                }
            });
        }
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BannerExpressBackupView.this.a();
            }
        });
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = this.g;
            layoutParams.height = this.g;
        }
        e.c().a(this.f9013b.E().a(), imageView);
        textView.setText(getTitle());
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        } else {
            textView3.setVisibility(8);
        }
        int d2 = this.f9013b.Q() != null ? this.f9013b.Q().d() : 4;
        textView2.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(d2)));
        tTRatingBar.setStarEmptyNum(1);
        tTRatingBar.setStarFillNum(d2);
        tTRatingBar.setStarImageWidth(ag.c(this.f9012a, 15.0f));
        tTRatingBar.setStarImageHeight(ag.c(this.f9012a, 14.0f));
        tTRatingBar.setStarImagePadding(ag.c(this.f9012a, 4.0f));
        tTRatingBar.a();
        a((View) this, true);
        a((View) textView3, true);
    }

    private void d() {
        if (this.f9013b != null) {
            int T = this.f9013b.T();
            if (this.f9013b.B() == null) {
                View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_banner_layout4"), (ViewGroup) this, true);
                this.l = inflate;
                View findViewById = inflate.findViewById(x.e(this.f9012a, "tt_bu_close"));
                RatioImageView ratioImageView = (RatioImageView) this.l.findViewById(x.e(this.f9012a, "ratio_image_view"));
                ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_icon"));
                TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
                TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
                TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_name"));
                TextView textView4 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
                FrameLayout frameLayout = (FrameLayout) this.l.findViewById(x.e(this.f9012a, "tt_image_layout"));
                View findViewById2 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
                if (findViewById2 != null) {
                    findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.4
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            TTWebsiteActivity.a(BannerExpressBackupView.this.f9012a, BannerExpressBackupView.this.f9013b, BannerExpressBackupView.this.e);
                        }
                    });
                }
                if (T == 33) {
                    ratioImageView.setRatio(1.0f);
                } else {
                    ((LinearLayout.LayoutParams) frameLayout.getLayoutParams()).weight = 2.5f;
                    ratioImageView.setRatio(1.91f);
                }
                findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        BannerExpressBackupView.this.a();
                    }
                });
                int a2 = (int) ag.a(this.f9012a, 15.0f);
                ag.a(findViewById, a2, a2, a2, a2);
                a((ImageView) ratioImageView);
                e.c().a(this.f9013b.E().a(), imageView);
                textView3.setText(getNameOrSource());
                textView.setText(getNameOrSource());
                textView2.setText(getDescription());
                if (!TextUtils.isEmpty(this.f9013b.O())) {
                    textView4.setText(this.f9013b.O());
                } else {
                    textView4.setVisibility(8);
                }
                a((View) this, true);
                a((View) textView4, true);
                return;
            }
            View inflate2 = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_banner_layout4_video"), (ViewGroup) this, true);
            this.l = inflate2;
            View findViewById3 = inflate2.findViewById(x.e(this.f9012a, "tt_bu_close"));
            TextView textView5 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
            TextView textView6 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
            TextView textView7 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
            RatioFrameLayout ratioFrameLayout = (RatioFrameLayout) this.l.findViewById(x.e(this.f9012a, "ratio_frame_layout"));
            View findViewById4 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
            if (findViewById4 != null) {
                findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TTWebsiteActivity.a(BannerExpressBackupView.this.f9012a, BannerExpressBackupView.this.f9013b, BannerExpressBackupView.this.e);
                    }
                });
            }
            if (T == 15) {
                ratioFrameLayout.setRatio(0.5625f);
            } else if (T == 5) {
                ratioFrameLayout.setRatio(1.7777778f);
            } else {
                ratioFrameLayout.setRatio(1.0f);
            }
            ratioFrameLayout.removeAllViews();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            View videoView = getVideoView();
            if (videoView != null) {
                ratioFrameLayout.addView(videoView, layoutParams);
            }
            textView5.setText(getNameOrSource());
            textView6.setText(getDescription());
            if (!TextUtils.isEmpty(this.f9013b.O())) {
                textView7.setText(this.f9013b.O());
            } else {
                textView7.setVisibility(8);
            }
            findViewById3.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    BannerExpressBackupView.this.a();
                }
            });
            int a3 = (int) ag.a(this.f9012a, 15.0f);
            ag.a(findViewById3, a3, a3, a3, a3);
            a((View) this, true);
            a((View) textView7, true);
            a(ratioFrameLayout);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void a(int i, g gVar) {
        NativeExpressView nativeExpressView = this.m;
        if (nativeExpressView != null) {
            nativeExpressView.a(i, gVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.bytedance.sdk.openadsdk.core.e.i iVar, NativeExpressView nativeExpressView, c cVar) {
        setBackgroundColor(-1);
        this.f9013b = iVar;
        this.m = nativeExpressView;
        this.n = cVar;
        this.e = "banner_ad";
        this.m.addView(this, new ViewGroup.LayoutParams(-2, -2));
        b();
    }
}
