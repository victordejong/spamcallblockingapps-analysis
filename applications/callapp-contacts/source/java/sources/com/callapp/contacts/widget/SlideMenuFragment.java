package com.callapp.contacts.widget;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC1268u;
import androidx.lifecycle.C1232ab;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileViewModel;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.invites.ReferAndEarnData;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.SlideMenuAdapter;
import com.callapp.contacts.widget.referandearn.ReferAndEarnViewModel;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SlideMenuFragment.class */
public class SlideMenuFragment extends Fragment {

    /* renamed from: d */
    private static boolean f28999d;

    /* renamed from: a */
    public SlideMenuAdapter f29000a;

    /* renamed from: b */
    public RecyclerView f29001b;

    /* renamed from: c */
    private SlideMenuAdapter.SlideMenuEvents f29002c;

    /* renamed from: e */
    private ReferAndEarnViewModel f29003e;

    /* renamed from: f */
    private WhoViewedMyProfileViewModel f29004f;

    /* renamed from: a */
    public static SlideMenuFragment m26558a(ArrayList<SlideMenuAdapter.SlideMenuListItemData> arrayList, SlideMenuAdapter.SlideMenuEvents slideMenuEvents, boolean z) {
        SlideMenuFragment slideMenuFragment = new SlideMenuFragment();
        slideMenuFragment.f29002c = slideMenuEvents;
        Bundle bundle = new Bundle();
        bundle.putSerializable("itemsData", arrayList);
        slideMenuFragment.setArguments(bundle);
        f28999d = z;
        return slideMenuFragment;
    }

    /* renamed from: a */
    public final void m26559a(int i, String str) {
        int itemIndexById;
        SlideMenuAdapter slideMenuAdapter = this.f29000a;
        if (slideMenuAdapter == null || (itemIndexById = slideMenuAdapter.getItemIndexById(i)) < 0) {
            return;
        }
        SlideMenuAdapter.SlideMenuListItemData menuItem = this.f29000a.getMenuItem(itemIndexById);
        if (StringUtils.m26042b(menuItem.getNotification(), str)) {
            return;
        }
        menuItem.setNotification$505cff1c(str);
        this.f29000a.notifyItemChanged(itemIndexById);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131559028, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131363900);
        this.f29001b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f29001b.setBackgroundColor(ThemeUtils.getColor(2131099686));
        Bundle arguments = getArguments();
        if (arguments != null) {
            SlideMenuAdapter slideMenuAdapter = new SlideMenuAdapter((ArrayList) arguments.getSerializable("itemsData"), this.f29002c, getLifecycle(), f28999d);
            this.f29000a = slideMenuAdapter;
            this.f29001b.setAdapter(slideMenuAdapter);
        }
        ReferAndEarnViewModel referAndEarnViewModel = (ReferAndEarnViewModel) new C1232ab(this).m43312a(ReferAndEarnViewModel.class);
        this.f29003e = referAndEarnViewModel;
        referAndEarnViewModel.m26324a(ReferAndEarnDataManager.getReferAndEarnBox()).m43334a(getViewLifecycleOwner(), new AbstractC1268u<List<ReferAndEarnData>>() { // from class: com.callapp.contacts.widget.SlideMenuFragment.1
            @Override // androidx.lifecycle.AbstractC1268u
            public /* synthetic */ void onChanged(List<ReferAndEarnData> list) {
                if (Prefs.f26640ht.get().intValue() > 0) {
                    SlideMenuFragment.this.m26559a(11, Prefs.f26640ht.get().toString());
                }
            }
        });
        WhoViewedMyProfileViewModel whoViewedMyProfileViewModel = (WhoViewedMyProfileViewModel) new C1232ab(this).m43312a(WhoViewedMyProfileViewModel.class);
        this.f29004f = whoViewedMyProfileViewModel;
        whoViewedMyProfileViewModel.m29325a(CallAppApplication.get().getObjectBoxStore().m4727d(ProfileViewedData.class)).m43334a(getViewLifecycleOwner(), new AbstractC1268u<List<ProfileViewedData>>() { // from class: com.callapp.contacts.widget.SlideMenuFragment.2
            @Override // androidx.lifecycle.AbstractC1268u
            public /* synthetic */ void onChanged(List<ProfileViewedData> list) {
                if (Prefs.f26596hB.get().intValue() > 0) {
                    int i = 99;
                    if (Prefs.f26596hB.get().intValue() <= 99) {
                        i = Prefs.f26596hB.get().intValue();
                    }
                    SlideMenuFragment.this.m26559a(14, String.valueOf(i));
                }
            }
        });
        return inflate;
    }
}
