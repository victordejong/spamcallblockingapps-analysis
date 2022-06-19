package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.p061m.AbstractC1286a;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ReferAndEarnLayoutBinding.class */
public final class ReferAndEarnLayoutBinding implements AbstractC1286a {

    /* renamed from: a */
    public final FragmentContainerView f25126a;

    /* renamed from: b */
    public final ReferAndEarnActivityLayoutBinding f25127b;

    /* renamed from: c */
    public final AppBarLayout f25128c;

    /* renamed from: d */
    private final CoordinatorLayout f25129d;

    private ReferAndEarnLayoutBinding(CoordinatorLayout coordinatorLayout, FragmentContainerView fragmentContainerView, ReferAndEarnActivityLayoutBinding referAndEarnActivityLayoutBinding, AppBarLayout appBarLayout) {
        this.f25129d = coordinatorLayout;
        this.f25126a = fragmentContainerView;
        this.f25127b = referAndEarnActivityLayoutBinding;
        this.f25128c = appBarLayout;
    }

    /* renamed from: a */
    public static ReferAndEarnLayoutBinding m29052a(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(2131558997, (ViewGroup) null, false);
        int i = 2131363118;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) inflate.findViewById(2131363118);
        if (fragmentContainerView != null) {
            View findViewById = inflate.findViewById(2131363653);
            if (findViewById != null) {
                ReferAndEarnActivityLayoutBinding m29053a = ReferAndEarnActivityLayoutBinding.m29053a(findViewById);
                AppBarLayout appBarLayout = (AppBarLayout) inflate.findViewById(2131363654);
                if (appBarLayout != null) {
                    return new ReferAndEarnLayoutBinding((CoordinatorLayout) inflate, fragmentContainerView, m29053a, appBarLayout);
                }
                i = 2131363654;
            } else {
                i = 2131363653;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.p061m.AbstractC1286a
    public final CoordinatorLayout getRoot() {
        return this.f25129d;
    }
}
