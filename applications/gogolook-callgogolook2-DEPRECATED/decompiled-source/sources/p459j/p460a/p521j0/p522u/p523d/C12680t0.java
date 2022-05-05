package p459j.p460a.p521j0.p522u.p523d;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.GravityCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.p074ad.AdStatusController;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.NativeAdHelper;
import gogolook.callgogolook2.p074ad.ShowAdsListener;
import gogolook.callgogolook2.p074ad.StandardPostCallAds;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.CallDialogLinearLayout;
import gogolook.callgogolook2.view.LimitHeightLinearLayout;
import gogolook.callgogolook2.view.ViewPager;
import p081h.p160h.p161a.C6192e;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p521j0.p522u.C12518a;
import p459j.p460a.p521j0.p522u.p523d.C12664s0;
import p459j.p460a.p521j0.p522u.p526e.C12715a;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p541n0.C13190o;
import p459j.p460a.p569u0.DialogC13655b;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13934c0;
import p459j.p460a.p582w0.C13983e0;
import p459j.p460a.p582w0.C14019h0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14058l0;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13921a;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
/* renamed from: j.a.j0.u.d.t0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0.class */
public class C12680t0 extends AbstractC12602f0 {

    /* renamed from: z */
    public static final String f28596z = "t0";

    /* renamed from: c */
    public C12705y0 f28597c;

    /* renamed from: d */
    public C12707z0 f28598d;

    /* renamed from: e */
    public C12640p0 f28599e;

    /* renamed from: f */
    public DialogC13655b f28600f;

    /* renamed from: g */
    public C12526a1 f28601g;

    /* renamed from: h */
    public ViewPager f28602h;

    /* renamed from: i */
    public ViewGroup f28603i;

    /* renamed from: j */
    public View f28604j;

    /* renamed from: k */
    public FrameLayout f28605k;

    /* renamed from: l */
    public View f28606l;

    /* renamed from: m */
    public View f28607m;

    /* renamed from: n */
    public View f28608n;

    /* renamed from: o */
    public int f28609o;

    /* renamed from: q */
    public RowInfo f28611q;

    /* renamed from: r */
    public View f28612r;

    /* renamed from: s */
    public View f28613s;

    /* renamed from: t */
    public FrameLayout.LayoutParams f28614t;

    /* renamed from: u */
    public FrameLayout.LayoutParams f28615u;

    /* renamed from: v */
    public AbstractC6207d f28616v;

    /* renamed from: w */
    public boolean f28617w;

    /* renamed from: y */
    public boolean f28619y;

    /* renamed from: x */
    public C12691j f28618x = null;

    /* renamed from: p */
    public CallStats f28610p = CallStats.m28534h();

    /* renamed from: j.a.j0.u.d.t0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$a.class */
    public class C12681a extends FrameLayout {
        public C12681a(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (C12680t0.this.f28606l instanceof CallDialogLinearLayout) {
                if (C12680t0.this.f28605k != null) {
                    ((CallDialogLinearLayout) C12680t0.this.f28606l).m25936a(C12680t0.this.f28605k.getHeight());
                } else {
                    ((CallDialogLinearLayout) C12680t0.this.f28606l).m25936a(C12680t0.this.f28606l.getHeight());
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    /* renamed from: j.a.j0.u.d.t0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$b.class */
    public class C12682b implements ViewPager.AbstractC5311e {
        public C12682b() {
        }

        @Override // gogolook.callgogolook2.view.ViewPager.AbstractC5311e
        public void onPageScrollStateChanged(int i) {
            if (C12680t0.this.f28609o == 0) {
                C12680t0.this.m5539o();
            }
        }

        @Override // gogolook.callgogolook2.view.ViewPager.AbstractC5311e
        public void onPageScrolled(int i, float f, int i2) {
            if (f != 0.0f && f < 0.3d) {
                C12680t0.this.f28602h.m25750a(true);
            }
        }

        @Override // gogolook.callgogolook2.view.ViewPager.AbstractC5311e
        public void onPageSelected(int i) {
            C12680t0.this.f28609o = i;
        }
    }

    /* renamed from: j.a.j0.u.d.t0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$c.class */
    public class C12683c implements DialogC13655b.AbstractC13658c {
        public C12683c() {
        }

        @Override // p459j.p460a.p569u0.DialogC13655b.AbstractC13658c
        /* renamed from: a */
        public void mo3728a(DialogC13655b bVar) {
            C12680t0.this.f28600f = bVar;
        }
    }

    /* renamed from: j.a.j0.u.d.t0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$d.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC12684d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ String f28623a;

        /* renamed from: b */
        public final /* synthetic */ String f28624b;

        /* renamed from: c */
        public final /* synthetic */ int f28625c;

        /* renamed from: d */
        public final /* synthetic */ int f28626d;

        /* renamed from: j.a.j0.u.d.t0$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$d$a.class */
        public class View$OnTouchListenerC12685a implements View.OnTouchListener {
            public View$OnTouchListenerC12685a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                C12680t0.this.m5550f();
                ViewTreeObserver$OnGlobalLayoutListenerC12684d dVar = ViewTreeObserver$OnGlobalLayoutListenerC12684d.this;
                C13915b3.m3048d(dVar.f28624b, dVar.f28625c);
                return false;
            }
        }

        public ViewTreeObserver$OnGlobalLayoutListenerC12684d(String str, String str2, int i, int i2) {
            this.f28623a = str;
            this.f28624b = str2;
            this.f28625c = i;
            this.f28626d = i2;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (C12680t0.this.f28602h.getVisibility() == 8) {
                C12680t0 t0Var = C12680t0.this;
                t0Var.f28607m = LayoutInflater.from(t0Var.f28409b).inflate(R$layout.calldialog_standard_tips, (ViewGroup) null);
                View findViewById = C12680t0.this.f28606l.findViewById(R$id.call_main);
                View findViewById2 = C12680t0.this.f28606l.findViewById(R$id.ll_number_ui_footer);
                if (!TextUtils.isEmpty(this.f28623a)) {
                    ((TextView) C12680t0.this.f28607m.findViewById(R$id.call_txt_tip)).setText(this.f28623a);
                }
                if (findViewById != null && findViewById2 != null && C12680t0.this.f28607m != null) {
                    C12680t0 t0Var2 = C12680t0.this;
                    ((ViewGroup) t0Var2.f28612r).addView(t0Var2.f28607m);
                    C12680t0.this.f28607m.setPadding(0, findViewById2.getVisibility() == 0 ? findViewById.getHeight() + C14217x3.m2201a(29.0f) : findViewById.getHeight(), 0, 0);
                    C12680t0.this.f28607m.setOnTouchListener(new View$OnTouchListenerC12685a());
                    C13915b3.m3048d(this.f28624b, this.f28626d + 1);
                    C12680t0.this.f28606l.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
            }
        }
    }

    /* renamed from: j.a.j0.u.d.t0$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$e.class */
    public class C12686e implements CallDialogLinearLayout.AbstractC5272d {
        public C12686e() {
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5272d
        /* renamed from: a */
        public void mo5535a(View view, Object obj) {
            C12680t0.this.m5561a(false);
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5272d
        /* renamed from: a */
        public boolean mo5534a(Object obj) {
            return C12680t0.this.f28408a.m5625e() != EnumC12627j0.VIEW;
        }
    }

    /* renamed from: j.a.j0.u.d.t0$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$f.class */
    public class C12687f implements CallDialogLinearLayout.AbstractC5273e {

        /* renamed from: a */
        public float f28630a = 0.0f;

        public C12687f() {
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5273e
        /* renamed from: a */
        public void mo5533a() {
            this.f28630a = C12680t0.this.f28408a.m5623f();
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5273e
        /* renamed from: a */
        public void mo5532a(float f) {
            C12680t0.this.f28408a.m5644a(this.f28630a + f);
        }
    }

    /* renamed from: j.a.j0.u.d.t0$g */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$g.class */
    public class View$OnClickListenerC12688g implements View.OnClickListener {
        public View$OnClickListenerC12688g(C12680t0 t0Var) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14261f.m1985a(C14261f.EnumC14264c.a_Multiple_CED_Close);
            C14037j3.m2731a().mo2704a(new C14019h0());
        }
    }

    /* renamed from: j.a.j0.u.d.t0$h */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$h.class */
    public class C12689h implements ShowAdsListener {
        public C12689h() {
        }

        @Override // gogolook.callgogolook2.p074ad.ShowAdsListener
        /* renamed from: a */
        public void mo5531a(AbstractC6207d dVar) {
            if (C12680t0.this.f28616v != null) {
                C12680t0.this.f28616v.mo23568b();
            }
            C12680t0.this.f28616v = dVar;
            C12680t0.this.f28617w = false;
        }
    }

    /* renamed from: j.a.j0.u.d.t0$i */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$i.class */
    public static /* synthetic */ class C12690i {

        /* renamed from: a */
        public static final /* synthetic */ int[] f28633a = new int[C12691j.EnumC12692a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f28633a[C12691j.EnumC12692a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f28633a[C12691j.EnumC12692a.BAR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f28633a[C12691j.EnumC12692a.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: j.a.j0.u.d.t0$j */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$j.class */
    public static class C12691j {

        /* renamed from: a */
        public final RelativeLayout f28634a;

        /* renamed from: b */
        public final TextView f28635b;

        /* renamed from: c */
        public final ImageView f28636c;

        /* renamed from: d */
        public final ImageView f28637d;

        /* renamed from: e */
        public EnumC12692a f28638e = EnumC12692a.NONE;

        /* renamed from: f */
        public int f28639f = 0;

        /* renamed from: j.a.j0.u.d.t0$j$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/t0$j$a.class */
        public enum EnumC12692a {
            NONE,
            BAR,
            TEXT
        }

        public C12691j(View view) {
            this.f28634a = (RelativeLayout) view.findViewById(R$id.ll_number_ui_footer);
            this.f28635b = (TextView) view.findViewById(R$id.tv_bottom_text);
            this.f28636c = (ImageView) view.findViewById(R$id.iv_bottom_start);
            this.f28637d = (ImageView) view.findViewById(R$id.iv_bottom_end);
        }

        /* renamed from: a */
        public void m5529a(int i) {
            ImageView imageView;
            if (i == 8388611) {
                ImageView imageView2 = this.f28636c;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
            } else if (i == 8388613 && (imageView = this.f28637d) != null) {
                imageView.setVisibility(8);
            }
        }

        /* renamed from: a */
        public void m5528a(int i, @DrawableRes int i2) {
            m5527a(i, i2, 0);
        }

        /* renamed from: a */
        public void m5527a(int i, @DrawableRes int i2, int i3) {
            ImageView imageView;
            if (i == 8388611) {
                ImageView imageView2 = this.f28636c;
                if (imageView2 != null) {
                    imageView2.setImageResource(i2);
                    this.f28636c.setPadding(0, C14217x3.m2201a(i3), 0, 0);
                    this.f28636c.setVisibility(0);
                }
            } else if (i == 8388613 && (imageView = this.f28637d) != null) {
                imageView.setImageResource(i2);
                this.f28637d.setPadding(0, C14217x3.m2201a(i3), 0, 0);
                this.f28637d.setVisibility(0);
            }
        }

        /* renamed from: a */
        public void m5526a(@NonNull EnumC12692a aVar) {
            this.f28638e = aVar;
            m5523b();
        }

        /* renamed from: a */
        public void m5525a(@NonNull EnumC12692a aVar, int i) {
            this.f28638e = aVar;
            this.f28639f = i;
            m5523b();
        }

        /* renamed from: a */
        public void m5524a(String str, @ColorInt int i) {
            TextView textView = this.f28635b;
            if (textView != null) {
                textView.setText(str);
                this.f28635b.setTextColor(i);
            }
        }

        /* renamed from: a */
        public boolean m5530a() {
            return this.f28634a.getVisibility() == 0;
        }

        /* renamed from: b */
        public final void m5523b() {
            if (this.f28634a != null && this.f28635b != null) {
                int i = C12690i.f28633a[this.f28638e.ordinal()];
                if (i == 1) {
                    this.f28634a.setVisibility(8);
                } else if (i == 2) {
                    this.f28634a.setVisibility(0);
                    this.f28634a.setBackgroundColor(this.f28639f);
                } else if (i == 3) {
                    this.f28634a.setVisibility(0);
                    this.f28634a.setBackground(null);
                    this.f28634a.setGravity(17);
                    this.f28635b.setTextColor(C14167t.m2314b());
                    this.f28635b.setTextSize(14.0f);
                    m5529a(GravityCompat.START);
                    m5529a(8388613);
                }
            }
        }
    }

    public C12680t0(C12664s0 s0Var) {
        m5825a(s0Var);
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12602f0
    /* renamed from: a */
    public View mo5560a(boolean z, int i, String str, String str2, long j) {
        this.f28619y = z;
        this.f28617w = false;
        if (this.f28613s == null) {
            this.f28613s = new FrameLayout(this.f28409b);
            this.f28615u = new FrameLayout.LayoutParams(0, 0);
            FrameLayout.LayoutParams layoutParams = this.f28615u;
            layoutParams.gravity = 17;
            layoutParams.width = -1;
            layoutParams.height = -1;
        }
        if (this.f28619y) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(C14217x3.m2201a(256.0f), -2);
            layoutParams2.gravity = 17;
            this.f28606l = LayoutInflater.from(this.f28409b).inflate(R$layout.callenddialog_standard_multi_missing_call, (ViewGroup) null);
            ((LimitHeightLinearLayout) this.f28606l.findViewById(R$id.limit_layout_content)).m25916a(C12629k0.m5708g());
            this.f28606l.setOnClickListener(null);
            this.f28601g = new C12526a1(this.f28409b, this);
            ((ViewGroup) this.f28613s).removeAllViews();
            ((ViewGroup) this.f28613s).addView(this.f28606l, layoutParams2);
            this.f28606l.findViewById(R$id.call_btn_close).setOnClickListener(new View$OnClickListenerC12688g(this));
            m5538p();
            this.f28601g.m5944a(this.f28606l);
            CallStats.m28534h().m28539c().m28526E();
        } else {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(C14217x3.m2201a(256.0f), -2);
            layoutParams3.gravity = 17;
            this.f28606l = LayoutInflater.from(this.f28409b).inflate(R$layout.callenddialog_standard, (ViewGroup) null);
            this.f28606l.setOnClickListener(null);
            this.f28599e = new C12640p0(this.f28409b, this, new C12532b1(), (ViewGroup) this.f28606l.findViewById(R$id.mainpager));
            ((ViewGroup) this.f28613s).removeAllViews();
            ((ViewGroup) this.f28613s).addView(this.f28606l, layoutParams3);
            m5538p();
            CallStats.m28534h().m28539c().m28527D();
        }
        C14261f.m1968b(CallStats.m28534h().m28539c().m28487p());
        return this.f28613s;
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12602f0
    /* renamed from: a */
    public FrameLayout.LayoutParams mo5572a() {
        return this.f28614t;
    }

    /* renamed from: a */
    public String m5571a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public void m5570a(RowInfo rowInfo) {
        m5569a(rowInfo, (C12664s0.C12677k) null);
    }

    /* renamed from: a */
    public void m5569a(RowInfo rowInfo, @Nullable C12664s0.C12677k kVar) {
        C12640p0 p0Var;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        C12691j.EnumC12692a aVar;
        if (this.f28408a.m5619h() == C12664s0.EnumC12676j.CALL_DIALOG) {
            if (!CallUtils.m26566a(!CallStats.m28534h().m28539c().m28529B(), this.f28598d.m5492b().isContact)) {
                if (!this.f28598d.m5492b().isContact) {
                    m5541m();
                }
            } else if (C13878a3.m3209i()) {
                RowInfo rowInfo2 = this.f28611q;
                if (rowInfo2 == null || !rowInfo2.m28226g().m28372X() || rowInfo == null || rowInfo.m28226g().m28372X() || !rowInfo.m28226g().m28289w().m28280c()) {
                    this.f28611q = rowInfo;
                    RowInfo rowInfo3 = this.f28611q;
                    if (!(rowInfo3 == null || rowInfo3.m28226g() == null)) {
                        C14093n4.m2579a(this.f28611q, this.f28598d.m5492b().number);
                    }
                    if (rowInfo == null || rowInfo.m28226g() == null || rowInfo.m28224h().type != RowInfo.Primary.Type.WHOSCALLCARD_V2_V3) {
                        z2 = this.f28598d.m5503a(rowInfo, kVar);
                        z = false;
                    } else {
                        ((ViewGroup) this.f28612r).removeAllViews();
                        this.f28606l = C12541c1.m5939a(this.f28409b, this, rowInfo);
                        ((ViewGroup) this.f28612r).addView(this.f28606l);
                        this.f28605k = null;
                        m5546h();
                        z2 = true;
                        z = true;
                    }
                    if (z2 && kVar != null) {
                        kVar.m5574b();
                    }
                    String str = this.f28598d.m5492b().number;
                    if (rowInfo == null || rowInfo.m28226g() == null) {
                        z4 = false;
                        z3 = false;
                        z5 = false;
                        z6 = false;
                    } else {
                        z4 = rowInfo.m28224h().type == RowInfo.Primary.Type.SPOOF;
                        z3 = rowInfo.m28226g().m28290v0() && !this.f28610p.m28539c().m28529B();
                        z5 = rowInfo.m28226g().m28302p0();
                        z6 = rowInfo.m28226g().m28329f0();
                    }
                    C14289m.m1860d(str, rowInfo != null && rowInfo.m28221k());
                    boolean z7 = this.f28408a.m5625e() == EnumC12627j0.VIEW;
                    C12691j.EnumC12692a aVar2 = C12691j.EnumC12692a.NONE;
                    if (z4 || z3) {
                        aVar = z7 ? C12691j.EnumC12692a.TEXT : C12691j.EnumC12692a.BAR;
                    } else if (z5) {
                        aVar = C12691j.EnumC12692a.BAR;
                    } else {
                        aVar = aVar2;
                        if (rowInfo != null) {
                            aVar = aVar2;
                            if (rowInfo.m28220l()) {
                                aVar = z ? C12691j.EnumC12692a.BAR : z7 ? C12691j.EnumC12692a.NONE : C12691j.EnumC12692a.BAR;
                            }
                        }
                    }
                    C14080m2.m2615a(f28596z, "165, SN or offlineDb : Check bottom info, number=" + str + ", bottomSectionStyle=" + aVar + ", isWhoscallCard=" + z + ", isSpoofNumber=" + z4 + ", isIncomingSn=" + z3 + ", call current stat=" + this.f28610p.m28539c().m28508c());
                    if (aVar == C12691j.EnumC12692a.BAR) {
                        this.f28618x.m5525a(aVar, CallUtils.m26581a(rowInfo, false, z3));
                    } else {
                        this.f28618x.m5526a(aVar);
                    }
                    if (this.f28618x.m5530a()) {
                        if (z4 || z3) {
                            C14289m.m1887a(str, z4, z3, rowInfo.m28234d(), rowInfo.m28224h().name, rowInfo.m28226g().m28383M(), this.f28610p.m28539c().m28508c(), this.f28610p.m28539c().m28529B());
                        }
                        if (z4) {
                            this.f28618x.m5524a(m5571a(R$string.ndp_info_spoof_hint), z7 ? C14167t.m2314b() : -1);
                        } else if (z3) {
                            this.f28618x.m5524a(m5571a(C14093n4.m2573c(str)), z7 ? C14167t.m2314b() : -1);
                        } else {
                            int i = R$drawable.popup_logo;
                            if (z5) {
                                int e = z6 ? C14167t.m2311e() : -1;
                                if (z6) {
                                    i = R$drawable.ic_whoscall_gray;
                                }
                                this.f28618x.m5524a(m5571a(R$string.calldialog_bottom_verified_number), e);
                                this.f28618x.m5527a(GravityCompat.START, i, 2);
                                this.f28618x.m5529a(8388613);
                            } else if (rowInfo.m28226g().m28372X() && rowInfo.m28226g().m28289w().m28281b()) {
                                this.f28618x.m5524a(m5571a(R$string.calldialog_bottom_offlinedb), -1);
                                this.f28618x.m5528a(GravityCompat.START, R$drawable.ic_dialog_offlinedb);
                                this.f28618x.m5527a(8388613, R$drawable.popup_logo, 2);
                            }
                        }
                        this.f28608n.setVisibility(8);
                    }
                    int i2 = -1;
                    if (rowInfo != null && rowInfo.m28226g().m28296s0()) {
                        if (this.f28408a.m5625e() != EnumC12627j0.VIEW) {
                            m5540n();
                        }
                        if (this.f28618x.m5530a()) {
                            RowInfo.MetaphorType metaphorType = rowInfo.m28231e().get(0);
                            int i3 = 2;
                            if (metaphorType != RowInfo.MetaphorType.SPAM) {
                                i3 = metaphorType == RowInfo.MetaphorType.SPOOF ? 2 : 3;
                            }
                            C13190o.m4446a(i3);
                        } else {
                            C13190o.m4446a(1);
                        }
                        if (!C14108o4.m2496a(rowInfo.m28228f(), C14108o4.EnumC14110b.CALL)) {
                            int i4 = 0;
                            if (C14063l4.m2685a(rowInfo.m28224h(), false)) {
                                this.f28618x.m5525a(z7 ? C12691j.EnumC12692a.TEXT : C12691j.EnumC12692a.BAR, CallUtils.m26580a(rowInfo, false, z3, true));
                                C12691j jVar = this.f28618x;
                                String a = m5571a(R$string.cd_bottombar_offlinedb_expired);
                                if (z7) {
                                    i2 = C14167t.m2314b();
                                }
                                jVar.m5524a(a, i2);
                                if (z7) {
                                    this.f28618x.m5529a(GravityCompat.START);
                                } else {
                                    this.f28618x.m5528a(GravityCompat.START, R$drawable.ic_warning_bar);
                                }
                                this.f28618x.m5529a(8388613);
                                View view = this.f28608n;
                                if (z7) {
                                    i4 = 8;
                                }
                                view.setVisibility(i4);
                            }
                        }
                    }
                    C14037j3.m2731a().mo2704a(new C13983e0(this.f28598d.m5492b().number, rowInfo));
                }
            }
        } else if (this.f28408a.m5619h() == C12664s0.EnumC12676j.CALLEND_DIALOG && (p0Var = this.f28599e) != null && (this.f28409b instanceof Activity)) {
            p0Var.m5675b(rowInfo);
        }
    }

    /* renamed from: a */
    public final void m5562a(String str, int i, int i2, String str2) {
        this.f28606l.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC12684d(str2, str, i, i2));
    }

    /* renamed from: a */
    public void m5561a(boolean z) {
        m5555b(z, null);
    }

    /* renamed from: a */
    public void m5559a(boolean z, String str) {
        if (this.f28602h != null && this.f28604j != null) {
            if (!z || !C14217x3.m2107z()) {
                this.f28602h.setVisibility(8);
                this.f28604j.setVisibility(8);
                if (this.f28408a.m5625e() == EnumC12627j0.VIEW) {
                    C14037j3.m2731a().mo2704a(new C13934c0(false, str));
                }
            } else if (this.f28408a.m5625e() == EnumC12627j0.VIEW) {
                this.f28602h.setVisibility(8);
                this.f28604j.setVisibility(8);
                C14037j3.m2731a().mo2704a(new C13934c0(true, str));
            } else {
                this.f28602h.setVisibility(0);
                this.f28604j.setVisibility(0);
            }
        }
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12602f0
    /* renamed from: b */
    public View mo5558b() {
        this.f28609o = 1;
        if (this.f28612r == null) {
            this.f28612r = new C12681a(this.f28409b);
            this.f28614t = new FrameLayout.LayoutParams(0, 0);
            this.f28614t.width = C12629k0.m5709f();
            FrameLayout.LayoutParams layoutParams = this.f28614t;
            layoutParams.height = -2;
            layoutParams.gravity = 49;
        }
        this.f28606l = LayoutInflater.from(this.f28409b).inflate(R$layout.calldialog_standard, (ViewGroup) null);
        this.f28603i = (ViewGroup) this.f28606l.findViewById(R$id.rl_main);
        this.f28604j = this.f28606l.findViewById(R$id.dummy_mainpager);
        this.f28602h = (ViewPager) this.f28606l.findViewById(R$id.maskpager);
        this.f28605k = (FrameLayout) this.f28606l.findViewById(R$id.mainpager);
        this.f28608n = this.f28606l.findViewById(R$id.iv_copyright);
        this.f28618x = new C12691j(this.f28606l);
        if (this.f28408a.m5625e() == EnumC12627j0.VIEW) {
            this.f28603i.setBackground(null);
            this.f28608n.setVisibility(8);
        }
        ((ViewGroup) this.f28612r).removeAllViews();
        ((ViewGroup) this.f28612r).addView(this.f28606l);
        m5546h();
        C13921a a = C13921a.m3037a(C13921a.EnumC13926e.CD);
        a.m3035a("Method = getCallDialog -  after view init, foregroundNumber=" + this.f28610p.m28539c().m28494i());
        this.f28598d = new C12707z0(this.f28409b, this, this.f28605k);
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = getCallDialog -  after call adapter init");
        this.f28597c = new C12705y0(this.f28409b);
        this.f28602h.m25751a(this.f28597c);
        this.f28602h.m25748b(1);
        this.f28602h.m25752a(new C12682b());
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = getCallDialog -  after block pager init");
        if (AdUtils.m28808b(CallStats.m28534h().m28539c().m28495h())) {
            NativeAdHelper.m28749v(this.f28409b);
        } else {
            NativeAdHelper.m28760k(this.f28409b);
        }
        this.f28600f = new DialogC13655b(this.f28409b, new C12683c());
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = getCallDialog -  after load AD [AdFetcher.getInstance().loadAdPostCallAd()] ");
        CallStats.m28534h().m28539c().m28528C();
        return this.f28612r;
    }

    /* renamed from: b */
    public void m5556b(boolean z) {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewWrapper] stop() invoked");
        if (this.f28613s != null) {
            C14247d.m2061b(AdUnit.CALL_END_FULL);
            C14247d.m2061b(AdUnit.CALL_END_BANNER);
            C14247d.m2061b(AdUnit.CALL_END_DIALOG);
            C6192e.m23607a(AdUnit.CALL_END_FULL.m28821a()).m23594h();
            C6192e.m23607a(AdUnit.CALL_END_BANNER.m28821a()).m23594h();
            C6192e.m23607a(AdUnit.CALL_END_DIALOG.m28821a()).m23594h();
            C12715a.m5471a(0);
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewWrapper] remove PostCallAdsListener");
        }
        AbstractC6207d dVar = this.f28616v;
        if (dVar != null) {
            dVar.mo23568b();
            this.f28616v = null;
        }
        if (this.f28600f != null) {
            this.f28600f = null;
        }
        this.f28408a.m5634a(z);
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewWrapper] stop() end");
    }

    /* renamed from: b */
    public void m5555b(boolean z, @Nullable String str) {
        if (z) {
            this.f28408a.m5595t();
        } else {
            this.f28408a.m5636a(str);
        }
    }

    @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12602f0
    /* renamed from: c */
    public FrameLayout.LayoutParams mo5554c() {
        return this.f28615u;
    }

    /* renamed from: f */
    public final void m5550f() {
        View view = this.f28607m;
        if (view != null) {
            try {
                ((ViewGroup) this.f28612r).removeView(view);
            } catch (Throwable th) {
            }
        }
    }

    @Nullable
    /* renamed from: g */
    public DialogC13655b m5548g() {
        return this.f28600f;
    }

    /* renamed from: h */
    public final void m5546h() {
        View view = this.f28606l;
        if (view instanceof CallDialogLinearLayout) {
            this.f28618x = new C12691j(view);
            ((CallDialogLinearLayout) this.f28606l).m25933a(null, new C12686e());
            if (this.f28408a.m5625e() != EnumC12627j0.VIEW) {
                ((CallDialogLinearLayout) this.f28606l).m25935a(new C12687f());
            }
        }
    }

    /* renamed from: i */
    public void m5545i() {
        if (this.f28408a.m5619h() == C12664s0.EnumC12676j.CALL_DIALOG) {
            RowInfo rowInfo = this.f28611q;
            RowInfo rowInfo2 = null;
            if (rowInfo != null) {
                rowInfo2 = null;
                if (rowInfo.m28234d() != null) {
                    rowInfo2 = null;
                    if (this.f28611q.m28234d().equals(C14108o4.m2474l(this.f28598d.m5492b().number))) {
                        rowInfo2 = this.f28611q;
                    }
                }
            }
            if (!(rowInfo2 == null || rowInfo2.m28226g() == null)) {
                if (rowInfo2.m28224h().type.equals(RowInfo.Primary.Type.WHOSCALLCARD_V2_V3)) {
                    return;
                }
                if (rowInfo2.m28226g().m28308m0() && (rowInfo2.m28224h().type.equals(RowInfo.Primary.Type.MYTAG) || rowInfo2.m28224h().type.equals(RowInfo.Primary.Type.NOTE))) {
                    return;
                }
            }
            this.f28598d.m5480e(rowInfo2);
            return;
        }
        this.f28408a.m5619h();
        C12664s0.EnumC12676j jVar = C12664s0.EnumC12676j.CALLEND_DIALOG;
    }

    /* renamed from: j */
    public void m5544j() {
        this.f28408a.m5615j();
    }

    /* renamed from: k */
    public void m5543k() {
        this.f28408a.m5609m();
    }

    /* renamed from: l */
    public void m5542l() {
        C12640p0 p0Var = this.f28599e;
        if (p0Var != null) {
            p0Var.m5703a();
        }
        C14037j3.m2731a().mo2704a(new C14058l0());
    }

    /* renamed from: m */
    public final void m5541m() {
        int c = C13915b3.m3053c("calldialog_open_cd_popup_tip_times");
        if (c < 3) {
            m5562a("calldialog_open_cd_popup_tip_times", 3, c, C14206w4.m2225a((int) R$string.incall_open_dialog_popup_tips_text));
        }
    }

    /* renamed from: n */
    public final void m5540n() {
        int c = C13915b3.m3053c("calldialog_tip_times");
        if (c < 3 && !C12629k0.m5706i()) {
            m5562a("calldialog_tip_times", 3, c, null);
        }
    }

    /* renamed from: o */
    public void m5539o() {
        boolean a = C12518a.m5962a().m5960a(this.f28409b, C12518a.EnumC12519a.SLIDE_TO_BLOCK);
        this.f28408a.m5634a(true);
        CallStats.BlockResult blockResult = a ? CallStats.BlockResult.SUCCESS : CallStats.BlockResult.FAILURE;
        this.f28610p.m28539c().m28521a(blockResult);
        String i = this.f28610p.m28539c().m28494i();
        String l = C14108o4.m2474l(i);
        String str = i;
        if (C14108o4.m2496a(i, C14108o4.EnumC14110b.CALL)) {
            str = m5571a(R$string.unknown_number);
        }
        RowInfo rowInfo = this.f28611q;
        String C = rowInfo == null ? "" : rowInfo.m28226g().m28393C();
        RowInfo rowInfo2 = this.f28611q;
        C12928g.m4987a(this.f28409b, false, false, false, str, null, 1, new DataUserReport(str, l, C, rowInfo2 == null ? "" : rowInfo2.m28226g().m28383M(), DataUserReport.Source.CALL), null, false, blockResult == CallStats.BlockResult.SUCCESS, null, null, null, -1);
        C14289m.m1909a(9, 1, l);
    }

    /* renamed from: p */
    public void m5538p() {
        if (!this.f28617w && AdStatusController.m28827c().m28831a() && AdUtils.m28816a(this.f28409b)) {
            this.f28617w = true;
            StandardPostCallAds.m28734b().m28738a(this.f28409b, (ViewGroup) this.f28613s, new C12689h());
        }
    }

    /* renamed from: q */
    public void m5537q() {
        C12707z0 z0Var = this.f28598d;
        if (z0Var != null && this.f28610p != null) {
            String str = z0Var.m5492b().number;
            boolean B = CallStats.m28534h().m28539c().m28529B();
            boolean z = true;
            if (TextUtils.isEmpty(str) || !C14093n4.m2569f(str) || C14108o4.m2475k(str)) {
                z = false;
            }
            if ((!B) && z) {
                NumberInfo numberInfo = new NumberInfo();
                numberInfo.m28326g("FPN");
                this.f28598d.m5503a(RowInfo.m28240b(str, numberInfo), (C12664s0.C12677k) null);
            }
        }
    }

    /* renamed from: r */
    public void m5536r() {
        C12707z0 z0Var;
        if (this.f28618x != null && (z0Var = this.f28598d) != null && this.f28610p != null) {
            String str = z0Var.m5492b().number;
            boolean z = this.f28408a.m5625e() == EnumC12627j0.VIEW;
            if (this.f28598d.m5492b().isIncomingSuspiciousNumber) {
                if (z) {
                    this.f28618x.m5526a(C12691j.EnumC12692a.TEXT);
                } else {
                    this.f28618x.m5525a(C12691j.EnumC12692a.BAR, CallUtils.m26581a((RowInfo) null, C14217x3.m2133i(this.f28409b, str), true));
                }
                this.f28618x.m5524a(m5571a(C14093n4.m2573c(str)), z ? C14167t.m2314b() : -1);
            }
        }
    }
}
