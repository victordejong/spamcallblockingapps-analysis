package com.bytedance.sdk.openadsdk.core.d;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.e.b;
import com.bytedance.sdk.openadsdk.core.e.g;
import com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.i;
import com.bytedance.sdk.openadsdk.core.widget.RatioFrameLayout;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
import com.explorestack.iab.vast.VastError;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/d/a.class */
class a extends BackupView {
    private static i[] k = {new i(1, 1.0f, VastError.ERROR_CODE_GENERAL_WRAPPER, VastError.ERROR_CODE_GENERAL_WRAPPER), new i(2, 0.6666667f, VastError.ERROR_CODE_GENERAL_WRAPPER, 450), new i(3, 1.5f, VastError.ERROR_CODE_GENERAL_WRAPPER, 200)};
    private View l;
    private NativeExpressView m;
    private c n;
    private int o = 1;
    private Dialog p;

    public a(Context context) {
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
            this.f = ag.c(this.f9012a, a2.f9053c);
            this.g = ag.c(this.f9012a, a2.f9054d);
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
        setLayoutParams(layoutParams2);
        if (a2.f9051a != 1) {
            if (a2.f9051a == 2) {
                d();
                return;
            } else if (a2.f9051a == 3) {
                e();
                return;
            }
        }
        c();
    }

    private void b(View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (a.this.p != null) {
                        a.this.p.dismiss();
                    }
                }
            });
        }
    }

    private void c() {
        View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout1"), (ViewGroup) this, true);
        this.l = inflate;
        ImageView imageView = (ImageView) inflate.findViewById(x.e(this.f9012a, "tt_bu_img"));
        View findViewById = this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
        ImageView imageView2 = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_icon"));
        TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
        TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
        TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
        TextView textView4 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_dislike"));
        View findViewById2 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.a(a.this.f9012a, a.this.f9013b, a.this.e);
                }
            });
        }
        int a2 = (int) ag.a(this.f9012a, 15.0f);
        ag.a(findViewById, a2, a2, a2, a2);
        b(findViewById);
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.a();
            }
        });
        if (!TextUtils.isEmpty(this.f9013b.O())) {
            textView3.setText(this.f9013b.O());
        }
        a(imageView);
        e.c().a(this.f9013b.E().a(), imageView2);
        textView.setText(getTitle());
        textView2.setText(getDescription());
        a((View) this, true);
        a((View) textView3, true);
        a((View) textView4, true);
    }

    private void d() {
        RatioFrameLayout ratioFrameLayout;
        if (this.f9013b != null) {
            int T = this.f9013b.T();
            View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout2_3"), (ViewGroup) this, true);
            this.l = inflate;
            TTRatingBar tTRatingBar = (TTRatingBar) inflate.findViewById(x.e(this.f9012a, "tt_bu_score_bar"));
            RatioFrameLayout ratioFrameLayout2 = (RatioFrameLayout) this.l.findViewById(x.e(this.f9012a, "ratio_frame_layout"));
            View findViewById = this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
            ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_icon"));
            TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
            TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
            TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
            TextView textView4 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_dislike"));
            View findViewById2 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
            if (findViewById2 != null) {
                findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        TTWebsiteActivity.a(a.this.f9012a, a.this.f9013b, a.this.e);
                    }
                });
            }
            ratioFrameLayout2.removeAllViews();
            if (this.f9013b.B() == null) {
                if (T == 3) {
                    ratioFrameLayout2.setRatio(1.91f);
                    tTRatingBar.setVisibility(0);
                } else {
                    ratioFrameLayout2.setRatio(1.0f);
                    tTRatingBar.setVisibility(8);
                    textView3.setVisibility(8);
                }
                ImageView imageView2 = new ImageView(ratioFrameLayout2.getContext());
                imageView2.setVisibility(0);
                imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                ratioFrameLayout2.addView(imageView2);
                a(imageView2);
            } else {
                if (T == 5) {
                    ratioFrameLayout2.setRatio(1.7777778f);
                    tTRatingBar.setVisibility(0);
                    ratioFrameLayout = ratioFrameLayout2;
                } else if (T == 50) {
                    ratioFrameLayout2.setRatio(1.0f);
                    tTRatingBar.setVisibility(8);
                    textView3.setVisibility(8);
                    ratioFrameLayout = ratioFrameLayout2;
                } else {
                    ratioFrameLayout = ratioFrameLayout2;
                    if (T == 15) {
                        ratioFrameLayout2.setRatio(1.7777778f);
                        tTRatingBar.setVisibility(0);
                        ratioFrameLayout = new RatioFrameLayout(this.l.getContext());
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                        ratioFrameLayout.setRatio(0.5625f);
                        ratioFrameLayout2.addView(ratioFrameLayout, layoutParams);
                    }
                }
                View videoView = getVideoView();
                ratioFrameLayout2 = ratioFrameLayout;
                if (videoView != null) {
                    ratioFrameLayout.addView(videoView, new FrameLayout.LayoutParams(-1, -1));
                    ratioFrameLayout2 = ratioFrameLayout;
                }
            }
            int a2 = (int) ag.a(this.f9012a, 15.0f);
            ag.a(findViewById, a2, a2, a2, a2);
            b(findViewById);
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.a();
                }
            });
            if (TextUtils.isEmpty(this.f9013b.O()) || T == 33) {
                textView3.setVisibility(8);
            } else {
                textView3.setText(this.f9013b.O());
                textView3.setVisibility(0);
            }
            b Q = this.f9013b.Q();
            if (Q == null || Q.d() <= 0) {
                tTRatingBar.setVisibility(8);
            } else {
                tTRatingBar.setVisibility(0);
                int d2 = Q.d();
                tTRatingBar.setStarEmptyNum(1);
                tTRatingBar.setStarFillNum(d2);
                tTRatingBar.setStarImageWidth(ag.c(this.f9012a, 15.0f));
                tTRatingBar.setStarImageHeight(ag.c(this.f9012a, 14.0f));
                tTRatingBar.setStarImagePadding(ag.c(this.f9012a, 4.0f));
                tTRatingBar.a();
            }
            e.c().a(this.f9013b.E().a(), imageView);
            textView.setText(getTitle());
            textView2.setText(getDescription());
            a((View) this, true);
            a((View) textView3, true);
            a((View) textView4, true);
            a(ratioFrameLayout2);
        }
    }

    private void e() {
        RatioFrameLayout ratioFrameLayout;
        if (this.f9013b != null) {
            int T = this.f9013b.T();
            if (this.f9013b.B() == null) {
                if (T == 3) {
                    this.l = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout3_2_image_191_1"), (ViewGroup) this, true);
                } else if (T == 33) {
                    this.l = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout3_2_image_1_1"), (ViewGroup) this, true);
                }
                View view = this.l;
                if (view != null) {
                    TTRatingBar tTRatingBar = (TTRatingBar) view.findViewById(x.e(this.f9012a, "tt_bu_score_bar"));
                    RatioFrameLayout ratioFrameLayout2 = (RatioFrameLayout) this.l.findViewById(x.e(this.f9012a, "ratio_frame_layout"));
                    if (T == 3) {
                        ratioFrameLayout2.setRatio(1.91f);
                    } else if (T == 33) {
                        ratioFrameLayout2.setRatio(1.0f);
                    }
                    View findViewById = this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
                    ImageView imageView = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_icon"));
                    TextView textView = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
                    TextView textView2 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
                    TextView textView3 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
                    TextView textView4 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_dislike"));
                    TextView textView5 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_score_val"));
                    View findViewById2 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
                    if (findViewById2 != null) {
                        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.6
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view2) {
                                TTWebsiteActivity.a(a.this.f9012a, a.this.f9013b, a.this.e);
                            }
                        });
                    }
                    int a2 = (int) ag.a(this.f9012a, 15.0f);
                    ag.a(findViewById, a2, a2, a2, a2);
                    b(findViewById);
                    textView4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.7
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            a.this.a();
                        }
                    });
                    if (!TextUtils.isEmpty(this.f9013b.O())) {
                        textView3.setText(this.f9013b.O());
                        textView3.setVisibility(0);
                    } else {
                        textView3.setVisibility(8);
                    }
                    if (tTRatingBar != null) {
                        b Q = this.f9013b.Q();
                        if (Q == null || Q.d() <= 0) {
                            tTRatingBar.setVisibility(8);
                        } else {
                            tTRatingBar.setVisibility(0);
                            int d2 = Q.d();
                            tTRatingBar.setStarEmptyNum(1);
                            tTRatingBar.setStarFillNum(d2);
                            tTRatingBar.setStarImageWidth(ag.c(this.f9012a, 15.0f));
                            tTRatingBar.setStarImageHeight(ag.c(this.f9012a, 14.0f));
                            tTRatingBar.setStarImagePadding(ag.c(this.f9012a, 4.0f));
                            tTRatingBar.a();
                            if (textView5 != null) {
                                textView5.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(d2)));
                            }
                        }
                    }
                    ImageView imageView2 = new ImageView(this.l.getContext());
                    ratioFrameLayout2.addView(imageView2, new FrameLayout.LayoutParams(-1, -1));
                    a(imageView2);
                    e.c().a(this.f9013b.E().a(), imageView);
                    if (textView != null) {
                        textView.setText(getTitle());
                    }
                    textView2.setText(getDescription());
                    a((View) this, true);
                    a((View) textView3, true);
                    a((View) textView4, true);
                    return;
                }
                return;
            }
            View videoView = getVideoView();
            if (T == 5) {
                View inflate = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout3_2_image_191_1"), (ViewGroup) this, true);
                this.l = inflate;
                ratioFrameLayout = (RatioFrameLayout) inflate.findViewById(x.e(this.f9012a, "ratio_frame_layout"));
                ratioFrameLayout.setRatio(1.7777778f);
            } else if (T == 50) {
                View inflate2 = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout3_2_image_1_1"), (ViewGroup) this, true);
                this.l = inflate2;
                ratioFrameLayout = (RatioFrameLayout) inflate2.findViewById(x.e(this.f9012a, "ratio_frame_layout"));
                ratioFrameLayout.setRatio(1.0f);
            } else if (T == 15) {
                View inflate3 = LayoutInflater.from(this.f9012a).inflate(x.f(this.f9012a, "tt_backup_insert_layout3_2_image_191_1"), (ViewGroup) this, true);
                this.l = inflate3;
                RatioFrameLayout ratioFrameLayout3 = (RatioFrameLayout) inflate3.findViewById(x.e(this.f9012a, "ratio_frame_layout"));
                ratioFrameLayout3.setRatio(1.7777778f);
                ratioFrameLayout = new RatioFrameLayout(this.l.getContext());
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                layoutParams.gravity = 17;
                ratioFrameLayout.setRatio(0.5625f);
                ratioFrameLayout3.addView(ratioFrameLayout, layoutParams);
            } else {
                ratioFrameLayout = null;
            }
            if (this.l != null && ratioFrameLayout != null) {
                if (videoView != null) {
                    ratioFrameLayout.addView(videoView, new FrameLayout.LayoutParams(-1, -1));
                }
                TTRatingBar tTRatingBar2 = (TTRatingBar) this.l.findViewById(x.e(this.f9012a, "tt_bu_score_bar"));
                View findViewById3 = this.l.findViewById(x.e(this.f9012a, "tt_bu_close"));
                ImageView imageView3 = (ImageView) this.l.findViewById(x.e(this.f9012a, "tt_bu_icon"));
                TextView textView6 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_title"));
                TextView textView7 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_desc"));
                TextView textView8 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_download"));
                TextView textView9 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_bu_dislike"));
                TextView textView10 = (TextView) this.l.findViewById(x.e(this.f9012a, "tt_score_val"));
                View findViewById4 = this.l.findViewById(x.e(this.f9012a, "tt_backup_logoLayout"));
                if (findViewById4 != null) {
                    findViewById4.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.8
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            TTWebsiteActivity.a(a.this.f9012a, a.this.f9013b, a.this.e);
                        }
                    });
                }
                int a3 = (int) ag.a(this.f9012a, 15.0f);
                ag.a(findViewById3, a3, a3, a3, a3);
                b(findViewById3);
                textView9.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.d.a.9
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        a.this.a();
                    }
                });
                if (!TextUtils.isEmpty(this.f9013b.O())) {
                    textView8.setText(this.f9013b.O());
                    textView8.setVisibility(0);
                } else {
                    textView8.setVisibility(8);
                }
                if (tTRatingBar2 != null) {
                    b Q2 = this.f9013b.Q();
                    if (Q2 == null || Q2.d() <= 0) {
                        tTRatingBar2.setVisibility(8);
                    } else {
                        tTRatingBar2.setVisibility(0);
                        int d3 = Q2.d();
                        tTRatingBar2.setStarEmptyNum(1);
                        tTRatingBar2.setStarFillNum(d3);
                        tTRatingBar2.setStarImageWidth(ag.c(this.f9012a, 15.0f));
                        tTRatingBar2.setStarImageHeight(ag.c(this.f9012a, 14.0f));
                        tTRatingBar2.setStarImagePadding(ag.c(this.f9012a, 4.0f));
                        tTRatingBar2.a();
                        if (textView10 != null) {
                            textView10.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(d3)));
                        }
                    }
                }
                e.c().a(this.f9013b.E().a(), imageView3);
                if (textView6 != null) {
                    textView6.setText(getTitle());
                }
                textView7.setText(getDescription());
                a((View) this, true);
                a((View) textView8, true);
                a((View) textView9, true);
                a(ratioFrameLayout);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void a(int i, g gVar) {
        NativeExpressView nativeExpressView = this.m;
        if (nativeExpressView != null) {
            nativeExpressView.a(i, gVar);
        }
    }

    public void a(Dialog dialog) {
        this.p = dialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.bytedance.sdk.openadsdk.core.e.i iVar, NativeExpressView nativeExpressView, c cVar) {
        setBackgroundColor(-1);
        this.f9013b = iVar;
        this.m = nativeExpressView;
        this.n = cVar;
        this.e = "interaction";
        a(this.h);
        this.m.addView(this, new ViewGroup.LayoutParams(-2, -2));
        b();
    }
}
