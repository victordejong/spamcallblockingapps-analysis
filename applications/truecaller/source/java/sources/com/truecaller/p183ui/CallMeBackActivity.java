package com.truecaller.p183ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.calling.initiate_call.InitiateCallHelper;
import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.data.entity.Contact;
import com.truecaller.p183ui.CallMeBackActivity;
import com.truecaller.p183ui.components.AvatarView;
import java.util.Objects;
import n3.b.a.h;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1342w4.p1345t.p1348b.AbstractC21309b;
import p193e.p194a.p1365y.p1389g.C21746d;
import p193e.p194a.p195a.p237h1.AbstractC6330i;
import p193e.p194a.p195a.p237h1.C6331j;
import p193e.p194a.p195a.p237h1.C6335k;
import p193e.p194a.p372b0.p394b.p395a.C8365b;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p430q.C8572b0;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p614c3.C10932f;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.C13279m0;
import p193e.p194a.p682e.C13304q0;
import p193e.p194a.p682e.ViewTreeObserver$OnPreDrawListenerC13307r0;
import p193e.p194a.p751f4.p761f.AbstractC13993a;
import p193e.p194a.p751f4.p764i.AsyncTaskC14040c;
import p193e.p194a.p937j4.p938a.AbstractC15558b;
import q3.a.h1;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.z.c.l;
import u3.l0;
import x3.b;
/* renamed from: com.truecaller.ui.CallMeBackActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/CallMeBackActivity.class */
public class CallMeBackActivity extends h implements View.OnClickListener {

    /* renamed from: a */
    public final ColorDrawable f15534a = new ColorDrawable(Color.argb(178, 0, 0, 0));

    /* renamed from: b */
    public View f15535b;

    /* renamed from: c */
    public View f15536c;

    /* renamed from: d */
    public String f15537d;

    /* renamed from: e */
    public String f15538e;

    /* renamed from: f */
    public Contact f15539f;

    /* renamed from: g */
    public String f15540g;

    /* renamed from: h */
    public ValueAnimator f15541h;

    /* renamed from: i */
    public ValueAnimator f15542i;

    /* renamed from: j */
    public SharedPreferences f15543j;

    /* renamed from: k */
    public AbstractC15539j2 f15544k;

    /* renamed from: l */
    public InitiateCallHelper.CallContextOption f15545l;

    /* renamed from: m */
    public AbstractC6330i f15546m;

    /* renamed from: n */
    public final AbstractC19502g.C19504b f15547n;

    /* renamed from: com.truecaller.ui.CallMeBackActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/CallMeBackActivity$a.class */
    public class AsyncTaskC4661a extends AsyncTaskC14040c<Void, Void, l0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AsyncTaskC4661a(b bVar) {
            super(bVar);
            CallMeBackActivity.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, com.truecaller.ui.CallMeBackActivity, android.app.Activity] */
        @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
        /* renamed from: d */
        public void mo20824d(Exception exc, int i) {
            int i2 = i != 405 ? i != 409 ? 2131886717 : 2131886390 : 2131886389;
            ?? r0 = CallMeBackActivity.this;
            Toast.makeText((Context) r0, r0.getString(i2), 1).show();
        }

        @Override // p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e
        /* renamed from: f */
        public void mo20822f(Object obj) {
            l0 l0Var = (l0) obj;
            CallMeBackActivity callMeBackActivity = CallMeBackActivity.this;
            callMeBackActivity.f15543j.edit().putLong(callMeBackActivity.f15538e, System.currentTimeMillis()).apply();
        }
    }

    public CallMeBackActivity() {
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("ANDROID_CallMeBack_DialogShown");
        c19504b.m13263d("Action", "Dismiss");
        this.f15547n = c19504b;
    }

    /* renamed from: qa */
    public static Intent m34599qa(Context context, Contact contact, String str, int i, String str2, InitiateCallHelper.CallContextOption callContextOption) {
        Intent intent = new Intent(context, CallMeBackActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(8388608);
        intent.addFlags(65536);
        intent.putExtra("ARG_CONTACT", contact);
        intent.putExtra("ARG_NUMBER", str);
        intent.putExtra("ARG_REASON", i);
        intent.putExtra("ARG_ANALYTICS_CONTEXT", str2);
        Bundle bundle = new Bundle();
        bundle.putParcelable("callContextOption", callContextOption);
        intent.putExtras(bundle);
        return intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void close() {
        finish();
        overridePendingTransition(0, 0);
    }

    public void finish() {
        if (this.f15542i.isRunning()) {
            return;
        }
        this.f15542i.setFloatValues(0.0f, this.f15536c.getTop() * 1.5f);
        this.f15542i.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        int id = view.getId();
        if (id == 2131362949) {
            close();
        } else if (id != 2131362200) {
            if (id != 2131362630) {
                return;
            }
            this.f15547n.m13263d("Action", "Call");
            InitiateCallHelper mo12389f3 = this.f15544k.mo12389f3();
            String str = this.f15537d;
            String str2 = this.f15540g;
            l.e(str2, "analyticsContext");
            InitiateCallHelper.CallContextOption callContextOption = this.f15545l;
            l.e(callContextOption, "callContextOption");
            mo12389f3.m35744b(new InitiateCallHelper.CallOptions(str, str2, null, null, false, true, null, false, callContextOption));
            close();
        } else {
            this.f15547n.m13263d("Action", "AskToCallBack");
            if (!this.f15544k.mo11648b().m10982W().isEnabled()) {
                C21746d mo9316b = this.f15544k.mo12805A3().mo9316b(this.f15538e);
                if (!mo9316b.f60563c || (i = mo9316b.f60562b) < 2) {
                    m34597sa();
                } else {
                    try {
                        if (i >= 4) {
                            this.f15544k.mo12805A3().mo9293y(Long.parseLong(this.f15538e), getString(2131886391));
                        } else {
                            this.f15544k.mo12805A3().mo9311g(Long.parseLong(this.f15538e), getString(2131888409));
                            this.f15543j.edit().putLong(this.f15538e, System.currentTimeMillis()).apply();
                            m34596ta();
                        }
                    } catch (NumberFormatException e) {
                    }
                }
                close();
                return;
            }
            AbstractC6330i abstractC6330i = this.f15546m;
            String str3 = this.f15537d;
            s1.z.b.l lVar = new s1.z.b.l() { // from class: e.a.e.h
                /* renamed from: d */
                public final Object m21971d(Object obj) {
                    CallMeBackActivity callMeBackActivity = CallMeBackActivity.this;
                    Objects.requireNonNull(callMeBackActivity);
                    if (!((Boolean) obj).booleanValue()) {
                        callMeBackActivity.m34597sa();
                    }
                    callMeBackActivity.close();
                    return null;
                }
            };
            C6335k c6335k = (C6335k) abstractC6330i;
            Objects.requireNonNull(c6335k);
            l.e(str3, "phoneNumber");
            l.e(lVar, "callback");
            if (!c6335k.f21161b.m10982W().isEnabled()) {
                lVar.m21971d(Boolean.FALSE);
                return;
            }
            p1 p1Var = c6335k.f21160a;
            if (C12864a2.m22540r(p1Var != null ? Boolean.valueOf(p1Var.b()) : null)) {
                return;
            }
            c6335k.f21160a = d.w2(h1.a, c6335k.f21168i, (j0) null, new C6331j(c6335k, str3, lVar, null), 2, (Object) null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        String str;
        CallMeBackActivity.super.onCreate(bundle);
        if (C10932f.m25491a()) {
            C12864a2.m22569Y(this);
        }
        C17422k.m16069l(getTheme());
        setContentView((int) C2752R.layout.view_call_me_back);
        getWindow().setBackgroundDrawable(this.f15534a);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f15541h = ofFloat;
        ofFloat.setDuration(getResources().getInteger(17694722));
        this.f15541h.setInterpolator(new DecelerateInterpolator(3.0f));
        this.f15541h.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CallMeBackActivity callMeBackActivity = CallMeBackActivity.this;
                Objects.requireNonNull(callMeBackActivity);
                float animatedFraction = valueAnimator.getAnimatedFraction();
                callMeBackActivity.f15535b.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                callMeBackActivity.f15534a.setColor(Color.argb((int) (animatedFraction * 255.0f * 0.7f), 0, 0, 0));
                callMeBackActivity.f15534a.invalidateSelf();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f15542i = ofFloat2;
        ofFloat2.setDuration(300L);
        this.f15542i.setInterpolator(new AccelerateInterpolator(3.0f));
        this.f15542i.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.j
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                CallMeBackActivity callMeBackActivity = CallMeBackActivity.this;
                Objects.requireNonNull(callMeBackActivity);
                float animatedFraction = valueAnimator.getAnimatedFraction();
                callMeBackActivity.f15535b.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
                callMeBackActivity.f15534a.setColor(Color.argb((int) ((1.0f - animatedFraction) * 255.0f * 0.7f), 0, 0, 0));
                callMeBackActivity.f15534a.invalidateSelf();
            }
        });
        this.f15542i.addListener(new C13304q0(this));
        this.f15543j = getSharedPreferences("callMeBackNotifications", 0);
        AbstractC15539j2 mo10154s = ((TrueApp) getApplicationContext()).mo10154s();
        this.f15544k = mo10154s;
        AbstractC8426f mo12525V = mo10154s.mo12525V();
        this.f15546m = this.f15544k.mo12558S6();
        TextView textView = (TextView) findViewById(2131366469);
        TextView textView2 = (TextView) findViewById(2131366110);
        AvatarView avatarView = (AvatarView) findViewById(2131362231);
        TextView textView3 = (TextView) findViewById((int) C2752R.C2754id.ask_call_back_button);
        TextView textView4 = (TextView) findViewById((int) C2752R.C2754id.call_button_borderless);
        View findViewById = findViewById((int) C2752R.C2754id.main_container);
        this.f15536c = findViewById(2131366247);
        this.f15535b = findViewById((int) C2752R.C2754id.content_frame);
        if (mo12525V.mo28596b()) {
            ((ImageView) this.f15536c).setImageResource(2131236521);
        }
        this.f15535b.setOnClickListener(this);
        findViewById.setOnClickListener(this);
        textView3.setOnClickListener(this);
        textView4.setOnClickListener(this);
        Intent intent = getIntent();
        this.f15539f = (Contact) intent.getParcelableExtra("ARG_CONTACT");
        this.f15537d = intent.getStringExtra("ARG_NUMBER");
        this.f15540g = intent.getStringExtra("ARG_ANALYTICS_CONTEXT");
        this.f15545l = (InitiateCallHelper.CallContextOption) intent.getParcelableExtra("callContextOption");
        String m28242c = C8604n.m28242c(this);
        if (this.f15539f == null || (str = this.f15537d) == null) {
            CallMeBackActivity.super.finish();
            return;
        }
        this.f15538e = C8572b0.m28372g(str, m28242c);
        boolean z = true;
        int intExtra = intent.getIntExtra("ARG_REASON", 1);
        C13279m0.C13281b c13281b = new C13279m0.C13281b(this);
        c13281b.f38594c = true;
        c13281b.f38597f = 10;
        c13281b.f38596e = 10;
        textView.setText(this.f15539f.m35491w());
        if (intExtra == 0) {
            c13281b.f38593b = false;
            textView.setText(m34598ra(c13281b, this.f15539f.m35491w()));
            textView2.setText(getString(C2752R.string.CallMeBackContactIsOnACall, new Object[]{""}));
            avatarView.m34542b(C12864a2.m22592B(this.f15539f, true), null, this.f15539f.m35499r0(), this.f15539f.m35494u0());
            textView4.setText(getString(C2752R.string.CallMeBackCallAnyway));
            this.f15547n.m13263d("Trigger", "Busy");
        } else if (intExtra == 1) {
            textView2.setText(getString(C2752R.string.CallMeBackCallNotCompleted));
            C17409e mo9911c = AbstractC21309b.m9913b(this).mo9911c(this.f15537d);
            if (mo9911c != null && mo9911c.f48755b != null && mo9911c.m16134e()) {
                textView2.setVisibility(0);
                c13281b.f38593b = mo9911c.f48755b.getStatus() == Availability.Status.AVAILABLE;
                c13281b.f38597f = 6;
                c13281b.f38596e = 6;
                textView.setText(m34598ra(c13281b, this.f15539f.m35491w()));
                textView2.setText(C17409e.m16135d(mo9911c, this, false, 2));
            }
            textView4.setText(getString(C2752R.string.CallMeBackCallAgain));
            this.f15547n.m13263d("Trigger", "CallIncomplete");
        }
        if (System.currentTimeMillis() - this.f15543j.getLong(this.f15538e, 0L) >= DefaultRefreshIntervals.REMOTE_CONFIG_FETCH_INTERVAL) {
            z = false;
        }
        if (z) {
            textView2.setText(getString(C2752R.string.CallMeBackNotificationAlreadySent));
            textView2.setVisibility(0);
            textView3.setVisibility(8);
        }
        this.f15544k.mo12776C4().mo13274b(C19597a.m13114b("callMeBack"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onDestroy() {
        CallMeBackActivity.super.onDestroy();
        if (isFinishing()) {
            this.f15544k.mo12776C4().mo13271e(this.f15547n.m13266a());
        }
    }

    public void onStart() {
        CallMeBackActivity.super.onStart();
        this.f15535b.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC13307r0(this));
    }

    /* renamed from: ra */
    public final SpannableStringBuilder m34598ra(C13279m0.C13281b c13281b, String str) {
        C13279m0 m21961a = c13281b.m21961a();
        m21961a.setBounds(0, 0, m21961a.getIntrinsicWidth(), m21961a.getIntrinsicHeight());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.insert(0, (CharSequence) "# ");
        spannableStringBuilder.setSpan(new ImageSpan(m21961a), 0, 1, 18);
        return spannableStringBuilder;
    }

    /* renamed from: sa */
    public final void m34597sa() {
        String str = this.f15537d;
        C8365b c8365b = new C8365b();
        c8365b.m28639a(KnownEndpoints.CALLMEBACK);
        c8365b.m28634f(AbstractC13993a.class);
        new AsyncTaskC4661a(((AbstractC13993a) c8365b.m28637c(AbstractC13993a.class)).m20878a(str)).executeOnExecutor(AbstractC15558b.f44018e, new Void[0]);
        m34596ta();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ta */
    public final void m34596ta() {
        Toast.makeText((Context) this, (CharSequence) getString(C2752R.string.CallMeBackContactWillBeNotified, new Object[]{this.f15539f.m35491w()}), 1).show();
    }
}
