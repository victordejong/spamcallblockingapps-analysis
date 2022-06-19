package com.mglab.scm.visual;

import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.cardview.widget.CardView;
import butterknife.Unbinder;
import p027c2.AbstractView$OnClickListenerC0814b;
import p027c2.C0815c;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding.class */
public class FragmentPreferences_ViewBinding implements Unbinder {

    /* renamed from: b */
    public FragmentPreferences f7547b;

    /* renamed from: c */
    public View f7548c;

    /* renamed from: d */
    public View f7549d;

    /* renamed from: e */
    public View f7550e;

    /* renamed from: f */
    public View f7551f;

    /* renamed from: g */
    public View f7552g;

    /* renamed from: h */
    public View f7553h;

    /* renamed from: i */
    public View f7554i;

    /* renamed from: j */
    public View f7555j;

    /* renamed from: k */
    public View f7556k;

    /* renamed from: l */
    public View f7557l;

    /* renamed from: m */
    public View f7558m;

    /* renamed from: n */
    public View f7559n;

    /* renamed from: o */
    public View f7560o;

    /* renamed from: p */
    public View f7561p;

    /* renamed from: q */
    public View f7562q;

    /* renamed from: r */
    public View f7563r;

    /* renamed from: s */
    public View f7564s;

    /* renamed from: t */
    public View f7565t;

    /* renamed from: u */
    public View f7566u;

    /* renamed from: v */
    public View f7567v;

    /* renamed from: w */
    public View f7568w;

    /* renamed from: x */
    public View f7569x;

    /* renamed from: y */
    public View f7570y;

    /* renamed from: z */
    public View f7571z;

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$a.class */
    public class C2067a extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentPreferences f7572c;

        public C2067a(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7572c = fragmentPreferences;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7572c.onSilenceRingerReadMoreClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$b */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$b.class */
    public class C2068b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7573a;

        public C2068b(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7573a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7573a.onDNDClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$c */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$c.class */
    public class C2069c implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7574a;

        public C2069c(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7574a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7574a.onSystemVibrationClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$d */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$d.class */
    public class C2070d implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7575a;

        public C2070d(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7575a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7575a.onUseAlternativeContactsNameClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$e */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$e.class */
    public class C2071e implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7576a;

        public C2071e(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7576a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7576a.onDarkThemeClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$f */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$f.class */
    public class C2072f implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7577a;

        public C2072f(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7577a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7577a.onNotificationTextColorClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$g */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$g.class */
    public class C2073g implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7578a;

        public C2073g(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7578a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7578a.onClickForegroundService(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$h */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$h.class */
    public class C2074h implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7579a;

        public C2074h(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7579a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7579a.onClickForegroundServiceIcon(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$i */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$i.class */
    public class C2075i implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7580a;

        public C2075i(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7580a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7580a.onDefaultPhoneAppClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$j */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$j.class */
    public class C2076j extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentPreferences f7581c;

        public C2076j(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7581c = fragmentPreferences;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7581c.onButtonBuyProClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$k */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$k.class */
    public class C2077k implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7582a;

        public C2077k(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7582a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7582a.onClickLoadFedbackName(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$l */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$l.class */
    public class C2078l extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentPreferences f7583c;

        public C2078l(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7583c = fragmentPreferences;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7583c.onExportClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$m */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$m.class */
    public class C2079m extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentPreferences f7584c;

        public C2079m(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7584c = fragmentPreferences;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7584c.onImportClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$n */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$n.class */
    public class C2080n extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentPreferences f7585c;

        public C2080n(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7585c = fragmentPreferences;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7585c.onLanguageClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$o */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$o.class */
    public class View$OnLongClickListenerC2081o implements View.OnLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7586a;

        public View$OnLongClickListenerC2081o(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7586a = fragmentPreferences;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.f7586a.onSim1LongClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$p */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$p.class */
    public class View$OnLongClickListenerC2082p implements View.OnLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7587a;

        public View$OnLongClickListenerC2082p(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7587a = fragmentPreferences;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.f7587a.onSim2LongClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$q */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$q.class */
    public class C2083q implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7588a;

        public C2083q(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7588a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7588a.onClickShowSim(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$r */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$r.class */
    public class C2084r implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7589a;

        public C2084r(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7589a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7589a.onClickBlockSecondCall(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$s */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$s.class */
    public class C2085s implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7590a;

        public C2085s(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7590a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7590a.onClickPinEntry(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$t */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$t.class */
    public class C2086t implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7591a;

        public C2086t(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7591a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7591a.onClickHideClearButton(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$u */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$u.class */
    public class C2087u implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7592a;

        public C2087u(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7592a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7592a.onAdditionalPresetsSwitchClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$v */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$v.class */
    public class C2088v extends AbstractView$OnClickListenerC0814b {

        /* renamed from: c */
        public final /* synthetic */ FragmentPreferences f7593c;

        public C2088v(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7593c = fragmentPreferences;
        }

        @Override // p027c2.AbstractView$OnClickListenerC0814b
        /* renamed from: a */
        public void mo3936a(View view) {
            this.f7593c.onCreateNewPresetClick();
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$w */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$w.class */
    public class C2089w implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7594a;

        public C2089w(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7594a = fragmentPreferences;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            this.f7594a.onAppOnOffClick(z);
        }
    }

    /* renamed from: com.mglab.scm.visual.FragmentPreferences_ViewBinding$x */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences_ViewBinding$x.class */
    public class C2090x implements AdapterView.OnItemSelectedListener {

        /* renamed from: a */
        public final /* synthetic */ FragmentPreferences f7595a;

        public C2090x(FragmentPreferences_ViewBinding fragmentPreferences_ViewBinding, FragmentPreferences fragmentPreferences) {
            this.f7595a = fragmentPreferences;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            this.f7595a.onBlockMethodSpinnerClick(adapterView, view, i, j);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public FragmentPreferences_ViewBinding(FragmentPreferences fragmentPreferences, View view) {
        this.f7547b = fragmentPreferences;
        View m7347b = C0815c.m7347b(view, 2131297073, "field 'switchLoadFeedbackNames' and method 'onClickLoadFedbackName'");
        fragmentPreferences.switchLoadFeedbackNames = (SwitchCompat) C0815c.m7348a(m7347b, 2131297073, "field 'switchLoadFeedbackNames'", SwitchCompat.class);
        this.f7548c = m7347b;
        ((CompoundButton) m7347b).setOnCheckedChangeListener(new C2077k(this, fragmentPreferences));
        fragmentPreferences.loadFeedbackNamesDescriptionTV = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296737, "field 'loadFeedbackNamesDescriptionTV'"), 2131296737, "field 'loadFeedbackNamesDescriptionTV'", TextView.class);
        View m7347b2 = C0815c.m7347b(view, 2131297077, "field 'switchShowSIM' and method 'onClickShowSim'");
        fragmentPreferences.switchShowSIM = (SwitchCompat) C0815c.m7348a(m7347b2, 2131297077, "field 'switchShowSIM'", SwitchCompat.class);
        this.f7549d = m7347b2;
        ((CompoundButton) m7347b2).setOnCheckedChangeListener(new C2083q(this, fragmentPreferences));
        View m7347b3 = C0815c.m7347b(view, 2131297066, "field 'switchBlockSecondCall' and method 'onClickBlockSecondCall'");
        fragmentPreferences.switchBlockSecondCall = (SwitchCompat) C0815c.m7348a(m7347b3, 2131297066, "field 'switchBlockSecondCall'", SwitchCompat.class);
        this.f7550e = m7347b3;
        ((CompoundButton) m7347b3).setOnCheckedChangeListener(new C2084r(this, fragmentPreferences));
        View m7347b4 = C0815c.m7347b(view, 2131297076, "field 'pinEntry' and method 'onClickPinEntry'");
        fragmentPreferences.pinEntry = (SwitchCompat) C0815c.m7348a(m7347b4, 2131297076, "field 'pinEntry'", SwitchCompat.class);
        this.f7551f = m7347b4;
        ((CompoundButton) m7347b4).setOnCheckedChangeListener(new C2085s(this, fragmentPreferences));
        fragmentPreferences.pinEntryDescription = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296923, "field 'pinEntryDescription'"), 2131296923, "field 'pinEntryDescription'", TextView.class);
        View m7347b5 = C0815c.m7347b(view, 2131297072, "field 'switchHideClearButton' and method 'onClickHideClearButton'");
        fragmentPreferences.switchHideClearButton = (SwitchCompat) C0815c.m7348a(m7347b5, 2131297072, "field 'switchHideClearButton'", SwitchCompat.class);
        this.f7552g = m7347b5;
        ((CompoundButton) m7347b5).setOnCheckedChangeListener(new C2086t(this, fragmentPreferences));
        View m7347b6 = C0815c.m7347b(view, 2131297060, "field 'switchAdditionalPresets' and method 'onAdditionalPresetsSwitchClick'");
        fragmentPreferences.switchAdditionalPresets = (SwitchCompat) C0815c.m7348a(m7347b6, 2131297060, "field 'switchAdditionalPresets'", SwitchCompat.class);
        this.f7553h = m7347b6;
        ((CompoundButton) m7347b6).setOnCheckedChangeListener(new C2087u(this, fragmentPreferences));
        View m7347b7 = C0815c.m7347b(view, 2131296932, "field 'presetCreateNewButton' and method 'onCreateNewPresetClick'");
        fragmentPreferences.presetCreateNewButton = (Button) C0815c.m7348a(m7347b7, 2131296932, "field 'presetCreateNewButton'", Button.class);
        this.f7554i = m7347b7;
        m7347b7.setOnClickListener(new C2088v(this, fragmentPreferences));
        fragmentPreferences.presetsDescription = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296945, "field 'presetsDescription'"), 2131296945, "field 'presetsDescription'", TextView.class);
        View m7347b8 = C0815c.m7347b(view, 2131297061, "field 'appOnOffSwitch' and method 'onAppOnOffClick'");
        fragmentPreferences.appOnOffSwitch = (SwitchCompat) C0815c.m7348a(m7347b8, 2131297061, "field 'appOnOffSwitch'", SwitchCompat.class);
        this.f7555j = m7347b8;
        ((CompoundButton) m7347b8).setOnCheckedChangeListener(new C2089w(this, fragmentPreferences));
        View m7347b9 = C0815c.m7347b(view, 2131296367, "field 'blockMethodSpinner' and method 'onBlockMethodSpinnerClick'");
        fragmentPreferences.blockMethodSpinner = (Spinner) C0815c.m7348a(m7347b9, 2131296367, "field 'blockMethodSpinner'", Spinner.class);
        this.f7556k = m7347b9;
        ((AdapterView) m7347b9).setOnItemSelectedListener(new C2090x(this, fragmentPreferences));
        View m7347b10 = C0815c.m7347b(view, 2131297015, "field 'silenceRingerRestoreInfoTV' and method 'onSilenceRingerReadMoreClick'");
        fragmentPreferences.silenceRingerRestoreInfoTV = (TextView) C0815c.m7348a(m7347b10, 2131297015, "field 'silenceRingerRestoreInfoTV'", TextView.class);
        this.f7557l = m7347b10;
        m7347b10.setOnClickListener(new C2067a(this, fragmentPreferences));
        View m7347b11 = C0815c.m7347b(view, 2131297079, "field 'switchSilenceDND' and method 'onDNDClick'");
        fragmentPreferences.switchSilenceDND = (SwitchCompat) C0815c.m7348a(m7347b11, 2131297079, "field 'switchSilenceDND'", SwitchCompat.class);
        this.f7558m = m7347b11;
        ((CompoundButton) m7347b11).setOnCheckedChangeListener(new C2068b(this, fragmentPreferences));
        fragmentPreferences.dndLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296551, "field 'dndLL'"), 2131296551, "field 'dndLL'", LinearLayout.class);
        fragmentPreferences.systemVibrationLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131297087, "field 'systemVibrationLL'"), 2131297087, "field 'systemVibrationLL'", LinearLayout.class);
        View m7347b12 = C0815c.m7347b(view, 2131297080, "field 'switchSystemVibration' and method 'onSystemVibrationClick'");
        fragmentPreferences.switchSystemVibration = (SwitchCompat) C0815c.m7348a(m7347b12, 2131297080, "field 'switchSystemVibration'", SwitchCompat.class);
        this.f7559n = m7347b12;
        ((CompoundButton) m7347b12).setOnCheckedChangeListener(new C2069c(this, fragmentPreferences));
        View m7347b13 = C0815c.m7347b(view, 2131297086, "field 'switchUseAlternativeContactsName' and method 'onUseAlternativeContactsNameClick'");
        fragmentPreferences.switchUseAlternativeContactsName = (SwitchCompat) C0815c.m7348a(m7347b13, 2131297086, "field 'switchUseAlternativeContactsName'", SwitchCompat.class);
        this.f7560o = m7347b13;
        ((CompoundButton) m7347b13).setOnCheckedChangeListener(new C2070d(this, fragmentPreferences));
        fragmentPreferences.presetsLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296946, "field 'presetsLL'"), 2131296946, "field 'presetsLL'", LinearLayout.class);
        fragmentPreferences.flagImageView = (ImageView) C0815c.m7348a(C0815c.m7347b(view, 2131296621, "field 'flagImageView'"), 2131296621, "field 'flagImageView'", ImageView.class);
        fragmentPreferences.languageDescriptionTextView = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296718, "field 'languageDescriptionTextView'"), 2131296718, "field 'languageDescriptionTextView'", TextView.class);
        View m7347b14 = C0815c.m7347b(view, 2131297067, "field 'darkThemeSwitch' and method 'onDarkThemeClick'");
        fragmentPreferences.darkThemeSwitch = (SwitchCompat) C0815c.m7348a(m7347b14, 2131297067, "field 'darkThemeSwitch'", SwitchCompat.class);
        this.f7561p = m7347b14;
        ((CompoundButton) m7347b14).setOnCheckedChangeListener(new C2071e(this, fragmentPreferences));
        View m7347b15 = C0815c.m7347b(view, 2131297074, "field 'notificationTextColor' and method 'onNotificationTextColorClick'");
        fragmentPreferences.notificationTextColor = (SwitchCompat) C0815c.m7348a(m7347b15, 2131297074, "field 'notificationTextColor'", SwitchCompat.class);
        this.f7562q = m7347b15;
        ((CompoundButton) m7347b15).setOnCheckedChangeListener(new C2072f(this, fragmentPreferences));
        fragmentPreferences.foregroundServiceLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296624, "field 'foregroundServiceLL'"), 2131296624, "field 'foregroundServiceLL'", LinearLayout.class);
        View m7347b16 = C0815c.m7347b(view, 2131297070, "field 'switchForegroundService' and method 'onClickForegroundService'");
        fragmentPreferences.switchForegroundService = (SwitchCompat) C0815c.m7348a(m7347b16, 2131297070, "field 'switchForegroundService'", SwitchCompat.class);
        this.f7563r = m7347b16;
        ((CompoundButton) m7347b16).setOnCheckedChangeListener(new C2073g(this, fragmentPreferences));
        View m7347b17 = C0815c.m7347b(view, 2131297071, "field 'switchForegroundServiceIcon' and method 'onClickForegroundServiceIcon'");
        fragmentPreferences.switchForegroundServiceIcon = (SwitchCompat) C0815c.m7348a(m7347b17, 2131297071, "field 'switchForegroundServiceIcon'", SwitchCompat.class);
        this.f7564s = m7347b17;
        ((CompoundButton) m7347b17).setOnCheckedChangeListener(new C2074h(this, fragmentPreferences));
        fragmentPreferences.foregroundServiceIconLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296625, "field 'foregroundServiceIconLL'"), 2131296625, "field 'foregroundServiceIconLL'", LinearLayout.class);
        fragmentPreferences.defaultPhoneAppLL = (LinearLayout) C0815c.m7348a(C0815c.m7347b(view, 2131296528, "field 'defaultPhoneAppLL'"), 2131296528, "field 'defaultPhoneAppLL'", LinearLayout.class);
        fragmentPreferences.defaultPhoneAppDescriptionTV = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296527, "field 'defaultPhoneAppDescriptionTV'"), 2131296527, "field 'defaultPhoneAppDescriptionTV'", TextView.class);
        View m7347b18 = C0815c.m7347b(view, 2131297068, "field 'switchDefaultPhoneApp' and method 'onDefaultPhoneAppClick'");
        fragmentPreferences.switchDefaultPhoneApp = (SwitchCompat) C0815c.m7348a(m7347b18, 2131297068, "field 'switchDefaultPhoneApp'", SwitchCompat.class);
        this.f7565t = m7347b18;
        ((CompoundButton) m7347b18).setOnCheckedChangeListener(new C2075i(this, fragmentPreferences));
        fragmentPreferences.defaultPhoneAppDescriptionHeaderTV = (TextView) C0815c.m7348a(C0815c.m7347b(view, 2131296526, "field 'defaultPhoneAppDescriptionHeaderTV'"), 2131296526, "field 'defaultPhoneAppDescriptionHeaderTV'", TextView.class);
        View m7347b19 = C0815c.m7347b(view, 2131296394, "field 'buttonBuyPro' and method 'onButtonBuyProClick'");
        fragmentPreferences.buttonBuyPro = (Button) C0815c.m7348a(m7347b19, 2131296394, "field 'buttonBuyPro'", Button.class);
        this.f7566u = m7347b19;
        m7347b19.setOnClickListener(new C2076j(this, fragmentPreferences));
        fragmentPreferences.cardView = (CardView) C0815c.m7348a(C0815c.m7347b(view, 2131296450, "field 'cardView'"), 2131296450, "field 'cardView'", CardView.class);
        View m7347b20 = C0815c.m7347b(view, 2131296604, "method 'onExportClick'");
        this.f7567v = m7347b20;
        m7347b20.setOnClickListener(new C2078l(this, fragmentPreferences));
        View m7347b21 = C0815c.m7347b(view, 2131296605, "method 'onImportClick'");
        this.f7568w = m7347b21;
        m7347b21.setOnClickListener(new C2079m(this, fragmentPreferences));
        View m7347b22 = C0815c.m7347b(view, 2131296720, "method 'onLanguageClick'");
        this.f7569x = m7347b22;
        m7347b22.setOnClickListener(new C2080n(this, fragmentPreferences));
        View m7347b23 = C0815c.m7347b(view, 2131296680, "method 'onSim1LongClick'");
        this.f7570y = m7347b23;
        m7347b23.setOnLongClickListener(new View$OnLongClickListenerC2081o(this, fragmentPreferences));
        View m7347b24 = C0815c.m7347b(view, 2131296681, "method 'onSim2LongClick'");
        this.f7571z = m7347b24;
        m7347b24.setOnLongClickListener(new View$OnLongClickListenerC2082p(this, fragmentPreferences));
    }

    @Override // butterknife.Unbinder
    /* renamed from: a */
    public void mo3937a() {
        FragmentPreferences fragmentPreferences = this.f7547b;
        if (fragmentPreferences != null) {
            this.f7547b = null;
            fragmentPreferences.switchLoadFeedbackNames = null;
            fragmentPreferences.loadFeedbackNamesDescriptionTV = null;
            fragmentPreferences.switchShowSIM = null;
            fragmentPreferences.switchBlockSecondCall = null;
            fragmentPreferences.pinEntry = null;
            fragmentPreferences.pinEntryDescription = null;
            fragmentPreferences.switchHideClearButton = null;
            fragmentPreferences.switchAdditionalPresets = null;
            fragmentPreferences.presetCreateNewButton = null;
            fragmentPreferences.presetsDescription = null;
            fragmentPreferences.appOnOffSwitch = null;
            fragmentPreferences.blockMethodSpinner = null;
            fragmentPreferences.silenceRingerRestoreInfoTV = null;
            fragmentPreferences.switchSilenceDND = null;
            fragmentPreferences.dndLL = null;
            fragmentPreferences.systemVibrationLL = null;
            fragmentPreferences.switchSystemVibration = null;
            fragmentPreferences.switchUseAlternativeContactsName = null;
            fragmentPreferences.presetsLL = null;
            fragmentPreferences.flagImageView = null;
            fragmentPreferences.languageDescriptionTextView = null;
            fragmentPreferences.darkThemeSwitch = null;
            fragmentPreferences.notificationTextColor = null;
            fragmentPreferences.foregroundServiceLL = null;
            fragmentPreferences.switchForegroundService = null;
            fragmentPreferences.switchForegroundServiceIcon = null;
            fragmentPreferences.foregroundServiceIconLL = null;
            fragmentPreferences.defaultPhoneAppLL = null;
            fragmentPreferences.defaultPhoneAppDescriptionTV = null;
            fragmentPreferences.switchDefaultPhoneApp = null;
            fragmentPreferences.defaultPhoneAppDescriptionHeaderTV = null;
            fragmentPreferences.buttonBuyPro = null;
            fragmentPreferences.cardView = null;
            ((CompoundButton) this.f7548c).setOnCheckedChangeListener(null);
            this.f7548c = null;
            ((CompoundButton) this.f7549d).setOnCheckedChangeListener(null);
            this.f7549d = null;
            ((CompoundButton) this.f7550e).setOnCheckedChangeListener(null);
            this.f7550e = null;
            ((CompoundButton) this.f7551f).setOnCheckedChangeListener(null);
            this.f7551f = null;
            ((CompoundButton) this.f7552g).setOnCheckedChangeListener(null);
            this.f7552g = null;
            ((CompoundButton) this.f7553h).setOnCheckedChangeListener(null);
            this.f7553h = null;
            this.f7554i.setOnClickListener(null);
            this.f7554i = null;
            ((CompoundButton) this.f7555j).setOnCheckedChangeListener(null);
            this.f7555j = null;
            ((AdapterView) this.f7556k).setOnItemSelectedListener(null);
            this.f7556k = null;
            this.f7557l.setOnClickListener(null);
            this.f7557l = null;
            ((CompoundButton) this.f7558m).setOnCheckedChangeListener(null);
            this.f7558m = null;
            ((CompoundButton) this.f7559n).setOnCheckedChangeListener(null);
            this.f7559n = null;
            ((CompoundButton) this.f7560o).setOnCheckedChangeListener(null);
            this.f7560o = null;
            ((CompoundButton) this.f7561p).setOnCheckedChangeListener(null);
            this.f7561p = null;
            ((CompoundButton) this.f7562q).setOnCheckedChangeListener(null);
            this.f7562q = null;
            ((CompoundButton) this.f7563r).setOnCheckedChangeListener(null);
            this.f7563r = null;
            ((CompoundButton) this.f7564s).setOnCheckedChangeListener(null);
            this.f7564s = null;
            ((CompoundButton) this.f7565t).setOnCheckedChangeListener(null);
            this.f7565t = null;
            this.f7566u.setOnClickListener(null);
            this.f7566u = null;
            this.f7567v.setOnClickListener(null);
            this.f7567v = null;
            this.f7568w.setOnClickListener(null);
            this.f7568w = null;
            this.f7569x.setOnClickListener(null);
            this.f7569x = null;
            this.f7570y.setOnLongClickListener(null);
            this.f7570y = null;
            this.f7571z.setOnLongClickListener(null);
            this.f7571z = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
