package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import java.util.EnumSet;
import p000.q71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentCallInfoFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentCallInfoFragment$e.class */
public class RecentCallInfoFragment$e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f3101a;

    /* renamed from: b */
    public final /* synthetic */ RecentCallInfoFragment f3102b;

    public RecentCallInfoFragment$e(RecentCallInfoFragment recentCallInfoFragment, int i) {
        this.f3102b = recentCallInfoFragment;
        this.f3101a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f3101a;
        if (i2 == 0) {
            RecentCallInfoFragment.F(this.f3102b, q71.EnumC1620g.BLACK_LIST, (EnumSet) null);
            RecentCallInfoFragment recentCallInfoFragment = this.f3102b;
            RecentCallInfoFragment.G(recentCallInfoFragment, RecentCallInfoFragment.x(recentCallInfoFragment));
        } else if (i2 == 1) {
            RecentCallInfoFragment.F(this.f3102b, q71.EnumC1620g.WHITE_LIST, (EnumSet) null);
        } else if (i2 != 3) {
        } else {
            RecentCallInfoFragment.F(this.f3102b, q71.EnumC1620g.UNSPECIFIED, (EnumSet) null);
        }
    }
}
