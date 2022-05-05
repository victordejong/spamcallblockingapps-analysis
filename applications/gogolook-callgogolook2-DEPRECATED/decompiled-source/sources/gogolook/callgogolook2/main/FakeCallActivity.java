package gogolook.callgogolook2.main;

import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.util.ProgressWheel;
import gogolook.callgogolook2.view.CallDialogLinearLayout;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p521j0.p522u.p523d.C12629k0;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity.class */
public class FakeCallActivity extends WhoscallActivity {

    /* renamed from: r */
    public static int f11021r = 16000;

    /* renamed from: s */
    public static int f11022s = 8000;

    /* renamed from: t */
    public static int f11023t = 500;

    /* renamed from: u */
    public static int f11024u = 1500;

    /* renamed from: v */
    public static final long[] f11025v = {1000, 1500};

    /* renamed from: e */
    public boolean f11026e = false;

    /* renamed from: f */
    public boolean f11027f = false;

    /* renamed from: g */
    public FrameLayout f11028g;

    /* renamed from: h */
    public WindowManager f11029h;

    /* renamed from: i */
    public WindowManager.LayoutParams f11030i;

    /* renamed from: j */
    public FrameLayout f11031j;

    /* renamed from: k */
    public TextView f11032k;

    /* renamed from: l */
    public View f11033l;

    /* renamed from: m */
    public TextView f11034m;
    @BindView(R$id.imgv_close)
    public ImageView mImgvClose;
    @BindView(R$id.rl_all)
    public View mRlALL;
    @BindView(R$id.txv_content)
    public TextView mTxvContent;

    /* renamed from: n */
    public ProgressWheel f11035n;

    /* renamed from: o */
    public View f11036o;

    /* renamed from: p */
    public String f11037p;

    /* renamed from: q */
    public Vibrator f11038q;

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$a.class */
    public class View$OnClickListenerC4567a implements View.OnClickListener {
        public View$OnClickListenerC4567a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FakeCallActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$b.class */
    public class RunnableC4568b implements Runnable {
        public RunnableC4568b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!FakeCallActivity.this.f11026e) {
                FakeCallActivity.this.finish();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$c.class */
    public class RunnableC4569c implements Runnable {
        public RunnableC4569c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!FakeCallActivity.this.f11026e) {
                FakeCallActivity.this.mTxvContent.setText(R$string.fake_call_already_know);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$d.class */
    public class RunnableC4570d implements Runnable {
        public RunnableC4570d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FakeCallActivity.this.m27892o();
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$e.class */
    public class C4571e extends FrameLayout {

        /* renamed from: a */
        public final /* synthetic */ View f11043a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4571e(FakeCallActivity fakeCallActivity, Context context, View view) {
            super(context);
            this.f11043a = view;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            View view = this.f11043a;
            if (view instanceof CallDialogLinearLayout) {
                ((CallDialogLinearLayout) view).m25936a(view.getHeight());
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$f.class */
    public class C4572f implements CallDialogLinearLayout.AbstractC5272d {
        public C4572f() {
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5272d
        /* renamed from: a */
        public void mo5535a(View view, Object obj) {
            if (!FakeCallActivity.this.f11026e) {
                try {
                    if (FakeCallActivity.this.f11027f) {
                        FakeCallActivity.this.f11029h.removeView(FakeCallActivity.this.f11028g);
                        FakeCallActivity.this.f11027f = false;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                FakeCallActivity.this.mTxvContent.setText(R$string.fake_call_already_know);
            }
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5272d
        /* renamed from: a */
        public boolean mo5534a(Object obj) {
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$g.class */
    public class C4573g implements CallDialogLinearLayout.AbstractC5273e {

        /* renamed from: a */
        public float f11045a = 0.0f;

        public C4573g() {
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5273e
        /* renamed from: a */
        public void mo5533a() {
            this.f11045a = FakeCallActivity.this.f11030i.y;
        }

        @Override // gogolook.callgogolook2.view.CallDialogLinearLayout.AbstractC5273e
        /* renamed from: a */
        public void mo5532a(float f) {
            FakeCallActivity.this.f11030i.y = (int) (this.f11045a + f);
            FakeCallActivity.this.f11029h.updateViewLayout(FakeCallActivity.this.f11028g, FakeCallActivity.this.f11030i);
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$h.class */
    public class RunnableC4574h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f11047a;

        /* renamed from: b */
        public final /* synthetic */ View f11048b;

        /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$h$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$h$a.class */
        public class View$OnTouchListenerC4575a implements View.OnTouchListener {

            /* renamed from: a */
            public final /* synthetic */ View f11050a;

            public View$OnTouchListenerC4575a(View view) {
                this.f11050a = view;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                ((ViewGroup) RunnableC4574h.this.f11048b).removeView(this.f11050a);
                return false;
            }
        }

        public RunnableC4574h(View view, View view2) {
            this.f11047a = view;
            this.f11048b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            FakeCallActivity.this.m27890q();
            View inflate = LayoutInflater.from(FakeCallActivity.this).inflate(R$layout.calldialog_standard_tips, (ViewGroup) null);
            ((TextView) inflate.findViewById(R$id.call_txt_tip)).setText(R$string.fake_call_popup_identified);
            View findViewById = this.f11047a.findViewById(R$id.call_main);
            if (findViewById != null && inflate != null) {
                ((ViewGroup) this.f11048b).addView(inflate);
                inflate.setPadding(0, findViewById.getHeight(), 0, 0);
                inflate.setOnTouchListener(new View$OnTouchListenerC4575a(inflate));
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.main.FakeCallActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/main/FakeCallActivity$i.class */
    public class View$OnClickListenerC4576i implements View.OnClickListener {
        public View$OnClickListenerC4576i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!FakeCallActivity.this.f11026e) {
                try {
                    if (FakeCallActivity.this.f11027f) {
                        FakeCallActivity.this.f11029h.removeView(FakeCallActivity.this.f11028g);
                        FakeCallActivity.this.f11027f = false;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                FakeCallActivity.this.mTxvContent.setText(R$string.fake_call_already_know);
            }
        }
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity
    /* renamed from: h */
    public int mo27893h() {
        return Color.parseColor("#000000");
    }

    /* renamed from: o */
    public final void m27892o() {
        this.f11028g = new FrameLayout(this);
        this.f11030i = new WindowManager.LayoutParams();
        WindowManager.LayoutParams layoutParams = this.f11030i;
        layoutParams.width = -1;
        layoutParams.height = -2;
        layoutParams.type = C6298e.m23356a(2010);
        WindowManager.LayoutParams layoutParams2 = this.f11030i;
        layoutParams2.flags = 2097160;
        layoutParams2.flags |= 4194304;
        layoutParams2.screenOrientation = 3;
        layoutParams2.format = -2;
        layoutParams2.gravity = 1;
        layoutParams2.flags &= -129;
        layoutParams2.windowAnimations = 16973824;
        layoutParams2.gravity = 49;
        layoutParams2.y = C12629k0.m5712c();
        this.f11027f = C13878a3.m3236a(this.f11029h, this.f11028g, this.f11030i);
        View inflate = LayoutInflater.from(this).inflate(R$layout.calldialog_standard, (ViewGroup) null);
        C4571e eVar = new C4571e(this, this, inflate);
        CallDialogLinearLayout callDialogLinearLayout = (CallDialogLinearLayout) inflate;
        callDialogLinearLayout.m25933a(null, new C4572f());
        callDialogLinearLayout.m25935a(new C4573g());
        eVar.addView(inflate);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(0, 0);
        layoutParams3.width = C12629k0.m5709f();
        layoutParams3.height = -2;
        layoutParams3.gravity = 49;
        this.f11028g.addView(eVar, layoutParams3);
        View findViewById = inflate.findViewById(R$id.dummy_mainpager);
        View findViewById2 = inflate.findViewById(R$id.maskpager);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R$id.mainpager);
        findViewById.setVisibility(8);
        findViewById2.setVisibility(8);
        this.f11031j = frameLayout;
        if (this.f11031j.getChildCount() == 0) {
            this.f11031j.addView(LayoutInflater.from(this).inflate(R$layout.calldialog_standard_body, (ViewGroup) null), -1, -2);
        }
        this.f11032k = (TextView) frameLayout.findViewById(2131363467);
        this.f11033l = frameLayout.findViewById(R$id.ll_second);
        this.f11034m = (TextView) frameLayout.findViewById(2131363555);
        this.f11035n = (ProgressWheel) frameLayout.findViewById(R$id.pb_second);
        this.f11036o = frameLayout.findViewById(R$id.tv_fourth);
        this.f11036o.setVisibility(8);
        m27891p();
        new Handler().postDelayed(new RunnableC4574h(inflate, eVar), f11024u);
        inflate.findViewById(R$id.call_btn_close).setOnClickListener(new View$OnClickListenerC4576i());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setWindowAnimations(0);
        m28683i().m6031d();
        this.f11026e = false;
        this.f11029h = (WindowManager) getSystemService("window");
        m27889r();
        setContentView(R$layout.fake_call_activity);
        ButterKnife.bind(this);
        this.mImgvClose.setOnClickListener(new View$OnClickListenerC4567a());
        Handler handler = new Handler();
        handler.postDelayed(new RunnableC4568b(), f11021r);
        handler.postDelayed(new RunnableC4569c(), f11022s);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            if (this.f11027f) {
                this.f11029h.removeView(this.f11028g);
                this.f11027f = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f11038q.cancel();
        this.f11026e = true;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        try {
            if (this.f11027f) {
                this.f11029h.removeView(this.f11028g);
                this.f11027f = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f11038q.cancel();
        finish();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (C13878a3.m3250a()) {
            new Handler().postDelayed(new RunnableC4570d(), f11023t);
        }
        this.f11038q = (Vibrator) getSystemService("vibrator");
        this.f11038q.vibrate(f11025v, 0);
    }

    /* renamed from: p */
    public final void m27891p() {
        RecycleSafeImageView recycleSafeImageView = (RecycleSafeImageView) this.f11031j.findViewById(R$id.iv_metaphor);
        if (recycleSafeImageView != null) {
            recycleSafeImageView.setImageResource(C13909c.m3071b().m3077v().m3069a());
        }
        this.f11032k.setVisibility(0);
        this.f11034m.setVisibility(0);
        this.f11035n.setVisibility(0);
        this.f11032k.setText(R$string.fake_call_dialog_number);
        this.f11033l.setVisibility(0);
        this.f11034m.setText(C14206w4.m2225a((int) R$string.calldialog_searching) + "...");
    }

    /* renamed from: q */
    public final void m27890q() {
        RecycleSafeImageView recycleSafeImageView = (RecycleSafeImageView) this.f11031j.findViewById(R$id.iv_metaphor);
        if (recycleSafeImageView != null) {
            recycleSafeImageView.setImageResource(R$drawable.metaphor_ndp_fake_call);
        }
        this.f11032k.setVisibility(0);
        this.f11034m.setVisibility(0);
        this.f11035n.setVisibility(8);
        this.f11032k.setText(R$string.fake_call_dialog_name);
        this.f11034m.setText(R$string.fake_call_dialog_category);
        TextView textView = (TextView) this.f11036o.findViewById(R$id.call_number);
        View findViewById = this.f11036o.findViewById(R$id.call_geo_bar);
        TextView textView2 = (TextView) this.f11036o.findViewById(R$id.call_geo);
        View findViewById2 = this.f11036o.findViewById(R$id.call_telecom_bar);
        TextView textView3 = (TextView) this.f11036o.findViewById(R$id.call_telecom);
        this.f11036o.setVisibility(0);
        textView.setText(R$string.fake_call_dialog_number);
        findViewById.setVisibility(8);
        textView2.setVisibility(8);
        findViewById2.setVisibility(8);
        textView3.setVisibility(8);
    }

    /* renamed from: r */
    public final void m27889r() {
        this.f11037p = getIntent().getStringExtra("source");
        if (this.f11037p == null) {
            this.f11037p = "unknown";
        }
    }
}
