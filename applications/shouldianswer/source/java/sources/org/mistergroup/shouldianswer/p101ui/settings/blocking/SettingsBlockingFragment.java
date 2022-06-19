package org.mistergroup.shouldianswer.p101ui.settings.blocking;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.SeekBar;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.ActivityC0711c;
import java.util.ArrayList;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2386ad;
import org.mistergroup.shouldianswer.model.C2391ae;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.p097a.AbstractC2207do;
import org.mistergroup.shouldianswer.p101ui.AbstractC2510b;
import org.mistergroup.shouldianswer.p101ui.ActivityC2499a;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3078ac;
import org.mistergroup.shouldianswer.utils.C3104j;
/* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment.class */
public final class SettingsBlockingFragment extends AbstractC2510b {

    /* renamed from: b */
    private AbstractC2207do f8740b;

    /* renamed from: c */
    private final int f8741c = 111;

    /* renamed from: d */
    private final int f8742d = 112;

    /* renamed from: e */
    private boolean f8743e;

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$a.class */
    static final class C2944a implements CompoundButton.OnCheckedChangeListener {
        C2944a() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (SettingsBlockingFragment.this.f8743e) {
                return;
            }
            C2398ai.f6930a.m1276d(z);
            C3074a c3074a = C3074a.f8976a;
            c3074a.m227c("UserSettings.BlockIncomingNegativeLocal" + String.valueOf(z));
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$b.class */
    static final class C2945b implements CompoundButton.OnCheckedChangeListener {
        C2945b() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1259l(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockOutgoingForeign" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c.class */
    public static final class C2946c implements SeekBar.OnSeekBarChangeListener {
        C2946c() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            C1694h.m3117b(seekBar, "seekBar");
            if (SettingsBlockingFragment.this.f8743e) {
                return;
            }
            int i2 = 3;
            if (i == 0) {
                i2 = 1;
            }
            if (i == 2) {
                i2 = 6;
            }
            C2398ai.f6930a.m1286b(i2);
            SettingsBlockingFragment.this.m315d();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
            C1694h.m3117b(seekBar, "seekBar");
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
            C1694h.m3117b(seekBar, "seekBar");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$d.class */
    static final class View$OnClickListenerC2947d implements View.OnClickListener {
        View$OnClickListenerC2947d() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsBlockingFragment.this.m313e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$e.class */
    static final class View$OnClickListenerC2948e implements View.OnClickListener {
        View$OnClickListenerC2948e() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsBlockingFragment.this.m311f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$f.class */
    public static final class C2949f implements TextWatcher {
        C2949f() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C1694h.m3117b(editable, "editable");
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1294a(editable.toString());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C1694h.m3117b(charSequence, "charSequence");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C1694h.m3117b(charSequence, "charSequence");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$g.class */
    public static final class C2950g implements TextWatcher {
        C2950g() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C1694h.m3117b(editable, "editable");
            String obj = editable.toString();
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1285b(obj);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C1694h.m3117b(charSequence, "charSequence");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C1694h.m3117b(charSequence, "charSequence");
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$h.class */
    static final class C2951h implements CompoundButton.OnCheckedChangeListener {
        C2951h() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C1694h.m3117b(compoundButton, "compoundButton");
            if (SettingsBlockingFragment.this.f8743e || !z) {
                return;
            }
            C3074a c3074a = C3074a.f8976a;
            c3074a.m227c("UserSettings.rejectCall" + String.valueOf(z));
            C2398ai.f6930a.m1289a(C2398ai.EnumC2401b.REJECT);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$i.class */
    static final class C2952i implements CompoundButton.OnCheckedChangeListener {
        C2952i() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C1694h.m3117b(compoundButton, "compoundButton");
            if (SettingsBlockingFragment.this.f8743e || !z) {
                return;
            }
            C3074a c3074a = C3074a.f8976a;
            c3074a.m227c("UserSettings.disallowCall" + String.valueOf(z));
            C2398ai.f6930a.m1289a(C2398ai.EnumC2401b.DISALLOW);
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$j */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j.class */
    static final class C2953j implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b */
        final /* synthetic */ ActivityC2499a f8754b;

        /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$j$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j$1.class */
        static final class DialogInterface$OnClickListenerC29541 implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public static final DialogInterface$OnClickListenerC29541 f8755a = new DialogInterface$OnClickListenerC29541();

            DialogInterface$OnClickListenerC29541() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
            }
        }

        C2953j(ActivityC2499a activityC2499a) {
            SettingsBlockingFragment.this = r4;
            this.f8754b = activityC2499a;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (SettingsBlockingFragment.this.f8743e || !z) {
                return;
            }
            C2398ai.f6930a.m1289a(C2398ai.EnumC2401b.PICK_AND_HANG);
            C3074a c3074a = C3074a.f8976a;
            c3074a.m227c("UserSettings.pickAndHang" + String.valueOf(z));
            if (!z) {
                return;
            }
            DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(this.f8754b);
            c0091a.m7928a(2131755106).m7910c(2131230878).m7915b(2131755105).m7918a(true).m7919a(SettingsBlockingFragment.this.getString(2131755104), DialogInterface$OnClickListenerC29541.f8755a);
            DialogInterfaceC0090d m7916b = c0091a.m7916b();
            C1694h.m3122a((Object) m7916b, "builder.create()");
            m7916b.show();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$k */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$k.class */
    public static final class C2955k implements CompoundButton.OnCheckedChangeListener {
        C2955k() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            C1694h.m3117b(compoundButton, "compoundButton");
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1280c(z);
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$l */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$l.class */
    static final class C2956l implements CompoundButton.OnCheckedChangeListener {
        C2956l() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1273e(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockIncomingNegativeCommunity" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$m */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$m.class */
    static final class View$OnClickListenerC2957m implements View.OnClickListener {
        View$OnClickListenerC2957m() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsBlockingFragment.this.m859a()).m7913b(SettingsBlockingFragment.this.getString(2131755153)).m7919a(SettingsBlockingFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$n */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$n.class */
    static final class View$OnClickListenerC2958n implements View.OnClickListener {
        View$OnClickListenerC2958n() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsBlockingFragment.this.m859a()).m7913b(SettingsBlockingFragment.this.getString(2131755154)).m7919a(SettingsBlockingFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$o */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$o.class */
    static final class View$OnClickListenerC2959o implements View.OnClickListener {
        View$OnClickListenerC2959o() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsBlockingFragment.this.m859a()).m7913b(SettingsBlockingFragment.this.getString(2131755155)).m7919a(SettingsBlockingFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$p */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p.class */
    static final class View$OnClickListenerC2960p implements View.OnClickListener {
        View$OnClickListenerC2960p() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new DialogInterfaceC0090d.C0091a(SettingsBlockingFragment.this.m859a()).m7913b(SettingsBlockingFragment.this.getString(2131755331)).m7919a(SettingsBlockingFragment.this.getString(2131755219), (DialogInterface.OnClickListener) null).m7911c();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$q */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$q.class */
    static final class C2961q implements CompoundButton.OnCheckedChangeListener {
        C2961q() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1271f(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockIncomingNotInContacts" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$r */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$r.class */
    static final class C2962r implements CompoundButton.OnCheckedChangeListener {
        C2962r() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1269g(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockIncomingHidden" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$s */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$s.class */
    static final class C2963s implements CompoundButton.OnCheckedChangeListener {
        C2963s() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1267h(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockIncomingForeign" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$t */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$t.class */
    static final class C2964t implements CompoundButton.OnCheckedChangeListener {
        C2964t() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1265i(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockOutgoingNegativeLocal" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$u */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$u.class */
    static final class C2965u implements CompoundButton.OnCheckedChangeListener {
        C2965u() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1263j(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockOutgoingNegativeCommunity" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$v */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$v.class */
    static final class C2966v implements CompoundButton.OnCheckedChangeListener {
        C2966v() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1261k(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockOutgoingNotInContacts" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$w */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$w.class */
    static final class C2967w implements CompoundButton.OnCheckedChangeListener {
        C2967w() {
            SettingsBlockingFragment.this = r4;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SettingsBlockingFragment.this.f8743e) {
                C2398ai.f6930a.m1257m(z);
                C3074a c3074a = C3074a.f8976a;
                c3074a.m227c("UserSettings.BlockOutgoingPremium" + String.valueOf(z));
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.ui.settings.blocking.SettingsBlockingFragment$x */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x.class */
    public static final class DialogInterface$OnClickListenerC2968x implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ ArrayList f8769a;

        /* renamed from: b */
        final /* synthetic */ SettingsBlockingFragment f8770b;

        DialogInterface$OnClickListenerC2968x(ArrayList arrayList, SettingsBlockingFragment settingsBlockingFragment) {
            this.f8769a = arrayList;
            this.f8770b = settingsBlockingFragment;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Editable text = SettingsBlockingFragment.m310f(this.f8770b).f6022z.getText();
            if (text == null) {
                C1694h.m3124a();
            }
            String obj = text.toString();
            String str = obj;
            if (!(obj.length() == 0)) {
                str = obj + ", ";
            }
            SettingsBlockingFragment.m310f(this.f8770b).f6022z.setText(str + ((CharSequence) this.f8769a.get(i)));
        }
    }

    /* renamed from: d */
    public final void m315d() {
        this.f8743e = true;
        try {
            boolean m1215C = C2405c.f6946b.m1215C();
            boolean z = m1215C && C2398ai.f6930a.m1275e() == EnumC2378a.IN_CALL_SCREEN;
            int m1272f = C2398ai.f6930a.m1272f();
            int i = m1272f < 3 ? 0 : 1;
            if (m1272f > 3) {
                i = 2;
            }
            String string = getString(2131755093);
            C1694h.m3122a((Object) string, "getString(R.string.activ…protection_standard_info)");
            if (i == 0) {
                string = getString(2131755091);
                C1694h.m3122a((Object) string, "getString(R.string.activ…dyn_protection_high_info)");
            }
            if (i == 2) {
                string = getString(2131755092);
                C1694h.m3122a((Object) string, "getString(R.string.activ…_dyn_protection_low_info)");
            }
            AbstractC2207do abstractC2207do = this.f8740b;
            if (abstractC2207do == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do.f6009m.setChecked(C2398ai.f6930a.m1268h());
            AbstractC2207do abstractC2207do2 = this.f8740b;
            if (abstractC2207do2 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do2.f6008l.setChecked(C2398ai.f6930a.m1266i());
            AbstractC2207do abstractC2207do3 = this.f8740b;
            if (abstractC2207do3 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do3.f6010n.setChecked(C2398ai.f6930a.m1264j());
            AbstractC2207do abstractC2207do4 = this.f8740b;
            if (abstractC2207do4 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do4.f6007k.setChecked(C2398ai.f6930a.m1262k());
            AbstractC2207do abstractC2207do5 = this.f8740b;
            if (abstractC2207do5 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do5.f6006j.setChecked(C2398ai.f6930a.m1260l());
            AbstractC2207do abstractC2207do6 = this.f8740b;
            if (abstractC2207do6 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do6.f6013q.setChecked(C2398ai.f6930a.m1258m());
            AbstractC2207do abstractC2207do7 = this.f8740b;
            if (abstractC2207do7 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do7.f6012p.setChecked(C2398ai.f6930a.m1256n());
            AbstractC2207do abstractC2207do8 = this.f8740b;
            if (abstractC2207do8 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do8.f6014r.setChecked(C2398ai.f6930a.m1254o());
            AbstractC2207do abstractC2207do9 = this.f8740b;
            if (abstractC2207do9 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do9.f6011o.setChecked(C2398ai.f6930a.m1252p());
            AbstractC2207do abstractC2207do10 = this.f8740b;
            if (abstractC2207do10 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do10.f6015s.setChecked(C2398ai.f6930a.m1250q());
            AbstractC2207do abstractC2207do11 = this.f8740b;
            if (abstractC2207do11 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do11.f5997C.setProgress(i);
            AbstractC2207do abstractC2207do12 = this.f8740b;
            if (abstractC2207do12 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do12.f5998D.setText(string);
            AbstractC2207do abstractC2207do13 = this.f8740b;
            if (abstractC2207do13 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do13.f6022z.setText(C2398ai.f6930a.m1244t());
            AbstractC2207do abstractC2207do14 = this.f8740b;
            if (abstractC2207do14 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do14.f5995A.setText(C2398ai.f6930a.m1246s());
            AbstractC2207do abstractC2207do15 = this.f8740b;
            if (abstractC2207do15 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do15.f6021y.setVisibility(m1215C ? 0 : 8);
            AbstractC2207do abstractC2207do16 = this.f8740b;
            if (abstractC2207do16 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do16.f6021y.setChecked(C2398ai.f6930a.m1270g());
            C2398ai.EnumC2401b m1300K = C2398ai.f6930a.m1300K();
            AbstractC2207do abstractC2207do17 = this.f8740b;
            if (abstractC2207do17 == null) {
                C1694h.m3116b("binding");
            }
            RadioButton radioButton = abstractC2207do17.f6016t;
            C1694h.m3122a((Object) radioButton, "binding.checkDisallowCall");
            radioButton.setChecked(m1300K == C2398ai.EnumC2401b.DISALLOW);
            AbstractC2207do abstractC2207do18 = this.f8740b;
            if (abstractC2207do18 == null) {
                C1694h.m3116b("binding");
            }
            RadioButton radioButton2 = abstractC2207do18.f6020x;
            C1694h.m3122a((Object) radioButton2, "binding.checkRejectCall");
            radioButton2.setChecked(m1300K == C2398ai.EnumC2401b.REJECT);
            AbstractC2207do abstractC2207do19 = this.f8740b;
            if (abstractC2207do19 == null) {
                C1694h.m3116b("binding");
            }
            RadioButton radioButton3 = abstractC2207do19.f6017u;
            C1694h.m3122a((Object) radioButton3, "binding.checkPickAndHang");
            radioButton3.setEnabled(!m1215C || z);
            AbstractC2207do abstractC2207do20 = this.f8740b;
            if (abstractC2207do20 == null) {
                C1694h.m3116b("binding");
            }
            RadioButton radioButton4 = abstractC2207do20.f6017u;
            C1694h.m3122a((Object) radioButton4, "binding.checkPickAndHang");
            AbstractC2207do abstractC2207do21 = this.f8740b;
            if (abstractC2207do21 == null) {
                C1694h.m3116b("binding");
            }
            radioButton4.setChecked(abstractC2207do21.f6017u.isEnabled() && m1300K == C2398ai.EnumC2401b.PICK_AND_HANG);
            AbstractC2207do abstractC2207do22 = this.f8740b;
            if (abstractC2207do22 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView = abstractC2207do22.f6019w;
            C1694h.m3122a((Object) appCompatTextView, "binding.checkPickAndHangInfo");
            appCompatTextView.setVisibility(!m1215C ? 0 : 8);
            AbstractC2207do abstractC2207do23 = this.f8740b;
            if (abstractC2207do23 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView2 = abstractC2207do23.f6018v;
            C1694h.m3122a((Object) appCompatTextView2, "binding.checkPickAndHang…UseBecauseDefaultPhoneApp");
            int i2 = 8;
            if (m1215C) {
                i2 = 8;
                if (!z) {
                    i2 = 0;
                }
            }
            appCompatTextView2.setVisibility(i2);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        this.f8743e = false;
    }

    /* renamed from: e */
    public final void m313e() {
        try {
            startActivityForResult(new Intent("android.intent.action.PICK", ContactsContract.Contacts.CONTENT_URI), this.f8741c);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: f */
    public static final /* synthetic */ AbstractC2207do m310f(SettingsBlockingFragment settingsBlockingFragment) {
        AbstractC2207do abstractC2207do = settingsBlockingFragment.f8740b;
        if (abstractC2207do == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2207do;
    }

    /* renamed from: f */
    public final void m311f() {
        try {
            Context context = getContext();
            if (context == null) {
                return;
            }
            DialogInterfaceC0090d.C0091a c0091a = new DialogInterfaceC0090d.C0091a(context);
            ArrayList arrayList = new ArrayList();
            for (C2386ad.C2388b c2388b : C2386ad.f6885a.m1331e()) {
                String m1328a = c2388b.m1328a();
                if (m1328a == null) {
                    C1694h.m3124a();
                }
                arrayList.add(m1328a);
            }
            DialogInterfaceC0090d.C0091a m7928a = c0091a.m7928a(2131755090);
            Object[] array = arrayList.toArray(new CharSequence[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            m7928a.m7917a((CharSequence[]) array, new DialogInterface$OnClickListenerC2968x(arrayList, this));
            DialogInterfaceC0090d m7916b = c0091a.m7916b();
            C1694h.m3122a((Object) m7916b, "builder.create()");
            m7916b.show();
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: a */
    public void mo240a(ActivityC2499a activityC2499a, Bundle bundle) {
        C1694h.m3117b(activityC2499a, "activity");
        AbstractC2207do abstractC2207do = this.f8740b;
        if (abstractC2207do == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do.f6009m.setOnCheckedChangeListener(new C2944a());
        AbstractC2207do abstractC2207do2 = this.f8740b;
        if (abstractC2207do2 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do2.f6008l.setOnCheckedChangeListener(new C2956l());
        AbstractC2207do abstractC2207do3 = this.f8740b;
        if (abstractC2207do3 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do3.f6010n.setOnCheckedChangeListener(new C2961q());
        AbstractC2207do abstractC2207do4 = this.f8740b;
        if (abstractC2207do4 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do4.f6007k.setOnCheckedChangeListener(new C2962r());
        AbstractC2207do abstractC2207do5 = this.f8740b;
        if (abstractC2207do5 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do5.f6006j.setOnCheckedChangeListener(new C2963s());
        AbstractC2207do abstractC2207do6 = this.f8740b;
        if (abstractC2207do6 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do6.f6013q.setOnCheckedChangeListener(new C2964t());
        AbstractC2207do abstractC2207do7 = this.f8740b;
        if (abstractC2207do7 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do7.f6012p.setOnCheckedChangeListener(new C2965u());
        AbstractC2207do abstractC2207do8 = this.f8740b;
        if (abstractC2207do8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do8.f6014r.setOnCheckedChangeListener(new C2966v());
        AbstractC2207do abstractC2207do9 = this.f8740b;
        if (abstractC2207do9 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do9.f6015s.setOnCheckedChangeListener(new C2967w());
        AbstractC2207do abstractC2207do10 = this.f8740b;
        if (abstractC2207do10 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do10.f6011o.setOnCheckedChangeListener(new C2945b());
        AbstractC2207do abstractC2207do11 = this.f8740b;
        if (abstractC2207do11 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do11.f5997C.setOnSeekBarChangeListener(new C2946c());
        AbstractC2207do abstractC2207do12 = this.f8740b;
        if (abstractC2207do12 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do12.f6000d.setOnClickListener(new View$OnClickListenerC2947d());
        AbstractC2207do abstractC2207do13 = this.f8740b;
        if (abstractC2207do13 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do13.f6001e.setOnClickListener(new View$OnClickListenerC2948e());
        AbstractC2207do abstractC2207do14 = this.f8740b;
        if (abstractC2207do14 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do14.f5995A.addTextChangedListener(new C2949f());
        AbstractC2207do abstractC2207do15 = this.f8740b;
        if (abstractC2207do15 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do15.f6022z.addTextChangedListener(new C2950g());
        AbstractC2207do abstractC2207do16 = this.f8740b;
        if (abstractC2207do16 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do16.f6020x.setOnCheckedChangeListener(new C2951h());
        AbstractC2207do abstractC2207do17 = this.f8740b;
        if (abstractC2207do17 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do17.f6016t.setOnCheckedChangeListener(new C2952i());
        AbstractC2207do abstractC2207do18 = this.f8740b;
        if (abstractC2207do18 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do18.f6017u.setOnCheckedChangeListener(new C2953j(activityC2499a));
        AbstractC2207do abstractC2207do19 = this.f8740b;
        if (abstractC2207do19 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do19.f6021y.setOnCheckedChangeListener(new C2955k());
        AbstractC2207do abstractC2207do20 = this.f8740b;
        if (abstractC2207do20 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do20.f6002f.setOnClickListener(new View$OnClickListenerC2957m());
        AbstractC2207do abstractC2207do21 = this.f8740b;
        if (abstractC2207do21 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do21.f6003g.setOnClickListener(new View$OnClickListenerC2958n());
        AbstractC2207do abstractC2207do22 = this.f8740b;
        if (abstractC2207do22 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do22.f6004h.setOnClickListener(new View$OnClickListenerC2959o());
        AbstractC2207do abstractC2207do23 = this.f8740b;
        if (abstractC2207do23 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2207do23.f6005i.setOnClickListener(new View$OnClickListenerC2960p());
        m315d();
    }

    @Override // org.mistergroup.shouldianswer.p101ui.AbstractC2510b
    /* renamed from: c */
    public Toolbar mo238c() {
        AbstractC2207do abstractC2207do = this.f8740b;
        if (abstractC2207do == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2207do.f5999c;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri data;
        super.onActivityResult(i, i2, intent);
        try {
            if (i != this.f8741c || i2 != -1 || intent == null || (data = intent.getData()) == null) {
                return;
            }
            C2391ae c2391ae = C2391ae.f6909a;
            C1694h.m3122a((Object) data, "uri");
            C2385ac m1322a = c2391ae.m1322a(data);
            AbstractC2207do abstractC2207do = this.f8740b;
            if (abstractC2207do == null) {
                C1694h.m3116b("binding");
            }
            Editable text = abstractC2207do.f5995A.getText();
            String obj = text != null ? text.toString() : null;
            String str = obj;
            if (obj == null) {
                str = "";
            }
            String str2 = str;
            if (!(str.length() == 0)) {
                str2 = str + ", ";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            if (m1322a == null) {
                C1694h.m3124a();
            }
            sb.append(m1322a.m1360b());
            String sb2 = sb.toString();
            AbstractC2207do abstractC2207do2 = this.f8740b;
            if (abstractC2207do2 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2207do2.f5995A.setText(sb2);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        C1694h.m3117b(menu, "menu");
        C1694h.m3117b(menuInflater, "inflater");
        menuInflater.inflate(2131623938, menu);
        super.onCreateOptionsMenu(menu, menuInflater);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C1694h.m3117b(layoutInflater, "inflater");
        ViewDataBinding m5843a = C0651f.m5843a(layoutInflater, 2131558513, viewGroup, false);
        C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…agment, container, false)");
        this.f8740b = (AbstractC2207do) m5843a;
        AbstractC2207do abstractC2207do = this.f8740b;
        if (abstractC2207do == null) {
            C1694h.m3116b("binding");
        }
        View d = abstractC2207do.m5863d();
        C1694h.m3122a((Object) d, "binding.root");
        return d;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        ActivityC0711c activity;
        C1694h.m3117b(menuItem, "item");
        if (menuItem.getItemId() == 2131361841 && (activity = getActivity()) != null) {
            C3078ac c3078ac = C3078ac.f8981a;
            C1694h.m3122a((Object) activity, "it");
            ActivityC0711c activityC0711c = activity;
            String string = getString(2131755321);
            C1694h.m3122a((Object) string, "getString(R.string.help_…handle_blocking_settings)");
            c3078ac.m220a(activityC0711c, string);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // org.mistergroup.shouldianswer.p101ui.C2512c, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m315d();
    }
}
