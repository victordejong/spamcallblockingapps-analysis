package com.callapp.contacts.widget;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ab;
import androidx.lifecycle.u;
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

    /* renamed from: d  reason: collision with root package name */
    private static boolean f16661d;

    /* renamed from: a  reason: collision with root package name */
    public SlideMenuAdapter f16662a;

    /* renamed from: b  reason: collision with root package name */
    public RecyclerView f16663b;

    /* renamed from: c  reason: collision with root package name */
    private SlideMenuAdapter.SlideMenuEvents f16664c;
    private ReferAndEarnViewModel e;
    private WhoViewedMyProfileViewModel f;

    public static SlideMenuFragment a(ArrayList<SlideMenuAdapter.SlideMenuListItemData> arrayList, SlideMenuAdapter.SlideMenuEvents slideMenuEvents, boolean z) {
        SlideMenuFragment slideMenuFragment = new SlideMenuFragment();
        slideMenuFragment.f16664c = slideMenuEvents;
        Bundle bundle = new Bundle();
        bundle.putSerializable("itemsData", arrayList);
        slideMenuFragment.setArguments(bundle);
        f16661d = z;
        return slideMenuFragment;
    }

    public final void a(int i, String str) {
        int itemIndexById;
        SlideMenuAdapter slideMenuAdapter = this.f16662a;
        if (slideMenuAdapter != null && (itemIndexById = slideMenuAdapter.getItemIndexById(i)) >= 0) {
            SlideMenuAdapter.SlideMenuListItemData menuItem = this.f16662a.getMenuItem(itemIndexById);
            if (!StringUtils.b(menuItem.getNotification(), str)) {
                menuItem.setNotification$505cff1c(str);
                this.f16662a.notifyItemChanged(itemIndexById);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131559028, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(2131363900);
        this.f16663b = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f16663b.setBackgroundColor(ThemeUtils.getColor(2131099686));
        Bundle arguments = getArguments();
        if (arguments != null) {
            SlideMenuAdapter slideMenuAdapter = new SlideMenuAdapter((ArrayList) arguments.getSerializable("itemsData"), this.f16664c, getLifecycle(), f16661d);
            this.f16662a = slideMenuAdapter;
            this.f16663b.setAdapter(slideMenuAdapter);
        }
        ReferAndEarnViewModel referAndEarnViewModel = (ReferAndEarnViewModel) new ab(this).a(ReferAndEarnViewModel.class);
        this.e = referAndEarnViewModel;
        referAndEarnViewModel.a(ReferAndEarnDataManager.getReferAndEarnBox()).a(getViewLifecycleOwner(), new u<List<ReferAndEarnData>>() { // from class: com.callapp.contacts.widget.SlideMenuFragment.1
            @Override // androidx.lifecycle.u
            public /* synthetic */ void onChanged(List<ReferAndEarnData> list) {
                if (Prefs.ht.get().intValue() > 0) {
                    SlideMenuFragment.this.a(11, Prefs.ht.get().toString());
                }
            }
        });
        WhoViewedMyProfileViewModel whoViewedMyProfileViewModel = (WhoViewedMyProfileViewModel) new ab(this).a(WhoViewedMyProfileViewModel.class);
        this.f = whoViewedMyProfileViewModel;
        whoViewedMyProfileViewModel.a(CallAppApplication.get().getObjectBoxStore().d(ProfileViewedData.class)).a(getViewLifecycleOwner(), new u<List<ProfileViewedData>>() { // from class: com.callapp.contacts.widget.SlideMenuFragment.2
            @Override // androidx.lifecycle.u
            public /* synthetic */ void onChanged(List<ProfileViewedData> list) {
                if (Prefs.hB.get().intValue() > 0) {
                    int i = 99;
                    if (Prefs.hB.get().intValue() <= 99) {
                        i = Prefs.hB.get().intValue();
                    }
                    SlideMenuFragment.this.a(14, String.valueOf(i));
                }
            }
        });
        return inflate;
    }
}
