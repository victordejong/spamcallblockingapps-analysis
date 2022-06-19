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
import android.view.View;
import android.widget.TextView;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import com.kedlin.cca.p007ui.EveryCallerSignInForm;
import com.kedlin.cca.p007ui.Slide;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p000.u91;
import p000.v91;
/* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide.class */
public class FirstStartWizardSignInSlide extends Slide {

    /* renamed from: a */
    public MainActivity f4088a;

    /* renamed from: b */
    public ScheduledExecutorService f4089b;

    /* renamed from: c */
    public EveryCallerSignInForm f4090c;

    /* renamed from: d */
    public AlertDialog f4091d;

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$a.class */
    public class C0707a implements u91.AbstractC1686i {
        public C0707a() {
            FirstStartWizardSignInSlide.this = r4;
        }

        @Override // p000.u91.AbstractC1686i
        /* renamed from: a */
        public void mo403a() {
        }

        @Override // p000.u91.AbstractC1686i
        /* renamed from: b */
        public void mo402b() {
            FirstStartWizardSignInSlide.this.f4088a.S();
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$b.class */
    public class C0708b implements EveryCallerSignInForm.AbstractC0679f {

        /* renamed from: a */
        public final /* synthetic */ r91 f4093a;

        public C0708b(FirstStartWizardSignInSlide firstStartWizardSignInSlide, r91 r91Var) {
            this.f4093a = r91Var;
        }

        @Override // com.kedlin.cca.p007ui.EveryCallerSignInForm.AbstractC0679f
        /* renamed from: a */
        public void mo4095a(String str, String str2) {
            r91 r91Var = this.f4093a;
            if (r91Var == null) {
                return;
            }
            r91Var.m659q(str);
            this.f4093a.m658r(str2);
            this.f4093a.m657s();
        }

        @Override // com.kedlin.cca.p007ui.EveryCallerSignInForm.AbstractC0679f
        /* renamed from: b */
        public void mo4094b(String str, String str2) {
            r91 r91Var = this.f4093a;
            if (r91Var == null) {
                return;
            }
            r91Var.m659q(str);
            this.f4093a.m658r(str2);
            this.f4093a.mo350l();
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$c.class */
    public class View$OnClickListenerC0709c implements View.OnClickListener {
        public View$OnClickListenerC0709c() {
            FirstStartWizardSignInSlide.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FirstStartWizardSignInSlide.this.f4090c.findViewById(2131362317).performClick();
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$d.class */
    public class View$OnClickListenerC0710d implements View.OnClickListener {
        public View$OnClickListenerC0710d() {
            FirstStartWizardSignInSlide.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FirstStartWizardSignInSlide.this.f4090c.findViewById(2131362736).performClick();
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide$e */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$e.class */
    public class C0711e extends ClickableSpan {
        public C0711e() {
            FirstStartWizardSignInSlide.this = r4;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            FirstStartWizardSignInSlide firstStartWizardSignInSlide = FirstStartWizardSignInSlide.this;
            firstStartWizardSignInSlide.f4091d = oe1.m1094b0(firstStartWizardSignInSlide.f4088a);
        }
    }

    /* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardSignInSlide$f */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f.class */
    public class View$OnClickListenerC0712f implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ u91 f4097a;

        /* renamed from: b */
        public final /* synthetic */ r91 f4098b;

        public View$OnClickListenerC0712f(u91 u91Var, r91 r91Var) {
            FirstStartWizardSignInSlide.this = r4;
            this.f4097a = u91Var;
            this.f4098b = r91Var;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!FirstStartWizardSignInSlide.this.f4090c.m4190j(false)) {
                this.f4097a.m409g(null, this.f4098b);
            }
        }
    }

    public FirstStartWizardSignInSlide(Context context) {
        super(context);
        this.f4088a = (MainActivity) context;
    }

    @Override // com.kedlin.cca.p007ui.Slide
    /* renamed from: a */
    public void mo4099a() {
        ScheduledExecutorService scheduledExecutorService = this.f4089b;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
        oe1.m1053w(this.f4088a, getRootView());
        this.f4090c.m4192h();
        this.f4090c.m4193g();
    }

    @Override // com.kedlin.cca.p007ui.Slide
    /* renamed from: e */
    public void mo4093e() {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.f4089b = newSingleThreadScheduledExecutor;
        u91 u91Var = new u91(this.f4088a, newSingleThreadScheduledExecutor, new C0707a());
        r91 r91Var = (r91) v91.m359c(v91.EnumC1691a.EVERYCALLER, u91Var);
        EveryCallerSignInForm everyCallerSignInForm = (EveryCallerSignInForm) findViewById(2131362738);
        this.f4090c = everyCallerSignInForm;
        everyCallerSignInForm.setListener(new C0708b(this, r91Var));
        findViewById(2131363205).setOnClickListener(new View$OnClickListenerC0709c());
        findViewById(2131363207).setOnClickListener(new View$OnClickListenerC0710d());
        TextView textView = (TextView) findViewById(2131363204);
        textView.setText(Html.fromHtml(this.f4088a.getString(2131822195, new Object[]{"https://www.callcontrol.com/terms-and-privacy", "https://www.callcontrol.com/terms-and-privacy"})));
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        TextView textView2 = (TextView) findViewById(2131363203);
        Spanned fromHtml = Html.fromHtml(this.f4088a.getString(2131822194));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(fromHtml);
        for (URLSpan uRLSpan : (URLSpan[]) spannableStringBuilder.getSpans(0, fromHtml.length(), URLSpan.class)) {
            oe1.m1107Q(spannableStringBuilder, uRLSpan, new C0711e());
        }
        textView2.setText(spannableStringBuilder);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        findViewById(2131363206).setOnClickListener(new View$OnClickListenerC0712f(u91Var, r91Var));
    }

    @Override // com.kedlin.cca.p007ui.Slide
    public int getLayoutId() {
        return 2131558766;
    }

    @Override // com.kedlin.cca.p007ui.Slide
    public int getStyleId() {
        return Build.VERSION.SDK_INT >= 21 ? 16974393 : -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AlertDialog alertDialog = this.f4091d;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f4091d = null;
        }
        super.onDetachedFromWindow();
    }
}
