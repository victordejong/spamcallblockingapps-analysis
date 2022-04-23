package com.callapp.contacts.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.m.a;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/databinding/ReferAndEarnLayoutBinding.class */
public final class ReferAndEarnLayoutBinding implements a {

    /* renamed from: a  reason: collision with root package name */
    public final FragmentContainerView f14360a;

    /* renamed from: b  reason: collision with root package name */
    public final ReferAndEarnActivityLayoutBinding f14361b;

    /* renamed from: c  reason: collision with root package name */
    public final AppBarLayout f14362c;

    /* renamed from: d  reason: collision with root package name */
    private final CoordinatorLayout f14363d;

    private ReferAndEarnLayoutBinding(CoordinatorLayout coordinatorLayout, FragmentContainerView fragmentContainerView, ReferAndEarnActivityLayoutBinding referAndEarnActivityLayoutBinding, AppBarLayout appBarLayout) {
        this.f14363d = coordinatorLayout;
        this.f14360a = fragmentContainerView;
        this.f14361b = referAndEarnActivityLayoutBinding;
        this.f14362c = appBarLayout;
    }

    public static ReferAndEarnLayoutBinding a(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(2131558997, (ViewGroup) null, false);
        int i = 2131363118;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) inflate.findViewById(2131363118);
        if (fragmentContainerView != null) {
            View findViewById = inflate.findViewById(2131363653);
            if (findViewById != null) {
                ReferAndEarnActivityLayoutBinding a2 = ReferAndEarnActivityLayoutBinding.a(findViewById);
                AppBarLayout appBarLayout = (AppBarLayout) inflate.findViewById(2131363654);
                if (appBarLayout != null) {
                    return new ReferAndEarnLayoutBinding((CoordinatorLayout) inflate, fragmentContainerView, a2, appBarLayout);
                }
                i = 2131363654;
            } else {
                i = 2131363653;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // androidx.m.a
    public final CoordinatorLayout getRoot() {
        return this.f14363d;
    }
}
