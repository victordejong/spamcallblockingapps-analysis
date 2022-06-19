package p193e.p194a.p1052m;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Selection;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.CharacterStyle;
import android.text.style.URLSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import com.truecaller.wizard.C4861R;
import java.util.Arrays;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18196y;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1136w0.C19348b;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p1187r2.AbstractC19844a;
import p193e.p194a.p1270u2.p1271a.AbstractC20579d;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.a.l;
import s1.k;
import s1.w.f;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\b\u0006*\u0001>\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bB\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\u0010Ji\u0010\u0019\u001a\u00020\u00052\u001c\u0010\u0016\u001a\u0018\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0011j\u0002`\u00152\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0011j\u0002`\u00152\u001c\u0010\u0018\u001a\u0018\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0011j\u0002`\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u00052\b\b\u0001\u0010\u001b\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\tJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\tJ!\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\tJ\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0005H\u0016¢\u0006\u0004\b(\u0010\tJ\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\tJ\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\tJ\u000f\u0010+\u001a\u00020\u0005H\u0016¢\u0006\u0004\b+\u0010\tJ\u001f\u0010.\u001a\u00020\u00052\u0006\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020\u0012H\u0002¢\u0006\u0004\b.\u0010/R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u001d\u0010=\u001a\u0002088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0016\u0010A\u001a\u00020>8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006C"}, d2 = {"Le/a/m/a;", "Le/a/e/x0;", "Le/a/m/s;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/k;", "", "", "", "Lcom/truecaller/wizard/wizardprivacy/LegalArticleContent;", "policyContent", "footerContent", "howWeUseDataContent", "z3", "(Ls1/k;Ls1/k;Ls1/k;)V", "continueButtonTextRes", "u4", "(I)V", "Uc", "mq", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroyView", "", "downloadSupported", "Ro", "(Z)V", "L7", "qg", "F5", "a0", "visible", "dataUsedTextTopMargin", "aB", "(ZI)V", "Le/a/m/q;", "i", "Le/a/m/q;", "ZA", "()Le/a/m/q;", "setPresenter", "(Le/a/m/q;)V", "presenter", "Le/a/m3/y;", "j", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "YA", "()Le/a/m3/y;", "binding", "e/a/m/a$g", "k", "Le/a/m/a$g;", "dialogListener", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.m.a */
/* loaded from: classes7-dex2jar.jar:e/a/m/a.class */
public final class C17844a extends AbstractC17887z implements AbstractC17879s {

    /* renamed from: l */
    public static final /* synthetic */ l[] f50812l = {C22128a.m8621g0(C17844a.class, "binding", "getBinding()Lcom/truecaller/databinding/FragmentConsentrefreshBinding;", 0)};
    @Inject

    /* renamed from: i */
    public AbstractC17877q f50813i;

    /* renamed from: j */
    public final ViewBindingProperty f50814j = new C19350a(new C17850f());

    /* renamed from: k */
    public final C17851g f50815k = new C17851g();

    /* renamed from: e.a.m.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/m/a$a.class */
    public static final class View$OnTouchListenerC17845a implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ int f50816a;

        /* renamed from: b */
        public final /* synthetic */ Object f50817b;

        public View$OnTouchListenerC17845a(int i, Object obj) {
            this.f50816a = i;
            this.f50817b = obj;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            int i = this.f50816a;
            if (i == 0) {
                s1.z.c.l.d(motionEvent, "event");
                if (motionEvent.getAction() == 0) {
                    view.requestFocus();
                    return false;
                } else if (motionEvent.getAction() != 1) {
                    return false;
                } else {
                    Selection.removeSelection(SpannableString.valueOf(((TextView) this.f50817b).getText()));
                    return false;
                }
            } else if (i == 1) {
                s1.z.c.l.d(motionEvent, "event");
                if (motionEvent.getAction() == 0) {
                    view.requestFocus();
                    return false;
                } else if (motionEvent.getAction() != 1) {
                    return false;
                } else {
                    Selection.removeSelection(SpannableString.valueOf(((TextView) this.f50817b).getText()));
                    return false;
                }
            } else if (i != 2) {
                throw null;
            } else {
                s1.z.c.l.d(motionEvent, "event");
                if (motionEvent.getAction() == 0) {
                    view.requestFocus();
                    return false;
                } else if (motionEvent.getAction() != 1) {
                    return false;
                } else {
                    Selection.removeSelection(SpannableString.valueOf(((TextView) this.f50817b).getText()));
                    return false;
                }
            }
        }
    }

    /* renamed from: e.a.m.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/m/a$b.class */
    public static final class View$OnClickListenerC17846b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f50818a;

        /* renamed from: b */
        public final /* synthetic */ Object f50819b;

        public View$OnClickListenerC17846b(int i, Object obj) {
            this.f50818a = i;
            this.f50819b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f50818a;
            if (i == 0) {
                C17882v c17882v = (C17882v) ((C17844a) this.f50819b).m15761ZA();
                boolean isEnabled = c17882v.f50865m.m10992M().isEnabled();
                AbstractC17879s abstractC17879s = (AbstractC17879s) c17882v.f57683a;
                if (abstractC17879s == null) {
                    return;
                }
                abstractC17879s.mo15735Ro(isEnabled);
            } else if (i != 1) {
                throw null;
            } else {
                C17882v c17882v2 = (C17882v) ((C17844a) this.f50819b).m15761ZA();
                p1 p1Var = c17882v2.f50858f;
                if (p1Var != null && p1Var.b()) {
                    return;
                }
                c17882v2.f50858f = d.w2(c17882v2, (f) null, (j0) null, new C17880t(c17882v2, null), 3, (Object) null);
            }
        }
    }

    /* renamed from: e.a.m.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$c.class */
    public static final class C17847c extends m implements p<CharacterStyle, Integer, CharacterStyle> {

        /* renamed from: b */
        public final /* synthetic */ TextView f50820b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC17877q f50821c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17847c(TextView textView, AbstractC17877q abstractC17877q) {
            super(2);
            this.f50820b = textView;
            this.f50821c = abstractC17877q;
        }

        /* renamed from: k */
        public Object m15759k(Object obj, Object obj2) {
            CharacterStyle characterStyle = (CharacterStyle) obj;
            ((Number) obj2).intValue();
            s1.z.c.l.e(characterStyle, "style");
            C19348b c19348b = characterStyle;
            if (characterStyle instanceof URLSpan) {
                Resources resources = this.f50820b.getResources();
                int i = C4861R.color.wizard_link_color;
                ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
                c19348b = new C19348b(resources.getColor(i, null), new C17872l(this, characterStyle));
            }
            return c19348b;
        }
    }

    /* renamed from: e.a.m.a$d */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$d.class */
    public static final class C17848d extends m implements p<CharacterStyle, Integer, CharacterStyle> {

        /* renamed from: b */
        public final /* synthetic */ TextView f50822b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC17877q f50823c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17848d(TextView textView, AbstractC17877q abstractC17877q) {
            super(2);
            this.f50822b = textView;
            this.f50823c = abstractC17877q;
        }

        /* renamed from: k */
        public Object m15758k(Object obj, Object obj2) {
            CharacterStyle characterStyle = (CharacterStyle) obj;
            ((Number) obj2).intValue();
            s1.z.c.l.e(characterStyle, "style");
            C19348b c19348b = characterStyle;
            if (characterStyle instanceof URLSpan) {
                Resources resources = this.f50822b.getResources();
                int i = C4861R.color.wizard_link_color;
                ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
                c19348b = new C19348b(resources.getColor(i, null), new C17873m(this, characterStyle));
            }
            return c19348b;
        }
    }

    /* renamed from: e.a.m.a$e */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$e.class */
    public static final class C17849e extends m implements p<CharacterStyle, Integer, CharacterStyle> {

        /* renamed from: b */
        public final /* synthetic */ TextView f50824b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC17877q f50825c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17849e(TextView textView, AbstractC17877q abstractC17877q) {
            super(2);
            this.f50824b = textView;
            this.f50825c = abstractC17877q;
        }

        /* renamed from: k */
        public Object m15757k(Object obj, Object obj2) {
            CharacterStyle characterStyle = (CharacterStyle) obj;
            ((Number) obj2).intValue();
            s1.z.c.l.e(characterStyle, "style");
            C19348b c19348b = characterStyle;
            if (characterStyle instanceof URLSpan) {
                Resources resources = this.f50824b.getResources();
                int i = C4861R.color.wizard_link_color;
                ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
                c19348b = new C19348b(resources.getColor(i, null), new C17874n(this, characterStyle));
            }
            return c19348b;
        }
    }

    /* renamed from: e.a.m.a$f */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$f.class */
    public static final class C17850f extends m implements s1.z.b.l<C17844a, C18196y> {
        public C17850f() {
            super(1);
        }

        /* renamed from: d */
        public Object m15756d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362129;
            Button button = (Button) requireView.findViewById(C2752R.C2754id.agreeButton);
            if (button != null) {
                i = 2131362938;
                LinearLayout linearLayout = (LinearLayout) requireView.findViewById(2131362938);
                if (linearLayout != null) {
                    i = 2131363031;
                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.dataUsedText);
                    if (textView != null) {
                        i = 2131363032;
                        TextView textView2 = (TextView) requireView.findViewById(C2752R.C2754id.dataUsedTitleText);
                        if (textView2 != null) {
                            i = 2131363035;
                            TextView textView3 = (TextView) requireView.findViewById(C2752R.C2754id.dateProcessedText);
                            if (textView3 != null) {
                                i = 2131363036;
                                TextView textView4 = (TextView) requireView.findViewById(C2752R.C2754id.dateProcessedTitleText);
                                if (textView4 != null) {
                                    i = 2131364616;
                                    TextView textView5 = (TextView) requireView.findViewById(2131364616);
                                    if (textView5 != null) {
                                        i = 2131364828;
                                        Button button2 = (Button) requireView.findViewById(2131364828);
                                        if (button2 != null) {
                                            i = 2131365393;
                                            TextView textView6 = (TextView) requireView.findViewById(C2752R.C2754id.reminderText);
                                            if (textView6 != null) {
                                                return new C18196y((LinearLayout) requireView, button, linearLayout, textView, textView2, textView3, textView4, textView5, button2, textView6);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.m.a$g */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$g.class */
    public static final class C17851g implements AbstractC17854a0 {
        public C17851g() {
            C17844a.this = r4;
        }

        @Override // p193e.p194a.p1052m.AbstractC17854a0
        /* renamed from: a */
        public void mo15755a() {
            AbstractC17879s abstractC17879s = (AbstractC17879s) ((C17882v) C17844a.this.m15761ZA()).f57683a;
            if (abstractC17879s != null) {
                abstractC17879s.mo15736L7();
            }
        }

        @Override // p193e.p194a.p1052m.AbstractC17854a0
        /* renamed from: b */
        public void mo15754b() {
            AbstractC17878r abstractC17878r = (AbstractC17878r) ((C17882v) C17844a.this.m15761ZA()).f57687b;
            if (abstractC17878r != null) {
                abstractC17878r.mo15741C3();
            }
        }
    }

    /* renamed from: e.a.m.a$h */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$h.class */
    public static final class DialogInterface$OnClickListenerC17852h implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC17852h() {
            C17844a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            AbstractC17879s abstractC17879s = (AbstractC17879s) ((C17882v) C17844a.this.m15761ZA()).f57683a;
            if (abstractC17879s != null) {
                abstractC17879s.mo15730qg();
            }
        }
    }

    /* renamed from: e.a.m.a$i */
    /* loaded from: classes7-dex2jar.jar:e/a/m/a$i.class */
    public static final class DialogInterface$OnClickListenerC17853i implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC17853i() {
            C17844a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C17882v c17882v = (C17882v) C17844a.this.m15761ZA();
            AbstractC17879s abstractC17879s = (AbstractC17879s) c17882v.f57683a;
            if (abstractC17879s != null) {
                abstractC17879s.mo15733a0();
            }
            AbstractC19844a abstractC19844a = c17882v.f50857e;
            if (abstractC19844a != null) {
                abstractC19844a.mo11832b();
            }
            c17882v.f50857e = c17882v.f50861i.mo11854a().mo20951a(c17882v.f50865m.m10992M().isEnabled()).mo11830e(c17882v.f50862j.mo11845d(), new C17881u(c17882v));
        }
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: F5 */
    public void mo15737F5() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            Toast.makeText(context, 2131888098, 1).show();
        }
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: L7 */
    public void mo15736L7() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3656m(C2752R.string.SettingsPrivacyLogoutTitleDeactivate);
            g_a.m3664e(C2752R.string.SettingsPrivacyLogoutTextDelete);
            g_a.m3662g(2131887903, null);
            g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC17852h());
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: Ro */
    public void mo15735Ro(boolean z) {
        C17855b c17855b = new C17855b();
        c17855b.f50830a = this.f50815k;
        c17855b.f50831b = z;
        c17855b.show(getChildFragmentManager(), "moreInfo");
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: Uc */
    public void mo15734Uc() {
        m15760aB(true, 0);
    }

    /* renamed from: YA */
    public final C18196y m15762YA() {
        return (C18196y) this.f50814j.m34468b(this, f50812l[0]);
    }

    /* renamed from: ZA */
    public final AbstractC17877q m15761ZA() {
        AbstractC17877q abstractC17877q = this.f50813i;
        if (abstractC17877q != null) {
            return abstractC17877q;
        }
        s1.z.c.l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: a0 */
    public void mo15733a0() {
        mo18687E(false);
    }

    /* renamed from: aB */
    public final void m15760aB(boolean z, int i) {
        C18196y m15762YA = m15762YA();
        TextView textView = m15762YA.f51455e;
        s1.z.c.l.d(textView, "dateProcessedTitleText");
        C19286f.m13683U(textView, z);
        TextView textView2 = m15762YA.f51454d;
        s1.z.c.l.d(textView2, "dateProcessedText");
        C19286f.m13683U(textView2, z);
        TextView textView3 = m15762YA.f51453c;
        s1.z.c.l.d(textView3, "dataUsedTitleText");
        C19286f.m13683U(textView3, z);
        TextView textView4 = m15762YA.f51452b;
        s1.z.c.l.d(textView4, "dataUsedText");
        TextView textView5 = m15762YA.f51452b;
        s1.z.c.l.d(textView5, "dataUsedText");
        ViewGroup.LayoutParams layoutParams = textView5.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, i, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        textView4.setLayoutParams(marginLayoutParams);
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: mq */
    public void mo15731mq() {
        m15760aB(false, getResources().getDimensionPixelSize(2131165612));
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [Router, e.a.m.r] */
    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        n3.r.a.l activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type com.truecaller.consentrefresh.ConsentRefreshMvp.Router");
        ?? r0 = (AbstractC17878r) activity;
        AbstractC17877q abstractC17877q = this.f50813i;
        if (abstractC17877q != null) {
            ((AbstractC20579d) abstractC17877q).f57687b = r0;
        } else {
            s1.z.c.l.l("presenter");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_consentrefresh, viewGroup, false);
    }

    public void onDestroy() {
        AbstractC17877q abstractC17877q = this.f50813i;
        if (abstractC17877q == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((AbstractC20579d) abstractC17877q).f57687b = null;
        C17844a.super.onDestroy();
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onDestroyView() {
        AbstractC17877q abstractC17877q = this.f50813i;
        if (abstractC17877q == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C17882v) abstractC17877q).mo9806c();
        super.onDestroyView();
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        AbstractC17877q abstractC17877q = this.f50813i;
        if (abstractC17877q == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        ((C17882v) abstractC17877q).mo9029Y0(this);
        C18196y m15762YA = m15762YA();
        m15762YA.f51457g.setOnClickListener(new View$OnClickListenerC17846b(0, this));
        m15762YA.f51451a.setOnClickListener(new View$OnClickListenerC17846b(1, this));
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: qg */
    public void mo15730qg() {
        Context context = getContext();
        if (context != null) {
            s1.z.c.l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3664e(C2752R.string.SettingsPrivacyLogoutTextDeactivateConfirmation);
            g_a.m3662g(2131887903, null);
            g_a.m3660i(2131887941, new DialogInterface$OnClickListenerC17853i());
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: u4 */
    public void mo15729u4(int i) {
        m15762YA().f51451a.setText(i);
    }

    @Override // p193e.p194a.p1052m.AbstractC17879s
    /* renamed from: z3 */
    public void mo15728z3(k<Integer, String[]> kVar, k<Integer, String[]> kVar2, k<Integer, String[]> kVar3) {
        s1.z.c.l.e(kVar, "policyContent");
        s1.z.c.l.e(kVar2, "footerContent");
        s1.z.c.l.e(kVar3, "howWeUseDataContent");
        C18196y m15762YA = m15762YA();
        TextView textView = m15762YA.f51458h;
        s1.z.c.l.d(textView, "reminderText");
        AbstractC17877q abstractC17877q = this.f50813i;
        if (abstractC17877q == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        int intValue = ((Number) kVar.a).intValue();
        Object[] objArr = (Object[]) kVar.b;
        C19291g.m13507u1(textView, intValue, Arrays.copyOf(objArr, objArr.length));
        textView.setOnTouchListener(new View$OnTouchListenerC17845a(0, textView));
        textView.setFocusableInTouchMode(true);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        C19291g.m13622H1(textView, new C17847c(textView, abstractC17877q));
        TextView textView2 = m15762YA.f51456f;
        s1.z.c.l.d(textView2, "legalFooterText");
        AbstractC17877q abstractC17877q2 = this.f50813i;
        if (abstractC17877q2 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        int intValue2 = ((Number) kVar2.a).intValue();
        Object[] objArr2 = (Object[]) kVar2.b;
        C19291g.m13507u1(textView2, intValue2, Arrays.copyOf(objArr2, objArr2.length));
        textView2.setOnTouchListener(new View$OnTouchListenerC17845a(1, textView2));
        textView2.setFocusableInTouchMode(true);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        C19291g.m13622H1(textView2, new C17848d(textView2, abstractC17877q2));
        TextView textView3 = m15762YA.f51452b;
        s1.z.c.l.d(textView3, "dataUsedText");
        AbstractC17877q abstractC17877q3 = this.f50813i;
        if (abstractC17877q3 == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        int intValue3 = ((Number) kVar3.a).intValue();
        Object[] objArr3 = (Object[]) kVar3.b;
        C19291g.m13507u1(textView3, intValue3, Arrays.copyOf(objArr3, objArr3.length));
        textView3.setOnTouchListener(new View$OnTouchListenerC17845a(2, textView3));
        textView3.setFocusableInTouchMode(true);
        textView3.setMovementMethod(LinkMovementMethod.getInstance());
        C19291g.m13622H1(textView3, new C17849e(textView3, abstractC17877q3));
    }
}
