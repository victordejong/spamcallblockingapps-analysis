package p193e.p194a.p1066n;

import android.accounts.Account;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import java.text.DateFormat;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.DialogC25424p;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p679d5.p680g.AbstractC12635n;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.m;
import s1.z.c.y;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b[\u0010\u001fJ\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\u00142\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J)\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u001fJ\u0011\u0010&\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b&\u0010'J\u0011\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b)\u0010*J\u0011\u0010+\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b+\u0010*J\u0017\u0010-\u001a\u00020\u00052\u0006\u0010,\u001a\u00020 H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0016¢\u0006\u0004\b/\u0010\u001fJ\u000f\u00100\u001a\u00020\u0005H\u0016¢\u0006\u0004\b0\u0010\u001fJ\u000f\u00101\u001a\u00020\u0005H\u0016¢\u0006\u0004\b1\u0010\u001fJ\u000f\u00102\u001a\u00020\u0005H\u0016¢\u0006\u0004\b2\u0010\u001fJ\u000f\u00103\u001a\u00020\u0005H\u0016¢\u0006\u0004\b3\u0010\u001fR\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b<\u0010:R(\u0010F\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b?\u0010@\u0012\u0004\bE\u0010\u001f\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0016\u0010J\u001a\u00020G8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010IR\u0016\u0010L\u001a\u0002048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bK\u00106R\"\u0010T\u001a\u00020M8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u001d\u0010Z\u001a\u00020U8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y¨\u0006\\"}, d2 = {"Le/a/n/b;", "Le/a/d5/g/n;", "Le/a/n/y1;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "onDestroyView", "()V", "", "account", "", "I1", "(Ljava/lang/String;)Z", "t1", "O0", "()Ljava/lang/String;", "Ljava/text/DateFormat;", "Xv", "()Ljava/text/DateFormat;", "mc", "timestamp", "Op", "(Ljava/lang/String;)V", "T5", "i", "p", "uc", "dismiss", "Landroid/widget/Button;", "f", "Landroid/widget/Button;", "buttonSkip", "Landroid/widget/TextView;", AbstractC2405c.f7629a, "Landroid/widget/TextView;", "timestampText", "e", "descriptionView", "Ls1/w/f;", C22021b.f61237c, "Ls1/w/f;", "getUiContext", "()Ls1/w/f;", "setUiContext", "(Ls1/w/f;)V", "getUiContext$annotations", "uiContext", "Landroid/widget/ProgressBar;", "d", "Landroid/widget/ProgressBar;", "progressBar", "g", "buttonRestore", "Le/a/n/x1;", "a", "Le/a/n/x1;", "OA", "()Le/a/n/x1;", "setPresenter", "(Le/a/n/x1;)V", "presenter", "Landroid/content/BroadcastReceiver;", "h", "Ls1/g;", "getRestoreCompletedBroadcastReceiver", "()Landroid/content/BroadcastReceiver;", "restoreCompletedBroadcastReceiver", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.n.b */
/* loaded from: classes5-dex2jar.jar:e/a/n/b.class */
public final class C18251b extends AbstractC12635n implements AbstractC18452y1 {
    @Inject

    /* renamed from: a */
    public AbstractC18449x1 f51575a;
    @Inject

    /* renamed from: b */
    public f f51576b;

    /* renamed from: c */
    public TextView f51577c;

    /* renamed from: d */
    public ProgressBar f51578d;

    /* renamed from: e */
    public TextView f51579e;

    /* renamed from: f */
    public Button f51580f;

    /* renamed from: g */
    public Button f51581g;

    /* renamed from: h */
    public final g f51582h = C25225a.m3978P1(new C18255d());

    /* renamed from: e.a.n.b$a */
    /* loaded from: classes3-dex2jar.jar:e/a/n/b$a.class */
    public static final class View$OnClickListenerC18252a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f51583a;

        /* renamed from: b */
        public final /* synthetic */ Object f51584b;

        public View$OnClickListenerC18252a(int i, Object obj) {
            this.f51583a = i;
            this.f51584b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f51583a;
            if (i == 0) {
                ((C18251b) this.f51584b).m15382OA().mo14926Q6((C18251b) this.f51584b);
            } else if (i != 1) {
                throw null;
            } else {
                ((C18251b) this.f51584b).m15382OA().mo14920x();
            }
        }
    }

    /* renamed from: e.a.n.b$b */
    /* loaded from: classes3-dex2jar.jar:e/a/n/b$b.class */
    public static final class DialogInterface$OnClickListenerC18253b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f51585a;

        /* renamed from: b */
        public final /* synthetic */ Object f51586b;

        public DialogInterface$OnClickListenerC18253b(int i, Object obj) {
            this.f51585a = i;
            this.f51586b = obj;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            int i2 = this.f51585a;
            if (i2 == 0) {
                ((C18251b) this.f51586b).m15382OA().mo14926Q6((C18251b) this.f51586b);
            } else if (i2 != 1) {
                throw null;
            } else {
                ((C18251b) this.f51586b).m15382OA().mo14933Gf();
            }
        }
    }

    /* renamed from: e.a.n.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b$c.class */
    public static final class DialogC18254c extends DialogC25424p {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DialogC18254c(Context context, int i) {
            super(context, i);
            C18251b.this = r5;
        }

        @Override // android.app.Dialog
        public void onBackPressed() {
            C18251b.this.m15382OA().onBackPressed();
        }
    }

    /* renamed from: e.a.n.b$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b$d.class */
    public static final class C18255d extends m implements a<C18446w1> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18255d() {
            super(0);
            C18251b.this = r4;
        }

        public Object invoke() {
            return new C18446w1(this);
        }
    }

    @e(c = "com.truecaller.backup.RestoreOnboardingDialog$showBackupNotFoundDialog$1", f = "RestoreOnboardingDialog.kt", l = {124}, m = "invokeSuspend")
    /* renamed from: e.a.n.b$e */
    /* loaded from: classes5-dex2jar.jar:e/a/n/b$e.class */
    public static final class C18256e extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public Object f51589e;

        /* renamed from: f */
        public Object f51590f;

        /* renamed from: g */
        public int f51591g;

        /* renamed from: i */
        public final /* synthetic */ String f51593i;

        /* renamed from: e.a.n.b$e$a */
        /* loaded from: classes5-dex2jar.jar:e/a/n/b$e$a.class */
        public static final class DialogInterface$OnClickListenerC18257a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ y f51594a;

            public DialogInterface$OnClickListenerC18257a(y yVar) {
                this.f51594a = yVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f51594a.a = true;
            }
        }

        /* renamed from: e.a.n.b$e$b */
        /* loaded from: classes5-dex2jar.jar:e/a/n/b$e$b.class */
        public static final class DialogInterface$OnDismissListenerC18258b implements DialogInterface.OnDismissListener {

            /* renamed from: a */
            public final /* synthetic */ d f51595a;

            /* renamed from: b */
            public final /* synthetic */ y f51596b;

            public DialogInterface$OnDismissListenerC18258b(d dVar, y yVar) {
                this.f51595a = dVar;
                this.f51596b = yVar;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f51595a.c(Boolean.valueOf(this.f51596b.a));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18256e(String str, d dVar) {
            super(2, dVar);
            C18251b.this = r5;
            this.f51593i = str;
        }

        /* renamed from: i */
        public final d<s> m15381i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18256e(this.f51593i, dVar);
        }

        /* renamed from: k */
        public final Object m15380k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18256e(this.f51593i, dVar).m15379s(s.a);
        }

        /* renamed from: s */
        public final Object m15379s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f51591g;
            if (i == 0) {
                c0 m8633d0 = C22128a.m8633d0(obj);
                Context context = C18251b.this.getContext();
                if (context == null) {
                    return Boolean.FALSE;
                }
                l.d(context, "context ?: return@runBlocking false");
                m8633d0.a = context;
                this.f51589e = m8633d0;
                this.f51590f = this;
                this.f51591g = 1;
                s1.w.i iVar = new s1.w.i(C25225a.m3844s1(this));
                y yVar = new y();
                yVar.a = false;
                g$a g_a = new g$a((Context) m8633d0.a);
                g_a.f70854a.f156f = C18251b.this.getString(2131889866, new Object[]{this.f51593i});
                g_a.m3660i(2131889867, new DialogInterface$OnClickListenerC18257a(yVar));
                g_a.m3662g(2131887867, null);
                g_a.f70854a.f165o = new DialogInterface$OnDismissListenerC18258b(iVar, yVar);
                g_a.m3652q();
                Object a = iVar.a();
                if (a == aVar) {
                    l.e(this, "frame");
                }
                obj = a;
                if (a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C18256e c18256e = (C18256e) this.f51590f;
                c0 c0Var = (c0) this.f51589e;
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: I1 */
    public boolean mo14964I1(String str) {
        l.e(str, "account");
        f fVar = this.f51576b;
        if (fVar != null) {
            return ((Boolean) s1.a.a.a.v0.f.d.b3(fVar, new C18256e(str, null))).booleanValue();
        }
        l.l("uiContext");
        throw null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: O0 */
    public String mo14963O0() {
        Context context = getContext();
        String str = null;
        if (context != null) {
            GoogleSignInAccount m39129b = GoogleSignIn.m39129b(context);
            str = null;
            if (m39129b != null) {
                Account m39128I = m39129b.m39128I();
                str = null;
                if (m39128I != null) {
                    str = m39128I.name;
                }
            }
        }
        return str;
    }

    /* renamed from: OA */
    public final AbstractC18449x1 m15382OA() {
        AbstractC18449x1 abstractC18449x1 = this.f51575a;
        if (abstractC18449x1 != null) {
            return abstractC18449x1;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: Op */
    public void mo14962Op(String str) {
        l.e(str, "timestamp");
        TextView textView = this.f51577c;
        if (textView != null) {
            textView.setText(str);
        } else {
            l.l("timestampText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: T5 */
    public void mo14961T5() {
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3656m(2131889875);
            g_a.m3664e(2131889874);
            g_a.m3660i(2131889871, new DialogInterface$OnClickListenerC18253b(0, this));
            g_a.m3662g(2131887928, new DialogInterface$OnClickListenerC18253b(1, this));
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: Xv */
    public DateFormat mo14960Xv() {
        Context context = getContext();
        return context != null ? android.text.format.DateFormat.getDateFormat(context) : null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    public void dismiss() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: i */
    public void mo14959i() {
        ProgressBar progressBar = this.f51578d;
        if (progressBar == null) {
            l.l("progressBar");
            throw null;
        }
        C19286f.m13684T(progressBar);
        TextView textView = this.f51579e;
        if (textView == null) {
            l.l("descriptionView");
            throw null;
        }
        C19286f.m13687Q(textView);
        Button button = this.f51580f;
        if (button == null) {
            l.l("buttonSkip");
            throw null;
        }
        C19286f.m13687Q(button);
        Button button2 = this.f51581g;
        if (button2 != null) {
            C19286f.m13687Q(button2);
        } else {
            l.l("buttonRestore");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: mc */
    public DateFormat mo14958mc() {
        Context context = getContext();
        return context != null ? android.text.format.DateFormat.getTimeFormat(context) : null;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C18251b.super.onActivityResult(i, i2, intent);
        AbstractC18449x1 abstractC18449x1 = this.f51575a;
        if (abstractC18449x1 != null) {
            abstractC18449x1.onActivityResult(i, i2, intent);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C18251b.super.onAttach(context);
        C20399t1.C20403c c20403c = (C20399t1.C20403c) AbstractC17399l2.f48744a.m16142a().mo11178f();
        this.f51575a = (AbstractC18449x1) c20403c.f57364v.get();
        f mo12378g = c20403c.f57343a.f57299b.mo12378g();
        Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
        this.f51576b = mo12378g;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return new DialogC18254c(getActivity(), C2752R.style.Theme_Truecaller_Dialog_Onboarding);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.dialog_onboarding_restore, viewGroup, false);
    }

    public void onDestroyView() {
        C18251b.super.onDestroyView();
        C27062a.m968b(requireContext()).m965e((BroadcastReceiver) this.f51582h.getValue());
        AbstractC18449x1 abstractC18449x1 = this.f51575a;
        if (abstractC18449x1 != null) {
            abstractC18449x1.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v93, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r1v29 */
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C18251b.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(2131366457);
        l.d(findViewById, "view.findViewById(R.id.timestamp)");
        this.f51577c = (TextView) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.button_restore);
        l.d(findViewById2, "view.findViewById(R.id.button_restore)");
        this.f51581g = (Button) findViewById2;
        View findViewById3 = view.findViewById(2131362567);
        l.d(findViewById3, "view.findViewById(R.id.button_skip)");
        this.f51580f = (Button) findViewById3;
        View findViewById4 = view.findViewById(2131363279);
        l.d(findViewById4, "view.findViewById(R.id.description)");
        this.f51579e = (TextView) findViewById4;
        View findViewById5 = view.findViewById(2131365276);
        l.d(findViewById5, "view.findViewById(R.id.progressBar)");
        this.f51578d = (ProgressBar) findViewById5;
        Button button = this.f51581g;
        if (button == null) {
            l.l("buttonRestore");
            throw null;
        }
        button.setOnClickListener(new View$OnClickListenerC18252a(0, this));
        Button button2 = this.f51580f;
        if (button2 == null) {
            l.l("buttonSkip");
            throw null;
        }
        button2.setOnClickListener(new View$OnClickListenerC18252a(1, this));
        AbstractC18449x1 abstractC18449x1 = this.f51575a;
        if (abstractC18449x1 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC18449x1.mo9029Y0(this);
        C27062a.m968b(requireContext()).m967c((BroadcastReceiver) this.f51582h.getValue(), new IntentFilter("com.truecaller.action.RESTORE_COMPLETED"));
        Bundle arguments = getArguments();
        ?? r10 = false;
        if (arguments != null) {
            r10 = arguments.getLong("last_backup_time", 0L);
        }
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString(AnalyticsConstants.CONTEXT) : null;
        Bundle arguments3 = getArguments();
        boolean z = arguments3 != null ? arguments3.getBoolean("enable_backup_if_skipped", false) : false;
        AbstractC18449x1 abstractC18449x12 = this.f51575a;
        if (abstractC18449x12 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC18449x12.mo14925Ue(r10 == true ? 1L : 0L);
        AbstractC18449x1 abstractC18449x13 = this.f51575a;
        if (abstractC18449x13 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC18449x13.mo14924Vg(string);
        AbstractC18449x1 abstractC18449x14 = this.f51575a;
        if (abstractC18449x14 == null) {
            l.l("presenter");
            throw null;
        }
        abstractC18449x14.mo14923ad(z);
        Bundle arguments4 = getArguments();
        boolean z2 = false;
        if (arguments4 != null) {
            z2 = arguments4.getBoolean("auto_restore", false);
        }
        if (!z2) {
            return;
        }
        AbstractC18449x1 abstractC18449x15 = this.f51575a;
        if (abstractC18449x15 != null) {
            abstractC18449x15.mo14922ma(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: p */
    public void mo14957p() {
        ProgressBar progressBar = this.f51578d;
        if (progressBar == null) {
            l.l("progressBar");
            throw null;
        }
        C19286f.m13687Q(progressBar);
        TextView textView = this.f51579e;
        if (textView == null) {
            l.l("descriptionView");
            throw null;
        }
        C19286f.m13684T(textView);
        Button button = this.f51580f;
        if (button == null) {
            l.l("buttonSkip");
            throw null;
        }
        C19286f.m13684T(button);
        Button button2 = this.f51581g;
        if (button2 != null) {
            C19286f.m13684T(button2);
        } else {
            l.l("buttonRestore");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: t1 */
    public void mo14956t1() {
        if (getContext() != null) {
            Toast.makeText(getContext(), 2131888809, 0).show();
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18452y1
    /* renamed from: uc */
    public void mo14955uc() {
        if (!isStateSaved()) {
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            arguments.putString("StartupDialogDismissReason", StartupDialogDismissReason.BACKUP_RESTORED.name());
            setArguments(arguments);
        }
    }
}
