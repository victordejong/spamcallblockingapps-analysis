package com.truecaller.incallui.callui.phoneAccount;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.appcompat.app.AlertController;
import com.truecaller.incallui.C4013R;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p718a.p730w.AbstractC13695b;
import p193e.p194a.p717f.p718a.p730w.AbstractC13701g;
import p193e.p194a.p717f.p718a.p730w.AbstractC13702h;
import p193e.p194a.p717f.p718a.p730w.C13696c;
import p193e.p194a.p717f.p718a.p730w.C13699f;
import p193e.p194a.p717f.p718a.p730w.C13704j;
import p193e.p194a.p717f.p718a.p730w.C13705k;
import p193e.p194a.p916i5.C15314a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u001e\u0010\u000eJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0011\u0010\u000eR\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity;", "Ln3/b/a/h;", "Le/a/f/a/w/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "Le/a/f/a/w/c;", "phoneAccountsInfo", "o8", "(Ljava/util/List;)V", "onPause", "()V", "V0", "t", "onDestroy", "Ln3/b/a/g;", "e", "Ln3/b/a/g;", "dialog", "Le/a/f/a/w/g;", "d", "Le/a/f/a/w/g;", "pa", "()Le/a/f/a/w/g;", "setPresenter", "(Le/a/f/a/w/g;)V", "presenter", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity.class */
public final class PhoneAccountsActivity extends AbstractC13695b implements AbstractC13702h {
    @Inject

    /* renamed from: d */
    public AbstractC13701g f12424d;

    /* renamed from: e */
    public g f12425e;

    /* renamed from: com.truecaller.incallui.callui.phoneAccount.PhoneAccountsActivity$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$a.class */
    public static final class DialogInterface$OnClickListenerC4025a implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ C13699f f12427b;

        public DialogInterface$OnClickListenerC4025a(C13699f c13699f) {
            PhoneAccountsActivity.this = r4;
            this.f12427b = c13699f;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C13696c item = this.f12427b.getItem(i);
            if (item != null) {
                l.d(item, "adapter.getItem(position) ?: return@setAdapter");
                AbstractC13701g m35293pa = PhoneAccountsActivity.this.m35293pa();
                String str = item.f39673a;
                C13705k c13705k = (C13705k) m35293pa;
                Objects.requireNonNull(c13705k);
                l.e(str, "accountId");
                c13705k.f39685d.mo21188s(str);
            }
        }
    }

    /* renamed from: com.truecaller.incallui.callui.phoneAccount.PhoneAccountsActivity$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$b.class */
    public static final class DialogInterface$OnClickListenerC4026b implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC4026b() {
            PhoneAccountsActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            ((C13705k) PhoneAccountsActivity.this.m35293pa()).m21297Ij();
        }
    }

    /* renamed from: com.truecaller.incallui.callui.phoneAccount.PhoneAccountsActivity$c */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/phoneAccount/PhoneAccountsActivity$c.class */
    public static final class DialogInterface$OnCancelListenerC4027c implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC4027c() {
            PhoneAccountsActivity.this = r4;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            ((C13705k) PhoneAccountsActivity.this.m35293pa()).m21297Ij();
        }
    }

    @Override // p193e.p194a.p717f.p718a.p730w.AbstractC13702h
    /* renamed from: V0 */
    public void mo21306V0() {
        g gVar = this.f12425e;
        if (gVar != null) {
            gVar.dismiss();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p717f.p718a.p730w.AbstractC13702h
    /* renamed from: o8 */
    public void mo21305o8(List<C13696c> list) {
        l.e(list, "phoneAccountsInfo");
        C15314a c15314a = C15314a.f43582g;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper((Context) this, C15314a.m18938a().f43587c);
        C13699f c13699f = new C13699f(contextThemeWrapper, list);
        g$a g_a = new g$a(contextThemeWrapper);
        g_a.m3656m(C4013R.string.incallui_phone_accounts_dialog_title);
        DialogInterface$OnClickListenerC4025a dialogInterface$OnClickListenerC4025a = new DialogInterface$OnClickListenerC4025a(c13699f);
        AlertController.C0037b c0037b = g_a.f70854a;
        c0037b.f168r = c13699f;
        c0037b.f169s = dialogInterface$OnClickListenerC4025a;
        g_a.m3662g(C4013R.string.incallui_phone_accounts_cancel_button, new DialogInterface$OnClickListenerC4026b());
        AlertController.C0037b c0037b2 = g_a.f70854a;
        c0037b2.f163m = true;
        c0037b2.f164n = new DialogInterface$OnCancelListenerC4027c();
        this.f12425e = g_a.m3652q();
    }

    public void onCreate(Bundle bundle) {
        PhoneAccountsActivity.super.onCreate(bundle);
        AbstractC13701g abstractC13701g = this.f12424d;
        if (abstractC13701g != null) {
            ((C13705k) abstractC13701g).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onDestroy() {
        AbstractC13701g abstractC13701g = this.f12424d;
        if (abstractC13701g == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC13701g).mo9806c();
        PhoneAccountsActivity.super.onDestroy();
    }

    public void onPause() {
        AbstractC13701g abstractC13701g = this.f12424d;
        if (abstractC13701g == null) {
            l.l("presenter");
            throw null;
        }
        C13705k c13705k = (C13705k) abstractC13701g;
        Objects.requireNonNull(c13705k);
        d.w2(c13705k, (f) null, (j0) null, new C13704j(c13705k, null), 3, (Object) null);
        PhoneAccountsActivity.super.onPause();
    }

    /* renamed from: pa */
    public final AbstractC13701g m35293pa() {
        AbstractC13701g abstractC13701g = this.f12424d;
        if (abstractC13701g != null) {
            return abstractC13701g;
        }
        l.l("presenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p717f.p718a.p730w.AbstractC13702h
    /* renamed from: t */
    public void mo21304t() {
        finish();
    }
}
