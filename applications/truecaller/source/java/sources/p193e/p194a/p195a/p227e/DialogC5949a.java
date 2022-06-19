package p193e.p194a.p195a.p227e;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.inboxcleanup.Mode;
import java.util.LinkedHashMap;
import java.util.Objects;
import p1727n3.p1734b.p1735a.DialogC25424p;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.g;
import s1.i;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.a.e.a */
/* loaded from: classes7-dex2jar.jar:e/a/a/e/a.class */
public final class DialogC5949a extends DialogC25424p {

    /* renamed from: c */
    public AbstractC6392i0 f19849c;

    /* renamed from: d */
    public AbstractC19462a f19850d;

    /* renamed from: e */
    public final g f19851e = C19286f.m13661r(this, C2752R.C2754id.btnAll);

    /* renamed from: f */
    public final g f19852f = C19286f.m13661r(this, C2752R.C2754id.btnDays15);

    /* renamed from: g */
    public final g f19853g = C19286f.m13661r(this, C2752R.C2754id.btnDays30);

    /* renamed from: h */
    public final g f19854h = C19286f.m13661r(this, C2752R.C2754id.btnDays7);

    /* renamed from: i */
    public final g f19855i = C19286f.m13661r(this, C2752R.C2754id.btnDaysNone);

    /* renamed from: j */
    public final g f19856j = C19286f.m13661r(this, C2752R.C2754id.txtTitle);

    /* renamed from: k */
    public final Mode f19857k;

    /* renamed from: l */
    public final boolean f19858l;

    /* renamed from: m */
    public final a<s> f19859m;

    /* renamed from: e.a.a.e.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/e/a$a.class */
    public static final class View$OnClickListenerC5950a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f19860a;

        /* renamed from: b */
        public final /* synthetic */ Object f19861b;

        public View$OnClickListenerC5950a(int i, Object obj) {
            this.f19860a = i;
            this.f19861b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f19860a;
            if (i == 0) {
                DialogC5949a.m32117d((DialogC5949a) this.f19861b, 30);
            } else if (i == 1) {
                DialogC5949a.m32117d((DialogC5949a) this.f19861b, 15);
            } else if (i == 2) {
                DialogC5949a.m32117d((DialogC5949a) this.f19861b, 7);
            } else if (i == 3) {
                DialogC5949a.m32117d((DialogC5949a) this.f19861b, 0);
            } else if (i != 4) {
                throw null;
            } else {
                DialogC5949a.m32117d((DialogC5949a) this.f19861b, -1);
            }
        }
    }

    /* renamed from: e.a.a.e.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/e/a$b.class */
    public static final class DialogInterface$OnDismissListenerC5951b implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC5951b() {
            DialogC5949a.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
            DialogC5949a dialogC5949a = DialogC5949a.this;
            if (dialogC5949a.f19858l) {
                AbstractC6392i0 abstractC6392i0 = dialogC5949a.f19849c;
                if (abstractC6392i0 == null) {
                    l.l("settings");
                    throw null;
                }
                if (abstractC6392i0.mo31151R1() == 0) {
                    AbstractC6392i0 abstractC6392i02 = dialogC5949a.f19849c;
                    if (abstractC6392i02 == null) {
                        l.l("settings");
                        throw null;
                    }
                    abstractC6392i02.mo31143T(false);
                }
                AbstractC6392i0 abstractC6392i03 = dialogC5949a.f19849c;
                if (abstractC6392i03 == null) {
                    l.l("settings");
                    throw null;
                }
                if (abstractC6392i03.mo31047k0() == 0) {
                    AbstractC6392i0 abstractC6392i04 = dialogC5949a.f19849c;
                    if (abstractC6392i04 == null) {
                        l.l("settings");
                        throw null;
                    }
                    abstractC6392i04.mo30996t(false);
                }
                AbstractC6392i0 abstractC6392i05 = dialogC5949a.f19849c;
                if (abstractC6392i05 == null) {
                    l.l("settings");
                    throw null;
                } else if (abstractC6392i05.mo30971y() == 0) {
                    AbstractC6392i0 abstractC6392i06 = dialogC5949a.f19849c;
                    if (abstractC6392i06 == null) {
                        l.l("settings");
                        throw null;
                    }
                    abstractC6392i06.mo31100b1(false);
                }
            }
            DialogC5949a.this.f19859m.invoke();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC5949a(Context context, Mode mode, boolean z, a<s> aVar) {
        super(context, 2131952119);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(mode, AnalyticsConstants.MODE);
        l.e(aVar, "listener");
        this.f19857k = mode;
        this.f19858l = z;
        this.f19859m = aVar;
    }

    /* renamed from: d */
    public static final void m32117d(DialogC5949a dialogC5949a, int i) {
        String str;
        int ordinal = dialogC5949a.f19857k.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    if (dialogC5949a.f19858l) {
                        AbstractC6392i0 abstractC6392i0 = dialogC5949a.f19849c;
                        if (abstractC6392i0 == null) {
                            l.l("settings");
                            throw null;
                        }
                        abstractC6392i0.mo31201H1(i);
                    } else {
                        AbstractC6392i0 abstractC6392i02 = dialogC5949a.f19849c;
                        if (abstractC6392i02 == null) {
                            l.l("settings");
                            throw null;
                        }
                        abstractC6392i02.mo31231B1(i);
                    }
                }
            } else if (dialogC5949a.f19858l) {
                AbstractC6392i0 abstractC6392i03 = dialogC5949a.f19849c;
                if (abstractC6392i03 == null) {
                    l.l("settings");
                    throw null;
                }
                abstractC6392i03.mo31076f1(i);
            } else {
                AbstractC6392i0 abstractC6392i04 = dialogC5949a.f19849c;
                if (abstractC6392i04 == null) {
                    l.l("settings");
                    throw null;
                }
                abstractC6392i04.mo31190J2(i);
            }
        } else if (dialogC5949a.f19858l) {
            AbstractC6392i0 abstractC6392i05 = dialogC5949a.f19849c;
            if (abstractC6392i05 == null) {
                l.l("settings");
                throw null;
            }
            abstractC6392i05.mo30980w0(i);
        } else {
            AbstractC6392i0 abstractC6392i06 = dialogC5949a.f19849c;
            if (abstractC6392i06 == null) {
                l.l("settings");
                throw null;
            }
            abstractC6392i06.mo31025n4(i);
        }
        int ordinal2 = dialogC5949a.f19857k.ordinal();
        if (ordinal2 == 0) {
            str = AnalyticsConstants.OTP;
        } else if (ordinal2 == 1) {
            str = "promotional";
        } else if (ordinal2 != 2) {
            throw new i();
        } else {
            str = "spam";
        }
        String str2 = i != -1 ? i != 7 ? i != 15 ? i != 30 ? "none" : "30 days" : "15 days" : "7 days" : "all";
        AbstractC19462a abstractC19462a = dialogC5949a.f19850d;
        if (abstractC19462a == null) {
            l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
            throw null;
        }
        LinkedHashMap m8655X = C22128a.m8655X("Ci2a-ChangeDeleteFrequency", "type");
        LinkedHashMap m8649Z = C22128a.m8649Z("category", AnalyticsConstants.NAME, str, "value", m8655X, "category", str, "frequency", AnalyticsConstants.NAME, str2, "value", "frequency", str2);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("Ci2a-ChangeDeleteFrequency");
        m15852a.m15849c(m8649Z);
        m15852a.m15848d(m8655X);
        C17697p3 build = m15852a.build();
        l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        abstractC19462a.mo13275a(build);
        dialogC5949a.dismiss();
    }

    /* renamed from: e */
    public final View m32116e() {
        return (View) this.f19851e.getValue();
    }

    /* renamed from: f */
    public final View m32115f() {
        return (View) this.f19854h.getValue();
    }

    /* renamed from: g */
    public final TextView m32114g() {
        return (TextView) this.f19856j.getValue();
    }

    @Override // p1727n3.p1734b.p1735a.DialogC25424p, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C2752R.layout.dialog_inbox_cleanup_preferences);
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        Context applicationContext = context.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC6392i0 mo12565S = ((AbstractC21187w1) applicationContext).mo10154s().mo12565S();
        l.d(mo12565S, "(context.applicationCont…).objectsGraph.settings()");
        this.f19849c = mo12565S;
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        Context applicationContext2 = context2.getApplicationContext();
        Objects.requireNonNull(applicationContext2, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        this.f19850d = ((AbstractC21187w1) applicationContext2).mo10154s().mo12776C4();
        int ordinal = this.f19857k.ordinal();
        if (ordinal == 0) {
            TextView m32114g = m32114g();
            l.d(m32114g, "txtTitle");
            m32114g.setText(getContext().getString(C2752R.string.inbox_cleanup_delete_otp_title));
            View view = (View) this.f19853g.getValue();
            l.d(view, "btnDays30");
            C19286f.m13683U(view, false);
        } else if (ordinal == 1) {
            TextView m32114g2 = m32114g();
            l.d(m32114g2, "txtTitle");
            m32114g2.setText(getContext().getString(C2752R.string.inbox_cleanup_delete_promotional));
            View m32115f = m32115f();
            l.d(m32115f, "btnDays7");
            C19286f.m13683U(m32115f, false);
            View m32116e = m32116e();
            l.d(m32116e, "btnAll");
            C19286f.m13683U(m32116e, false);
        } else if (ordinal == 2) {
            TextView m32114g3 = m32114g();
            l.d(m32114g3, "txtTitle");
            m32114g3.setText(getContext().getString(C2752R.string.inbox_cleanup_delete_spam));
            View m32115f2 = m32115f();
            l.d(m32115f2, "btnDays7");
            C19286f.m13683U(m32115f2, false);
            View m32116e2 = m32116e();
            l.d(m32116e2, "btnAll");
            C19286f.m13683U(m32116e2, false);
        }
        ((View) this.f19853g.getValue()).setOnClickListener(new View$OnClickListenerC5950a(0, this));
        ((View) this.f19852f.getValue()).setOnClickListener(new View$OnClickListenerC5950a(1, this));
        m32115f().setOnClickListener(new View$OnClickListenerC5950a(2, this));
        ((View) this.f19855i.getValue()).setOnClickListener(new View$OnClickListenerC5950a(3, this));
        m32116e().setOnClickListener(new View$OnClickListenerC5950a(4, this));
        setOnDismissListener(new DialogInterface$OnDismissListenerC5951b());
        View view2 = (View) this.f19855i.getValue();
        l.d(view2, "btnDaysNone");
        C19286f.m13683U(view2, !this.f19858l);
    }
}
