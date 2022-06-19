package p193e.p194a.p1213s2.p1216h;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.announce_caller_id.C2892R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b=\u0010\u001dJ-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u001f\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR%\u0010$\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R%\u0010'\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010!\u001a\u0004\b&\u0010#R%\u0010*\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010!\u001a\u0004\b)\u0010#R%\u0010/\u001a\n \u001f*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010!\u001a\u0004\b-\u0010.R\"\u00107\u001a\u0002008\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R%\u0010<\u001a\n \u001f*\u0004\u0018\u000108088B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010!\u001a\u0004\b:\u0010;¨\u0006>"}, d2 = {"Le/a/s2/h/h;", "Landroidx/fragment/app/Fragment;", "Le/a/s2/h/l;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "enabled", "na", "(Z)V", "P7", "Cw", "", "resultCode", "Landroid/content/Intent;", "intent", "Ml", "(ILandroid/content/Intent;)V", "onDestroyView", "()V", "Landroidx/appcompat/widget/SwitchCompat;", "kotlin.jvm.PlatformType", "g", "Ls1/g;", "getActiveForVoipCallSwitch", "()Landroidx/appcompat/widget/SwitchCompat;", "activeForVoipCallSwitch", "f", "getActiveForHeadsetSwitch", "activeForHeadsetSwitch", "h", "getActiveForPhoneBookOnlySwitch", "activeForPhoneBookOnlySwitch", "Landroid/widget/TextView;", "i", "getMoreVoiceSettingsBtn", "()Landroid/widget/TextView;", "moreVoiceSettingsBtn", "Le/a/s2/h/k;", "e", "Le/a/s2/h/k;", "QA", "()Le/a/s2/h/k;", "setPresenter", "(Le/a/s2/h/k;)V", "presenter", "Landroidx/appcompat/widget/Toolbar;", "j", "getToolbar", "()Landroidx/appcompat/widget/Toolbar;", "toolbar", "<init>", "announce-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.s2.h.h */
/* loaded from: classes5-dex2jar.jar:e/a/s2/h/h.class */
public final class C20218h extends AbstractC20225o implements AbstractC20222l {

    /* renamed from: k */
    public static final /* synthetic */ int f56958k = 0;
    @Inject

    /* renamed from: e */
    public AbstractC20221k f56959e;

    /* renamed from: f */
    public final g f56960f = C19286f.m13659t(this, C2892R.C2894id.switch_active_for_headset);

    /* renamed from: g */
    public final g f56961g = C19286f.m13659t(this, C2892R.C2894id.switch_active_for_voip_calls);

    /* renamed from: h */
    public final g f56962h = C19286f.m13659t(this, C2892R.C2894id.switch_active_for_phonebook_contact_only);

    /* renamed from: i */
    public final g f56963i = C19286f.m13659t(this, C2892R.C2894id.announceCallerMoreVoiceSettings);

    /* renamed from: j */
    public final g f56964j = C19286f.m13659t(this, C2892R.C2894id.toolbar);

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20222l
    /* renamed from: Cw */
    public void mo11325Cw(boolean z) {
        SwitchCompat switchCompat = (SwitchCompat) this.f56962h.getValue();
        l.d(switchCompat, "activeForPhoneBookOnlySwitch");
        switchCompat.setChecked(z);
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20222l
    /* renamed from: Ml */
    public void mo11324Ml(int i, Intent intent) {
        l.e(intent, "intent");
        n3.r.a.l requireActivity = requireActivity();
        requireActivity.setResult(i, intent);
        requireActivity.finish();
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20222l
    /* renamed from: P7 */
    public void mo11323P7(boolean z) {
        SwitchCompat switchCompat = (SwitchCompat) this.f56961g.getValue();
        l.d(switchCompat, "activeForVoipCallSwitch");
        switchCompat.setChecked(z);
    }

    /* renamed from: QA */
    public final AbstractC20221k m11345QA() {
        AbstractC20221k abstractC20221k = this.f56959e;
        if (abstractC20221k != null) {
            return abstractC20221k;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p1213s2.p1216h.AbstractC20222l
    /* renamed from: na */
    public void mo11322na(boolean z) {
        SwitchCompat switchCompat = (SwitchCompat) this.f56960f.getValue();
        l.d(switchCompat, "activeForHeadsetSwitch");
        switchCompat.setChecked(z);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2892R.layout.fragment_announce_caller_id_settings, viewGroup, false);
    }

    public void onDestroyView() {
        AbstractC20221k abstractC20221k = this.f56959e;
        if (abstractC20221k == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20576b) abstractC20221k).f57683a = null;
        C20218h.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C20218h.super.onViewCreated(view, bundle);
        AbstractC20221k abstractC20221k = this.f56959e;
        if (abstractC20221k == null) {
            l.l("presenter");
            throw null;
        }
        ((C20214d) abstractC20221k).mo9029Y0(this);
        h requireActivity = requireActivity();
        Objects.requireNonNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = requireActivity;
        hVar.setSupportActionBar((Toolbar) this.f56964j.getValue());
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        ((SwitchCompat) this.f56960f.getValue()).setOnCheckedChangeListener(new e0(0, this));
        ((SwitchCompat) this.f56961g.getValue()).setOnCheckedChangeListener(new e0(1, this));
        ((SwitchCompat) this.f56962h.getValue()).setOnCheckedChangeListener(new e0(2, this));
        ((TextView) this.f56963i.getValue()).setOnClickListener(new View$OnClickListenerC20217g(this));
    }
}
