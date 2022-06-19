package com.google.android.material.navigation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.DialogC0122b;
import androidx.appcompat.view.menu.C0136e;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.Fragment;
import com.google.android.material.navigation.NavigationView;
import com.mglab.scm.MainActivity;
import com.mglab.scm.visual.C2107c;
import com.mglab.scm.visual.FragmentAbout;
import com.mglab.scm.visual.FragmentBlackList;
import com.mglab.scm.visual.FragmentDev;
import com.mglab.scm.visual.FragmentDonate;
import com.mglab.scm.visual.FragmentPreferences;
import com.mglab.scm.visual.FragmentStat;
import com.mglab.scm.visual.FragmentWhiteList;
import java.util.Objects;
import p066d0.C2134a;
import p095f8.C2779g;
import p095f8.C2780h;
import p095f8.DialogInterface$OnClickListenerC2783k;
/* renamed from: com.google.android.material.navigation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/a.class */
public class C1798a implements C0136e.AbstractC0137a {

    /* renamed from: a */
    public final /* synthetic */ NavigationView f6743a;

    public C1798a(NavigationView navigationView) {
        this.f6743a = navigationView;
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
    /* renamed from: a */
    public boolean mo2424a(C0136e c0136e, MenuItem menuItem) {
        boolean z;
        NavigationView.AbstractC1795a abstractC1795a = this.f6743a.f6731h;
        if (abstractC1795a != null) {
            MainActivity mainActivity = (MainActivity) abstractC1795a;
            int itemId = menuItem.getItemId();
            Fragment m8198H = mainActivity.m8094o().m8198H(2131296638);
            if (itemId == 2131296862 && !(m8198H instanceof FragmentStat)) {
                mainActivity.m3982u();
            } else if (itemId == 2131296857 && !(m8198H instanceof FragmentBlackList)) {
                mainActivity.m3979x(new FragmentBlackList());
            } else if (itemId == 2131296865 && !(m8198H instanceof FragmentWhiteList)) {
                mainActivity.m3979x(new FragmentWhiteList());
            } else if (itemId == 2131296856 && !(m8198H instanceof FragmentAbout)) {
                mainActivity.m3979x(new FragmentAbout());
            } else if (itemId == 2131296859 && !(m8198H instanceof FragmentDev)) {
                mainActivity.m3979x(new FragmentDev());
            } else if (itemId == 2131296861) {
                C2107c.m3916p(mainActivity);
            } else if (itemId == 2131296858) {
                DialogC0122b.C0123a c0123a = new DialogC0122b.C0123a(mainActivity, C2780h.m3081H(mainActivity.getApplicationContext()) ? 2131886382 : 2131886090);
                AlertController.C0118b c0118b = c0123a.f334a;
                c0118b.f320d = c0118b.f317a.getText(2131820575);
                AlertController.C0118b c0118b2 = c0123a.f334a;
                Objects.requireNonNull(c0118b2);
                c0118b2.f327k = 2131492908;
                Context baseContext = mainActivity.getBaseContext();
                Object obj = C2134a.f7832a;
                Drawable m3125H = C2779g.m3125H(C2134a.C2136b.m3841b(baseContext, 2131230940), C2134a.m3845b(mainActivity.getBaseContext(), 2131099739));
                AlertController.C0118b c0118b3 = c0123a.f334a;
                c0118b3.f319c = m3125H;
                DialogInterface$OnClickListenerC2783k dialogInterface$OnClickListenerC2783k = DialogInterface$OnClickListenerC2783k.f9501b;
                c0118b3.f322f = c0118b3.f317a.getText(2131820943);
                c0123a.f334a.f323g = dialogInterface$OnClickListenerC2783k;
                c0123a.m8726a().show();
            } else if (itemId == 2131296863 && !(m8198H instanceof FragmentPreferences)) {
                mainActivity.m3979x(new FragmentPreferences());
            } else if (itemId == 2131296860 && !(m8198H instanceof FragmentDonate)) {
                mainActivity.m3979x(new FragmentDonate());
            }
            ((DrawerLayout) mainActivity.findViewById(2131296571)).m8288b(8388611);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.C0136e.AbstractC0137a
    /* renamed from: b */
    public void mo2423b(C0136e c0136e) {
    }
}
