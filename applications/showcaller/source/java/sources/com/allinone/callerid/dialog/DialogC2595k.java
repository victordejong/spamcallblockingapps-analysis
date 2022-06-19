package com.allinone.callerid.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p162i.p163a.p186p.AbstractC2926b;
import com.allinone.callerid.p162i.p163a.p186p.C2927c;
import com.allinone.callerid.util.C3711a1;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3772i0;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.dialog.k */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/k.class */
public class DialogC2595k extends Dialog implements View.OnClickListener {

    /* renamed from: d */
    private Context f9035d;

    /* renamed from: e */
    private TextView f9036e;

    /* renamed from: f */
    private TextView f9037f;

    /* renamed from: g */
    private ImageView f9038g;

    /* renamed from: h */
    private ImageView f9039h;

    /* renamed from: i */
    private ImageView f9040i;

    /* renamed from: j */
    private ImageView f9041j;

    /* renamed from: k */
    private ImageView f9042k;

    /* renamed from: l */
    private Handler f9043l = new Handler();

    /* renamed from: m */
    private boolean f9044m;

    /* renamed from: n */
    private ImageView f9045n;

    /* renamed from: o */
    private FrameLayout f9046o;

    /* renamed from: p */
    private TextView f9047p;

    /* renamed from: q */
    private boolean f9048q;

    /* renamed from: r */
    private ImageView f9049r;

    /* renamed from: s */
    private LinearLayout f9050s;

    /* renamed from: com.allinone.callerid.dialog.k$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/k$a.class */
    class C2596a implements AbstractC2926b {
        C2596a() {
            DialogC2595k.this = r4;
        }

        @Override // com.allinone.callerid.p162i.p163a.p186p.AbstractC2926b
        /* renamed from: a */
        public void mo25756a(String str, int i) {
            String str2 = str;
            if ("0".equals(str)) {
                str2 = "1";
            }
            TextView textView = DialogC2595k.this.f9036e;
            textView.setText(str2 + " " + DialogC2595k.this.f9035d.getResources().getString(R$string.callers_blocked));
        }
    }

    /* renamed from: com.allinone.callerid.dialog.k$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/k$b.class */
    public class RunnableC2597b implements Runnable {
        RunnableC2597b() {
            DialogC2595k.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C3711a1.m24635H()) {
                C3711a1.m24571X1(System.currentTimeMillis() + 604800000);
                return;
            }
            C3711a1.m24571X1(System.currentTimeMillis() + 259200000);
            C3711a1.m24518l1(false);
        }
    }

    /* renamed from: com.allinone.callerid.dialog.k$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/dialog/k$c.class */
    public class RunnableC2598c implements Runnable {
        RunnableC2598c() {
            DialogC2595k.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3810q.m24071b().m24070c("rate_dialog_click_goto_rate");
            C3711a1.m24574W1(false);
            C3767h1.m24291D0(DialogC2595k.this.f9035d, C3767h1.m24275M(DialogC2595k.this.f9035d));
            DialogC2595k.this.dismiss();
        }
    }

    public DialogC2595k(Context context, int i, boolean z) {
        super(context, i);
        this.f9035d = context;
        this.f9044m = z;
    }

    /* renamed from: c */
    private void m27049c() {
        this.f9043l.postDelayed(new RunnableC2598c(), 500L);
    }

    /* renamed from: d */
    private void m27048d() {
        C3810q.m24071b().m24070c("rate_dialog_click_goto_feedback");
        C3711a1.m24574W1(false);
        try {
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse("mailto:andreapps2015@gmail.com"));
            intent.putExtra("android.intent.extra.SUBJECT", "Showcaller-Feedback");
            intent.putExtra("android.intent.extra.TEXT", C3767h1.m24266V());
            intent.setFlags(268435456);
            this.f9035d.startActivity(intent);
        } catch (Exception e) {
            try {
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType("message/rfc822");
                intent2.putExtra("android.intent.extra.EMAIL", new String[]{"andreapps2015@gmail.com"});
                intent2.putExtra("android.intent.extra.SUBJECT", "Showcaller-Feedback");
                intent2.putExtra("android.intent.extra.TEXT", C3767h1.m24266V());
                this.f9035d.startActivity(Intent.createChooser(intent2, "E-mail"));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: e */
    private void m27047e() {
        if (this.f9048q) {
            this.f9047p.setText(this.f9035d.getResources().getString(R$string.suggest_submit));
            this.f9037f.setText(this.f9035d.getResources().getString(R$string.rate_star_tip));
        } else {
            this.f9047p.setText(this.f9035d.getResources().getString(R$string.feedback));
            this.f9037f.setText(this.f9035d.getResources().getString(R$string.feedback_tips));
        }
        if (this.f9046o.getVisibility() == 8) {
            this.f9046o.setVisibility(0);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        C3772i0.m24190a().f12015b.execute(new RunnableC2597b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131296817) {
            if (this.f9048q) {
                m27049c();
                return;
            }
            m27048d();
            dismiss();
        } else if (id == 2131297134) {
            C3810q.m24071b().m24070c("rate_dialog_close_button_click_new");
            dismiss();
        } else {
            switch (id) {
                case R$id.iv_star1 /* 2131297068 */:
                    this.f9048q = false;
                    this.f9042k.clearAnimation();
                    this.f9049r.clearAnimation();
                    this.f9049r.setVisibility(8);
                    this.f9038g.setImageResource(R$drawable.star_yell);
                    this.f9039h.setImageResource(R$drawable.star_default);
                    this.f9040i.setImageResource(R$drawable.star_default);
                    this.f9041j.setImageResource(R$drawable.star_default);
                    this.f9042k.setImageResource(R$drawable.star_default);
                    this.f9045n.setImageResource(R$drawable.iv_not_star);
                    m27047e();
                    C3810q.m24071b().m24070c("click_star_new");
                    return;
                case R$id.iv_star2 /* 2131297069 */:
                    this.f9048q = false;
                    this.f9042k.clearAnimation();
                    this.f9049r.clearAnimation();
                    this.f9049r.setVisibility(8);
                    this.f9038g.setImageResource(R$drawable.star_yell);
                    this.f9039h.setImageResource(R$drawable.star_yell);
                    this.f9040i.setImageResource(R$drawable.star_default);
                    this.f9041j.setImageResource(R$drawable.star_default);
                    this.f9042k.setImageResource(R$drawable.star_default);
                    this.f9045n.setImageResource(R$drawable.iv_not_star);
                    m27047e();
                    C3810q.m24071b().m24070c("click_star_new");
                    return;
                case R$id.iv_star3 /* 2131297070 */:
                    this.f9048q = false;
                    this.f9042k.clearAnimation();
                    this.f9049r.clearAnimation();
                    this.f9049r.setVisibility(8);
                    this.f9038g.setImageResource(R$drawable.star_yell);
                    this.f9039h.setImageResource(R$drawable.star_yell);
                    this.f9040i.setImageResource(R$drawable.star_yell);
                    this.f9041j.setImageResource(R$drawable.star_default);
                    this.f9042k.setImageResource(R$drawable.star_default);
                    this.f9045n.setImageResource(R$drawable.iv_not_star);
                    m27047e();
                    C3810q.m24071b().m24070c("click_star_new");
                    return;
                case R$id.iv_star4 /* 2131297071 */:
                    this.f9048q = false;
                    this.f9042k.clearAnimation();
                    this.f9049r.clearAnimation();
                    this.f9049r.setVisibility(8);
                    this.f9038g.setImageResource(R$drawable.star_yell);
                    this.f9039h.setImageResource(R$drawable.star_yell);
                    this.f9040i.setImageResource(R$drawable.star_yell);
                    this.f9041j.setImageResource(R$drawable.star_yell);
                    this.f9042k.setImageResource(R$drawable.star_default);
                    this.f9045n.setImageResource(R$drawable.iv_not_star);
                    m27047e();
                    C3810q.m24071b().m24070c("click_star_new");
                    return;
                case R$id.iv_star5 /* 2131297072 */:
                    this.f9048q = true;
                    this.f9042k.clearAnimation();
                    this.f9049r.clearAnimation();
                    this.f9049r.setVisibility(8);
                    this.f9038g.setImageResource(R$drawable.star_yell);
                    this.f9039h.setImageResource(R$drawable.star_yell);
                    this.f9040i.setImageResource(R$drawable.star_yell);
                    this.f9041j.setImageResource(R$drawable.star_yell);
                    this.f9042k.setImageResource(R$drawable.star_yell);
                    this.f9045n.setImageResource(R$drawable.iv_star);
                    m27047e();
                    C3810q.m24071b().m24070c("click_five_star_new");
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C3767h1.m24281I0(this.f9035d, EZCallApplication.m26146c().f9914h);
        setContentView(R$layout.dialog_rate_new);
        if (C3767h1.m24250f0(this.f9035d).booleanValue() && Build.VERSION.SDK_INT >= 17 && getWindow() != null) {
            getWindow().getDecorView().setLayoutDirection(1);
        }
        Typeface m24359b = C3739f1.m24359b();
        ImageView imageView = (ImageView) findViewById(R$id.lib_close);
        this.f9050s = (LinearLayout) findViewById(R$id.ll_dialog);
        this.f9045n = (ImageView) findViewById(R$id.iv_star_status);
        this.f9046o = (FrameLayout) findViewById(R$id.flayout_enable);
        this.f9047p = (TextView) findViewById(R$id.tv_enable);
        TextView textView = (TextView) findViewById(R$id.tv_rate_tips);
        this.f9036e = textView;
        textView.setTypeface(m24359b);
        TextView textView2 = (TextView) findViewById(R$id.tv_rate_tips1);
        this.f9037f = textView2;
        textView2.setTypeface(m24359b);
        ((TextView) findViewById(R$id.tv_great)).setTypeface(m24359b);
        this.f9038g = (ImageView) findViewById(R$id.iv_star1);
        this.f9039h = (ImageView) findViewById(R$id.iv_star2);
        this.f9040i = (ImageView) findViewById(R$id.iv_star3);
        this.f9041j = (ImageView) findViewById(R$id.iv_star4);
        this.f9042k = (ImageView) findViewById(R$id.iv_star5);
        this.f9049r = (ImageView) findViewById(R$id.iv_outline);
        this.f9038g.setOnClickListener(this);
        this.f9039h.setOnClickListener(this);
        this.f9040i.setOnClickListener(this);
        this.f9041j.setOnClickListener(this);
        this.f9042k.setOnClickListener(this);
        this.f9046o.setOnClickListener(this);
        imageView.setOnClickListener(this);
        int m24479v0 = C3711a1.m24479v0();
        if (m24479v0 == 0) {
            m24479v0 = 1;
        }
        if (this.f9044m) {
            C2927c.m26404b(new C2596a());
        } else {
            this.f9036e.setText(m24479v0 + " " + this.f9035d.getResources().getString(R$string.callers_identified));
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.f9035d, R$anim.iv_scale_rate);
        loadAnimation.setInterpolator(new LinearInterpolator());
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.f9035d, R$anim.iv_scale_rate_out);
        loadAnimation2.setInterpolator(new LinearInterpolator());
        this.f9042k.startAnimation(loadAnimation);
        this.f9049r.startAnimation(loadAnimation2);
        C3810q.m24071b().m24070c("rate_dialog_show_counts");
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("tony", "KEYCODE_BACK");
                }
                C3810q.m24071b().m24070c("rate_dialog_close_back_click_new");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (motionEvent.getX() >= -10.0f && motionEvent.getY() >= -10.0f && motionEvent.getX() < this.f9050s.getWidth() + 10 && motionEvent.getY() < this.f9050s.getHeight() + 20) {
                return true;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "ACTION_OUTSIDE");
            }
            C3810q.m24071b().m24070c("rate_dialog_close_without_click_new");
            dismiss();
            return true;
        }
        return true;
    }
}
