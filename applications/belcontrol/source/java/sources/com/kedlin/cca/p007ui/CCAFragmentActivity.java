package com.kedlin.cca.p007ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flexaspect.android.everycallcontrol.p003ui.fragments.ContactTNFragment$n;
import com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment;
import com.kedlin.cca.core.service.BackgroundJob;
import com.kedlin.cca.core.service.BackgroundWorker;
import com.kedlin.cca.p007ui.CCAFragmentActivity;
import java.util.EnumSet;
import p000.fa1;
import p000.k61;
import p000.q71;
/* renamed from: com.kedlin.cca.ui.CCAFragmentActivity */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAFragmentActivity.class */
public abstract class CCAFragmentActivity extends FragmentActivity {

    /* renamed from: com.kedlin.cca.ui.CCAFragmentActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAFragmentActivity$a.class */
    public class View$OnClickListenerC0648a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ EditText f3761a;

        /* renamed from: b */
        public final /* synthetic */ AlertDialog f3762b;

        public View$OnClickListenerC0648a(EditText editText, AlertDialog alertDialog) {
            CCAFragmentActivity.this = r4;
            this.f3761a = editText;
            this.f3762b = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            i91 m1800o = fa1.C1420e.m1800o(((EditText) this.f3761a.findViewById(2131362995)).getText().toString().trim());
            if (m1800o != null && !m1800o.m1595s() && !m1800o.m1597q()) {
                CCAFragmentActivity.this.m4316z(m1800o, null, null, null);
            }
            this.f3762b.cancel();
        }
    }

    /* renamed from: com.kedlin.cca.ui.CCAFragmentActivity$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAFragmentActivity$b.class */
    public class View$OnClickListenerC0649b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Long f3764a;

        /* renamed from: b */
        public final /* synthetic */ ContactTNFragment$n f3765b;

        /* renamed from: c */
        public final /* synthetic */ AlertDialog f3766c;

        public View$OnClickListenerC0649b(Long l, ContactTNFragment$n contactTNFragment$n, AlertDialog alertDialog) {
            CCAFragmentActivity.this = r4;
            this.f3764a = l;
            this.f3765b = contactTNFragment$n;
            this.f3766c = alertDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Bundle bundle = new Bundle();
            bundle.putLong(ContactTNFragment.y, this.f3764a.longValue());
            bundle.putInt(ContactTNFragment.x, this.f3765b.ordinal());
            CCAFragmentActivity cCAFragmentActivity = CCAFragmentActivity.this;
            cCAFragmentActivity.m4324r(cCAFragmentActivity, ContactTNFragment.class, bundle);
            this.f3766c.cancel();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: x */
    public /* synthetic */ void m4317y(EditText editText, View view, AlertDialog alertDialog, View view2) {
        int i;
        if (editText == null || editText.getText() == null) {
            return;
        }
        oe1.m1053w(this, view);
        i91 m1800o = fa1.C1420e.m1800o(((EditText) editText.findViewById(2131362995)).getText().toString().trim());
        if (m1800o == null || m1800o.m1595s() || m1800o.m1597q()) {
            alertDialog.cancel();
            return;
        }
        String obj = ((EditText) view.findViewById(2131363224)).getText().toString();
        if (obj == null || obj.trim().isEmpty() || obj.trim().length() >= 3) {
            m4316z(m1800o, ((EditText) view.findViewById(2131363224)).getText().toString(), ((Spinner) view.findViewById(2131363496)).getSelectedItem().toString(), ((TextView) view.findViewById(2131362011)).getText().toString().trim());
            m4325q(m1800o, ((TextView) view.findViewById(2131362011)).getText().toString().trim(), q71.EnumC1620g.BLACK_LIST);
            alertDialog.cancel();
            i = 2131821068;
        } else {
            i = 2131821067;
        }
        Toast.makeText((Context) this, i, 1).show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void attachBaseContext(Context context) {
        CCAFragmentActivity.super.attachBaseContext(ke1.m1401d(context));
    }

    public void on_report_failure(Integer num, String str, k61.C1456a c1456a) {
    }

    public void on_report_success() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: q */
    public void m4325q(i91 i91Var, String str, q71.EnumC1620g enumC1620g) {
        int i;
        Resources resources;
        x81 x81Var = new x81();
        x81Var.m157P(i91Var);
        x81 x81Var2 = x81Var;
        if (x81Var.f8635d < 1) {
            x81Var2 = new x81();
            x81Var2.f8639j = EnumSet.allOf(q71.EnumC1618e.class);
            x81Var2.f8637g = i91Var;
            if (str == null || str.isEmpty()) {
                str = i91Var.m1602l();
            }
            x81Var2.f8636f = str;
        }
        x81Var2.f8641l = enumC1620g;
        if (x81Var2.mo148z()) {
            if (enumC1620g == q71.EnumC1620g.BLACK_LIST) {
                resources = getResources();
                i = 2131820795;
            } else {
                resources = getResources();
                i = 2131820724;
            }
            String string = resources.getString(i);
            Context baseContext = getBaseContext();
            Resources resources2 = getResources();
            String str2 = x81Var2.f8636f;
            Toast.makeText(baseContext, resources2.getString(2131821252, (str2 == null || str2.isEmpty()) ? x81Var2.f8637g.m1602l() : x81Var2.f8636f, string), 0).show();
        }
    }

    /* renamed from: r */
    public Fragment m4324r(Object obj, Class<?> cls, Bundle bundle) {
        return m4322t(obj, cls, bundle, false, true);
    }

    /* renamed from: s */
    public Fragment m4323s(Object obj, Class<?> cls, Bundle bundle, boolean z) {
        return m4321u(obj, cls, bundle, z, true, true);
    }

    /* renamed from: t */
    public Fragment m4322t(Object obj, Class<?> cls, Bundle bundle, boolean z, boolean z2) {
        return m4321u(obj, cls, bundle, z, true, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    public Fragment m4321u(Object obj, Class<?> cls, Bundle bundle, boolean z, boolean z2, boolean z3) {
        Bundle m629w;
        View findViewById = findViewById(2131362550);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        try {
            Object newInstance = cls.newInstance();
            if (newInstance instanceof qb1) {
                ((qb1) newInstance).m829w(obj.getClass(), bundle);
                m629w = ((qb1) newInstance).m836p(bundle);
            } else if (!(newInstance instanceof rb1)) {
                j91.m1505k(this, "Unable to call fragment " + cls.getSimpleName());
                return null;
            } else {
                ((rb1) newInstance).m637E(obj.getClass(), bundle);
                m629w = ((rb1) newInstance).m629w(bundle);
            }
            w91.m270h(newInstance, m629w);
            String name = newInstance.getClass().getName();
            try {
                boolean K0 = getSupportFragmentManager().K0(name, 0);
                if (!z && (K0 || getSupportFragmentManager().Z(name) != null)) {
                    return null;
                }
                td j = getSupportFragmentManager().j();
                j.r(2131362505, (Fragment) newInstance, name);
                if (z3) {
                    j.s(2130772004, 2130772006);
                } else {
                    j.w(0);
                }
                if (z2) {
                    j.f(name);
                }
                j.h();
                return (Fragment) newInstance;
            } catch (IllegalStateException e) {
                return null;
            }
        } catch (Throwable th) {
            j91.m1494v(th, "Unable to call fragment ");
            return null;
        }
    }

    /* renamed from: v */
    public void m4320v(String str) {
        m4319w(str, null, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: w */
    public void m4319w(String str, ContactTNFragment$n contactTNFragment$n, Long l) {
        final View inflate = ((LayoutInflater) getSystemService("layout_inflater")).inflate(2131558757, (ViewGroup) null);
        if (inflate == null) {
            j91.m1505k(this, "Dialog not inflated");
            return;
        }
        final EditText editText = (EditText) inflate.findViewById(2131362995);
        if (!str.isEmpty()) {
            editText.setText(str);
        }
        Spinner spinner = (Spinner) inflate.findViewById(2131363496);
        SparseArray<i71> m708n = r71.m708n();
        int i = 1;
        String[] strArr = new String[m708n.size() + 1];
        strArr[0] = getString(2131820967);
        i71[] i71VarArr = (i71[]) ka1.m1420d(m708n, i71.class);
        int length = i71VarArr.length;
        int i2 = 0;
        while (i2 < length) {
            strArr[i] = i71VarArr[i2].f6743a;
            i2++;
            i++;
        }
        spinner.setAdapter((SpinnerAdapter) new ArrayAdapter((Context) this, Build.VERSION.SDK_INT < 23 ? 17367043 : 2131558768, (Object[]) strArr));
        final AlertDialog create = oe1.m1081i(this).create();
        create.setView(inflate, 0, 0, 0, 0);
        create.show();
        create.getWindow().setSoftInputMode(5);
        create.findViewById(2131362139).setOnClickListener(new View$OnClickListenerC0648a(editText, create));
        if (contactTNFragment$n != null) {
            ((TextView) create.findViewById(2131361884)).setVisibility(0);
            create.findViewById(2131361884).setOnClickListener(new View$OnClickListenerC0649b(l, contactTNFragment$n, create));
        }
        create.findViewById(2131363166).setOnClickListener(new View.OnClickListener() { // from class: wa1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CCAFragmentActivity.this.m4317y(editText, inflate, create, view);
            }
        });
        ((EditText) inflate.findViewById(2131362011)).requestFocus();
    }

    /* renamed from: z */
    public final void m4316z(i91 i91Var, String str, String str2, String str3) {
        BackgroundWorker.m4369g("report", this, new BackgroundJob(this) { // from class: com.kedlin.cca.ui.CCAFragmentActivity.5
            public void run(BackgroundWorker backgroundWorker, Intent intent, i91 i91Var2, String str4, String str5, String str6) {
                try {
                    k61.m1437y((str4 == null && str5 == null && str6 == null) ? new b71(i91Var2) : new b71(i91Var2, str4, str5, str6));
                    backgroundWorker.m4371e(intent, new Object[0]);
                } catch (k61.C1456a e) {
                    backgroundWorker.m4372d(intent, e);
                }
            }
        }, i91Var, str, str2, str3);
    }
}
