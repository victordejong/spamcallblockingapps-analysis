package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.kedlin.cca.p007ui.CCAFragmentActivity;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ComplaintFragment$f */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f.class */
public class ComplaintFragment$f {

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ComplaintFragment$f$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$a.class */
    public static final class DialogInterface$OnClickListenerC0395a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f2920a;

        public DialogInterface$OnClickListenerC0395a(Runnable runnable) {
            this.f2920a = runnable;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            Runnable runnable = this.f2920a;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ComplaintFragment$f$b */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment$f$b.class */
    public static final class DialogInterface$OnClickListenerC0396b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f2921a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f2922b;

        /* renamed from: c */
        public final /* synthetic */ x81 f2923c;

        /* renamed from: d */
        public final /* synthetic */ i91 f2924d;

        /* renamed from: f */
        public final /* synthetic */ String f2925f;

        public DialogInterface$OnClickListenerC0396b(Context context, Runnable runnable, x81 x81Var, i91 i91Var, String str) {
            this.f2921a = context;
            this.f2922b = runnable;
            this.f2923c = x81Var;
            this.f2924d = i91Var;
            this.f2925f = str;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (!oe1.m1074l0((CCAFragmentActivity) this.f2921a, "BLOCKED_LIST_FULL")) {
                Runnable runnable = this.f2922b;
                if (runnable == null) {
                    return;
                }
                runnable.run();
                return;
            }
            this.f2923c.f8639j = EnumSet.allOf(q71.EnumC1618e.class);
            x81 x81Var = this.f2923c;
            x81Var.f8641l = q71.EnumC1620g.BLACK_LIST;
            x81Var.f8637g = this.f2924d;
            x81Var.f8636f = this.f2925f;
            x81Var.mo148z();
            Runnable runnable2 = this.f2922b;
            if (runnable2 == null) {
                return;
            }
            runnable2.run();
        }
    }

    /* renamed from: a */
    public static boolean m4791a(Context context, i91 i91Var, String str, Runnable runnable) {
        x81 x81Var = new x81();
        x81Var.m156Q(i91Var);
        if (x81Var.f8635d <= 0 || x81Var.f8641l != q71.EnumC1620g.BLACK_LIST) {
            AlertDialog.Builder m1081i = oe1.m1081i(context);
            View m1051x = oe1.m1051x(context, 2131558562);
            m1081i.setTitle(2131822371);
            TextView textView = (TextView) m1051x.findViewById(2131362377);
            StringBuilder sb = new StringBuilder();
            sb.append(context.getString(2131822037));
            sb.append("\n");
            sb.append(context.getString(2131821809, !TextUtils.isEmpty(str) ? str : i91Var.m1601m()));
            textView.setText(sb.toString());
            m1081i.setPositiveButton(2131822369, new DialogInterface$OnClickListenerC0396b(context, runnable, x81Var, i91Var, str)).setNegativeButton(2131821873, new DialogInterface$OnClickListenerC0395a(runnable));
            AlertDialog create = m1081i.create();
            create.setView(m1051x, 0, 0, 0, 0);
            create.show();
            return true;
        }
        return false;
    }
}
