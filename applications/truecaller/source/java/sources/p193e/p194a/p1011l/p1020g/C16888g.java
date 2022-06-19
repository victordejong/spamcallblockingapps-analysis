package p193e.p194a.p1011l.p1020g;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p194a.p1011l.p1020g.AbstractC16893l;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.k;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u007f\u0010\u0019J-\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b \u0010\u001fJ\u0017\u0010#\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000eH\u0016¢\u0006\u0004\b%\u0010\u0019J\u0017\u0010'\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u001aH\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u000eH\u0016¢\u0006\u0004\b)\u0010\u0019J\u000f\u0010*\u001a\u00020\u000eH\u0016¢\u0006\u0004\b*\u0010\u0019J\u0017\u0010,\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u001dH\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u001dH\u0016¢\u0006\u0004\b/\u0010-J\u000f\u00100\u001a\u00020\u000eH\u0016¢\u0006\u0004\b0\u0010\u0019R%\u00106\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R%\u00109\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b7\u00103\u001a\u0004\b8\u00105R%\u0010>\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u00103\u001a\u0004\b<\u0010=R%\u0010A\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u00103\u001a\u0004\b@\u00105R%\u0010D\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bB\u00103\u001a\u0004\bC\u0010=R%\u0010G\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u00103\u001a\u0004\bF\u00105R%\u0010L\u001a\n 1*\u0004\u0018\u00010H0H8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bI\u00103\u001a\u0004\bJ\u0010KR%\u0010O\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bM\u00103\u001a\u0004\bN\u0010=R%\u0010R\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bP\u00103\u001a\u0004\bQ\u00105R%\u0010U\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u00103\u001a\u0004\bT\u0010=R%\u0010X\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bV\u00103\u001a\u0004\bW\u0010=R%\u0010[\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u00103\u001a\u0004\bZ\u0010=R\"\u0010c\u001a\u00020\\8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR%\u0010f\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u00103\u001a\u0004\be\u00105R%\u0010i\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bg\u00103\u001a\u0004\bh\u0010=R%\u0010n\u001a\n 1*\u0004\u0018\u00010j0j8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bk\u00103\u001a\u0004\bl\u0010mR%\u0010q\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bo\u00103\u001a\u0004\bp\u00105R%\u0010t\u001a\n 1*\u0004\u0018\u00010:0:8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u00103\u001a\u0004\bs\u0010=R%\u0010w\u001a\n 1*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bu\u00103\u001a\u0004\bv\u00105R\"\u0010~\u001a\u00020x8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010y\u001a\u0004\bz\u0010{\"\u0004\b|\u0010}¨\u0006\u0080\u0001"}, d2 = {"Le/a/l/g/g;", "Landroidx/fragment/app/Fragment;", "Le/a/l/g/m;", "Le/a/l/g/n;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "onActivityResult", "(IILandroid/content/Intent;)V", "onDestroyView", "()V", "", "Pu", "()Z", "", "qn", "()Ljava/lang/String;", "Cn", "Le/a/l/g/l;", "state", "du", "(Le/a/l/g/l;)V", "dismiss", AnalyticsConstants.SHOW, "f", "(Z)V", "q1", "Xo", "message", "Tk", "(Ljava/lang/String;)V", "number", "e5", "yx", "kotlin.jvm.PlatformType", "l", "Ls1/g;", "getAction3divider", "()Landroid/view/View;", "action3divider", "h", "getAction1divider", "action1divider", "Landroid/widget/TextView;", "i", "getAction2", "()Landroid/widget/TextView;", "action2", "n", "QA", "congratsGroup", "s", "getErrorTitle", "errorTitle", "w", "getReceivedGiftGroup", "receivedGiftGroup", "Landroid/widget/ProgressBar;", "u", "getProgressBar", "()Landroid/widget/ProgressBar;", "progressBar", "g", "getAction1", "action1", "j", "getAction2divider", "action2divider", "p", "getContactPickedNote", "contactPickedNote", "v", "getReceivedGiftExpireInfo", "receivedGiftExpireInfo", "k", "getAction3", "action3", "Le/a/l/g/k;", "e", "Le/a/l/g/k;", "getPresenter", "()Le/a/l/g/k;", "setPresenter", "(Le/a/l/g/k;)V", "presenter", "q", "SA", "errorGroup", "x", "getReceivedGiftSenderInfo", "receivedGiftSenderInfo", "Landroid/widget/ImageView;", "t", "TA", "()Landroid/widget/ImageView;", "image", "m", "getActionsGroup", "actionsGroup", "r", "getErrorNote", "errorNote", "o", "RA", "contactPickedGroup", "Le/a/l/g/t;", "Le/a/l/g/t;", "getGoldGiftPromoUtils", "()Le/a/l/g/t;", "setGoldGiftPromoUtils", "(Le/a/l/g/t;)V", "goldGiftPromoUtils", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.l.g.g */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/g.class */
public final class C16888g extends AbstractC16928y implements AbstractC16898m, AbstractC16899n {
    @Inject

    /* renamed from: e */
    public AbstractC16892k f47427e;
    @Inject

    /* renamed from: f */
    public C16913t f47428f;

    /* renamed from: g */
    public final g f47429g = C19286f.m13659t(this, C2752R.C2754id.action1);

    /* renamed from: h */
    public final g f47430h = C19286f.m13659t(this, 2131361876);

    /* renamed from: i */
    public final g f47431i = C19286f.m13659t(this, C2752R.C2754id.action2);

    /* renamed from: j */
    public final g f47432j = C19286f.m13659t(this, 2131361878);

    /* renamed from: k */
    public final g f47433k = C19286f.m13659t(this, C2752R.C2754id.action3);

    /* renamed from: l */
    public final g f47434l = C19286f.m13659t(this, C2752R.C2754id.action3divider);

    /* renamed from: m */
    public final g f47435m = C19286f.m13659t(this, C2752R.C2754id.actionsGroup);

    /* renamed from: n */
    public final g f47436n = C19286f.m13659t(this, C2752R.C2754id.congratsGroup);

    /* renamed from: o */
    public final g f47437o = C19286f.m13659t(this, C2752R.C2754id.contactPickedGroup);

    /* renamed from: p */
    public final g f47438p = C19286f.m13659t(this, C2752R.C2754id.contactPickedNote);

    /* renamed from: q */
    public final g f47439q = C19286f.m13659t(this, C2752R.C2754id.errorGroup);

    /* renamed from: r */
    public final g f47440r = C19286f.m13659t(this, C2752R.C2754id.errorNote);

    /* renamed from: s */
    public final g f47441s = C19286f.m13659t(this, C2752R.C2754id.errorTitle);

    /* renamed from: t */
    public final g f47442t = C19286f.m13659t(this, 2131364231);

    /* renamed from: u */
    public final g f47443u = C19286f.m13659t(this, 2131365276);

    /* renamed from: v */
    public final g f47444v = C19286f.m13659t(this, C2752R.C2754id.receivedGiftExpireInfo);

    /* renamed from: w */
    public final g f47445w = C19286f.m13659t(this, C2752R.C2754id.receivedGiftGroup);

    /* renamed from: x */
    public final g f47446x = C19286f.m13659t(this, C2752R.C2754id.receivedGiftSenderInfo);

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16899n
    /* renamed from: Cn */
    public String mo16789Cn() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("EXTRA_SENDER_NUMBER") : null;
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16899n
    /* renamed from: Pu */
    public boolean mo16788Pu() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getBoolean("EXTRA_SKIP_INTRO") : false;
    }

    /* renamed from: QA */
    public final View m16801QA() {
        return (View) this.f47436n.getValue();
    }

    /* renamed from: RA */
    public final View m16800RA() {
        return (View) this.f47437o.getValue();
    }

    /* renamed from: SA */
    public final View m16799SA() {
        return (View) this.f47439q.getValue();
    }

    /* renamed from: TA */
    public final ImageView m16798TA() {
        return (ImageView) this.f47442t.getValue();
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: Tk */
    public void mo16796Tk(String str) {
        l.e(str, "message");
        Toast.makeText(requireContext(), str, 0).show();
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: Xo */
    public void mo16795Xo() {
        Toast.makeText(requireContext(), 2131886719, 0).show();
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    public void dismiss() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: du */
    public void mo16794du(AbstractC16893l abstractC16893l) {
        l.e(abstractC16893l, "state");
        View view = (View) this.f47445w.getValue();
        l.d(view, "receivedGiftGroup");
        C19286f.m13689O(view);
        View m16801QA = m16801QA();
        l.d(m16801QA, "congratsGroup");
        C19286f.m13689O(m16801QA);
        View m16800RA = m16800RA();
        l.d(m16800RA, "contactPickedGroup");
        C19286f.m13689O(m16800RA);
        View m16799SA = m16799SA();
        l.d(m16799SA, "errorGroup");
        C19286f.m13689O(m16799SA);
        if (abstractC16893l instanceof AbstractC16893l.C16897d) {
            ImageView m16798TA = m16798TA();
            l.d(m16798TA, "image");
            C19286f.m13684T(m16798TA);
            View m16801QA2 = m16801QA();
            l.d(m16801QA2, "congratsGroup");
            C19286f.m13684T(m16801QA2);
        } else if (abstractC16893l instanceof AbstractC16893l.C16894a) {
            ImageView m16798TA2 = m16798TA();
            l.d(m16798TA2, "image");
            C19286f.m13684T(m16798TA2);
            View m16800RA2 = m16800RA();
            l.d(m16800RA2, "contactPickedGroup");
            C19286f.m13684T(m16800RA2);
            TextView textView = (TextView) this.f47438p.getValue();
            l.d(textView, "contactPickedNote");
            textView.setText(((AbstractC16893l.C16894a) abstractC16893l).f47450a);
        } else if (abstractC16893l instanceof AbstractC16893l.C16895b) {
            ImageView m16798TA3 = m16798TA();
            l.d(m16798TA3, "image");
            C19286f.m13689O(m16798TA3);
            View m16799SA2 = m16799SA();
            l.d(m16799SA2, "errorGroup");
            C19286f.m13684T(m16799SA2);
            TextView textView2 = (TextView) this.f47441s.getValue();
            l.d(textView2, "errorTitle");
            AbstractC16893l.C16895b c16895b = (AbstractC16893l.C16895b) abstractC16893l;
            textView2.setText(c16895b.f47452a);
            TextView textView3 = (TextView) this.f47440r.getValue();
            l.d(textView3, "errorNote");
            textView3.setText(c16895b.f47453b);
        } else if (abstractC16893l instanceof AbstractC16893l.C16896c) {
            ImageView m16798TA4 = m16798TA();
            l.d(m16798TA4, "image");
            C19286f.m13684T(m16798TA4);
            View view2 = (View) this.f47445w.getValue();
            l.d(view2, "receivedGiftGroup");
            C19286f.m13684T(view2);
            TextView textView4 = (TextView) this.f47446x.getValue();
            l.d(textView4, "receivedGiftSenderInfo");
            AbstractC16893l.C16896c c16896c = (AbstractC16893l.C16896c) abstractC16893l;
            textView4.setText(c16896c.f47455a);
            TextView textView5 = (TextView) this.f47444v.getValue();
            l.d(textView5, "receivedGiftExpireInfo");
            textView5.setText(c16896c.f47456b);
        }
        List<C16891j> mo16797a = abstractC16893l.mo16797a();
        View view3 = (View) this.f47435m.getValue();
        l.d(view3, "actionsGroup");
        C19286f.m13684T(view3);
        if (mo16797a.size() <= 3) {
            int i = 0;
            for (Object obj : i.T(new k[]{new k((TextView) this.f47429g.getValue(), (View) this.f47430h.getValue()), new k((TextView) this.f47431i.getValue(), (View) this.f47432j.getValue()), new k((TextView) this.f47433k.getValue(), (View) this.f47434l.getValue())})) {
                if (i < 0) {
                    i.N0();
                    throw null;
                }
                k kVar = (k) obj;
                if (i <= mo16797a.size() - 1) {
                    C19286f.m13684T((View) kVar.a);
                    C19286f.m13684T((View) kVar.b);
                    ((TextView) kVar.a).setText(mo16797a.get(i).f47448a);
                    ((TextView) kVar.a).setOnClickListener(new View$OnClickListenerC16887f(i, mo16797a));
                } else {
                    C19286f.m13689O((View) kVar.a);
                    C19286f.m13689O((View) kVar.b);
                }
                i++;
            }
            return;
        }
        throw new IllegalStateException("Maximum 3 actions supported");
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: e5 */
    public void mo16793e5(String str) {
        l.e(str, "number");
        C16913t c16913t = this.f47428f;
        if (c16913t == null) {
            l.l("goldGiftPromoUtils");
            throw null;
        }
        Context requireContext = requireContext();
        l.d(requireContext, "requireContext()");
        startActivity(c16913t.m16774a(requireContext, str));
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: f */
    public void mo16792f(boolean z) {
        ProgressBar progressBar = (ProgressBar) this.f47443u.getValue();
        l.d(progressBar, "progressBar");
        C19286f.m13683U(progressBar, z);
        int i = z ? 0 : 4;
        int i2 = z ? 4 : 0;
        View view = (View) this.f47435m.getValue();
        l.d(view, "actionsGroup");
        view.setVisibility(i2);
        for (View view2 : i.T(new View[]{m16801QA(), m16800RA(), m16799SA(), m16798TA()})) {
            l.d(view2, "it");
            if (view2.getVisibility() == i) {
                view2.setVisibility(i2);
            }
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 0) {
            if (i2 != -1) {
                AbstractC16892k abstractC16892k = this.f47427e;
                if (abstractC16892k != null) {
                    ((C16900o) abstractC16892k).m16785Jj();
                    return;
                } else {
                    l.l("presenter");
                    throw null;
                }
            }
            AbstractC16892k abstractC16892k2 = this.f47427e;
            if (abstractC16892k2 == null) {
                l.l("presenter");
                throw null;
            }
            Uri data = intent != null ? intent.getData() : null;
            C16900o c16900o = (C16900o) abstractC16892k2;
            Objects.requireNonNull(c16900o);
            if (data == null) {
                c16900o.m16785Jj();
            } else {
                d.w2(c16900o, (f) null, (j0) null, new C16904p(c16900o, data, null), 3, (Object) null);
            }
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_gold_gift, viewGroup, false);
    }

    public void onDestroyView() {
        C16888g.super.onDestroyView();
        AbstractC16892k abstractC16892k = this.f47427e;
        if (abstractC16892k != null) {
            ((AbstractC20574a) abstractC16892k).mo9806c();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        AbstractC16892k abstractC16892k = this.f47427e;
        if (abstractC16892k != null) {
            ((C16900o) abstractC16892k).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: q1 */
    public void mo16791q1() {
        Intent type = new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/phone_v2");
        l.d(type, "Intent(Intent.ACTION_PIC…Kinds.Phone.CONTENT_TYPE)");
        startActivityForResult(type, 0);
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16899n
    /* renamed from: qn */
    public String mo16787qn() {
        Bundle arguments = getArguments();
        return arguments != null ? arguments.getString("EXTRA_SENDER_NAME") : null;
    }

    @Override // p193e.p194a.p1011l.p1020g.AbstractC16898m
    /* renamed from: yx */
    public void mo16790yx() {
        startActivity(TruecallerInit.m34553xa(requireContext(), "premium", "GoldGift"));
    }
}
