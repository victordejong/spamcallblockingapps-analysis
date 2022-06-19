package com.kedlin.cca.p007ui.startwizard;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import com.kedlin.cca.p007ui.Slide;
import com.kedlin.cca.p007ui.startwizard.FirstStartWizardCreateAccountSlide;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p000.u91;
import p000.v91;
/* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardCreateAccountSlide */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide.class */
public class FirstStartWizardCreateAccountSlide extends Slide {

    /* renamed from: a */
    public MainActivity f4075a;

    /* renamed from: b */
    public ScheduledExecutorService f4076b;

    /* renamed from: c */
    public PopupWindow f4077c;

    /* renamed from: d */
    public AlertDialog f4078d;

    /* renamed from: f */
    public boolean f4079f = false;

    /* renamed from: g */
    public View.OnClickListener f4080g = new View.OnClickListener() { // from class: qd1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FirstStartWizardCreateAccountSlide.this.m4102k(view);
        }
    };

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardCreateAccountSlide$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$a.class */
    public class C0702a implements u91.AbstractC1686i {
        public C0702a() {
            FirstStartWizardCreateAccountSlide.this = r4;
        }

        @Override // p000.u91.AbstractC1686i
        /* renamed from: a */
        public void mo403a() {
            FirstStartWizardCreateAccountSlide.this.f4079f = false;
        }

        @Override // p000.u91.AbstractC1686i
        /* renamed from: b */
        public void mo402b() {
            FirstStartWizardCreateAccountSlide.this.f4079f = false;
            FirstStartWizardCreateAccountSlide.this.f4075a.S();
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardCreateAccountSlide$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$b.class */
    public class View$OnClickListenerC0703b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ u91 f4082a;

        public View$OnClickListenerC0703b(u91 u91Var) {
            FirstStartWizardCreateAccountSlide.this = r4;
            this.f4082a = u91Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v91 m359c;
            if (!FirstStartWizardCreateAccountSlide.this.f4079f && (m359c = v91.m359c(v91.EnumC1691a.FACEBOOK, this.f4082a)) != null) {
                FirstStartWizardCreateAccountSlide.this.f4079f = true;
                m359c.mo350l();
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardCreateAccountSlide$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c.class */
    public class View$OnClickListenerC0704c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ u91 f4084a;

        public View$OnClickListenerC0704c(u91 u91Var) {
            FirstStartWizardCreateAccountSlide.this = r4;
            this.f4084a = u91Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v91 m359c;
            if (!FirstStartWizardCreateAccountSlide.this.f4079f && (m359c = v91.m359c(v91.EnumC1691a.GOOGLE, this.f4084a)) != null) {
                FirstStartWizardCreateAccountSlide.this.f4079f = true;
                m359c.mo350l();
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardCreateAccountSlide$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$d.class */
    public class C0705d extends ClickableSpan {
        public C0705d() {
            FirstStartWizardCreateAccountSlide.this = r4;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            FirstStartWizardCreateAccountSlide firstStartWizardCreateAccountSlide = FirstStartWizardCreateAccountSlide.this;
            firstStartWizardCreateAccountSlide.f4078d = oe1.m1094b0(firstStartWizardCreateAccountSlide.f4075a);
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardCreateAccountSlide$e */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e.class */
    public class View$OnClickListenerC0706e implements View.OnClickListener {
        public View$OnClickListenerC0706e() {
            FirstStartWizardCreateAccountSlide.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FirstStartWizardCreateAccountSlide.this.f4079f) {
                return;
            }
            FirstStartWizardCreateAccountSlide.this.f4079f = true;
            FirstStartWizardCreateAccountSlide.this.f4075a.findViewById(2131362487).performClick();
        }
    }

    public FirstStartWizardCreateAccountSlide(Context context) {
        super(context);
        this.f4075a = (MainActivity) context;
    }

    /* renamed from: j */
    public /* synthetic */ void m4102k(View view) {
        View inflate = LayoutInflater.from(this.f4075a).inflate(2131558732, (ViewGroup) null);
        PopupWindow popupWindow = new PopupWindow(inflate, -2, -2, true);
        this.f4077c = popupWindow;
        popupWindow.showAtLocation(view, 17, 0, 0);
        ((Button) inflate.findViewById(2131362529)).setOnClickListener(new View.OnClickListener() { // from class: rd1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FirstStartWizardCreateAccountSlide.this.m4100m(view2);
            }
        });
    }

    /* renamed from: l */
    public /* synthetic */ void m4100m(View view) {
        this.f4077c.dismiss();
    }

    @Override // com.kedlin.cca.p007ui.Slide
    /* renamed from: a */
    public void mo4099a() {
        ScheduledExecutorService scheduledExecutorService = this.f4076b;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        oe1.m1053w(this.f4075a, getRootView());
    }

    @Override // com.kedlin.cca.p007ui.Slide
    /* renamed from: e */
    public void mo4093e() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f4076b = newSingleThreadScheduledExecutor;
        u91 u91Var = new u91(this.f4075a, newSingleThreadScheduledExecutor, new C0702a());
        ((ImageView) findViewById(2131362745)).setOnClickListener(new View$OnClickListenerC0703b(u91Var));
        ((ImageView) findViewById(2131362746)).setOnClickListener(new View$OnClickListenerC0704c(u91Var));
        TextView textView = (TextView) findViewById(2131362319);
        textView.setText(Html.fromHtml(this.f4075a.getString(2131821092, new Object[]{"https://www.callcontrol.com/terms-and-privacy", "https://www.callcontrol.com/terms-and-privacy"})));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        TextView textView2 = (TextView) findViewById(2131362318);
        Spanned fromHtml = Html.fromHtml(this.f4075a.getString(2131822194));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fromHtml);
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, fromHtml.length(), URLSpan.class)) {
            oe1.m1107Q(spannableStringBuilder, uRLSpan, new C0705d());
        }
        textView2.setText(spannableStringBuilder);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        ((ImageView) findViewById(2131362321)).setOnClickListener(new View$OnClickListenerC0706e());
        findViewById(2131362322).setOnClickListener(this.f4080g);
    }

    @Override // com.kedlin.cca.p007ui.Slide
    public int getLayoutId() {
        return 2131558540;
    }

    @Override // com.kedlin.cca.p007ui.Slide
    public int getStyleId() {
        return Build.VERSION.SDK_INT >= 21 ? 16974393 : -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        PopupWindow popupWindow = this.f4077c;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.f4077c = null;
        }
        AlertDialog alertDialog = this.f4078d;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f4078d = null;
        }
        super.onDetachedFromWindow();
    }
}
