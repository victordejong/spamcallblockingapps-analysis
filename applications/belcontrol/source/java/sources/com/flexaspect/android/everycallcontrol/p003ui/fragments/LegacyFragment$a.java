package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.flexaspect.android.everycallcontrol.p003ui.fragments.recent.RecentcallsFragment$i;
import com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentListFragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.settings.GeneralSettingsFragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.support.SupportFragment;
import p000.q71;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.LegacyFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$a.class */
public class LegacyFragment$a implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ LegacyFragment f3033a;

    public LegacyFragment$a(LegacyFragment legacyFragment) {
        this.f3033a = legacyFragment;
    }

    /* renamed from: a */
    public /* synthetic */ void m4788b() {
        r71.m732D(q71.EnumC1618e.SMS);
        r71.m732D(q71.EnumC1618e.MMS);
        LegacyFragment.G(this.f3033a).Z0();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        try {
            LegacyFragment$e legacyFragment$e = LegacyFragment.x()[i];
            switch (LegacyFragment$d.f3036a[legacyFragment$e.ordinal()]) {
                case 1:
                    Bundle bundle = new Bundle();
                    bundle.putInt(ContactsFragment.A, ContactsFragment$x.FO_BLOCKED.ordinal());
                    LegacyFragment.y(this.f3033a).m4324r(this, ContactsFragment.class, bundle);
                    return;
                case 2:
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(ContactsFragment.A, ContactsFragment$x.FO_ALLOWED.ordinal());
                    LegacyFragment.I(this.f3033a).m4324r(this, ContactsFragment.class, bundle2);
                    return;
                case 3:
                    LegacyFragment.L(this.f3033a).m4324r(this, RecentListFragment.class, null);
                    return;
                case 4:
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt(RecentcallsFragment.L, RecentcallsFragment$i.FO_ALL.ordinal());
                    LegacyFragment.M(this.f3033a).m4324r(this, RecentcallsFragment.class, bundle3);
                    return;
                case 5:
                    LegacyFragment.N(this.f3033a).m4324r(this, ComplaintFragment.class, null);
                    return;
                case 6:
                    LegacyFragment.O(this.f3033a).m4324r(this, SupportFragment.class, null);
                    return;
                case 7:
                    Bundle bundle4 = new Bundle();
                    bundle4.putInt(RecentcallsFragment.L, RecentcallsFragment$i.FO_BLOCKED.ordinal());
                    LegacyFragment.P(this.f3033a).m4324r(this, RecentcallsFragment.class, bundle4);
                    return;
                case 8:
                    LegacyFragment.Q(this.f3033a).m4324r(this, GeneralSettingsFragment.class, null);
                    return;
                case 9:
                    LegacyFragment.R(this.f3033a).m4324r(this, RecentActivityFragment.class, null);
                    return;
                case 10:
                    PackageManager packageManager = LegacyFragment.z(this.f3033a).getPackageManager();
                    if (packageManager == null) {
                        LegacyFragment.A(this.f3033a).m4324r(this, CCHDevicePromoFragment.class, null);
                        return;
                    } else if (!oe1.m1049y(packageManager)) {
                        LegacyFragment.B(this.f3033a).m4324r(this, CCHDevicePromoFragment.class, null);
                        return;
                    } else {
                        this.f3033a.startActivity(packageManager.getLaunchIntentForPackage("com.callcontrolhome"));
                        return;
                    }
                case 11:
                    LegacyFragment.C(this.f3033a).m4324r(this, DndFragment.class, null);
                    return;
                case 12:
                    LegacyFragment.D(this.f3033a).m4324r(this, MoreBackupFragment.class, null);
                    return;
                case 13:
                    r71.EnumC1638a enumC1638a = r71.EnumC1638a.f8004y0;
                    if (!enumC1638a.m687i().isEmpty()) {
                        LegacyFragment.E(this.f3033a).postDelayed(new mx0(this), 100L);
                        sh0 h = sh0.h(enumC1638a.m687i());
                        if (h != null && h.q() && !h.o()) {
                            h.r();
                            return;
                        }
                    }
                    LegacyFragment.F(this.f3033a).m4324r(this, NewMessagesFragment.class, null);
                    return;
                default:
                    return;
            }
        } catch (Throwable th) {
        }
    }
}
