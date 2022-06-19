package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.Toast;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import p000.q71;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.MainActivity$k$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/MainActivity$k$a.class */
public class MainActivity$k$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MainActivity$k$c f2787a;

    /* renamed from: b */
    public final /* synthetic */ MainActivity.k f2788b;

    public MainActivity$k$a(MainActivity.k kVar, MainActivity$k$c mainActivity$k$c) {
        this.f2788b = kVar;
        this.f2787a = mainActivity$k$c;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        MainActivity.k.j(this.f2788b, true);
        if (this.f2787a == MainActivity$k$c.DIALOG_TYPE_3RD_BLOCKED) {
            this.f2788b.dismiss();
            q71.EnumC1614a enumC1614a = q71.EnumC1614a.PICKUP_HANGUP;
            q71.EnumC1614a.m911e(enumC1614a);
            MainActivity.k.k(this.f2788b, enumC1614a.m913c().intValue());
            Toast.makeText((Context) this.f2788b.getActivity(), 2131820800, 1).show();
        } else if (!ie1.m1580f()) {
            Toast.makeText((Context) this.f2788b.getActivity(), (CharSequence) this.f2788b.getString(2131821305), 0).show();
        } else {
            ie1.m1577i(this.f2788b.getActivity(), "market://details?id=com.flexaspect.android.everycallcontrol");
            if (this.f2787a == MainActivity$k$c.DIALOG_TYPE_FIRST_CALL_BLOCKED) {
                r71.EnumC1638a enumC1638a = r71.EnumC1638a.f7977p0;
                int m691e = enumC1638a.m691e();
                i2 = MainActivity$k$c.DIALOG_TYPE_CALLS_BLOCKED.f2806a;
                enumC1638a.m683m(Integer.valueOf(m691e | i2));
            }
            this.f2788b.dismiss();
        }
    }
}
