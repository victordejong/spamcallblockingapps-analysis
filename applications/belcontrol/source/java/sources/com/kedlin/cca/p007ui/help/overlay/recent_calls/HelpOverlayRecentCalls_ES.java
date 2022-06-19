package com.kedlin.cca.p007ui.help.overlay.recent_calls;

import android.view.View;
import android.view.ViewGroup;
import com.flexaspect.android.everycallcontrol.ui.fragments.MessagesFragment;
import com.flexaspect.android.everycallcontrol.ui.fragments.recent.RecentcallsFragment;
import com.kedlin.cca.p007ui.CCANavBarFilter;
import com.kedlin.cca.p007ui.HelpOverlayView;
import p000.sb1;
/* renamed from: com.kedlin.cca.ui.help.overlay.recent_calls.HelpOverlayRecentCalls_ES */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/help/overlay/recent_calls/HelpOverlayRecentCalls_ES.class */
public class HelpOverlayRecentCalls_ES extends HelpOverlayRecentCalls {
    @Override // com.kedlin.cca.p007ui.help.overlay.recent_calls.HelpOverlayRecentCalls
    /* renamed from: c */
    public void mo4108c(RecentcallsFragment recentcallsFragment, HelpOverlayView helpOverlayView, ViewGroup viewGroup, View view) {
        CCANavBarFilter m596f = recentcallsFragment.m630v().m596f();
        String string = recentcallsFragment.getString(2131821471);
        HelpOverlayView.EnumC0689h enumC0689h = HelpOverlayView.EnumC0689h.SOUTH_WEST;
        helpOverlayView.m4173o(m596f, string, viewGroup, enumC0689h, 16, 8);
        helpOverlayView.m4178j(recentcallsFragment.m630v().m595g(sb1.EnumC1653c.BTN_BLOCK), recentcallsFragment.getString(2131821456), viewGroup, enumC0689h, -10, 32);
        helpOverlayView.m4178j(recentcallsFragment.m630v().m595g(sb1.EnumC1653c.BTN_LOOKUP), recentcallsFragment.getString(2131821474), viewGroup, enumC0689h, 0, 8);
        boolean z = recentcallsFragment instanceof MessagesFragment;
        if (z) {
            helpOverlayView.m4177k(recentcallsFragment.m630v().m595g(sb1.EnumC1653c.BTN_PLUS), recentcallsFragment.getString(2131821481), viewGroup, HelpOverlayView.EnumC0689h.SOUTH, 14, 8, 16);
        }
        if (view != null) {
            helpOverlayView.m4177k(view.findViewById(2131362968), recentcallsFragment.getString(2131821473), viewGroup, HelpOverlayView.EnumC0689h.WEST, 16, 0, 16);
            if (z) {
                return;
            }
            helpOverlayView.m4175m(view.findViewById(2131363397), recentcallsFragment.getString(2131821461), viewGroup, HelpOverlayView.EnumC0689h.EAST, 16, 0);
        }
    }
}
