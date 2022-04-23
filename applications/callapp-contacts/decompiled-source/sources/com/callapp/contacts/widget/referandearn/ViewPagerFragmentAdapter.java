package com.callapp.contacts.widget.referandearn;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.j;
import androidx.viewpager2.adapter.a;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V", "arrayList", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "addFragment", "", "fragment", "createFragment", "position", "", "getItemCount", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter.class */
public final class ViewPagerFragmentAdapter extends a {
    private final ArrayList<Fragment> e = new ArrayList<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerFragmentAdapter(FragmentManager fragmentManager, j lifecycle) {
        super(fragmentManager, lifecycle);
        p.d(fragmentManager, "fragmentManager");
        p.d(lifecycle, "lifecycle");
    }

    @Override // androidx.viewpager2.adapter.a
    public final Fragment a(int i) {
        Fragment fragment = this.e.get(i);
        p.b(fragment, "arrayList[position]");
        return fragment;
    }

    public final void a(Fragment fragment) {
        p.d(fragment, "fragment");
        this.e.add(fragment);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public final int getItemCount() {
        return this.e.size();
    }
}
