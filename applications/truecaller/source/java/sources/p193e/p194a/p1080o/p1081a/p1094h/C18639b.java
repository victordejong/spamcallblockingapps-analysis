package p193e.p194a.p1080o.p1081a.p1094h;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.method.LinkMovementMethod;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1755d.p1756a.C25691a;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1080o.p1102o.C18791d;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import s1.a.l;
import s1.g;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018�� 72\u00020\u00012\u00020\u0002:\u0001\u0017B\u0007¢\u0006\u0004\b6\u0010!J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010!R\"\u0010)\u001a\u00020\"8��@��X\u0081.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001d\u0010/\u001a\u00020*8V@\u0016X\u0096\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001d\u00105\u001a\u0002008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104¨\u00068"}, d2 = {"Le/a/o/a/h/b;", "Ln3/b/a/q;", "Le/a/o/a/h/f;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "description", "d", "(Ljava/lang/String;)V", "url", C22021b.f61237c, "", "agreed", "ys", "(Z)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "t", "()V", "Le/a/o/a/h/e;", "e", "Le/a/o/a/h/e;", "getPresenter$context_call_release", "()Le/a/o/a/h/e;", "setPresenter$context_call_release", "(Le/a/o/a/h/e;)V", "presenter", "Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;", "g", "Ls1/g;", "W4", "()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;", "contextCallAnalyticsContext", "Le/a/o/o/d;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "QA", "()Le/a/o/o/d;", "binding", "<init>", "i", "context-call_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.o.a.h.b */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/h/b.class */
public final class C18639b extends AbstractC18652k implements AbstractC18647f {

    /* renamed from: h */
    public static final /* synthetic */ l[] f52456h = {C22128a.m8621g0(C18639b.class, "binding", "getBinding()Lcom/truecaller/contextcall/databinding/ContextCallDialogCommunityGuidelineBinding;", 0)};

    /* renamed from: i */
    public static final C18641b f52457i = new C18641b(null);
    @Inject

    /* renamed from: e */
    public AbstractC18646e f52458e;

    /* renamed from: f */
    public final ViewBindingProperty f52459f = new C19350a(new C18640a());

    /* renamed from: g */
    public final g f52460g = C25225a.m3978P1(new C18642c());

    /* renamed from: e.a.o.a.h.b$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/h/b$a.class */
    public static final class C18640a extends m implements s1.z.b.l<C18639b, C18791d> {
        public C18640a() {
            super(1);
        }

        /* renamed from: d */
        public Object m14679d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C3771R.C3773id.button_agree;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C3771R.C3773id.text_description;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C3771R.C3773id.text_title;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        return new C18791d((CardView) requireView, button, textView, textView2);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.o.a.h.b$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/h/b$b.class */
    public static final class C18641b {
        public C18641b(f fVar) {
        }
    }

    /* renamed from: e.a.o.a.h.b$c */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/h/b$c.class */
    public static final class C18642c extends m implements a<ContextCallAnalyticsContext> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18642c() {
            super(0);
            C18639b.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0014, code lost:
            if (r4 != null) goto L7;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object invoke() {
            /*
                r3 = this;
                r0 = r3
                e.a.o.a.h.b r0 = p193e.p194a.p1080o.p1081a.p1094h.C18639b.this
                android.os.Bundle r0 = r0.getArguments()
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L1a
                r0 = r4
                java.lang.String r1 = "manage_call_reason_source"
                java.lang.String r0 = r0.getString(r1)
                r4 = r0
                r0 = r4
                if (r0 == 0) goto L1a
                goto L21
            L1a:
                com.truecaller.contextcall.utils.ContextCallAnalyticsContext r0 = com.truecaller.contextcall.utils.ContextCallAnalyticsContext.SETTINGS
                java.lang.String r0 = r0.name()
                r4 = r0
            L21:
                r0 = r4
                java.lang.String r1 = "arguments?.getString(ARG…ticsContext.SETTINGS.name"
                s1.z.c.l.d(r0, r1)
                r0 = r4
                com.truecaller.contextcall.utils.ContextCallAnalyticsContext r0 = com.truecaller.contextcall.utils.ContextCallAnalyticsContext.valueOf(r0)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1094h.C18639b.C18642c.invoke():java.lang.Object");
        }
    }

    /* renamed from: e.a.o.a.h.b$d */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/h/b$d.class */
    public static final class View$OnClickListenerC18643d implements View.OnClickListener {
        public View$OnClickListenerC18643d() {
            C18639b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18646e abstractC18646e = C18639b.this.f52458e;
            if (abstractC18646e != null) {
                abstractC18646e.mo14668t6();
            } else {
                s1.z.c.l.l("presenter");
                throw null;
            }
        }
    }

    /* renamed from: QA */
    public final C18791d m14680QA() {
        return (C18791d) this.f52459f.m34468b(this, f52456h[0]);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18647f
    /* renamed from: W4 */
    public ContextCallAnalyticsContext mo14677W4() {
        return (ContextCallAnalyticsContext) this.f52460g.getValue();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18647f
    /* renamed from: b */
    public void mo14676b(String str) {
        s1.z.c.l.e(str, "url");
        Context requireContext = requireContext();
        s1.z.c.l.d(requireContext, "requireContext()");
        ContextThemeWrapper m16113E = C17422k.m16113E(requireContext, true);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", 0);
        int m13612L = C19291g.m13612L(m16113E, C3771R.attr.tcx_backgroundSecondary);
        int m13612L2 = C19291g.m13612L(m16113E, C3771R.attr.theme_textColorPrimary);
        if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
            Bundle bundle = new Bundle();
            bundle.putBinder("android.support.customtabs.extra.SESSION", null);
            intent.putExtras(bundle);
        }
        intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", true);
        intent.putExtras(new C25691a(Integer.valueOf(m13612L | (-16777216)), Integer.valueOf(m13612L2), null, null).m3053a());
        intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
        intent.putExtra(DeepLink.REFERRER_URI, Uri.parse("2" + m16113E.getPackageName()));
        intent.setData(Uri.parse(str));
        Object obj = C26467a.f74235a;
        C26467a.C26468a.m1794b(m16113E, intent, null);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18647f
    /* renamed from: d */
    public void mo14675d(String str) {
        s1.z.c.l.e(str, "description");
        TextView textView = m14680QA().f52790b;
        s1.z.c.l.d(textView, "binding.textDescription");
        textView.setText(MediaSessionCompat.m43246d0(str, 63));
    }

    public void onCreate(Bundle bundle) {
        C18639b.super.onCreate(bundle);
        setStyle(0, C3771R.style.StyleX_Dialog_Startup);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3771R.layout.context_call_dialog_community_guideline, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        AbstractC18646e abstractC18646e = this.f52458e;
        if (abstractC18646e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18646e.mo9806c();
        C18639b.super.onDismiss(dialogInterface);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C18639b.super.onViewCreated(view, bundle);
        AbstractC18646e abstractC18646e = this.f52458e;
        if (abstractC18646e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        abstractC18646e.mo9029Y0(this);
        TextView textView = m14680QA().f52790b;
        s1.z.c.l.d(textView, "binding.textDescription");
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        C19291g.m13622H1(textView, new C18645d(this));
        m14680QA().f52789a.setOnClickListener(new View$OnClickListenerC18643d());
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18647f
    /* renamed from: t */
    public void mo14674t() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1094h.AbstractC18647f
    /* renamed from: ys */
    public void mo14673ys(boolean z) {
        Fragment parentFragment = getParentFragment();
        if (!(parentFragment instanceof AbstractC18650i)) {
            parentFragment = null;
        }
        AbstractC18650i abstractC18650i = parentFragment;
        if (abstractC18650i == null) {
            AbstractC18650i activity = getActivity();
            if (!(activity instanceof AbstractC18650i)) {
                activity = null;
            }
            abstractC18650i = activity;
        }
        if (abstractC18650i != null) {
            abstractC18650i.mo14670c1(z);
        }
    }
}
