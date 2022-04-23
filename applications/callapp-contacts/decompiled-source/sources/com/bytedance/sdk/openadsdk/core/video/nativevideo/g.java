package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Message;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.e.a;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.b;
import com.bytedance.sdk.openadsdk.core.widget.d;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.x;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/g.class */
public class g extends h {
    private TextView J;
    private ImageView K;
    private View L;
    private TextView M;
    private TextView N;
    private TextView O;
    private ImageView P;
    private View Q;
    private ImageView R;
    private TextView S;
    private View T;
    private SeekBar U;
    private TextView V;
    private TextView W;
    private ImageView X;
    private boolean aA;
    private boolean aB;
    private ColorStateList ah;
    private float ai;
    private boolean al;
    private int am;
    private int an;
    private d ao;
    private float ar;
    private ColorStateList as;
    private float at;
    private float av;
    private ColorStateList aw;
    private float ax;
    private final ah Y = new ah(this);
    private boolean Z = false;
    private boolean aa = false;
    private int ab = 0;
    private int ac = 0;
    private int ad = 0;
    private int ae = 0;
    private int af = 0;
    private final Rect ag = new Rect();
    private final Rect aj = new Rect();
    private int ak = 0;
    private boolean ap = false;
    private final View.OnTouchListener aq = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.7

        /* renamed from: b  reason: collision with root package name */
        private float f9241b;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float x = motionEvent.getX();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                boolean z = true;
                if (actionMasked == 1) {
                    g gVar = g.this;
                    if (Math.abs(this.f9241b - motionEvent.getX()) >= 10.0f) {
                        z = false;
                    }
                    gVar.ap = z;
                    return false;
                } else if (actionMasked == 2) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    return false;
                } else if (actionMasked != 3) {
                    return false;
                } else {
                    view.getParent().requestDisallowInterceptTouchEvent(false);
                    return false;
                }
            } else {
                this.f9241b = x;
                return false;
            }
        }
    };
    private final Rect au = new Rect();
    private final Rect ay = new Rect();
    private final Rect az = new Rect();

    public g(Context context, View view, boolean z, EnumSet<b.a> enumSet, i iVar, c cVar, boolean z2) {
        super(context, view, z, enumSet, iVar, cVar, z2);
        this.am = 0;
        this.an = 0;
        this.ao = null;
        this.z = n.a().getApplicationContext();
        c(z2);
        this.f9242a = view;
        this.u = z;
        d dVar = new d(this);
        this.ao = dVar;
        dVar.a(this.u);
        DisplayMetrics displayMetrics = this.z.getResources().getDisplayMetrics();
        this.am = displayMetrics.widthPixels;
        this.an = displayMetrics.heightPixels;
        this.x = enumSet == null ? EnumSet.noneOf(b.a.class) : enumSet;
        this.E = cVar;
        this.y = iVar;
        c(8);
        a(context, this.f9242a);
        a();
        n();
    }

    private void e(boolean z) {
        if (z) {
            y();
        } else {
            z();
        }
    }

    private void y() {
        DisplayMetrics displayMetrics = this.z.getResources().getDisplayMetrics();
        TextView textView = this.W;
        if (textView != null) {
            this.ar = textView.getTextSize();
            this.W.setTextSize(2, 14.0f);
            ColorStateList textColors = this.W.getTextColors();
            this.as = textColors;
            if (textColors != null) {
                this.W.setTextColor(x.i(this.z, "tt_ssxinzi15"));
            }
            this.at = this.W.getAlpha();
            this.W.setAlpha(0.85f);
            this.W.setShadowLayer(BitmapDescriptorFactory.HUE_RED, ag.a(this.z, 0.5f), ag.a(this.z, 0.5f), x.i(this.z, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams = this.W.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.au.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                ag.b(this.W, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.au.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.au.bottom);
            }
        }
        TextView textView2 = this.V;
        if (textView2 != null) {
            this.av = textView2.getTextSize();
            this.V.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.V.getTextColors();
            this.aw = textColors2;
            if (textColors2 != null) {
                this.V.setTextColor(x.i(this.z, "tt_ssxinzi15"));
            }
            this.ax = this.V.getAlpha();
            this.V.setAlpha(0.85f);
            this.V.setShadowLayer(BitmapDescriptorFactory.HUE_RED, ag.a(this.z, 0.5f), ag.a(this.z, 0.5f), x.i(this.z, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams2 = this.V.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.ay.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                ag.b(this.V, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.ay.top, this.ay.right, this.ay.bottom);
            }
        }
        ImageView imageView = this.X;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.az.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                ag.b(this.X, this.az.left, this.az.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.az.bottom);
            }
        }
        ImageView imageView2 = this.X;
        if (imageView2 != null) {
            imageView2.setImageDrawable(x.c(this.z, "tt_shrink_fullscreen"));
        }
        TextView textView3 = this.N;
        if (textView3 != null) {
            ColorStateList textColors3 = textView3.getTextColors();
            this.ah = textColors3;
            if (textColors3 != null) {
                this.N.setTextColor(x.i(this.z, "tt_ssxinzi15"));
            }
            this.ai = this.N.getAlpha();
            this.N.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.N.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.aj.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                ag.b(this.N, (int) TypedValue.applyDimension(1, 1.0f, displayMetrics), this.ay.top, this.ay.right, this.ay.bottom);
            }
        }
        View view = this.L;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.ak = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.L.setLayoutParams(layoutParams5);
            this.L.setBackgroundResource(x.d(this.z, "tt_shadow_fullscreen_top"));
        }
        b(this.al, true);
    }

    private void z() {
        TextView textView = this.W;
        if (textView != null) {
            textView.setTextSize(0, this.ar);
            ColorStateList colorStateList = this.as;
            if (colorStateList != null) {
                this.W.setTextColor(colorStateList);
            }
            this.W.setAlpha(this.at);
            this.W.setShadowLayer(ag.a(this.z, 1.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, x.i(this.z, "tt_video_shadow_color"));
            ag.b(this.W, this.au.left, this.au.top, this.au.right, this.au.bottom);
        }
        TextView textView2 = this.V;
        if (textView2 != null) {
            textView2.setTextSize(0, this.av);
            ColorStateList colorStateList2 = this.aw;
            if (colorStateList2 != null) {
                this.V.setTextColor(colorStateList2);
            }
            this.V.setAlpha(this.ax);
            this.V.setShadowLayer(ag.a(this.z, 1.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, x.i(this.z, "tt_video_shadow_color"));
            ag.b(this.V, this.ay.left, this.ay.top, this.ay.right, this.ay.bottom);
        }
        ImageView imageView = this.X;
        if (imageView != null) {
            ag.b(imageView, this.az.left, this.az.top, this.az.right, this.az.bottom);
        }
        ImageView imageView2 = this.X;
        if (imageView2 != null) {
            imageView2.setImageDrawable(x.c(this.z, "tt_enlarge_video"));
        }
        TextView textView3 = this.N;
        if (textView3 != null) {
            ColorStateList colorStateList3 = this.ah;
            if (colorStateList3 != null) {
                textView3.setTextColor(colorStateList3);
            }
            this.N.setAlpha(this.ai);
            ag.b(this.N, this.ay.left, this.ay.top, this.ay.right, this.ay.bottom);
        }
        View view = this.L;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.ak;
            this.L.setLayoutParams(layoutParams);
            this.L.setBackgroundResource(x.d(this.z, "tt_video_black_desc_gradient"));
        }
        b(this.al, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a() {
        super.a();
        this.ao.a(this.f9242a);
        int i = 8;
        ag.a((View) this.K, (this.u || this.x.contains(b.a.hideCloseBtn)) ? 8 : 0);
        this.K.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.r()) {
                    g.this.B.c(g.this, view);
                }
            }
        });
        TextView textView = this.J;
        if (!this.u || this.x.contains(b.a.alwayShowBackBtn)) {
            i = 0;
        }
        ag.a((View) textView, i);
        this.J.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.r()) {
                    g.this.B.d(g.this, view);
                }
            }
        });
        this.P.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.r()) {
                    g.this.B.e(g.this, view);
                }
            }
        });
        this.R.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                g.this.b(false, true);
                g.this.f();
                g.this.d();
                if (g.this.r()) {
                    g.this.B.f(g.this, view);
                }
            }
        });
        this.X.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (g.this.r()) {
                    g.this.B.b(g.this, view);
                }
            }
        });
        this.U.setThumbOffset(0);
        this.U.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (g.this.r()) {
                    g.this.B.a(g.this, i2, z);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!g.this.Z && g.this.z != null) {
                    seekBar.setThumb(x.c(n.a(), "tt_seek_thumb_press"));
                }
                if (g.this.r()) {
                    seekBar.setThumbOffset(0);
                    g.this.B.b(g.this, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!g.this.Z && g.this.z != null) {
                    seekBar.setThumb(x.c(n.a(), "tt_seek_thumb_normal"));
                }
                if (g.this.r()) {
                    seekBar.setThumbOffset(0);
                    g.this.B.a(g.this, seekBar.getProgress());
                }
            }
        });
        this.U.setOnTouchListener(this.aq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(int i) {
        View view = this.T;
        if (view == null || view.getVisibility() != 0) {
            ag.a((View) this.o, 0);
            this.U.setProgress(i);
            this.o.setProgress(i);
            return;
        }
        ag.a((View) this.o, 8);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(long j) {
        this.W.setText(a.a(j));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(long j, long j2) {
        this.V.setText(a.a(j2));
        this.W.setText(a.a(j));
        this.U.setProgress(a.a(j, j2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(Context context, View view) {
        super.a(context, view);
        this.J = (TextView) view.findViewById(x.e(context, "tt_video_back"));
        this.K = (ImageView) view.findViewById(x.e(context, "tt_video_close"));
        this.L = view.findViewById(x.e(context, "tt_video_top_layout"));
        this.P = (ImageView) view.findViewById(x.e(context, "tt_video_fullscreen_back"));
        this.M = (TextView) view.findViewById(x.e(context, "tt_video_title"));
        this.N = (TextView) view.findViewById(x.e(context, "tt_video_top_title"));
        this.O = (TextView) view.findViewById(x.e(context, "tt_video_current_time"));
        this.Q = view.findViewById(x.e(context, "tt_video_loading_retry"));
        this.R = (ImageView) view.findViewById(x.e(context, "tt_video_retry"));
        this.S = (TextView) view.findViewById(x.e(context, "tt_video_retry_des"));
        this.U = (SeekBar) view.findViewById(x.e(context, "tt_video_seekbar"));
        this.V = (TextView) view.findViewById(x.e(context, "tt_video_time_left_time"));
        this.W = (TextView) view.findViewById(x.e(context, "tt_video_time_play"));
        this.T = view.findViewById(x.e(context, "tt_video_ad_bottom_layout"));
        this.X = (ImageView) view.findViewById(x.e(context, "tt_video_ad_full_screen"));
        this.g = (ViewStub) view.findViewById(x.e(context, "tt_video_ad_cover"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h, com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message.what == 1) {
            j();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h, com.bytedance.sdk.openadsdk.core.widget.d.a
    public void a(View view, boolean z) {
        if (h()) {
            String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            if (this.y != null && !TextUtils.isEmpty(this.y.M())) {
                a(this.y.M());
            }
            this.O.setText(format);
        } else {
            a("");
            this.O.setText("");
        }
        if (!this.C) {
            boolean z2 = false;
            b(this.u && !this.Z);
            if (r()) {
                d dVar = this.B;
                if (this.f9245d.getVisibility() != 0) {
                    z2 = true;
                }
                dVar.a(this, view, true, z2);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(ViewGroup viewGroup) {
        if (viewGroup != null && (this.f9242a.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.Z = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f9242a.getLayoutParams();
            this.ac = marginLayoutParams.leftMargin;
            this.ab = marginLayoutParams.topMargin;
            this.ad = marginLayoutParams.width;
            this.ae = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.f9242a.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.af = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.ag.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                ag.b(viewGroup, 0, 0, 0, 0);
            }
            a(true);
            this.X.setImageDrawable(x.c(this.z, "tt_shrink_video"));
            this.U.setThumb(x.c(this.z, "tt_seek_thumb_fullscreen_selector"));
            this.U.setThumbOffset(0);
            a.a(this.f9242a, false);
            e(this.Z);
            ag.a(this.L, 8);
            if (!this.u) {
                ag.a((View) this.K, 8);
                ag.a((View) this.J, 8);
            } else if (this.x.contains(b.a.hideCloseBtn)) {
                ag.a((View) this.K, 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(i iVar, WeakReference<Context> weakReference, boolean z) {
        if (iVar != null) {
            a(this.f9242a, n.a());
            a(false, this.u);
            ag.a(this.h, 0);
            ag.a((View) this.i, 0);
            ag.a(this.j, 0);
            if (!(this.i == null || this.y == null || this.y.B() == null || this.y.B().g() == null)) {
                e.c().a(this.y.B().g(), this.i);
            }
            String C = !TextUtils.isEmpty(iVar.C()) ? iVar.C() : !TextUtils.isEmpty(iVar.M()) ? iVar.M() : !TextUtils.isEmpty(iVar.N()) ? iVar.N() : "";
            if (this.y != null && this.y.E() != null && this.y.E().a() != null) {
                ag.a((View) this.k, 0);
                ag.a((View) this.l, 4);
                if (this.k != null) {
                    e.c().a(this.y.E().a(), this.k);
                    this.k.setOnClickListener(this.F);
                    this.k.setOnTouchListener(this.F);
                }
            } else if (!TextUtils.isEmpty(C)) {
                ag.a((View) this.k, 4);
                ag.a((View) this.l, 0);
                if (this.l != null) {
                    this.l.setText(C.substring(0, 1));
                    this.l.setOnClickListener(this.F);
                    this.l.setOnTouchListener(this.F);
                }
            }
            if (this.m != null && !TextUtils.isEmpty(C)) {
                this.m.setText(C);
            }
            ag.a((View) this.m, 0);
            ag.a((View) this.n, 0);
            int D = iVar.D();
            String a2 = (D == 2 || D == 3) ? x.a(this.z, "tt_video_mobile_go_detail") : D != 4 ? D != 5 ? x.a(this.z, "tt_video_mobile_go_detail") : x.a(this.z, "tt_video_dial_phone") : x.a(this.z, "tt_video_download_apk");
            if (this.n != null) {
                this.n.setText(a2);
                this.n.setOnClickListener(this.F);
                this.n.setOnTouchListener(this.F);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(String str) {
        TextView textView = this.M;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.N;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(boolean z) {
        int i = h() ? this.an : this.q;
        int i2 = h() ? this.am : this.r;
        if (this.t > 0 && this.s > 0 && i > 0) {
            int i3 = i2;
            if (!i()) {
                i3 = i2;
                if (!h()) {
                    i3 = this.x.contains(b.a.fixedSize) ? i2 : this.z.getResources().getDimensionPixelSize(x.h(this.z, "tt_video_container_maxheight"));
                }
            }
            int i4 = (int) (this.t * ((i * 1.0f) / this.s));
            if (i4 > i3) {
                i = (int) (this.s * ((i3 * 1.0f) / this.t));
            } else {
                i3 = i4;
            }
            int i5 = i;
            int i6 = i3;
            if (!z) {
                i5 = i;
                i6 = i3;
                if (!h()) {
                    i5 = this.q;
                    i6 = this.r;
                }
            }
            this.f9243b.a(i5, i6);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(boolean z, boolean z2) {
        ag.a(this.T, 8);
        ag.a(this.L, 8);
        ag.a((View) this.o, z ? 0 : 8);
        ag.a((View) this.f9244c, 8);
        if (!this.u && !this.Z) {
            ag.a((View) this.K, 8);
            if (!this.x.contains(b.a.alwayShowBackBtn)) {
                ag.a((View) this.J, 8);
            }
        } else if (this.x.contains(b.a.hideCloseBtn)) {
            ag.a((View) this.K, 8);
        }
        if (z2) {
            ag.a((View) this.K, 8);
            ag.a((View) this.J, 8);
        }
        b(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void a(boolean z, boolean z2, boolean z3) {
        ag.a(this.T, 0);
        ag.a((View) this.o, 0);
        int i = 8;
        if (this.Z) {
            ag.a(this.L, 0);
            ag.a((View) this.N, 0);
        } else if (z3) {
            ag.a(this.L, 8);
        }
        ag.a((View) this.f9244c, (!z || this.f9245d.getVisibility() == 0) ? 8 : 0);
        if (!this.u && !this.Z) {
            if (!this.x.contains(b.a.hideCloseBtn) && !z3) {
                ag.a((View) this.K, 0);
            }
            TextView textView = this.J;
            if (!z3) {
                i = 0;
            }
            ag.a((View) textView, i);
        }
        ag.a((View) this.V, 0);
        ag.a((View) this.W, 0);
        ag.a((View) this.U, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void b() {
        this.Y.removeMessages(1);
        this.Y.sendMessageDelayed(this.Y.obtainMessage(1), 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void b(ViewGroup viewGroup) {
        q.e("FullScreen", "Detail exitFullScreen.....");
        if (viewGroup != null && this.f9242a != null && (this.f9242a.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.Z = false;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f9242a.getLayoutParams();
            marginLayoutParams.width = this.ad;
            marginLayoutParams.height = this.ae;
            marginLayoutParams.leftMargin = this.ac;
            marginLayoutParams.topMargin = this.ab;
            this.f9242a.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                layoutParams2.addRule(3, this.af);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ag.b(viewGroup, this.ag.left, this.ag.top, this.ag.right, this.ag.bottom);
            }
            a(true);
            this.X.setImageDrawable(x.c(this.z, "tt_enlarge_video"));
            this.U.setThumb(x.c(this.z, "tt_seek_thumb_normal"));
            this.U.setThumbOffset(0);
            a.a(this.f9242a, true);
            e(this.Z);
            ag.a(this.L, 8);
            if (this.x.contains(b.a.alwayShowBackBtn)) {
                ag.a((View) this.J, 0);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void b(boolean z) {
        int i;
        TextView textView;
        if (this.M != null) {
            if (this.u) {
                textView = this.M;
            } else {
                textView = this.M;
                if (z) {
                    i = 0;
                    ag.a((View) textView, i);
                }
            }
            i = 8;
            ag.a((View) textView, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public boolean b(int i) {
        SeekBar seekBar = this.U;
        return seekBar != null && i > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void c() {
        this.Y.removeMessages(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void c(int i) {
        this.w = i;
        ag.a(this.f9242a, i);
        if (i != 0) {
            this.aB = false;
        } else if (this.aA) {
            this.aB = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void d() {
        ag.g(this.f9245d);
        ag.g(this.e);
        ag.f(this.Q);
        if (!(this.f == null || this.y == null || this.y.B() == null || this.y.B().g() == null)) {
            ag.g(this.f);
            e.c().a(this.y.B().g(), this.f);
        }
        if (this.f9244c.getVisibility() == 0) {
            ag.a((View) this.f9244c, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void e() {
        a(false, this.u);
        v();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void f() {
        ag.f(this.f9245d);
        ag.f(this.Q);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public void g() {
        this.U.setProgress(0);
        this.U.setSecondaryProgress(0);
        this.o.setProgress(0);
        this.o.setSecondaryProgress(0);
        this.V.setText(x.b(this.z, "tt_00_00"));
        this.W.setText(x.b(this.z, "tt_00_00"));
        c(8);
        if (x()) {
            this.f9243b.setVisibility(8);
        }
        if (this.f != null) {
            this.f.setImageDrawable(null);
        }
        c(8);
        ag.a(this.T, 8);
        ag.a(this.h, 8);
        ag.a((View) this.i, 8);
        ag.a(this.j, 8);
        ag.a((View) this.k, 8);
        ag.a((View) this.l, 8);
        ag.a((View) this.m, 8);
        if (this.A != null) {
            this.A.a(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h, com.bytedance.sdk.openadsdk.core.widget.e.b
    public boolean h() {
        return this.Z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public boolean i() {
        return this.u;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h, com.bytedance.sdk.openadsdk.core.widget.e.b
    public void j() {
        a(true, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h
    public boolean k() {
        return this.v;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h, com.bytedance.sdk.openadsdk.core.widget.d.a
    public void l() {
        j();
        b(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.h, com.bytedance.sdk.openadsdk.core.widget.d.a
    public boolean m() {
        return this.A != null && this.A.a();
    }
}
