package com.truecaller.common.p156ui.dialogs;

import android.content.DialogInterface;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.C3700R;
import kotlin.Metadata;
import n3.b.a.h;
import n3.b.a.q;
import n3.r.a.l;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1868v.C27042z0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p374a.AbstractC8215b;
import p193e.p194a.p372b0.p373a.p374a.C8220c;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\u0018�� 92\u00020\u0001:\u0002:4B\u0007¢\u0006\u0004\b7\u00108J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010#R\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u0017\u001a\u0004\b'\u0010(R\u001d\u0010,\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010\u0017\u001a\u0004\b+\u0010\u001eR\u001d\u0010/\u001a\u00020 8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010\u0017\u001a\u0004\b.\u0010#R\u001d\u00103\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\u0017\u001a\u0004\b1\u00102R\u001d\u00106\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010\u0017\u001a\u0004\b5\u00102¨\u0006;"}, d2 = {"Lcom/truecaller/common/ui/dialogs/ConfirmationDialog;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Le/a/b0/a/a/c;", "a", "Ls1/g;", "PA", "()Le/a/b0/a/a/c;", "viewModel", "Landroid/widget/TextView;", C22021b.f61237c, "getTitleTextView", "()Landroid/widget/TextView;", "titleTextView", "Landroid/widget/Button;", "e", "getNegativeButton", "()Landroid/widget/Button;", "negativeButton", "Landroid/widget/CheckBox;", "h", "OA", "()Landroid/widget/CheckBox;", "checkbox", AbstractC2405c.f7629a, "getSubtitleTextView", "subtitleTextView", "g", "getPositiveButton", "positiveButton", "f", "getNegativeButtonDividerTop", "()Landroid/view/View;", "negativeButtonDividerTop", "d", "getNegativeButtonDividerBottom", "negativeButtonDividerBottom", "<init>", "()V", "i", "ButtonStyle", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog.class */
public final class ConfirmationDialog extends q {

    /* renamed from: i */
    public static final C3713d f11158i = new C3713d(null);

    /* renamed from: a */
    public final g f11159a = MediaSessionCompat.m43278P(this, d0.a(C8220c.class), new C3711b(this), new C3712c(this));

    /* renamed from: b */
    public final g f11160b = C19286f.m13659t(this, C3700R.C3702id.title);

    /* renamed from: c */
    public final g f11161c = C19286f.m13659t(this, C3700R.C3702id.subtitle);

    /* renamed from: d */
    public final g f11162d = C19286f.m13659t(this, C3700R.C3702id.negativeButtonDividerBottom);

    /* renamed from: e */
    public final g f11163e = C19286f.m13659t(this, C3700R.C3702id.negativeButton);

    /* renamed from: f */
    public final g f11164f = C19286f.m13659t(this, C3700R.C3702id.negativeButtonDividerTop);

    /* renamed from: g */
    public final g f11165g = C19286f.m13659t(this, C3700R.C3702id.positiveButton);

    /* renamed from: h */
    public final g f11166h = C19286f.m13659t(this, C3700R.C3702id.checkbox);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;", "", "", RemoteMessageConst.Notification.COLOR, "I", "getColor", "()I", "<init>", "(Ljava/lang/String;II)V", "DEFAULT", "ALERT", "common-ui_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$ButtonStyle */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle.class */
    public enum ButtonStyle {
        DEFAULT(C3700R.attr.tcx_textSecondary),
        ALERT(C3700R.attr.tcx_alertBackgroundRed);
        
        private final int color;

        ButtonStyle(int i) {
            this.color = i;
        }

        public final int getColor() {
            return this.color;
        }
    }

    /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$a.class */
    public static final class View$OnClickListenerC3710a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f11167a;

        /* renamed from: b */
        public final /* synthetic */ Object f11168b;

        public View$OnClickListenerC3710a(int i, Object obj) {
            this.f11167a = i;
            this.f11168b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f11167a;
            boolean z = true;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                ConfirmationDialog confirmationDialog = (ConfirmationDialog) this.f11168b;
                C3713d c3713d = ConfirmationDialog.f11158i;
                confirmationDialog.m35693PA().m28767c().mo1000l(AbstractC8215b.C8217b.f25369a);
                confirmationDialog.dismiss();
                ((ConfirmationDialog) this.f11168b).dismissAllowingStateLoss();
                return;
            }
            ConfirmationDialog confirmationDialog2 = (ConfirmationDialog) this.f11168b;
            C3713d c3713d2 = ConfirmationDialog.f11158i;
            C27010k0<AbstractC8215b> m28767c = confirmationDialog2.m35693PA().m28767c();
            if (!C19286f.m13663p(confirmationDialog2.m35694OA()) || !confirmationDialog2.m35694OA().isChecked()) {
                z = false;
            }
            m28767c.mo1000l(new AbstractC8215b.C8218c(z));
            confirmationDialog2.dismiss();
            ((ConfirmationDialog) this.f11168b).dismissAllowingStateLoss();
        }
    }

    /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$b.class */
    public static final class C3711b extends m implements a<C26993b1> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f11169b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3711b(Fragment fragment) {
            super(0);
            this.f11169b = fragment;
        }

        public Object invoke() {
            return C22128a.m8612i1(this.f11169b, "requireActivity()", "requireActivity().viewModelStore");
        }
    }

    /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$c.class */
    public static final class C3712c extends m implements a<C26986a1.AbstractC26987b> {

        /* renamed from: b */
        public final /* synthetic */ Fragment f11170b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3712c(Fragment fragment) {
            super(0);
            this.f11170b = fragment;
        }

        public Object invoke() {
            l requireActivity = this.f11170b.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            return requireActivity.getDefaultViewModelProviderFactory();
        }
    }

    /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$d.class */
    public static final class C3713d {

        /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$d$a */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$d$a.class */
        public static final class C3714a extends m implements a<C26986a1.AbstractC26987b> {

            /* renamed from: b */
            public final /* synthetic */ ComponentActivity f11171b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3714a(ComponentActivity componentActivity) {
                super(0);
                this.f11171b = componentActivity;
            }

            public Object invoke() {
                return this.f11171b.getDefaultViewModelProviderFactory();
            }
        }

        /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$d$b */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$d$b.class */
        public static final class C3715b extends m implements a<C26993b1> {

            /* renamed from: b */
            public final /* synthetic */ ComponentActivity f11172b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C3715b(ComponentActivity componentActivity) {
                super(0);
                this.f11172b = componentActivity;
            }

            public Object invoke() {
                C26993b1 viewModelStore = this.f11172b.getViewModelStore();
                s1.z.c.l.d(viewModelStore, "viewModelStore");
                return viewModelStore;
            }
        }

        /* renamed from: com.truecaller.common.ui.dialogs.ConfirmationDialog$d$c */
        /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/dialogs/ConfirmationDialog$d$c.class */
        public static final class C3716c implements AbstractC27012l0<AbstractC8215b> {

            /* renamed from: a */
            public final /* synthetic */ a f11173a;

            /* renamed from: b */
            public final /* synthetic */ s1.z.b.l f11174b;

            /* renamed from: c */
            public final /* synthetic */ s1.z.b.l f11175c;

            /* renamed from: d */
            public final /* synthetic */ g f11176d;

            public C3716c(a aVar, s1.z.b.l lVar, s1.z.b.l lVar2, g gVar, s1.a.l lVar3) {
                this.f11173a = aVar;
                this.f11174b = lVar;
                this.f11175c = lVar2;
                this.f11176d = gVar;
            }

            @Override // p1727n3.p1868v.AbstractC27012l0
            public void onChanged(AbstractC8215b abstractC8215b) {
                s1.z.b.l lVar;
                AbstractC8215b abstractC8215b2 = abstractC8215b;
                if (s1.z.c.l.a(abstractC8215b2, AbstractC8215b.C8219d.f25371a)) {
                    return;
                }
                if (s1.z.c.l.a(abstractC8215b2, AbstractC8215b.C8217b.f25369a)) {
                    a aVar = this.f11173a;
                    if (aVar != null) {
                        s sVar = (s) aVar.invoke();
                    }
                } else if ((abstractC8215b2 instanceof AbstractC8215b.C8218c) && (lVar = this.f11174b) != null) {
                    s sVar2 = (s) lVar.d(Boolean.valueOf(((AbstractC8215b.C8218c) abstractC8215b2).f25370a));
                }
                s1.z.b.l lVar2 = this.f11175c;
                if (lVar2 != null) {
                    s sVar3 = (s) lVar2.d(abstractC8215b2);
                }
                ((C8220c) this.f11176d.getValue()).m28767c().m42865k(this);
            }
        }

        public C3713d(f fVar) {
        }

        /* renamed from: b */
        public static /* synthetic */ void m35691b(C3713d c3713d, h hVar, String str, String str2, String str3, String str4, String str5, s1.z.b.l lVar, a aVar, s1.z.b.l lVar2, boolean z, ButtonStyle buttonStyle, int i) {
            if ((i & 4) != 0) {
                str2 = null;
            }
            s1.z.b.l lVar3 = (i & 64) != 0 ? null : lVar;
            if ((i & 512) != 0) {
                z = true;
            }
            if ((i & 1024) != 0) {
                buttonStyle = ButtonStyle.DEFAULT;
            }
            c3713d.m35692a(hVar, str, str2, str3, str4, null, lVar3, null, null, z, buttonStyle);
        }

        /* renamed from: a */
        public final void m35692a(h hVar, String str, String str2, String str3, String str4, String str5, s1.z.b.l<? super Boolean, s> lVar, a<s> aVar, s1.z.b.l<? super AbstractC8215b, s> lVar2, boolean z, ButtonStyle buttonStyle) {
            s1.z.c.l.e(hVar, "activity");
            s1.z.c.l.e(str, "title");
            s1.z.c.l.e(str3, "positiveButtonText");
            s1.z.c.l.e(buttonStyle, "positiveButtonStyle");
            C27042z0 c27042z0 = new C27042z0(d0.a(C8220c.class), new C3715b(hVar), new C3714a(hVar));
            ((C8220c) c27042z0.getValue()).m28767c().mo1000l(AbstractC8215b.C8219d.f25371a);
            ((C8220c) c27042z0.getValue()).m28767c().m42867f(hVar, new C3716c(aVar, lVar, lVar2, c27042z0, null));
            ConfirmationDialog confirmationDialog = new ConfirmationDialog();
            Bundle bundle = new Bundle();
            bundle.putString("title", str);
            bundle.putString("subtitle", str2);
            bundle.putString("positive_button_text", str3);
            bundle.putString("negative_button_text", str4);
            bundle.putString("checkbox_text", str5);
            bundle.putSerializable("positive_button_style", buttonStyle);
            confirmationDialog.setArguments(bundle);
            confirmationDialog.setCancelable(z);
            confirmationDialog.show(hVar.getSupportFragmentManager(), (String) null);
        }
    }

    /* renamed from: OA */
    public final CheckBox m35694OA() {
        return (CheckBox) this.f11166h.getValue();
    }

    /* renamed from: PA */
    public final C8220c m35693PA() {
        return (C8220c) this.f11159a.getValue();
    }

    public void onCreate(Bundle bundle) {
        ConfirmationDialog.super.onCreate(bundle);
        setStyle(0, C3700R.style.StyleX_Dialog_Startup_Big);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C3700R.layout.layout_confirmation_dialog, viewGroup, false);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        ConfirmationDialog.super.onDismiss(dialogInterface);
        if (s1.z.c.l.a(m35693PA().m28767c().m42869d(), AbstractC8215b.C8219d.f25371a)) {
            m35693PA().m28767c().mo1000l(AbstractC8215b.C8216a.f25368a);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0053, code lost:
        if (r7 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002d, code lost:
        if (r7 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onViewCreated(android.view.View r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.common.p156ui.dialogs.ConfirmationDialog.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
