package p193e.p194a.p1066n;

import android.accounts.Account;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.SwitchCompat;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import com.google.android.gms.auth.api.signin.GoogleSignIn;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.backup.worker.BackupWorker;
import com.truecaller.p183ui.components.ComboBase;
import java.util.HashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC17399l2;
import p193e.p194a.C20399t1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p682e.p683a.AbstractC12695c2;
import p193e.p194a.p682e.p683a.C12731f3;
import p193e.p194a.p682e.p699c2.C13197i0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bp\u0010\u0015J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J)\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0015J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\"\u0010!J\u0019\u0010%\u001a\u00020\u00052\b\u0010$\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b%\u0010&J%\u0010+\u001a\u00020\u00052\f\u0010)\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010*\u001a\u00020(H\u0016¢\u0006\u0004\b+\u0010,J%\u0010.\u001a\u00020\u00052\f\u0010-\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010*\u001a\u00020(H\u0016¢\u0006\u0004\b.\u0010,J\u0017\u00100\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u001eH\u0016¢\u0006\u0004\b0\u0010!J\u0017\u00101\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u001eH\u0016¢\u0006\u0004\b1\u0010!J%\u00103\u001a\u00020\u00052\f\u00102\u001a\b\u0012\u0004\u0012\u00020(0'2\u0006\u0010*\u001a\u00020(H\u0016¢\u0006\u0004\b3\u0010,J\u0017\u00104\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u001eH\u0016¢\u0006\u0004\b4\u0010!J\u0017\u00105\u001a\u00020\u00052\u0006\u0010/\u001a\u00020\u001eH\u0016¢\u0006\u0004\b5\u0010!J\u0017\u00108\u001a\u00020\u00052\u0006\u00107\u001a\u000206H\u0016¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u0005H\u0016¢\u0006\u0004\b:\u0010\u0015J\u0017\u0010<\u001a\u00020\u00052\u0006\u0010;\u001a\u00020\u001eH\u0016¢\u0006\u0004\b<\u0010!J\u000f\u0010=\u001a\u00020\u0005H\u0016¢\u0006\u0004\b=\u0010\u0015J\u000f\u0010>\u001a\u00020\u0005H\u0016¢\u0006\u0004\b>\u0010\u0015J\u000f\u0010?\u001a\u00020\u0005H\u0016¢\u0006\u0004\b?\u0010\u0015J\u0011\u0010@\u001a\u0004\u0018\u00010#H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0005H\u0016¢\u0006\u0004\bB\u0010\u0015J\u000f\u0010C\u001a\u00020\u0005H\u0016¢\u0006\u0004\bC\u0010\u0015R\u0016\u0010G\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010I\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bH\u0010FR\"\u0010Q\u001a\u00020J8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bK\u0010L\u001a\u0004\bM\u0010N\"\u0004\bO\u0010PR\u0016\u0010T\u001a\u00020R8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010SR\u0016\u0010X\u001a\u00020U8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010\\\u001a\u00020Y8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010^\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b]\u0010FR\u0016\u0010b\u001a\u00020_8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010e\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bc\u0010dR\u0016\u0010g\u001a\u00020U8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bf\u0010WR\u0016\u0010i\u001a\u00020_8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bh\u0010aR\u0016\u0010k\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bj\u0010dR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010n¨\u0006q"}, d2 = {"Le/a/n/a;", "Landroidx/fragment/app/Fragment;", "Le/a/n/z;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Ls1/s;", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "()V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "onResume", "", "checked", "Qm", "(Z)V", "Ct", "", "lastBackupString", "Ul", "(Ljava/lang/String;)V", "", "Le/a/e/c2/i0;", "backupFrequencyValues", "initialValue", "zc", "(Ljava/util/List;Le/a/e/c2/i0;)V", "backupOverValues", "Iy", "enabled", "i8", "Wj", "accountValues", "yh", "mj", "eb", "", "lastBackupTime", "er", "(J)V", "t1", "visible", "Nt", "i", "p", "hq", "O0", "()Ljava/lang/String;", "wm", "Hm", "Lcom/truecaller/ui/components/ComboBase;", "e", "Lcom/truecaller/ui/components/ComboBase;", "backupOverCombo", "d", "frequencyCombo", "Le/a/n/y;", "a", "Le/a/n/y;", "OA", "()Le/a/n/y;", "setPresenter", "(Le/a/n/y;)V", "presenter", "Landroidx/cardview/widget/CardView;", "Landroidx/cardview/widget/CardView;", "backupSmsPermissionButton", "Landroidx/appcompat/widget/SwitchCompat;", "j", "Landroidx/appcompat/widget/SwitchCompat;", "backupVideosSwitch", "Landroid/content/BroadcastReceiver;", "l", "Landroid/content/BroadcastReceiver;", "backupBroadcastReceiver", "f", "accountCombo", "Landroid/widget/TextView;", AbstractC2405c.f7629a, "Landroid/widget/TextView;", "lastBackupText", "h", "Landroid/view/View;", "backupSmsContainer", C22021b.f61237c, "backupSwitch", "g", "backupNowText", "k", "settingsBackupVideos", "Le/a/e/a/f3;", "m", "Le/a/e/a/f3;", "progressDialog", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.n.a */
/* loaded from: classes5-dex2jar.jar:e/a/n/a.class */
public final class C18244a extends Fragment implements AbstractC18453z {
    @Inject

    /* renamed from: a */
    public AbstractC18450y f51555a;

    /* renamed from: b */
    public SwitchCompat f51556b;

    /* renamed from: c */
    public TextView f51557c;

    /* renamed from: d */
    public ComboBase f51558d;

    /* renamed from: e */
    public ComboBase f51559e;

    /* renamed from: f */
    public ComboBase f51560f;

    /* renamed from: g */
    public TextView f51561g;

    /* renamed from: h */
    public View f51562h;

    /* renamed from: i */
    public CardView f51563i;

    /* renamed from: j */
    public SwitchCompat f51564j;

    /* renamed from: k */
    public View f51565k;

    /* renamed from: l */
    public BroadcastReceiver f51566l;

    /* renamed from: m */
    public C12731f3 f51567m;

    /* renamed from: e.a.n.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/n/a$a.class */
    public static final class View$OnClickListenerC18245a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f51568a;

        /* renamed from: b */
        public final /* synthetic */ Object f51569b;

        public View$OnClickListenerC18245a(int i, Object obj) {
            this.f51568a = i;
            this.f51569b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f51568a;
            if (i == 0) {
                SwitchCompat switchCompat = ((C18244a) this.f51569b).f51556b;
                if (switchCompat != null) {
                    switchCompat.toggle();
                } else {
                    l.l("backupSwitch");
                    throw null;
                }
            } else if (i == 1) {
                ((C18244a) this.f51569b).m15386OA().mo14968xh();
            } else if (i == 2) {
                ((C18244a) this.f51569b).m15386OA().mo14970te();
            } else if (i != 3) {
                throw null;
            } else {
                SwitchCompat switchCompat2 = ((C18244a) this.f51569b).f51564j;
                if (switchCompat2 != null) {
                    switchCompat2.toggle();
                } else {
                    l.l("backupVideosSwitch");
                    throw null;
                }
            }
        }
    }

    /* renamed from: e.a.n.a$b */
    /* loaded from: classes3-dex2jar.jar:e/a/n/a$b.class */
    public static final class C18246b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ int f51570a;

        /* renamed from: b */
        public final /* synthetic */ Object f51571b;

        public C18246b(int i, Object obj) {
            this.f51570a = i;
            this.f51571b = obj;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            int i = this.f51570a;
            if (i == 0) {
                ((C18244a) this.f51571b).m15386OA().mo14967z8((C18244a) this.f51571b, z);
            } else if (i != 1) {
                throw null;
            } else {
                ((C18244a) this.f51571b).m15386OA().mo14969uc(z);
            }
        }
    }

    /* renamed from: e.a.n.a$d */
    /* loaded from: classes5-dex2jar.jar:e/a/n/a$d.class */
    public static final class DialogInterface$OnClickListenerC18247d implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC18247d() {
            C18244a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C18244a.this.m15386OA().mo14975K9(C18244a.this);
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Ct */
    public void mo14954Ct(boolean z) {
        SwitchCompat switchCompat = this.f51564j;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        } else {
            l.l("backupVideosSwitch");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Hm */
    public void mo14953Hm() {
        HashMap hashMap = new HashMap();
        hashMap.put("backupNow", Boolean.TRUE);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "Data.Builder()\n         …\n                .build()");
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
        C26842r.C26843a c26843a = new C26842r.C26843a(BackupWorker.class);
        c26843a.f75127c.f74906e = c26829f;
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        m1431n.m1279i("OneTimeBackupWorker", EnumC26832h.KEEP, m1272b);
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Iy */
    public void mo14952Iy(List<? extends C13197i0> list, C13197i0 c13197i0) {
        l.e(list, "backupOverValues");
        l.e(c13197i0, "initialValue");
        ComboBase comboBase = this.f51559e;
        if (comboBase == null) {
            l.l("backupOverCombo");
            throw null;
        }
        comboBase.setData(list);
        ComboBase comboBase2 = this.f51559e;
        if (comboBase2 != null) {
            comboBase2.setSelection(c13197i0);
        } else {
            l.l("backupOverCombo");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Nt */
    public void mo14951Nt(boolean z) {
        View view = this.f51562h;
        if (view != null) {
            C19286f.m13683U(view, z);
        } else {
            l.l("backupSmsContainer");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: O0 */
    public String mo14950O0() {
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
    public final AbstractC18450y m15386OA() {
        AbstractC18450y abstractC18450y = this.f51555a;
        if (abstractC18450y != null) {
            return abstractC18450y;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Qm */
    public void mo14949Qm(boolean z) {
        SwitchCompat switchCompat = this.f51556b;
        if (switchCompat != null) {
            switchCompat.setChecked(z);
        } else {
            l.l("backupSwitch");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Ul */
    public void mo14948Ul(String str) {
        TextView textView = this.f51557c;
        if (textView != null) {
            C19291g.m13637C1(textView, str);
        } else {
            l.l("lastBackupText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: Wj */
    public void mo14947Wj(boolean z) {
        ComboBase comboBase = this.f51558d;
        if (comboBase != null) {
            C19286f.m13690N(comboBase, z, 0.0f, 2);
        } else {
            l.l("frequencyCombo");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: eb */
    public void mo14946eb(boolean z) {
        TextView textView = this.f51561g;
        if (textView != null) {
            textView.setEnabled(z);
        } else {
            l.l("backupNowText");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: er */
    public void mo14945er(long j) {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            Fragment c18251b = new C18251b();
            Bundle bundle = new Bundle();
            bundle.putLong("last_backup_time", j);
            bundle.putString(AnalyticsConstants.CONTEXT, "settings_screen");
            c18251b.setArguments(bundle);
            C26907a c26907a = new C26907a(activity.getSupportFragmentManager());
            c26907a.mo1122k(0, c18251b, C18251b.class.getSimpleName(), 1);
            c26907a.mo1126g();
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: hq */
    public void mo14944hq() {
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.m3656m(C2752R.string.backup_settings_warning_dialog_title);
            g_a.m3664e(C2752R.string.backup_settings_warning_dialog_message);
            g_a.m3660i(C2752R.string.backup_settings_warning_dialog_positive, new DialogInterface$OnClickListenerC18247d());
            g_a.m3662g(C2752R.string.backup_settings_warning_dialog_negative, null);
            g_a.m3652q();
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: i */
    public void mo14943i() {
        C12731f3 m22714RA = C12731f3.m22714RA(2131888258);
        this.f51567m = m22714RA;
        if (m22714RA != null) {
            m22714RA.setCancelable(true);
        }
        C12731f3 c12731f3 = this.f51567m;
        if (c12731f3 != null) {
            AbstractC12695c2.m22740QA(c12731f3, getActivity(), null, 2, null);
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: i8 */
    public void mo14942i8(boolean z) {
        ComboBase comboBase = this.f51559e;
        if (comboBase != null) {
            C19286f.m13690N(comboBase, z, 0.0f, 2);
        } else {
            l.l("backupOverCombo");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: mj */
    public void mo14941mj(boolean z) {
        ComboBase comboBase = this.f51560f;
        if (comboBase != null) {
            C19286f.m13690N(comboBase, z, 0.0f, 2);
        } else {
            l.l("accountCombo");
            throw null;
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C18244a.super.onActivityResult(i, i2, intent);
        AbstractC18450y abstractC18450y = this.f51555a;
        if (abstractC18450y != null) {
            abstractC18450y.mo14972r8(i, i2, intent);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onAttach(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C18244a.super.onAttach(context);
        this.f51555a = (AbstractC18450y) ((C20399t1.C20403c) AbstractC17399l2.f48744a.m16142a().mo11178f()).f57347e.get();
        this.f51566l = new C18447x(this);
        C27062a m968b = C27062a.m968b(context);
        BroadcastReceiver broadcastReceiver = this.f51566l;
        if (broadcastReceiver != null) {
            m968b.m967c(broadcastReceiver, new IntentFilter("com.truecaller.backup.BACKUP_DONE"));
        } else {
            l.l("backupBroadcastReceiver");
            throw null;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.fragment_settings_backup, viewGroup, false);
    }

    public void onDestroy() {
        C18244a.super.onDestroy();
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            C27062a m968b = C27062a.m968b(context);
            BroadcastReceiver broadcastReceiver = this.f51566l;
            if (broadcastReceiver == null) {
                l.l("backupBroadcastReceiver");
                throw null;
            }
            m968b.m965e(broadcastReceiver);
        }
        AbstractC18450y abstractC18450y = this.f51555a;
        if (abstractC18450y != null) {
            abstractC18450y.mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        C18244a.super.onResume();
        AbstractC18450y abstractC18450y = this.f51555a;
        if (abstractC18450y != null) {
            abstractC18450y.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C18244a.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C2752R.C2754id.settings_backup_switch);
        l.d(findViewById, "view.findViewById(R.id.settings_backup_switch)");
        this.f51556b = (SwitchCompat) findViewById;
        View findViewById2 = view.findViewById(C2752R.C2754id.settings_backup_last);
        l.d(findViewById2, "view.findViewById(R.id.settings_backup_last)");
        this.f51557c = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.settings_backup_frequency);
        l.d(findViewById3, "view.findViewById(R.id.settings_backup_frequency)");
        this.f51558d = (ComboBase) findViewById3;
        View findViewById4 = view.findViewById(C2752R.C2754id.settings_backup_over);
        l.d(findViewById4, "view.findViewById(R.id.settings_backup_over)");
        this.f51559e = (ComboBase) findViewById4;
        View findViewById5 = view.findViewById(C2752R.C2754id.settings_backup_account);
        l.d(findViewById5, "view.findViewById(R.id.settings_backup_account)");
        this.f51560f = (ComboBase) findViewById5;
        View findViewById6 = view.findViewById(C2752R.C2754id.button_backup_now);
        l.d(findViewById6, "view.findViewById(R.id.button_backup_now)");
        this.f51561g = (TextView) findViewById6;
        View findViewById7 = view.findViewById(C2752R.C2754id.settings_backup_sms);
        l.d(findViewById7, "view.findViewById(R.id.settings_backup_sms)");
        this.f51562h = findViewById7;
        View findViewById8 = view.findViewById(C2752R.C2754id.settings_backup_sms_permission_button);
        l.d(findViewById8, "view.findViewById(R.id.s…up_sms_permission_button)");
        this.f51563i = (CardView) findViewById8;
        View findViewById9 = view.findViewById(C2752R.C2754id.backupVideosSwitch);
        l.d(findViewById9, "view.findViewById(R.id.backupVideosSwitch)");
        this.f51564j = (SwitchCompat) findViewById9;
        View findViewById10 = view.findViewById(C2752R.C2754id.settingsBackupVideos);
        l.d(findViewById10, "view.findViewById(R.id.settingsBackupVideos)");
        this.f51565k = findViewById10;
        view.findViewById(C2752R.C2754id.settings_backup).setOnClickListener(new View$OnClickListenerC18245a(0, this));
        TextView textView = this.f51561g;
        if (textView == null) {
            l.l("backupNowText");
            throw null;
        }
        textView.setOnClickListener(new View$OnClickListenerC18245a(1, this));
        SwitchCompat switchCompat = this.f51556b;
        if (switchCompat == null) {
            l.l("backupSwitch");
            throw null;
        }
        switchCompat.setOnCheckedChangeListener(new C18246b(0, this));
        ComboBase comboBase = this.f51558d;
        if (comboBase == null) {
            l.l("frequencyCombo");
            throw null;
        }
        comboBase.m34539a(new c(0, this));
        ComboBase comboBase2 = this.f51559e;
        if (comboBase2 == null) {
            l.l("backupOverCombo");
            throw null;
        }
        comboBase2.m34539a(new c(1, this));
        ComboBase comboBase3 = this.f51560f;
        if (comboBase3 == null) {
            l.l("accountCombo");
            throw null;
        }
        comboBase3.m34539a(new c(2, this));
        CardView cardView = this.f51563i;
        if (cardView == null) {
            l.l("backupSmsPermissionButton");
            throw null;
        }
        cardView.setOnClickListener(new View$OnClickListenerC18245a(2, this));
        View view2 = this.f51565k;
        if (view2 == null) {
            l.l("settingsBackupVideos");
            throw null;
        }
        view2.setOnClickListener(new View$OnClickListenerC18245a(3, this));
        SwitchCompat switchCompat2 = this.f51564j;
        if (switchCompat2 == null) {
            l.l("backupVideosSwitch");
            throw null;
        }
        switchCompat2.setOnCheckedChangeListener(new C18246b(1, this));
        AbstractC18450y abstractC18450y = this.f51555a;
        if (abstractC18450y != null) {
            abstractC18450y.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: p */
    public void mo14940p() {
        C12731f3 c12731f3 = this.f51567m;
        if (c12731f3 != null) {
            c12731f3.dismissAllowingStateLoss();
        }
        this.f51567m = null;
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: t1 */
    public void mo14939t1() {
        if (getContext() != null) {
            Toast.makeText(getContext(), 2131888809, 0).show();
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: wm */
    public void mo14938wm() {
        BackupWorker.f10190g.m35883d();
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: yh */
    public void mo14937yh(List<? extends C13197i0> list, C13197i0 c13197i0) {
        l.e(list, "accountValues");
        l.e(c13197i0, "initialValue");
        ComboBase comboBase = this.f51560f;
        if (comboBase == null) {
            l.l("accountCombo");
            throw null;
        }
        comboBase.setData(list);
        ComboBase comboBase2 = this.f51560f;
        if (comboBase2 != null) {
            comboBase2.setSelection(c13197i0);
        } else {
            l.l("accountCombo");
            throw null;
        }
    }

    @Override // p193e.p194a.p1066n.AbstractC18453z
    /* renamed from: zc */
    public void mo14936zc(List<? extends C13197i0> list, C13197i0 c13197i0) {
        l.e(list, "backupFrequencyValues");
        l.e(c13197i0, "initialValue");
        ComboBase comboBase = this.f51558d;
        if (comboBase == null) {
            l.l("frequencyCombo");
            throw null;
        }
        comboBase.setData(list);
        ComboBase comboBase2 = this.f51558d;
        if (comboBase2 != null) {
            comboBase2.setSelection(c13197i0);
        } else {
            l.l("frequencyCombo");
            throw null;
        }
    }
}
