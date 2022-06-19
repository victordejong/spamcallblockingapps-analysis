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
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4717b;
import com.bytedance.sdk.openadsdk.core.video.p162e.C4708a;
import com.bytedance.sdk.openadsdk.core.widget.C4778d;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/g.class */
public class C4735g extends C4743h {

    /* renamed from: J */
    private TextView f17289J;

    /* renamed from: K */
    private ImageView f17290K;

    /* renamed from: L */
    private View f17291L;

    /* renamed from: M */
    private TextView f17292M;

    /* renamed from: N */
    private TextView f17293N;

    /* renamed from: O */
    private TextView f17294O;

    /* renamed from: P */
    private ImageView f17295P;

    /* renamed from: Q */
    private View f17296Q;

    /* renamed from: R */
    private ImageView f17297R;

    /* renamed from: S */
    private TextView f17298S;

    /* renamed from: T */
    private View f17299T;

    /* renamed from: U */
    private SeekBar f17300U;

    /* renamed from: V */
    private TextView f17301V;

    /* renamed from: W */
    private TextView f17302W;

    /* renamed from: X */
    private ImageView f17303X;

    /* renamed from: aA */
    private boolean f17306aA;

    /* renamed from: aB */
    private boolean f17307aB;

    /* renamed from: ah */
    private ColorStateList f17315ah;

    /* renamed from: ai */
    private float f17316ai;

    /* renamed from: al */
    private boolean f17319al;

    /* renamed from: am */
    private int f17320am;

    /* renamed from: an */
    private int f17321an;

    /* renamed from: ao */
    private C4778d f17322ao;

    /* renamed from: ar */
    private float f17325ar;

    /* renamed from: as */
    private ColorStateList f17326as;

    /* renamed from: at */
    private float f17327at;

    /* renamed from: av */
    private float f17329av;

    /* renamed from: aw */
    private ColorStateList f17330aw;

    /* renamed from: ax */
    private float f17331ax;

    /* renamed from: Y */
    private final HandlerC5446ah f17304Y = new HandlerC5446ah(this);

    /* renamed from: Z */
    private boolean f17305Z = false;

    /* renamed from: aa */
    private boolean f17308aa = false;

    /* renamed from: ab */
    private int f17309ab = 0;

    /* renamed from: ac */
    private int f17310ac = 0;

    /* renamed from: ad */
    private int f17311ad = 0;

    /* renamed from: ae */
    private int f17312ae = 0;

    /* renamed from: af */
    private int f17313af = 0;

    /* renamed from: ag */
    private final Rect f17314ag = new Rect();

    /* renamed from: aj */
    private final Rect f17317aj = new Rect();

    /* renamed from: ak */
    private int f17318ak = 0;

    /* renamed from: ap */
    private boolean f17323ap = false;

    /* renamed from: aq */
    private final View.OnTouchListener f17324aq = new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.7

        /* renamed from: b */
        private float f17341b;

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            float x = motionEvent.getX();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                this.f17341b = x;
                return false;
            }
            boolean z = true;
            if (actionMasked == 1) {
                C4735g c4735g = C4735g.this;
                if (Math.abs(this.f17341b - motionEvent.getX()) >= 10.0f) {
                    z = false;
                }
                c4735g.f17323ap = z;
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
        }
    };

    /* renamed from: au */
    private final Rect f17328au = new Rect();

    /* renamed from: ay */
    private final Rect f17332ay = new Rect();

    /* renamed from: az */
    private final Rect f17333az = new Rect();

    public C4735g(Context context, View view, boolean z, EnumSet<AbstractC4717b.EnumC4718a> enumSet, C4557i c4557i, AbstractC4719c abstractC4719c, boolean z2) {
        super(context, view, z, enumSet, c4557i, abstractC4719c, z2);
        this.f17320am = 0;
        this.f17321an = 0;
        this.f17322ao = null;
        this.f17381z = C4600n.m34815a().getApplicationContext();
        m34205c(z2);
        this.f17356a = view;
        this.f17376u = z;
        C4778d c4778d = new C4778d(this);
        this.f17322ao = c4778d;
        c4778d.m34025a(this.f17376u);
        DisplayMetrics displayMetrics = this.f17381z.getResources().getDisplayMetrics();
        this.f17320am = displayMetrics.widthPixels;
        this.f17321an = displayMetrics.heightPixels;
        this.f17379x = enumSet == null ? EnumSet.noneOf(AbstractC4717b.EnumC4718a.class) : enumSet;
        this.f17346E = abstractC4719c;
        this.f17380y = c4557i;
        mo34208c(8);
        mo34228a(context, this.f17356a);
        mo34234a();
        m34194n();
    }

    /* renamed from: e */
    private void m34238e(boolean z) {
        if (z) {
            m34237y();
        } else {
            m34236z();
        }
    }

    /* renamed from: y */
    private void m34237y() {
        DisplayMetrics displayMetrics = this.f17381z.getResources().getDisplayMetrics();
        TextView textView = this.f17302W;
        if (textView != null) {
            this.f17325ar = textView.getTextSize();
            this.f17302W.setTextSize(2, 14.0f);
            ColorStateList textColors = this.f17302W.getTextColors();
            this.f17326as = textColors;
            if (textColors != null) {
                this.f17302W.setTextColor(C5486x.m32062i(this.f17381z, "tt_ssxinzi15"));
            }
            this.f17327at = this.f17302W.getAlpha();
            this.f17302W.setAlpha(0.85f);
            this.f17302W.setShadowLayer(BitmapDescriptorFactory.HUE_RED, C5443ag.m32232a(this.f17381z, 0.5f), C5443ag.m32232a(this.f17381z, 0.5f), C5486x.m32062i(this.f17381z, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams = this.f17302W.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                this.f17328au.set(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                C5443ag.m32219b(this.f17302W, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.f17328au.top, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.f17328au.bottom);
            }
        }
        TextView textView2 = this.f17301V;
        if (textView2 != null) {
            this.f17329av = textView2.getTextSize();
            this.f17301V.setTextSize(2, 14.0f);
            ColorStateList textColors2 = this.f17301V.getTextColors();
            this.f17330aw = textColors2;
            if (textColors2 != null) {
                this.f17301V.setTextColor(C5486x.m32062i(this.f17381z, "tt_ssxinzi15"));
            }
            this.f17331ax = this.f17301V.getAlpha();
            this.f17301V.setAlpha(0.85f);
            this.f17301V.setShadowLayer(BitmapDescriptorFactory.HUE_RED, C5443ag.m32232a(this.f17381z, 0.5f), C5443ag.m32232a(this.f17381z, 0.5f), C5486x.m32062i(this.f17381z, "tt_video_shaoow_color_fullscreen"));
            ViewGroup.LayoutParams layoutParams2 = this.f17301V.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                this.f17332ay.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                C5443ag.m32219b(this.f17301V, (int) TypedValue.applyDimension(1, 14.0f, displayMetrics), this.f17332ay.top, this.f17332ay.right, this.f17332ay.bottom);
            }
        }
        ImageView imageView = this.f17303X;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams3 = imageView.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) layoutParams3;
                this.f17333az.set(marginLayoutParams3.leftMargin, marginLayoutParams3.topMargin, marginLayoutParams3.rightMargin, marginLayoutParams3.bottomMargin);
                C5443ag.m32219b(this.f17303X, this.f17333az.left, this.f17333az.top, (int) TypedValue.applyDimension(1, 16.0f, displayMetrics), this.f17333az.bottom);
            }
        }
        ImageView imageView2 = this.f17303X;
        if (imageView2 != null) {
            imageView2.setImageDrawable(C5486x.m32068c(this.f17381z, "tt_shrink_fullscreen"));
        }
        TextView textView3 = this.f17293N;
        if (textView3 != null) {
            ColorStateList textColors3 = textView3.getTextColors();
            this.f17315ah = textColors3;
            if (textColors3 != null) {
                this.f17293N.setTextColor(C5486x.m32062i(this.f17381z, "tt_ssxinzi15"));
            }
            this.f17316ai = this.f17293N.getAlpha();
            this.f17293N.setAlpha(0.85f);
            ViewGroup.LayoutParams layoutParams4 = this.f17293N.getLayoutParams();
            if (layoutParams4 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) layoutParams4;
                this.f17317aj.set(marginLayoutParams4.leftMargin, marginLayoutParams4.topMargin, marginLayoutParams4.rightMargin, marginLayoutParams4.bottomMargin);
                C5443ag.m32219b(this.f17293N, (int) TypedValue.applyDimension(1, 1.0f, displayMetrics), this.f17332ay.top, this.f17332ay.right, this.f17332ay.bottom);
            }
        }
        View view = this.f17291L;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams5 = view.getLayoutParams();
            this.f17318ak = layoutParams5.height;
            layoutParams5.height = (int) TypedValue.applyDimension(1, 49.0f, displayMetrics);
            this.f17291L.setLayoutParams(layoutParams5);
            this.f17291L.setBackgroundResource(C5486x.m32067d(this.f17381z, "tt_shadow_fullscreen_top"));
        }
        m34210b(this.f17319al, true);
    }

    /* renamed from: z */
    private void m34236z() {
        TextView textView = this.f17302W;
        if (textView != null) {
            textView.setTextSize(0, this.f17325ar);
            ColorStateList colorStateList = this.f17326as;
            if (colorStateList != null) {
                this.f17302W.setTextColor(colorStateList);
            }
            this.f17302W.setAlpha(this.f17327at);
            this.f17302W.setShadowLayer(C5443ag.m32232a(this.f17381z, 1.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, C5486x.m32062i(this.f17381z, "tt_video_shadow_color"));
            C5443ag.m32219b(this.f17302W, this.f17328au.left, this.f17328au.top, this.f17328au.right, this.f17328au.bottom);
        }
        TextView textView2 = this.f17301V;
        if (textView2 != null) {
            textView2.setTextSize(0, this.f17329av);
            ColorStateList colorStateList2 = this.f17330aw;
            if (colorStateList2 != null) {
                this.f17301V.setTextColor(colorStateList2);
            }
            this.f17301V.setAlpha(this.f17331ax);
            this.f17301V.setShadowLayer(C5443ag.m32232a(this.f17381z, 1.0f), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, C5486x.m32062i(this.f17381z, "tt_video_shadow_color"));
            C5443ag.m32219b(this.f17301V, this.f17332ay.left, this.f17332ay.top, this.f17332ay.right, this.f17332ay.bottom);
        }
        ImageView imageView = this.f17303X;
        if (imageView != null) {
            C5443ag.m32219b(imageView, this.f17333az.left, this.f17333az.top, this.f17333az.right, this.f17333az.bottom);
        }
        ImageView imageView2 = this.f17303X;
        if (imageView2 != null) {
            imageView2.setImageDrawable(C5486x.m32068c(this.f17381z, "tt_enlarge_video"));
        }
        TextView textView3 = this.f17293N;
        if (textView3 != null) {
            ColorStateList colorStateList3 = this.f17315ah;
            if (colorStateList3 != null) {
                textView3.setTextColor(colorStateList3);
            }
            this.f17293N.setAlpha(this.f17316ai);
            C5443ag.m32219b(this.f17293N, this.f17332ay.left, this.f17332ay.top, this.f17332ay.right, this.f17332ay.bottom);
        }
        View view = this.f17291L;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            layoutParams.height = this.f17318ak;
            this.f17291L.setLayoutParams(layoutParams);
            this.f17291L.setBackgroundResource(C5486x.m32067d(this.f17381z, "tt_video_black_desc_gradient"));
        }
        m34210b(this.f17319al, true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34234a() {
        super.mo34234a();
        this.f17322ao.m34031a(this.f17356a);
        C5443ag.m32228a((View) this.f17290K, (this.f17376u || this.f17379x.contains(AbstractC4717b.EnumC4718a.hideCloseBtn)) ? 8 : 0);
        this.f17290K.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C4735g.this.m34190r()) {
                    C4735g.this.f17343B.mo34289c(C4735g.this, view);
                }
            }
        });
        C5443ag.m32228a((View) this.f17289J, (!this.f17376u || this.f17379x.contains(AbstractC4717b.EnumC4718a.alwayShowBackBtn)) ? 0 : 8);
        this.f17289J.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C4735g.this.m34190r()) {
                    C4735g.this.f17343B.mo34282d(C4735g.this, view);
                }
            }
        });
        this.f17295P.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C4735g.this.m34190r()) {
                    C4735g.this.f17343B.mo34277e(C4735g.this, view);
                }
            }
        });
        this.f17297R.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C4735g.this.m34210b(false, true);
                C4735g.this.mo34199f();
                C4735g.this.mo34204d();
                if (C4735g.this.m34190r()) {
                    C4735g.this.f17343B.mo34273f(C4735g.this, view);
                }
            }
        });
        this.f17303X.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C4735g.this.m34190r()) {
                    C4735g.this.f17343B.mo34299b(C4735g.this, view);
                }
            }
        });
        this.f17300U.setThumbOffset(0);
        this.f17300U.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.g.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (C4735g.this.m34190r()) {
                    C4735g.this.f17343B.mo34327a(C4735g.this, i, z);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                if (!C4735g.this.f17305Z && C4735g.this.f17381z != null) {
                    seekBar.setThumb(C5486x.m32068c(C4600n.m34815a(), "tt_seek_thumb_press"));
                }
                if (C4735g.this.m34190r()) {
                    seekBar.setThumbOffset(0);
                    C4735g.this.f17343B.mo34302b(C4735g.this, seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (!C4735g.this.f17305Z && C4735g.this.f17381z != null) {
                    seekBar.setThumb(C5486x.m32068c(C4600n.m34815a(), "tt_seek_thumb_normal"));
                }
                if (C4735g.this.m34190r()) {
                    seekBar.setThumbOffset(0);
                    C4735g.this.f17343B.mo34328a(C4735g.this, seekBar.getProgress());
                }
            }
        });
        this.f17300U.setOnTouchListener(this.f17324aq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34233a(int i) {
        View view = this.f17299T;
        if (view != null && view.getVisibility() == 0) {
            C5443ag.m32228a((View) this.f17370o, 8);
            return;
        }
        C5443ag.m32228a((View) this.f17370o, 0);
        this.f17300U.setProgress(i);
        this.f17370o.setProgress(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34230a(long j) {
        this.f17302W.setText(C4708a.m34403a(j));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34229a(long j, long j2) {
        this.f17301V.setText(C4708a.m34403a(j2));
        this.f17302W.setText(C4708a.m34403a(j));
        this.f17300U.setProgress(C4708a.m34402a(j, j2));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34228a(Context context, View view) {
        super.mo34228a(context, view);
        this.f17289J = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_back"));
        this.f17290K = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_close"));
        this.f17291L = view.findViewById(C5486x.m32066e(context, "tt_video_top_layout"));
        this.f17295P = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_fullscreen_back"));
        this.f17292M = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_title"));
        this.f17293N = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_top_title"));
        this.f17294O = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_current_time"));
        this.f17296Q = view.findViewById(C5486x.m32066e(context, "tt_video_loading_retry"));
        this.f17297R = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_retry"));
        this.f17298S = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_retry_des"));
        this.f17300U = (SeekBar) view.findViewById(C5486x.m32066e(context, "tt_video_seekbar"));
        this.f17301V = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_time_left_time"));
        this.f17302W = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_time_play"));
        this.f17299T = view.findViewById(C5486x.m32066e(context, "tt_video_ad_bottom_layout"));
        this.f17303X = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_full_screen"));
        this.f17362g = (ViewStub) view.findViewById(C5486x.m32066e(context, "tt_video_ad_cover"));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h, com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message.what != 1) {
            return;
        }
        mo33994j();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h, com.bytedance.sdk.openadsdk.core.widget.C4778d.AbstractC4780a
    /* renamed from: a */
    public void mo34011a(View view, boolean z) {
        if (mo33995h()) {
            String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date());
            if (this.f17380y != null && !TextUtils.isEmpty(this.f17380y.m35234M())) {
                mo34220a(this.f17380y.m35234M());
            }
            this.f17294O.setText(format);
        } else {
            mo34220a("");
            this.f17294O.setText("");
        }
        if (!this.f17344C) {
            mo34211b(this.f17376u && !this.f17305Z);
            if (!m34190r()) {
                return;
            }
            AbstractC4723d abstractC4723d = this.f17343B;
            boolean z2 = false;
            if (this.f17359d.getVisibility() != 0) {
                z2 = true;
            }
            abstractC4723d.mo34321a(this, view, true, z2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34226a(ViewGroup viewGroup) {
        if (viewGroup != null && (this.f17356a.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            this.f17305Z = true;
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f17356a.getLayoutParams();
            this.f17310ac = marginLayoutParams.leftMargin;
            this.f17309ab = marginLayoutParams.topMargin;
            this.f17311ad = marginLayoutParams.width;
            this.f17312ae = marginLayoutParams.height;
            marginLayoutParams.width = -1;
            marginLayoutParams.height = -1;
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.leftMargin = 0;
            this.f17356a.setLayoutParams(marginLayoutParams);
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
                int[] rules = layoutParams2.getRules();
                this.f17313af = rules.length > 0 ? rules[3] : 0;
                layoutParams2.addRule(3, 0);
                viewGroup.setLayoutParams(layoutParams2);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams;
                this.f17314ag.set(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, marginLayoutParams2.bottomMargin);
                C5443ag.m32219b(viewGroup, 0, 0, 0, 0);
            }
            mo34219a(true);
            this.f17303X.setImageDrawable(C5486x.m32068c(this.f17381z, "tt_shrink_video"));
            this.f17300U.setThumb(C5486x.m32068c(this.f17381z, "tt_seek_thumb_fullscreen_selector"));
            this.f17300U.setThumbOffset(0);
            C4708a.m34401a(this.f17356a, false);
            m34238e(this.f17305Z);
            C5443ag.m32228a(this.f17291L, 8);
            if (!this.f17376u) {
                C5443ag.m32228a((View) this.f17290K, 8);
                C5443ag.m32228a((View) this.f17289J, 8);
            } else if (!this.f17379x.contains(AbstractC4717b.EnumC4718a.hideCloseBtn)) {
            } else {
                C5443ag.m32228a((View) this.f17290K, 8);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34224a(C4557i c4557i, WeakReference<Context> weakReference, boolean z) {
        if (c4557i == null) {
            return;
        }
        m34227a(this.f17356a, C4600n.m34815a());
        mo34218a(false, this.f17376u);
        C5443ag.m32228a(this.f17363h, 0);
        C5443ag.m32228a((View) this.f17364i, 0);
        C5443ag.m32228a(this.f17365j, 0);
        if (this.f17364i != null && this.f17380y != null && this.f17380y.m35245B() != null && this.f17380y.m35245B().m35044g() != null) {
            C4959e.m33434c().m33439a(this.f17380y.m35245B().m35044g(), this.f17364i);
        }
        String m35244C = !TextUtils.isEmpty(c4557i.m35244C()) ? c4557i.m35244C() : !TextUtils.isEmpty(c4557i.m35234M()) ? c4557i.m35234M() : !TextUtils.isEmpty(c4557i.m35233N()) ? c4557i.m35233N() : "";
        if (this.f17380y != null && this.f17380y.m35242E() != null && this.f17380y.m35242E().m35254a() != null) {
            C5443ag.m32228a((View) this.f17366k, 0);
            C5443ag.m32228a((View) this.f17367l, 4);
            if (this.f17366k != null) {
                C4959e.m33434c().m33439a(this.f17380y.m35242E().m35254a(), this.f17366k);
                this.f17366k.setOnClickListener(this.f17347F);
                this.f17366k.setOnTouchListener(this.f17347F);
            }
        } else if (!TextUtils.isEmpty(m35244C)) {
            C5443ag.m32228a((View) this.f17366k, 4);
            C5443ag.m32228a((View) this.f17367l, 0);
            if (this.f17367l != null) {
                this.f17367l.setText(m35244C.substring(0, 1));
                this.f17367l.setOnClickListener(this.f17347F);
                this.f17367l.setOnTouchListener(this.f17347F);
            }
        }
        if (this.f17368m != null && !TextUtils.isEmpty(m35244C)) {
            this.f17368m.setText(m35244C);
        }
        C5443ag.m32228a((View) this.f17368m, 0);
        C5443ag.m32228a((View) this.f17369n, 0);
        int m35243D = c4557i.m35243D();
        String m32071a = (m35243D == 2 || m35243D == 3) ? C5486x.m32071a(this.f17381z, "tt_video_mobile_go_detail") : m35243D != 4 ? m35243D != 5 ? C5486x.m32071a(this.f17381z, "tt_video_mobile_go_detail") : C5486x.m32071a(this.f17381z, "tt_video_dial_phone") : C5486x.m32071a(this.f17381z, "tt_video_download_apk");
        if (this.f17369n == null) {
            return;
        }
        this.f17369n.setText(m32071a);
        this.f17369n.setOnClickListener(this.f17347F);
        this.f17369n.setOnTouchListener(this.f17347F);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34220a(String str) {
        TextView textView = this.f17292M;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.f17293N;
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34219a(boolean z) {
        int i = mo33995h() ? this.f17321an : this.f17372q;
        int i2 = mo33995h() ? this.f17320am : this.f17373r;
        if (this.f17375t <= 0 || this.f17374s <= 0 || i <= 0) {
            return;
        }
        int i3 = i2;
        if (!mo34196i()) {
            i3 = i2;
            if (!mo33995h()) {
                i3 = this.f17379x.contains(AbstractC4717b.EnumC4718a.fixedSize) ? i2 : this.f17381z.getResources().getDimensionPixelSize(C5486x.m32063h(this.f17381z, "tt_video_container_maxheight"));
            }
        }
        int i4 = (int) (this.f17375t * ((i * 1.0f) / this.f17374s));
        if (i4 > i3) {
            i = (int) (this.f17374s * ((i3 * 1.0f) / this.f17375t));
        } else {
            i3 = i4;
        }
        int i5 = i;
        int i6 = i3;
        if (!z) {
            i5 = i;
            i6 = i3;
            if (!mo33995h()) {
                i5 = this.f17372q;
                i6 = this.f17373r;
            }
        }
        this.f17357b.mo34167a(i5, i6);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34218a(boolean z, boolean z2) {
        C5443ag.m32228a(this.f17299T, 8);
        C5443ag.m32228a(this.f17291L, 8);
        C5443ag.m32228a((View) this.f17370o, z ? 0 : 8);
        C5443ag.m32228a((View) this.f17358c, 8);
        if (!this.f17376u && !this.f17305Z) {
            C5443ag.m32228a((View) this.f17290K, 8);
            if (!this.f17379x.contains(AbstractC4717b.EnumC4718a.alwayShowBackBtn)) {
                C5443ag.m32228a((View) this.f17289J, 8);
            }
        } else if (this.f17379x.contains(AbstractC4717b.EnumC4718a.hideCloseBtn)) {
            C5443ag.m32228a((View) this.f17290K, 8);
        }
        if (z2) {
            C5443ag.m32228a((View) this.f17290K, 8);
            C5443ag.m32228a((View) this.f17289J, 8);
        }
        mo34211b(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: a */
    public void mo34217a(boolean z, boolean z2, boolean z3) {
        C5443ag.m32228a(this.f17299T, 0);
        C5443ag.m32228a((View) this.f17370o, 0);
        if (this.f17305Z) {
            C5443ag.m32228a(this.f17291L, 0);
            C5443ag.m32228a((View) this.f17293N, 0);
        } else if (z3) {
            C5443ag.m32228a(this.f17291L, 8);
        }
        C5443ag.m32228a((View) this.f17358c, (!z || this.f17359d.getVisibility() == 0) ? 8 : 0);
        if (!this.f17376u && !this.f17305Z) {
            if (!this.f17379x.contains(AbstractC4717b.EnumC4718a.hideCloseBtn) && !z3) {
                C5443ag.m32228a((View) this.f17290K, 0);
            }
            C5443ag.m32228a((View) this.f17289J, z3 ? 8 : 0);
        }
        C5443ag.m32228a((View) this.f17301V, 0);
        C5443ag.m32228a((View) this.f17302W, 0);
        C5443ag.m32228a((View) this.f17300U, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: b */
    public void mo34216b() {
        this.f17304Y.removeMessages(1);
        this.f17304Y.sendMessageDelayed(this.f17304Y.obtainMessage(1), 2000L);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: b */
    public void mo34212b(ViewGroup viewGroup) {
        C5478q.m32106e("FullScreen", "Detail exitFullScreen.....");
        if (viewGroup == null || this.f17356a == null || !(this.f17356a.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.f17305Z = false;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f17356a.getLayoutParams();
        marginLayoutParams.width = this.f17311ad;
        marginLayoutParams.height = this.f17312ae;
        marginLayoutParams.leftMargin = this.f17310ac;
        marginLayoutParams.topMargin = this.f17309ab;
        this.f17356a.setLayoutParams(marginLayoutParams);
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.addRule(3, this.f17313af);
            viewGroup.setLayoutParams(layoutParams2);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            C5443ag.m32219b(viewGroup, this.f17314ag.left, this.f17314ag.top, this.f17314ag.right, this.f17314ag.bottom);
        }
        mo34219a(true);
        this.f17303X.setImageDrawable(C5486x.m32068c(this.f17381z, "tt_enlarge_video"));
        this.f17300U.setThumb(C5486x.m32068c(this.f17381z, "tt_seek_thumb_normal"));
        this.f17300U.setThumbOffset(0);
        C4708a.m34401a(this.f17356a, true);
        m34238e(this.f17305Z);
        C5443ag.m32228a(this.f17291L, 8);
        if (!this.f17379x.contains(AbstractC4717b.EnumC4718a.alwayShowBackBtn)) {
            return;
        }
        C5443ag.m32228a((View) this.f17289J, 0);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: b */
    public void mo34211b(boolean z) {
        int i;
        TextView textView;
        if (this.f17292M != null) {
            if (this.f17376u) {
                textView = this.f17292M;
            } else {
                textView = this.f17292M;
                if (z) {
                    i = 0;
                    C5443ag.m32228a((View) textView, i);
                }
            }
            i = 8;
            C5443ag.m32228a((View) textView, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: b */
    public boolean mo34215b(int i) {
        SeekBar seekBar = this.f17300U;
        return seekBar != null && i > seekBar.getSecondaryProgress();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: c */
    public void mo34209c() {
        this.f17304Y.removeMessages(1);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: c */
    public void mo34208c(int i) {
        this.f17378w = i;
        C5443ag.m32228a(this.f17356a, i);
        if (i != 0) {
            this.f17307aB = false;
        } else if (!this.f17306aA) {
        } else {
            this.f17307aB = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: d */
    public void mo34204d() {
        C5443ag.m32208g(this.f17359d);
        C5443ag.m32208g(this.f17360e);
        C5443ag.m32210f(this.f17296Q);
        if (this.f17361f != null && this.f17380y != null && this.f17380y.m35245B() != null && this.f17380y.m35245B().m35044g() != null) {
            C5443ag.m32208g(this.f17361f);
            C4959e.m33434c().m33439a(this.f17380y.m35245B().m35044g(), this.f17361f);
        }
        if (this.f17358c.getVisibility() == 0) {
            C5443ag.m32228a((View) this.f17358c, 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: e */
    public void mo34201e() {
        mo34218a(false, this.f17376u);
        m34186v();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: f */
    public void mo34199f() {
        C5443ag.m32210f(this.f17359d);
        C5443ag.m32210f(this.f17296Q);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: g */
    public void mo34197g() {
        this.f17300U.setProgress(0);
        this.f17300U.setSecondaryProgress(0);
        this.f17370o.setProgress(0);
        this.f17370o.setSecondaryProgress(0);
        this.f17301V.setText(C5486x.m32069b(this.f17381z, "tt_00_00"));
        this.f17302W.setText(C5486x.m32069b(this.f17381z, "tt_00_00"));
        mo34208c(8);
        if (m34184x()) {
            this.f17357b.setVisibility(8);
        }
        if (this.f17361f != null) {
            this.f17361f.setImageDrawable(null);
        }
        mo34208c(8);
        C5443ag.m32228a(this.f17299T, 8);
        C5443ag.m32228a(this.f17363h, 8);
        C5443ag.m32228a((View) this.f17364i, 8);
        C5443ag.m32228a(this.f17365j, 8);
        C5443ag.m32228a((View) this.f17366k, 8);
        C5443ag.m32228a((View) this.f17367l, 8);
        C5443ag.m32228a((View) this.f17368m, 8);
        if (this.f17342A != null) {
            this.f17342A.m34000a(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h, com.bytedance.sdk.openadsdk.core.widget.C4781e.AbstractC4784b
    /* renamed from: h */
    public boolean mo33995h() {
        return this.f17305Z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: i */
    public boolean mo34196i() {
        return this.f17376u;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h, com.bytedance.sdk.openadsdk.core.widget.C4781e.AbstractC4784b
    /* renamed from: j */
    public void mo33994j() {
        mo34218a(true, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h
    /* renamed from: k */
    public boolean mo34195k() {
        return this.f17377v;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h, com.bytedance.sdk.openadsdk.core.widget.C4778d.AbstractC4780a
    /* renamed from: l */
    public void mo34010l() {
        mo33994j();
        mo34211b(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4743h, com.bytedance.sdk.openadsdk.core.widget.C4778d.AbstractC4780a
    /* renamed from: m */
    public boolean mo34009m() {
        return this.f17342A != null && this.f17342A.m34008a();
    }
}
