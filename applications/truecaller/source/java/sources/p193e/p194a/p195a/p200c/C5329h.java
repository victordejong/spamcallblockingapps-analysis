package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.Objects;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18189u0;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p195a.AbstractC6392i0;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� !2\u00020\u0001:\u0001\u001cB\u0007¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\""}, d2 = {"Le/a/a/c/h;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/m3/u0;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/m3/u0;", "binding", "Le/a/a/c/s5;", C22021b.f61237c, "Le/a/a/c/s5;", "callback", "Le/a/a/i0;", AbstractC2405c.f7629a, "Le/a/a/i0;", "settings", "<init>", "()V", "e", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.h */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/h.class */
public final class C5329h extends q {

    /* renamed from: d */
    public static final /* synthetic */ l[] f18261d = {C22128a.m8621g0(C5329h.class, "binding", "getBinding()Lcom/truecaller/databinding/LayoutTranslationPreferencesDialogBinding;", 0)};

    /* renamed from: e */
    public static final C5332c f18262e = new C5332c(null);

    /* renamed from: a */
    public final ViewBindingProperty f18263a = new C19350a(new C5331b());

    /* renamed from: b */
    public AbstractC5721s5 f18264b;

    /* renamed from: c */
    public AbstractC6392i0 f18265c;

    /* renamed from: e.a.a.c.h$a */
    /* loaded from: classes3-dex2jar.jar:e/a/a/c/h$a.class */
    public static final class View$OnClickListenerC5330a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f18266a;

        /* renamed from: b */
        public final /* synthetic */ Object f18267b;

        public View$OnClickListenerC5330a(int i, Object obj) {
            this.f18266a = i;
            this.f18267b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f18266a;
            if (i == 0) {
                ((C5329h) this.f18267b).dismissAllowingStateLoss();
                return;
            }
            boolean z = true;
            Message message = null;
            if (i != 1) {
                throw null;
            }
            C5329h c5329h = (C5329h) this.f18267b;
            l[] lVarArr = C5329h.f18261d;
            CheckBox checkBox = c5329h.m33282OA().f51419b;
            s1.z.c.l.d(checkBox, "binding.checkbox");
            if (checkBox.isChecked()) {
                C5329h c5329h2 = (C5329h) this.f18267b;
                AbstractC6392i0 abstractC6392i0 = c5329h2.f18265c;
                if (abstractC6392i0 == null) {
                    s1.z.c.l.l("settings");
                    throw null;
                }
                RadioGroup radioGroup = c5329h2.m33282OA().f51421d;
                s1.z.c.l.d(radioGroup, "binding.radioGroup");
                abstractC6392i0.mo31058i1(radioGroup.getCheckedRadioButtonId() == 2131365333 ? AnalyticsConstants.WIFI : "wifiOrMobile");
            }
            AbstractC6392i0 abstractC6392i02 = ((C5329h) this.f18267b).f18265c;
            if (abstractC6392i02 == null) {
                s1.z.c.l.l("settings");
                throw null;
            }
            abstractC6392i02.mo31066h();
            ((C5329h) this.f18267b).dismissAllowingStateLoss();
            C5329h c5329h3 = (C5329h) this.f18267b;
            AbstractC5721s5 abstractC5721s5 = c5329h3.f18264b;
            if (abstractC5721s5 == null) {
                s1.z.c.l.l("callback");
                throw null;
            }
            Bundle arguments = c5329h3.getArguments();
            String string = arguments != null ? arguments.getString("languageCode") : null;
            s1.z.c.l.c(string);
            s1.z.c.l.d(string, "arguments?.getString(PARAM_LANGUAGE_CODE)!!");
            RadioGroup radioGroup2 = ((C5329h) this.f18267b).m33282OA().f51421d;
            s1.z.c.l.d(radioGroup2, "binding.radioGroup");
            if (radioGroup2.getCheckedRadioButtonId() != 2131365334) {
                z = false;
            }
            Bundle arguments2 = ((C5329h) this.f18267b).getArguments();
            if (arguments2 != null) {
                message = (Message) arguments2.getParcelable("message");
            }
            abstractC5721s5.mo22506Wn(string, z, message);
        }
    }

    /* renamed from: e.a.a.c.h$b */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/h$b.class */
    public static final class C5331b extends m implements s1.z.b.l<C5329h, C18189u0> {
        public C5331b() {
            super(1);
        }

        /* renamed from: d */
        public Object m33281d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362689;
            Button button = (Button) requireView.findViewById(2131362689);
            if (button != null) {
                i = 2131362756;
                CheckBox checkBox = (CheckBox) requireView.findViewById(2131362756);
                if (checkBox != null) {
                    i = 2131363389;
                    Button button2 = (Button) requireView.findViewById(2131363389);
                    if (button2 != null) {
                        i = 2131365321;
                        RadioGroup radioGroup = (RadioGroup) requireView.findViewById(2131365321);
                        if (radioGroup != null) {
                            i = 2131365333;
                            RadioButton radioButton = (RadioButton) requireView.findViewById(2131365333);
                            if (radioButton != null) {
                                i = 2131365334;
                                RadioButton radioButton2 = (RadioButton) requireView.findViewById(2131365334);
                                if (radioButton2 != null) {
                                    i = 2131366469;
                                    TextView textView = (TextView) requireView.findViewById(2131366469);
                                    if (textView != null) {
                                        return new C18189u0((CardView) requireView, button, checkBox, button2, radioGroup, radioButton, radioButton2, textView);
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

    /* renamed from: e.a.a.c.h$c */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/h$c.class */
    public static final class C5332c {
        public C5332c(f fVar) {
        }
    }

    /* renamed from: OA */
    public final C18189u0 m33282OA() {
        return (C18189u0) this.f18263a.m34468b(this, f18261d[0]);
    }

    public void onCreate(Bundle bundle) {
        C5329h.super.onCreate(bundle);
        setStyle(0, 2131952154);
        Context context = getContext();
        Context applicationContext = context != null ? context.getApplicationContext() : null;
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC6392i0 mo12565S = applicationContext.mo10154s().mo12565S();
        s1.z.c.l.d(mo12565S, "(context?.applicationCon…).objectsGraph.settings()");
        this.f18265c = mo12565S;
        try {
            AbstractC5721s5 parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.truecaller.messaging.conversation.DownloadTranslationsDialogCallback");
            }
            this.f18264b = parentFragment;
        } catch (ClassCastException e) {
            throw new ClassCastException("Parent fragment should implement this interface");
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(2131559289, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C5329h.super.onViewCreated(view, bundle);
        m33282OA().f51418a.setOnClickListener(new View$OnClickListenerC5330a(0, this));
        m33282OA().f51420c.setOnClickListener(new View$OnClickListenerC5330a(1, this));
    }
}
