package com.truecaller.p183ui.settings.appearance;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.TruecallerInit;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18152d;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.p684b.p689i.AbstractC12923c;
import p193e.p194a.p682e.p684b.p689i.AbstractC12926f;
import p193e.p194a.p682e.p684b.p689i.C12924d;
import p193e.p194a.p682e.p684b.p689i.View$OnClickListenerC12921a;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0015\b\u0007\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b;\u0010\tJ\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0013\u0010\tJ\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001c\u0010%\u001a\u00020 8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R(\u0010.\u001a\b\u0012\u0004\u0012\u00020'0&8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u00101\u001a\u00020 8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b/\u0010\"\u001a\u0004\b0\u0010$R\u001c\u00104\u001a\u00020 8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b2\u0010\"\u001a\u0004\b3\u0010$R\u0016\u00107\u001a\u00020\n8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b5\u00106R\u001c\u0010:\u001a\u00020 8\u0006@\u0006X\u0086D¢\u0006\f\n\u0004\b8\u0010\"\u001a\u0004\b9\u0010$¨\u0006<"}, d2 = {"Lcom/truecaller/ui/settings/appearance/AppearanceSettingsActivity;", "Ln3/b/a/h;", "Le/a/e/b/i/c;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "()V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "Landroid/view/MenuItem;", "item", "", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onDestroy", "Lcom/truecaller/ui/settings/appearance/ThemeType;", "themeType", "v", "(Lcom/truecaller/ui/settings/appearance/ThemeType;)V", "Le/a/m3/d;", "f", "Le/a/m3/d;", "pa", "()Le/a/m3/d;", "setBinding", "(Le/a/m3/d;)V", "binding", "", "k", "Ljava/lang/String;", "getBRIGHT_THEME", "()Ljava/lang/String;", "BRIGHT_THEME", "", "Landroid/widget/RadioButton;", "g", "Ljava/util/Set;", "getRadioButtonSet", "()Ljava/util/Set;", "setRadioButtonSet", "(Ljava/util/Set;)V", "radioButtonSet", "i", "getINHERIT_DARK", "INHERIT_DARK", "h", "getINHERIT_BRIGHT", "INHERIT_BRIGHT", "e", "Landroid/content/res/Configuration;", "currentConfig", "j", "getDARK_THEME", "DARK_THEME", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.settings.appearance.AppearanceSettingsActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/appearance/AppearanceSettingsActivity.class */
public final class AppearanceSettingsActivity extends AbstractC12926f implements AbstractC12923c {

    /* renamed from: l */
    public static final /* synthetic */ int f15845l = 0;
    @Inject

    /* renamed from: d */
    public C12924d f15846d;

    /* renamed from: e */
    public Configuration f15847e;

    /* renamed from: f */
    public C18152d f15848f;

    /* renamed from: g */
    public Set<? extends RadioButton> f15849g;

    /* renamed from: h */
    public final String f15850h = "INHERIT_BRIGHT";

    /* renamed from: i */
    public final String f15851i = "INHERIT_DARK";

    /* renamed from: j */
    public final String f15852j = "DARK";

    /* renamed from: k */
    public final String f15853k = "BRIGHT";

    public void onConfigurationChanged(Configuration configuration) {
        l.e(configuration, "newConfig");
        AppearanceSettingsActivity.super.onConfigurationChanged(configuration);
        this.f15847e = configuration;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        C17422k.m16066m0(this, true);
        AppearanceSettingsActivity.super.onCreate(bundle);
        boolean z = false;
        View inflate = getLayoutInflater().inflate(C2752R.layout.activity_tcx_settings_appearance, (ViewGroup) null, false);
        int i = 2131362177;
        AppCompatTextView appCompatTextView = (AppCompatTextView) inflate.findViewById(C2752R.C2754id.appCompatTextView);
        if (appCompatTextView != null) {
            i = 2131362930;
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(C2752R.C2754id.containerThemeBright);
            if (constraintLayout != null) {
                i = 2131362931;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) inflate.findViewById(C2752R.C2754id.containerThemeDark);
                if (constraintLayout2 != null) {
                    i = 2131362932;
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) inflate.findViewById(C2752R.C2754id.containerThemeInherit);
                    if (constraintLayout3 != null) {
                        i = 2131364315;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(C2752R.C2754id.imgThemeBright);
                        if (appCompatImageView != null) {
                            i = 2131364316;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) inflate.findViewById(C2752R.C2754id.imgThemeDark);
                            if (appCompatImageView2 != null) {
                                i = 2131364317;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) inflate.findViewById(C2752R.C2754id.imgThemeDefault);
                                if (appCompatImageView3 != null) {
                                    i = 2131365315;
                                    RadioGroup radioGroup = (RadioGroup) inflate.findViewById(C2752R.C2754id.radioAppearanceTheme);
                                    if (radioGroup != null) {
                                        i = 2131365323;
                                        RadioButton radioButton = (RadioButton) inflate.findViewById(C2752R.C2754id.radioThemeBright);
                                        if (radioButton != null) {
                                            i = 2131365324;
                                            RadioButton radioButton2 = (RadioButton) inflate.findViewById(C2752R.C2754id.radioThemeDark);
                                            if (radioButton2 != null) {
                                                i = 2131365325;
                                                RadioButton radioButton3 = (RadioButton) inflate.findViewById(C2752R.C2754id.radioThemeInherit);
                                                if (radioButton3 != null) {
                                                    i = 2131365808;
                                                    LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C2752R.C2754id.settingsShowFrequentlyCalledContacts);
                                                    if (linearLayout != null) {
                                                        SwitchCompat switchCompat = (SwitchCompat) inflate.findViewById(C2752R.C2754id.settingsShowFrequentlyCalledContactsSwitch);
                                                        if (switchCompat != null) {
                                                            i = 2131365819;
                                                            LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(C2752R.C2754id.settingsSlimView);
                                                            if (linearLayout2 != null) {
                                                                i = 2131365820;
                                                                SwitchCompat switchCompat2 = (SwitchCompat) inflate.findViewById(C2752R.C2754id.settingsSlimViewSwitch);
                                                                if (switchCompat2 != null) {
                                                                    i = 2131366419;
                                                                    View findViewById = inflate.findViewById(C2752R.C2754id.themeAutoDivider);
                                                                    if (findViewById != null) {
                                                                        i = 2131366420;
                                                                        View findViewById2 = inflate.findViewById(C2752R.C2754id.themeBrightDivider);
                                                                        if (findViewById2 != null) {
                                                                            i = 2131366512;
                                                                            Toolbar toolbar = (Toolbar) inflate.findViewById(2131366512);
                                                                            if (toolbar != null) {
                                                                                i = 2131366755;
                                                                                View findViewById3 = inflate.findViewById(2131366755);
                                                                                if (findViewById3 != null) {
                                                                                    C18152d c18152d = new C18152d((ConstraintLayout) inflate, appCompatTextView, constraintLayout, constraintLayout2, constraintLayout3, appCompatImageView, appCompatImageView2, appCompatImageView3, radioGroup, radioButton, radioButton2, radioButton3, linearLayout, switchCompat, linearLayout2, switchCompat2, findViewById, findViewById2, toolbar, findViewById3);
                                                                                    l.d(c18152d, "ActivityTcxSettingsAppea…g.inflate(layoutInflater)");
                                                                                    this.f15848f = c18152d;
                                                                                    setContentView(c18152d.f51151a);
                                                                                    C18152d c18152d2 = this.f15848f;
                                                                                    if (c18152d2 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    setSupportActionBar(c18152d2.f51160j);
                                                                                    AbstractC25393a supportActionBar = getSupportActionBar();
                                                                                    if (supportActionBar != null) {
                                                                                        supportActionBar.mo3553n(true);
                                                                                    }
                                                                                    C18152d c18152d3 = this.f15848f;
                                                                                    if (c18152d3 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    RadioButton radioButton4 = c18152d3.f51157g;
                                                                                    l.d(radioButton4, "binding.radioThemeInherit");
                                                                                    C18152d c18152d4 = this.f15848f;
                                                                                    if (c18152d4 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    RadioButton radioButton5 = c18152d4.f51155e;
                                                                                    l.d(radioButton5, "binding.radioThemeBright");
                                                                                    C18152d c18152d5 = this.f15848f;
                                                                                    if (c18152d5 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    RadioButton radioButton6 = c18152d5.f51156f;
                                                                                    l.d(radioButton6, "binding.radioThemeDark");
                                                                                    this.f15849g = i.z0(new RadioButton[]{radioButton4, radioButton5, radioButton6});
                                                                                    C18152d c18152d6 = this.f15848f;
                                                                                    if (c18152d6 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    c18152d6.f51154d.setOnClickListener(new l0(0, this));
                                                                                    C18152d c18152d7 = this.f15848f;
                                                                                    if (c18152d7 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    c18152d7.f51152b.setOnClickListener(new l0(1, this));
                                                                                    C18152d c18152d8 = this.f15848f;
                                                                                    if (c18152d8 == null) {
                                                                                        l.l("binding");
                                                                                        throw null;
                                                                                    }
                                                                                    c18152d8.f51153c.setOnClickListener(new l0(2, this));
                                                                                    Set<? extends RadioButton> set = this.f15849g;
                                                                                    if (set == null) {
                                                                                        l.l("radioButtonSet");
                                                                                        throw null;
                                                                                    }
                                                                                    for (RadioButton radioButton7 : set) {
                                                                                        radioButton7.setOnClickListener(new View$OnClickListenerC12921a(radioButton7, this));
                                                                                    }
                                                                                    Resources resources = getResources();
                                                                                    l.d(resources, "this@AppearanceSettingsActivity.resources");
                                                                                    Configuration configuration = resources.getConfiguration();
                                                                                    l.d(configuration, "this@AppearanceSettingsA…y.resources.configuration");
                                                                                    this.f15847e = configuration;
                                                                                    Set<? extends RadioButton> set2 = this.f15849g;
                                                                                    if (set2 == null) {
                                                                                        l.l("radioButtonSet");
                                                                                        throw null;
                                                                                    }
                                                                                    for (RadioButton radioButton8 : set2) {
                                                                                        radioButton8.setChecked(false);
                                                                                    }
                                                                                    C15314a c15314a = C15314a.f43582g;
                                                                                    String str = C15314a.m18938a().f43585a;
                                                                                    if (Build.VERSION.SDK_INT < 28) {
                                                                                        if (l.a(str, this.f15850h) || l.a(str, this.f15851i) || l.a(str, this.f15853k)) {
                                                                                            C18152d c18152d9 = this.f15848f;
                                                                                            if (c18152d9 == null) {
                                                                                                l.l("binding");
                                                                                                throw null;
                                                                                            }
                                                                                            RadioButton radioButton9 = c18152d9.f51155e;
                                                                                            l.d(radioButton9, "binding.radioThemeBright");
                                                                                            radioButton9.setChecked(true);
                                                                                        } else if (l.a(str, this.f15852j)) {
                                                                                            C18152d c18152d10 = this.f15848f;
                                                                                            if (c18152d10 == null) {
                                                                                                l.l("binding");
                                                                                                throw null;
                                                                                            }
                                                                                            RadioButton radioButton10 = c18152d10.f51156f;
                                                                                            l.d(radioButton10, "binding.radioThemeDark");
                                                                                            radioButton10.setChecked(true);
                                                                                        }
                                                                                        C18152d c18152d11 = this.f15848f;
                                                                                        if (c18152d11 == null) {
                                                                                            l.l("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        ConstraintLayout constraintLayout4 = c18152d11.f51154d;
                                                                                        l.d(constraintLayout4, "binding.containerThemeInherit");
                                                                                        C19286f.m13683U(constraintLayout4, false);
                                                                                        C18152d c18152d12 = this.f15848f;
                                                                                        if (c18152d12 == null) {
                                                                                            l.l("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        View view = c18152d12.f51158h;
                                                                                        l.d(view, "binding.themeAutoDivider");
                                                                                        C19286f.m13683U(view, false);
                                                                                    } else if (l.a(str, this.f15850h) || l.a(str, this.f15851i)) {
                                                                                        C18152d c18152d13 = this.f15848f;
                                                                                        if (c18152d13 == null) {
                                                                                            l.l("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        RadioButton radioButton11 = c18152d13.f51157g;
                                                                                        l.d(radioButton11, "binding.radioThemeInherit");
                                                                                        radioButton11.setChecked(true);
                                                                                    } else if (l.a(str, this.f15853k)) {
                                                                                        C18152d c18152d14 = this.f15848f;
                                                                                        if (c18152d14 == null) {
                                                                                            l.l("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        RadioButton radioButton12 = c18152d14.f51155e;
                                                                                        l.d(radioButton12, "binding.radioThemeBright");
                                                                                        radioButton12.setChecked(true);
                                                                                    } else if (l.a(str, this.f15852j)) {
                                                                                        C18152d c18152d15 = this.f15848f;
                                                                                        if (c18152d15 == null) {
                                                                                            l.l("binding");
                                                                                            throw null;
                                                                                        }
                                                                                        RadioButton radioButton13 = c18152d15.f51156f;
                                                                                        l.d(radioButton13, "binding.radioThemeDark");
                                                                                        radioButton13.setChecked(true);
                                                                                    }
                                                                                    ((SwitchCompat) findViewById((int) C2752R.C2754id.settingsSlimViewSwitch)).setOnCheckedChangeListener(new x(0, this));
                                                                                    ((SwitchCompat) findViewById((int) C2752R.C2754id.settingsShowFrequentlyCalledContactsSwitch)).setOnCheckedChangeListener(new x(1, this));
                                                                                    C12924d c12924d = this.f15846d;
                                                                                    if (c12924d == null) {
                                                                                        l.l("presenter");
                                                                                        throw null;
                                                                                    }
                                                                                    if (c12924d.f37530e.getInt("merge_by", 3) == 3) {
                                                                                        z = true;
                                                                                    }
                                                                                    SwitchCompat switchCompat3 = (SwitchCompat) findViewById((int) C2752R.C2754id.settingsSlimViewSwitch);
                                                                                    l.d(switchCompat3, "slimViewSwitch");
                                                                                    switchCompat3.setChecked(z);
                                                                                    C12924d c12924d2 = this.f15846d;
                                                                                    if (c12924d2 == null) {
                                                                                        l.l("presenter");
                                                                                        throw null;
                                                                                    }
                                                                                    boolean z2 = c12924d2.f37530e.getBoolean("showFrequentlyCalledContacts", true);
                                                                                    SwitchCompat switchCompat4 = (SwitchCompat) findViewById((int) C2752R.C2754id.settingsShowFrequentlyCalledContactsSwitch);
                                                                                    l.d(switchCompat4, "frequentlyCalledContactsSwitch");
                                                                                    switchCompat4.setChecked(z2);
                                                                                    C12924d c12924d3 = this.f15846d;
                                                                                    if (c12924d3 != null) {
                                                                                        c12924d3.f57683a = this;
                                                                                        return;
                                                                                    } else {
                                                                                        l.l("presenter");
                                                                                        throw null;
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            i = 2131365809;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onDestroy() {
        C12924d c12924d = this.f15846d;
        if (c12924d == null) {
            l.l("presenter");
            throw null;
        }
        c12924d.mo9806c();
        AppearanceSettingsActivity.super.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        l.e(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return AppearanceSettingsActivity.super.onOptionsItemSelected(menuItem);
    }

    public void onResume() {
        AppearanceSettingsActivity.super.onResume();
        C12924d c12924d = this.f15846d;
        if (c12924d != null) {
            Objects.requireNonNull(c12924d);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* renamed from: pa */
    public final C18152d m34492pa() {
        C18152d c18152d = this.f15848f;
        if (c18152d != null) {
            return c18152d;
        }
        l.l("binding");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p682e.p684b.p689i.AbstractC12923c
    /* renamed from: v */
    public void mo22404v(ThemeType themeType) {
        AbstractC15317d.C15319b c15319b;
        l.e(themeType, "themeType");
        int ordinal = themeType.ordinal();
        if (ordinal == 0) {
            C15314a c15314a = C15314a.f43582g;
            Configuration configuration = this.f15847e;
            if (configuration == null) {
                l.l("currentConfig");
                throw null;
            }
            c15319b = C15314a.m18932g(configuration) ? new AbstractC15317d.C15321d(2131952557) : new AbstractC15317d.C15320c(2131952564);
        } else if (ordinal == 1) {
            c15319b = new AbstractC15317d.C15318a(2131952564);
        } else if (ordinal != 2) {
            throw new s1.i();
        } else {
            c15319b = new AbstractC15317d.C15319b(2131952557);
        }
        C15314a c15314a2 = C15314a.f43582g;
        C15314a.m18930i(c15319b);
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        m36032b0.mo10154s().mo12792B2().mo10143a(c15319b);
        getApplicationContext().setTheme(c15319b.f43588d);
        TruecallerInit.m34567Va(this, "calls", true, null);
        overridePendingTransition(0, 0);
    }
}
