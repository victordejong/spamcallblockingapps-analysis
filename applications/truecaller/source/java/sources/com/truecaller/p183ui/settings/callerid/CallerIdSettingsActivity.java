package com.truecaller.p183ui.settings.callerid;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.incallui.callui.enablePromo.InCallUIEnableAnalyticsContext;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.p183ui.settings.troubleshoot.TroubleshootOption;
import com.truecaller.p183ui.settings.troubleshoot.TroubleshootSettingsFragment;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.videocallerid.p187ui.settings.VideoCallerIdSettingsView;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import e.m.d.y.n;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18155e;
import p193e.p194a.p1059m3.C18181q0;
import p193e.p194a.p1059m3.C18197y0;
import p193e.p194a.p1059m3.C18199z0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p682e.p684b.p690j.AbstractC12934h;
import p193e.p194a.p682e.p684b.p690j.AbstractC12935i;
import p193e.p194a.p682e.p684b.p690j.AbstractC12942p;
import p193e.p194a.p682e.p684b.p690j.C12927a;
import p193e.p194a.p682e.p684b.p690j.C12928b;
import p193e.p194a.p682e.p684b.p690j.C12929c;
import p193e.p194a.p682e.p684b.p690j.C12931e;
import p193e.p194a.p682e.p684b.p690j.C12938l;
import p193e.p194a.p682e.p684b.p690j.View$OnClickListenerC12930d;
import p193e.p194a.p682e.p684b.p690j.View$OnClickListenerC12932f;
import p193e.p194a.p682e.p684b.p696p.AbstractC13039e;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.p718a.p728u.C13682i;
import s1.g;
import s1.h;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\bP\u0010\nJ\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0019\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001a\u0010\u0016J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\nJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\nJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\nJ\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b$\u0010\u0016J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b%\u0010\u0016J\u0017\u0010&\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b&\u0010\u0016J\u0017\u0010'\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\rH\u0016¢\u0006\u0004\b'\u0010\u0016J\u000f\u0010(\u001a\u00020\rH\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b*\u0010\u0016J\u0017\u0010+\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b+\u0010\u0016J\u000f\u0010,\u001a\u00020\rH\u0016¢\u0006\u0004\b,\u0010)J\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\nJ\u000f\u0010.\u001a\u00020\u0006H\u0016¢\u0006\u0004\b.\u0010\nJ\u000f\u0010/\u001a\u00020\u0006H\u0014¢\u0006\u0004\b/\u0010\nJ\u0017\u00100\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b0\u0010\u0016J\u0017\u00101\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\rH\u0016¢\u0006\u0004\b1\u0010\u0016R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010G\u001a\u00020@8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\"\u0010O\u001a\u00020H8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bK\u0010L\"\u0004\bM\u0010N¨\u0006Q"}, d2 = {"Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;", "Ln3/b/a/h;", "Le/a/e/b/j/i;", "Landroid/content/DialogInterface$OnDismissListener;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "enabled", "g2", "(Z)V", "visible", "B9", "o1", "a7", "f7", "n3", "G7", "Lcom/truecaller/premium/PremiumLaunchContext;", "launchContext", "", "page", "y4", "(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V", "ja", "s1", "X8", "w3", "Q0", "()Z", "T9", "D3", "E0", "S5", "t4", "onDestroy", "d4", "R3", "Le/a/m3/e;", "g", "Ls1/g;", "pa", "()Le/a/m3/e;", "binding", "Le/a/e/b/j/h;", "d", "Le/a/e/b/j/h;", "qa", "()Le/a/e/b/j/h;", "setPresenter", "(Le/a/e/b/j/h;)V", "presenter", "Le/a/f/b;", "e", "Le/a/f/b;", "getInCallUI", "()Le/a/f/b;", "setInCallUI", "(Le/a/f/b;)V", "inCallUI", "Le/a/l/a2;", "f", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.settings.callerid.CallerIdSettingsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/callerid/CallerIdSettingsActivity.class */
public final class CallerIdSettingsActivity extends AbstractC12942p implements AbstractC12935i, DialogInterface.OnDismissListener {
    @Inject

    /* renamed from: d */
    public AbstractC12934h f15854d;
    @Inject

    /* renamed from: e */
    public AbstractC13706b f15855e;
    @Inject

    /* renamed from: f */
    public AbstractC16613a2 f15856f;

    /* renamed from: g */
    public final g f15857g = C25225a.m3982O1(h.c, new C4694a(this));

    /* renamed from: com.truecaller.ui.settings.callerid.CallerIdSettingsActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/callerid/CallerIdSettingsActivity$a.class */
    public static final class C4694a extends m implements a<C18155e> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f15858b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4694a(n3.b.a.h hVar) {
            super(0);
            this.f15858b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f15858b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C2752R.layout.activity_tcx_settings_caller_id, (ViewGroup) null, false);
            int i = 2131362168;
            View findViewById = inflate.findViewById(C2752R.C2754id.announce_caller_id_setting_container);
            if (findViewById != null) {
                int i2 = 2131362166;
                TextView textView = (TextView) findViewById.findViewById(C2752R.C2754id.announce_caller_id_description);
                if (textView != null) {
                    i2 = 2131362167;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById.findViewById(C2752R.C2754id.announce_caller_id_icon);
                    if (appCompatImageView != null) {
                        i2 = 2131362169;
                        SwitchCompat switchCompat = (SwitchCompat) findViewById.findViewById(C2752R.C2754id.announce_caller_id_switch);
                        if (switchCompat != null) {
                            i2 = 2131362170;
                            TextView textView2 = (TextView) findViewById.findViewById(C2752R.C2754id.announce_caller_title);
                            if (textView2 != null) {
                                C18181q0 c18181q0 = new C18181q0((ConstraintLayout) findViewById, textView, appCompatImageView, switchCompat, textView2);
                                i = 2131365900;
                                View findViewById2 = inflate.findViewById(C2752R.C2754id.signUpOverlayMask);
                                if (findViewById2 != null) {
                                    i = 2131365901;
                                    View findViewById3 = inflate.findViewById(C2752R.C2754id.signup);
                                    if (findViewById3 != null) {
                                        int i3 = 2131365902;
                                        TextView textView3 = (TextView) findViewById3.findViewById(C2752R.C2754id.signupFirstLine);
                                        if (textView3 != null) {
                                            i3 = 2131365903;
                                            TintedImageView tintedImageView = (TintedImageView) findViewById3.findViewById(C2752R.C2754id.signupImage);
                                            if (tintedImageView != null) {
                                                C18199z0 c18199z0 = new C18199z0((ConstraintLayout) findViewById3, textView3, tintedImageView);
                                                i = 2131366175;
                                                SwitchCompat switchCompat2 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.switch_after_call);
                                                if (switchCompat2 != null) {
                                                    i = 2131366176;
                                                    SwitchCompat switchCompat3 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.switch_after_call_pb_contacts);
                                                    if (switchCompat3 != null) {
                                                        i = 2131366180;
                                                        SwitchCompat switchCompat4 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.switch_pb_contacts);
                                                        if (switchCompat4 != null) {
                                                            i = 2131366512;
                                                            Toolbar toolbar = (Toolbar) inflate.findViewById(2131366512);
                                                            if (toolbar != null) {
                                                                i = 2131366764;
                                                                VideoCallerIdSettingsView videoCallerIdSettingsView = (VideoCallerIdSettingsView) inflate.findViewById(C2752R.C2754id.video_caller_id_Settings);
                                                                if (videoCallerIdSettingsView != null) {
                                                                    i = 2131366798;
                                                                    CallerIdStyleSettingsView callerIdStyleSettingsView = (CallerIdStyleSettingsView) inflate.findViewById(C2752R.C2754id.view_caller_id_style);
                                                                    if (callerIdStyleSettingsView != null) {
                                                                        return new C18155e((ConstraintLayout) inflate, c18181q0, findViewById2, c18199z0, switchCompat2, switchCompat3, switchCompat4, toolbar, videoCallerIdSettingsView, callerIdStyleSettingsView);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        throw new NullPointerException("Missing required view with ID: ".concat(findViewById3.getResources().getResourceName(i3)));
                                    }
                                }
                            }
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(findViewById.getResources().getResourceName(i2)));
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: B9 */
    public void mo22400B9(boolean z) {
        CallerIdStyleSettingsView callerIdStyleSettingsView = m34491pa().f51179j;
        l.d(callerIdStyleSettingsView, "binding.viewCallerIdStyle");
        C19286f.m13683U(callerIdStyleSettingsView, z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: D3 */
    public void mo22399D3(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51175f;
        l.d(switchCompat, "binding.switchAfterCallPbContacts");
        C19286f.m13683U(switchCompat, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: E0 */
    public boolean mo22398E0() {
        Context applicationContext = getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase");
        return ((AbstractApplicationC8442a) applicationContext).mo28540W();
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: G7 */
    public void mo22397G7() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        C13682i.m21314hB(supportFragmentManager, InCallUIEnableAnalyticsContext.SETTINGS);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: Q0 */
    public boolean mo22396Q0() {
        l.d(TrueApp.m36032b0(), "TrueApp.getApp()");
        return true;
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: R3 */
    public void mo22395R3(boolean z) {
        m34491pa().f51178i.setShouldShowRecommendation(z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: S5 */
    public void mo22394S5() {
        C18155e m34491pa = m34491pa();
        C18199z0 c18199z0 = m34491pa.f51173d;
        l.d(c18199z0, "signup");
        ConstraintLayout constraintLayout = c18199z0.f51467a;
        l.d(constraintLayout, "signup.root");
        C19286f.m13684T(constraintLayout);
        View view = m34491pa.f51172c;
        l.d(view, "signUpOverlayMask");
        C19286f.m13684T(view);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: T9 */
    public void mo22393T9(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51174e;
        l.d(switchCompat, "binding.switchAfterCall");
        C19286f.m13683U(switchCompat, z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: X8 */
    public void mo22392X8(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51174e;
        l.d(switchCompat, "binding.switchAfterCall");
        switchCompat.setChecked(z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: a7 */
    public void mo22391a7(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51171b.f51399b;
        l.d(switchCompat, "binding.announceCallerId…er.announceCallerIdSwitch");
        switchCompat.setChecked(z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: d4 */
    public void mo22390d4(boolean z) {
        VideoCallerIdSettingsView videoCallerIdSettingsView = m34491pa().f51178i;
        l.d(videoCallerIdSettingsView, "binding.videoCallerIdSettings");
        C19286f.m13683U(videoCallerIdSettingsView, z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: f7 */
    public void mo22389f7() {
        CallerIdStyleSettingsView callerIdStyleSettingsView = m34491pa().f51179j;
        C18197y0 c18197y0 = callerIdStyleSettingsView.f15859t;
        RadioButton radioButton = c18197y0.f51463e;
        l.d(radioButton, "radiobuttonCallerIdStyleFullscreen");
        if (radioButton.isChecked()) {
            return;
        }
        callerIdStyleSettingsView.f15863x = false;
        RadioButton radioButton2 = c18197y0.f51463e;
        l.d(radioButton2, "radiobuttonCallerIdStyleFullscreen");
        radioButton2.setChecked(true);
        callerIdStyleSettingsView.f15863x = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: g2 */
    public void mo22388g2(boolean z) {
        AbstractC13706b abstractC13706b = this.f15855e;
        if (abstractC13706b == null) {
            l.l("inCallUI");
            throw null;
        }
        abstractC13706b.mo21264e(z);
        AbstractC13706b abstractC13706b2 = this.f15855e;
        if (abstractC13706b2 != null) {
            abstractC13706b2.mo21252q(this);
        } else {
            l.l("inCallUI");
            throw null;
        }
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: ja */
    public void mo22387ja(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51176g;
        l.d(switchCompat, "binding.switchPbContacts");
        C19286f.m13683U(switchCompat, z);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: n3 */
    public void mo22386n3() {
        CallerIdStyleSettingsView callerIdStyleSettingsView = m34491pa().f51179j;
        C18197y0 c18197y0 = callerIdStyleSettingsView.f15859t;
        RadioButton radioButton = c18197y0.f51462d;
        l.d(radioButton, "radiobuttonCallerIdStyleClassic");
        if (radioButton.isChecked()) {
            return;
        }
        callerIdStyleSettingsView.f15863x = false;
        RadioButton radioButton2 = c18197y0.f51462d;
        l.d(radioButton2, "radiobuttonCallerIdStyleClassic");
        radioButton2.setChecked(true);
        callerIdStyleSettingsView.f15863x = true;
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: o1 */
    public void mo22385o1(boolean z) {
        C18181q0 c18181q0 = m34491pa().f51171b;
        l.d(c18181q0, "binding.announceCallerIdSettingContainer");
        ConstraintLayout constraintLayout = c18181q0.f51398a;
        l.d(constraintLayout, "binding.announceCallerIdSettingContainer.root");
        C19286f.m13683U(constraintLayout, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        CallerIdSettingsActivity.super.onCreate(bundle);
        C18155e m34491pa = m34491pa();
        l.d(m34491pa, "binding");
        setContentView(m34491pa.f51170a);
        setSupportActionBar(m34491pa().f51177h);
        AbstractC25393a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
        }
        TroubleshootSettingsFragment m42943J = getSupportFragmentManager().m42943J(C2752R.C2754id.fragment_troubleshoot);
        Objects.requireNonNull(m42943J, "null cannot be cast to non-null type com.truecaller.ui.settings.troubleshoot.TroubleshootSettingsFragment");
        TroubleshootSettingsFragment troubleshootSettingsFragment = m42943J;
        Set<? extends TroubleshootOption> z0 = i.z0(new TroubleshootOption[]{TroubleshootOption.DRAW_OVER, TroubleshootOption.CALLER_ID_APP, TroubleshootOption.DISABLE_BATTERY_OPT, TroubleshootOption.DEFAULT_DIALER, TroubleshootOption.CALLER_ID_VISIT_HELP_CENTER});
        l.e(z0, "options");
        AbstractC13039e abstractC13039e = troubleshootSettingsFragment.f15872a;
        if (abstractC13039e == null) {
            l.l("presenter");
            throw null;
        }
        abstractC13039e.mo22119Jg(C2752R.string.SettingsCallerIDIsNotWorking, z0);
        AbstractC12934h abstractC12934h = this.f15854d;
        if (abstractC12934h == null) {
            l.l("presenter");
            throw null;
        }
        ((C12938l) abstractC12934h).mo9029Y0(this);
        C18199z0 c18199z0 = m34491pa().f51173d;
        l.d(c18199z0, "binding.signup");
        c18199z0.f51467a.setOnClickListener(new View$OnClickListenerC12932f(this));
        m34491pa().f51179j.setFullScreenSelectedListener(new p1(0, this));
        m34491pa().f51179j.setClassicSelectedListener(new p1(1, this));
        m34491pa().f51176g.setOnCheckedChangeListener(new C12931e(this));
        m34491pa().f51174e.setOnCheckedChangeListener(new C12927a(this));
        m34491pa().f51175f.setOnCheckedChangeListener(new C12928b(this));
        C18181q0 c18181q0 = m34491pa().f51171b;
        c18181q0.f51398a.setOnClickListener(new View$OnClickListenerC12930d(c18181q0));
        c18181q0.f51399b.setOnCheckedChangeListener(new C12929c(this));
    }

    public void onDestroy() {
        AbstractC12934h abstractC12934h = this.f15854d;
        if (abstractC12934h == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC12934h).mo9806c();
        CallerIdSettingsActivity.super.onDestroy();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        AbstractC12934h abstractC12934h = this.f15854d;
        if (abstractC12934h == null) {
            l.l("presenter");
            throw null;
        }
        C12938l c12938l = (C12938l) abstractC12934h;
        if (c12938l.f37545d && c12938l.f37551j.mo21263f()) {
            n.B0(ViewActionEvent.f9985d.m35934d("settingsCallerId", ViewActionEvent.CallerIdSettingsAction.STYLE_FULLSCREEN), c12938l.f37552k);
        }
        c12938l.f37545d = false;
        c12938l.m22375z5();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return CallerIdSettingsActivity.super.onOptionsItemSelected(menuItem);
    }

    public void onResume() {
        CallerIdSettingsActivity.super.onResume();
        AbstractC12934h abstractC12934h = this.f15854d;
        if (abstractC12934h != null) {
            ((C12938l) abstractC12934h).m22375z5();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: pa */
    public final C18155e m34491pa() {
        return (C18155e) this.f15857g.getValue();
    }

    /* renamed from: qa */
    public final AbstractC12934h m34490qa() {
        AbstractC12934h abstractC12934h = this.f15854d;
        if (abstractC12934h != null) {
            return abstractC12934h;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: s1 */
    public void mo22384s1(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51176g;
        l.d(switchCompat, "binding.switchPbContacts");
        switchCompat.setChecked(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: t4 */
    public void mo22383t4() {
        c.Ca(this, WizardActivity.class, "settings_screen", WizardStartContext.CALLER_ID_SETTING);
    }

    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: w3 */
    public void mo22382w3(boolean z) {
        SwitchCompat switchCompat = m34491pa().f51175f;
        l.d(switchCompat, "binding.switchAfterCallPbContacts");
        switchCompat.setChecked(z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.p684b.p690j.AbstractC12935i
    /* renamed from: y4 */
    public void mo22381y4(PremiumLaunchContext premiumLaunchContext, String str) {
        l.e(premiumLaunchContext, "launchContext");
        l.e(str, "page");
        AbstractC16613a2 abstractC16613a2 = this.f15856f;
        if (abstractC16613a2 != null) {
            abstractC16613a2.mo17168a(this, premiumLaunchContext, str);
        } else {
            l.l("premiumScreenNavigator");
            throw null;
        }
    }
}
