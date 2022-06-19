package com.callapp.contacts.widget.referandearn;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.AbstractC1253j;
import androidx.viewpager2.adapter.AbstractC2944a;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\bj\b\u0012\u0004\u0012\u00020\t`\nX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter;", "Landroidx/viewpager2/adapter/FragmentStateAdapter;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V", "arrayList", "Ljava/util/ArrayList;", "Landroidx/fragment/app/Fragment;", "Lkotlin/collections/ArrayList;", "addFragment", "", "fragment", "createFragment", "position", "", "getItemCount", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/ViewPagerFragmentAdapter.class */
public final class ViewPagerFragmentAdapter extends AbstractC2944a {

    /* renamed from: e */
    private final ArrayList<Fragment> f29448e = new ArrayList<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerFragmentAdapter(FragmentManager fragmentManager, AbstractC1253j lifecycle) {
        super(fragmentManager, lifecycle);
        C18524p.m3840d(fragmentManager, "fragmentManager");
        C18524p.m3840d(lifecycle, "lifecycle");
    }

    @Override // androidx.viewpager2.adapter.AbstractC2944a
    /* renamed from: a */
    public final Fragment mo26292a(int i) {
        Fragment fragment = this.f29448e.get(i);
        C18524p.m3843b(fragment, "arrayList[position]");
        return fragment;
    }

    /* renamed from: a */
    public final void m26291a(Fragment fragment) {
        C18524p.m3840d(fragment, "fragment");
        this.f29448e.add(fragment);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public final int getItemCount() {
        return this.f29448e.size();
    }
}
