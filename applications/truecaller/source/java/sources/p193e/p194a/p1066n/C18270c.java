package p193e.p194a.p1066n;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.DialogC25424p;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p679d5.p680g.AbstractC12635n;
import p193e.p194a.p682e.p683a.AbstractC12695c2;
import p193e.p194a.p682e.p683a.C12731f3;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b2\u0010\u001fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00142\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u001fJ\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u001fJ\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u001fJ\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u001fJ\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u001fJ\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u001fR\"\u0010-\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100¨\u00063"}, d2 = {"Le/a/n/c;", "Le/a/d5/g/n;", "Le/a/n/s;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "onDestroy", "()V", "dismiss", "i", "p", "t1", "Ph", "ar", "Le/a/n/r;", "a", "Le/a/n/r;", "OA", "()Le/a/n/r;", "setPresenter", "(Le/a/n/r;)V", "presenter", "Le/a/e/a/f3;", C22021b.f61237c, "Le/a/e/a/f3;", "progressDialog", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.n.c */
/* loaded from: classes5-dex2jar.jar:e/a/n/c.class */
public final class C18270c extends AbstractC12635n implements AbstractC18421s {
    @Inject

    /* renamed from: a */
    public AbstractC18418r f51635a;

    /* renamed from: b */
    public C12731f3 f51636b;

    /* renamed from: e.a.n.c$a */
    /* loaded from: classes3-dex2jar.jar:e/a/n/c$a.class */
    public static final class DialogInterface$OnClickListenerC18271a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f51637a;

        /* renamed from: b */
        public final /* synthetic */ Object f51638b;

        public DialogInterface$OnClickListenerC18271a(int i, Object obj) {
            this.f51637a = i;
            this.f51638b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f51637a;
            if (i2 == 0) {
                ((C18270c) this.f51638b).m15343OA().mo15017b2();
            } else if (i2 != 1) {
                throw null;
            } else {
                ((C18270c) this.f51638b).m15343OA().mo15013za();
            }
        }
    }

    /* renamed from: e.a.n.c$b */
    /* loaded from: classes3-dex2jar.jar:e/a/n/c$b.class */
    public static final class View$OnClickListenerC18272b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f51639a;

        /* renamed from: b */
        public final /* synthetic */ Object f51640b;

        public View$OnClickListenerC18272b(int i, Object obj) {
            this.f51639a = i;
            this.f51640b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f51639a;
            if (i == 0) {
                ((C18270c) this.f51640b).m15343OA().mo15015wi((C18270c) this.f51640b);
            } else if (i != 1) {
                throw null;
            } else {
                ((C18270c) this.f51640b).m15343OA().mo15014x();
            }
        }
    }

    /* renamed from: e.a.n.c$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c$c.class */
    public static final class DialogC18273c extends DialogC25424p {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DialogC18273c(Context context, int i) {
            super(context, i);
            C18270c.this = r5;
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            super.onBackPressed();
            C18270c.this.m15343OA().onBackPressed();
        }
    }

    /* renamed from: e.a.n.c$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/c$d.class */
    public static final class DialogInterface$OnCancelListenerC18274d implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC18274d() {
            C18270c.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            C18270c.this.m15343OA().mo15018Wc();
        }
    }

    /* renamed from: OA */
    public final AbstractC18418r m15343OA() {
        AbstractC18418r abstractC18418r = this.f51635a;
        if (abstractC18418r != null) {
            return abstractC18418r;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18421s
    /* renamed from: Ph */
    public void mo15035Ph() {
        g$a g_a = new g$a(requireContext());
        g_a.m3656m(C2752R.string.backup_onboarding_sms_title);
        g_a.m3664e(C2752R.string.backup_onboarding_sms_message);
        g_a.m3660i(C2752R.string.backup_onboarding_sms_positive, new DialogInterface$OnClickListenerC18271a(0, this));
        g_a.m3662g(C2752R.string.backup_onboarding_sms_negative, new DialogInterface$OnClickListenerC18271a(1, this));
        g_a.f70854a.f164n = new DialogInterface$OnCancelListenerC18274d();
        g_a.m3652q();
    }

    @Override // p193e.p194a.p1066n.AbstractC18421s
    /* renamed from: ar */
    public void mo15034ar() {
        if (!isStateSaved()) {
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            arguments.putString("StartupDialogDismissReason", StartupDialogDismissReason.BACKUP_FOUND.name());
            setArguments(arguments);
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18421s
    public void dismiss() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1066n.AbstractC18421s
    /* renamed from: i */
    public void mo15033i() {
        C12731f3 m22714RA = C12731f3.m22714RA(2131888258);
        this.f51636b = m22714RA;
        if (m22714RA != null) {
            m22714RA.setCancelable(true);
        }
        C12731f3 c12731f3 = this.f51636b;
        if (c12731f3 != null) {
            AbstractC12695c2.m22740QA(c12731f3, getActivity(), null, 2, null);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        AbstractC18418r abstractC18418r = this.f51635a;
        if (abstractC18418r != null) {
            abstractC18418r.mo15016q(i);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C18270c.super.onAttach(context);
        this.f51635a = (AbstractC18418r) ((C20399t1.C20403c) AbstractC17399l2.f48744a.m16142a().mo11178f()).f57353k.get();
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return new DialogC18273c(getActivity(), C2752R.style.Theme_Truecaller_Dialog_Onboarding);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_onboarding_backup, viewGroup, false);
    }

    public void onDestroy() {
        C18270c.super.onDestroy();
        AbstractC18418r abstractC18418r = this.f51635a;
        if (abstractC18418r != null) {
            abstractC18418r.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C18270c.super.onViewCreated(view, bundle);
        view.findViewById(C2752R.C2754id.button_backup).setOnClickListener(new View$OnClickListenerC18272b(0, this));
        view.findViewById(2131362567).setOnClickListener(new View$OnClickListenerC18272b(1, this));
        AbstractC18418r abstractC18418r = this.f51635a;
        if (abstractC18418r != null) {
            abstractC18418r.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18421s
    /* renamed from: p */
    public void mo15032p() {
        try {
            C12731f3 c12731f3 = this.f51636b;
            if (c12731f3 != null) {
                c12731f3.dismissAllowingStateLoss();
            }
        } catch (Exception e) {
        }
        this.f51636b = null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18421s
    /* renamed from: t1 */
    public void mo15031t1() {
        if (getContext() != null) {
            Toast.makeText(getContext(), 2131888809, 0).show();
        }
    }
}
