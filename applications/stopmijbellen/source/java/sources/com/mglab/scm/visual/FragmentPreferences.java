package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.support.p012v4.media.C0082b;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.AbstractC0113c;
import androidx.appcompat.widget.SwitchCompat;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.ActivityC0455o;
import androidx.fragment.app.Fragment;
import ba.AbstractC0762k;
import ba.C0748b;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnCheckedChanged;
import butterknife.OnClick;
import butterknife.OnItemSelected;
import butterknife.OnLongClick;
import butterknife.Unbinder;
import com.facebook.ads.AdError;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.util.Date;
import java.util.List;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;
import p065d.C2133c;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p086f.AbstractC2635a;
import p086f.ActivityC2651j;
import p095f8.C2779g;
import p095f8.C2780h;
import p117h8.C3047u;
import p149k8.C3384b;
import p149k8.C3388d;
import p149k8.C3392h;
import p149k8.C3402r;
import p149k8.C3403s;
import p149k8.C3404t;
import p149k8.C3405u;
import p149k8.C3406v;
import p149k8.C3407w;
import p149k8.C3408x;
import p160l8.C3540w;
import p293y2.C4995l;
import p293y2.C4999p;
import p303z2.C5050k;
import p303z2.C5056q;
@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences.class */
public class FragmentPreferences extends Fragment {

    /* renamed from: f */
    public static final /* synthetic */ int f7538f = 0;

    /* renamed from: a */
    public Unbinder f7539a;
    @BindView
    public SwitchCompat appOnOffSwitch;

    /* renamed from: b */
    public Context f7540b;
    @BindView
    public Spinner blockMethodSpinner;
    @BindView
    public Button buttonBuyPro;

    /* renamed from: c */
    public C3540w f7541c;
    @BindView
    public CardView cardView;
    @BindView
    public SwitchCompat darkThemeSwitch;
    @BindView
    public TextView defaultPhoneAppDescriptionHeaderTV;
    @BindView
    public TextView defaultPhoneAppDescriptionTV;
    @BindView
    public LinearLayout defaultPhoneAppLL;
    @BindView
    public LinearLayout dndLL;
    @BindView
    public ImageView flagImageView;
    @BindView
    public LinearLayout foregroundServiceIconLL;
    @BindView
    public LinearLayout foregroundServiceLL;
    @BindView
    public TextView languageDescriptionTextView;
    @BindView
    public TextView loadFeedbackNamesDescriptionTV;
    @BindView
    public SwitchCompat notificationTextColor;
    @BindView
    public SwitchCompat pinEntry;
    @BindView
    public TextView pinEntryDescription;
    @BindView
    public Button presetCreateNewButton;
    @BindView
    public TextView presetsDescription;
    @BindView
    public LinearLayout presetsLL;
    @BindView
    public TextView silenceRingerRestoreInfoTV;
    @BindView
    public SwitchCompat switchAdditionalPresets;
    @BindView
    public SwitchCompat switchBlockSecondCall;
    @BindView
    public SwitchCompat switchDefaultPhoneApp;
    @BindView
    public SwitchCompat switchForegroundService;
    @BindView
    public SwitchCompat switchForegroundServiceIcon;
    @BindView
    public SwitchCompat switchHideClearButton;
    @BindView
    public SwitchCompat switchLoadFeedbackNames;
    @BindView
    public SwitchCompat switchShowSIM;
    @BindView
    public SwitchCompat switchSilenceDND;
    @BindView
    public SwitchCompat switchSystemVibration;
    @BindView
    public SwitchCompat switchUseAlternativeContactsName;
    @BindView
    public LinearLayout systemVibrationLL;

    /* renamed from: d */
    public AbstractC0113c<Intent> f7542d = registerForActivityResult(new C2133c(), new C4999p(this));

    /* renamed from: e */
    public AbstractC0113c<Intent> f7543e = registerForActivityResult(new C2133c(), new C4995l(this, 11));

    /* renamed from: com.mglab.scm.visual.FragmentPreferences$a */
    /* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/FragmentPreferences$a.class */
    public static class C2066a implements TextWatcher {

        /* renamed from: a */
        public View$OnClickListenerC2530g f7544a;

        /* renamed from: b */
        public MaterialEditText f7545b;

        /* renamed from: c */
        public MaterialEditText f7546c;

        public C2066a(View$OnClickListenerC2530g view$OnClickListenerC2530g) {
            this.f7544a = view$OnClickListenerC2530g;
            View view = view$OnClickListenerC2530g.f8822c.f8864o;
            this.f7545b = (MaterialEditText) view.findViewById(2131296921);
            this.f7546c = (MaterialEditText) view.findViewById(2131296922);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String valueOf = String.valueOf(this.f7545b.getText());
            this.f7544a.m3481c(EnumC2524b.POSITIVE).setEnabled(valueOf.equals(String.valueOf(this.f7546c.getText())) && !valueOf.isEmpty());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x05b8, code lost:
        if (r0.equals("ca") == false) goto L146;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3944a() {
        /*
            Method dump skipped, instructions count: 1947
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mglab.scm.visual.FragmentPreferences.m3944a():void");
    }

    @OnCheckedChanged
    public void onAdditionalPresetsSwitchClick(boolean z) {
        if (z == C2780h.m3070S(this.f7540b)) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetpresets", z);
        onResume();
    }

    @OnCheckedChanged
    public void onAppOnOffClick(boolean z) {
        if (z == C2780h.m3084E(this.f7540b)) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetapponoff", z);
        if (!z) {
            Toast.makeText(getContext(), 2131820924, 0).show();
        }
        C2779g.m3119N(this.f7540b);
        onResume();
    }

    @OnItemSelected
    public void onBlockMethodSpinnerClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i == C2780h.m3083F(this.f7540b)) {
            return;
        }
        C2780h.m3043j0(this.f7540b, "psetblockmethod", Integer.valueOf(i));
        onResume();
    }

    @OnClick
    public void onButtonBuyProClick() {
        C0748b.m7409b().m7404g(new C3406v());
    }

    @OnCheckedChanged
    public void onClickBlockSecondCall(boolean z) {
        if (C2780h.m3082G(this.f7540b) == z) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetblock2call", z);
    }

    @OnCheckedChanged
    public void onClickForegroundService(boolean z) {
        if (C2780h.m3078K(this.f7540b) == z) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetfservice", z);
        C2779g.m3119N(this.f7540b);
        this.switchForegroundServiceIcon.setEnabled(z);
    }

    @OnCheckedChanged
    public void onClickForegroundServiceIcon(boolean z) {
        if (C2780h.m3077L(this.f7540b) == z) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetfserviceicon", z);
        C2779g.m3119N(this.f7540b);
    }

    @OnCheckedChanged
    public void onClickHideClearButton(boolean z) {
        if (C2780h.m3076M(this.f7540b) == z) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psethideclearbutton", z);
    }

    @OnCheckedChanged
    public void onClickLoadFedbackName(boolean z) {
        if (C2780h.m3074O(this.f7540b) == z) {
            return;
        }
        if (z && !C2779g.m3090y()) {
            this.switchLoadFeedbackNames.setChecked(false);
            C0748b.m7409b().m7404g(new C3406v());
        } else if (!z) {
            C2780h.m3049g0(this.f7540b, "psetaslfn", false);
        } else {
            C2780h.m3049g0(this.f7540b, "psetaslfn", true);
            C2779g.m3116Q(getContext());
        }
    }

    @OnCheckedChanged
    public void onClickPinEntry(boolean z) {
        if (C2780h.m3071R(getContext()) == z) {
            return;
        }
        if (z && !C2779g.m3090y()) {
            this.pinEntry.setChecked(false);
            C0748b.m7409b().m7404g(new C3406v());
        } else if (!z) {
            C2780h.m3049g0(this.f7540b, "psetaspe", false);
        } else {
            boolean m3081H = C2780h.m3081H(this.f7540b);
            View$OnClickListenerC2530g.C2531a c2531a = new View$OnClickListenerC2530g.C2531a(this.f7540b);
            c2531a.m3464k(2131821013);
            c2531a.m3463l(2131099739);
            c2531a.m3474a(m3081H ? 2131099793 : 2131099742);
            c2531a.m3470e(2131230991);
            c2531a.m3469f(m3081H ? 2131099739 : 2131099699);
            c2531a.m3472c(2131099739);
            c2531a.f8874y = false;
            c2531a.f8875z = false;
            c2531a.m3471d(2131492945, false);
            c2531a.m3466i(2131820943);
            c2531a.f8870u = new C5050k(this, 7);
            c2531a.f8871v = new C5056q(this, 8);
            View$OnClickListenerC2530g m3465j = c2531a.m3468g(2131820654).m3465j();
            View view = m3465j.f8822c.f8864o;
            m3465j.m3481c(EnumC2524b.POSITIVE).setEnabled(false);
            ((MaterialEditText) view.findViewById(2131296921)).addTextChangedListener(new C2066a(m3465j));
            ((MaterialEditText) view.findViewById(2131296922)).addTextChangedListener(new C2066a(m3465j));
        }
    }

    @OnCheckedChanged
    public void onClickShowSim(boolean z) {
        if (C2780h.m3069T(this.f7540b) == z) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetss", z);
    }

    @OnClick
    public void onCreateNewPresetClick() {
        C3540w c3540w = this.f7541c;
        C3047u c3047u = new C3047u();
        c3047u.f10323c = c3540w.f11702a.getString(2131820998);
        c3047u.f10324d = false;
        List<C3047u> list = c3540w.f11703b;
        c3047u.f10325e = list.get(list.size() - 1).f10325e + 1;
        c3047u.f10326f = c3540w.f11703b.get(0).f10326f;
        c3047u.f10327g = c3540w.f11703b.get(0).f10327g;
        c3047u.f10328h = c3540w.f11703b.get(0).f10328h;
        c3047u.f10329i = c3540w.f11703b.get(0).f10329i;
        c3047u.f10330j = c3540w.f11703b.get(0).f10330j;
        c3047u.f10333m = c3540w.f11703b.get(0).f10333m;
        c3047u.f10331k = c3540w.f11703b.get(0).f10331k;
        c3047u.f10332l = c3540w.f11703b.get(0).f10332l;
        c3047u.f10334n = c3540w.f11703b.get(0).f10334n;
        c3047u.f10335o = c3540w.f11703b.get(0).f10335o;
        c3047u.f10336p = c3540w.f11703b.get(0).f10336p;
        c3047u.f10337q = c3540w.f11703b.get(0).f10337q;
        c3047u.f10338r = true;
        c3047u.f10339s = true;
        c3047u.f10340t = true;
        c3047u.f10341u = true;
        c3047u.f10342v = true;
        c3047u.f10343w = true;
        c3047u.f10344x = true;
        c3047u.f10345y = true;
        c3047u.f10346z = "00:00";
        c3047u.f10321A = "23:59";
        c3047u.mo7416a();
        c3540w.f11703b.add(c3047u);
        c3540w.m2211g();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131492958, viewGroup, false);
        this.f7539a = ButterKnife.m7385a(this, inflate);
        if (!C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7400k(this);
        }
        return inflate;
    }

    @OnCheckedChanged
    public void onDNDClick(boolean z) {
        if (C2780h.m3065X(this.f7540b) != z && Build.VERSION.SDK_INT >= 23) {
            if (((NotificationManager) this.f7540b.getSystemService("notification")).isNotificationPolicyAccessGranted()) {
                C2780h.m3049g0(this.f7540b, "psetusednd", z);
                return;
            }
            startActivityForResult(new Intent("android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"), 7777);
            this.switchSilenceDND.setChecked(false);
            onResume();
        }
    }

    @OnCheckedChanged
    public void onDarkThemeClick(boolean z) {
        if (C2780h.m3081H(getContext()) == z) {
            return;
        }
        C2780h.m3049g0(getContext(), "psetdarktheme", z);
        C0748b.m7409b().m7404g(new C3384b(getClass().getName()));
    }

    @OnCheckedChanged
    public void onDefaultPhoneAppClick(boolean z) {
        if (C2780h.m3064Y(this.f7540b) == z) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 23) {
            C2780h.m3049g0(this.f7540b, "psetusedefphoneapp", false);
        } else if (C2779g.m3092w(this.f7540b)) {
            C2780h.m3049g0(this.f7540b, "psetusedefphoneapp", z);
        } else if (z) {
            ActivityC0455o activity = getActivity();
            if (i >= 23) {
                Intent intent = new Intent("android.telecom.action.CHANGE_DEFAULT_DIALER");
                intent.putExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME", activity.getPackageName());
                activity.startActivityForResult(intent, AdError.NATIVE_AD_IS_NOT_LOADED);
            }
        }
        onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f7539a.mo3937a();
        if (C0748b.m7409b().m7405f(this)) {
            C0748b.m7409b().m7398m(this);
        }
        super.onStop();
    }

    @OnClick
    public void onExportClick() {
        Date date = new Date(System.currentTimeMillis());
        StringBuilder m8752j = C0082b.m8752j("scm-");
        m8752j.append(C2779g.m3103l(date).replace("/", ""));
        m8752j.append("-");
        m8752j.append(C2779g.m3100o(date).replace(":", "").replace(".", ""));
        m8752j.append(".xml");
        this.f7542d.mo8218a(new Intent("android.intent.action.CREATE_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType("text/*").putExtra("android.intent.extra.TITLE", m8752j.toString()), null);
    }

    @OnClick
    public void onImportClick() {
        this.f7543e.mo8218a(new Intent("android.intent.action.OPEN_DOCUMENT").addCategory("android.intent.category.OPENABLE").setType("text/*"), null);
    }

    @OnClick
    public void onLanguageClick() {
        C0748b.m7409b().m7404g(new C3408x());
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventFragmentPreferences(C3392h c3392h) {
        Objects.requireNonNull(c3392h);
        m3944a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventPreferences(C3402r c3402r) {
        int i = c3402r.f11445a;
        if (i == 1) {
            this.f7541c.m2206l(8, true);
        } else if (i == 2) {
            this.f7541c.m2206l(12, true);
        } else if (i == 3) {
            C2780h.m3049g0(this.f7540b, "psetusedefphoneapp", true);
        } else if (i == 4) {
            this.f7541c = new C3540w(this.f7540b);
        }
        onResume();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventProStatusChanged(C3403s c3403s) {
        m3944a();
    }

    @AbstractC0762k(threadMode = ThreadMode.MAIN)
    public void onMessageEventSimIconColorChanged(C3405u c3405u) {
        m3944a();
    }

    @OnCheckedChanged
    public void onNotificationTextColorClick(boolean z) {
        Context context = getContext();
        if (C2780h.m3072Q(context) == z) {
            return;
        }
        if (z) {
            C0748b.m7409b().m7404g(new C3388d(3));
            return;
        }
        C2779g.m3119N(context);
        C2780h.m3049g0(context, "psetnotifusecustomtextcolor", false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m3944a();
    }

    @OnClick
    public void onSilenceRingerReadMoreClick() {
        C0748b.m7409b().m7404g(new C3407w("silent"));
    }

    @OnLongClick
    public boolean onSim1LongClick() {
        C0748b.m7409b().m7404g(new C3388d(1));
        return true;
    }

    @OnLongClick
    public boolean onSim2LongClick() {
        C0748b.m7409b().m7404g(new C3388d(2));
        return true;
    }

    @OnCheckedChanged
    public void onSystemVibrationClick(boolean z) {
        if (C2780h.m3063Z(this.f7540b) != z && Build.VERSION.SDK_INT >= 24) {
            if (Settings.System.canWrite(getContext())) {
                C2780h.m3049g0(this.f7540b, "psetusesystemvibration", z);
                return;
            }
            Log.w("FPref", "No permission to write settings. Requesting");
            Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
            intent.setData(Uri.fromParts("package", requireActivity().getPackageName(), null));
            startActivityForResult(intent, 7077);
            this.switchSystemVibration.setChecked(false);
            onResume();
        }
    }

    @OnCheckedChanged
    public void onUseAlternativeContactsNameClick(boolean z) {
        if (z == C2780h.m3066W(this.f7540b)) {
            return;
        }
        C2780h.m3049g0(this.f7540b, "psetusealtcontactsname", z);
        C2779g.m3129D(this.f7540b);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        this.f7540b = getContext();
        requireActivity().setTitle(2131820582);
        AbstractC2635a m3365s = ((ActivityC2651j) getActivity()).m3365s();
        if (m3365s != null) {
            m3365s.mo3266p(2131820582);
        }
        this.f7541c = new C3540w(this.f7540b);
        m3944a();
        super.onViewCreated(view, bundle);
        C0748b.m7409b().m7404g(new C3404t());
    }
}
