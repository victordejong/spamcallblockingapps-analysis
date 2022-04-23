package com.callapp.contacts.widget.referandearn;

import android.os.Bundle;
import android.text.SpannableString;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.CallAppFilter;
import com.callapp.contacts.activity.invite.BadgeMemoryContactItem;
import com.callapp.contacts.activity.invite.MultipleContactsData;
import com.callapp.contacts.activity.invite.OnSelectChangeListener;
import com.callapp.contacts.activity.invite.adapter.InviteVerticalItemsAdapter;
import com.callapp.contacts.databinding.FragmentSearchAndSelectBinding;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImageNew;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.SimpleSearchBarFragment;
import com.callapp.contacts.widget.TopBarFragment;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.v;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018�� h2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002hiB\u0005¢\u0006\u0002\u0010\u0005J\n\u00108\u001a\u0004\u0018\u000109H&J\n\u0010:\u001a\u0004\u0018\u00010;H&J\b\u0010<\u001a\u00020=H\u0016J\n\u0010>\u001a\u0004\u0018\u000109H&J$\u0010?\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0018\u00010@H&J\n\u0010A\u001a\u0004\u0018\u00010;H&J\b\u0010B\u001a\u00020CH&J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ$\u0010G\u001a\u0002092\u0006\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010K2\b\u0010L\u001a\u0004\u0018\u00010MH\u0016J\b\u0010N\u001a\u00020EH\u0016J\u0018\u0010O\u001a\u00020E2\u0006\u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u000209H\u0016J\u0010\u0010R\u001a\u00020E2\u0006\u0010P\u001a\u00020SH\u0016J\b\u0010T\u001a\u00020EH\u0016J\b\u0010U\u001a\u00020EH\u0016J\b\u0010V\u001a\u00020EH\u0016J(\u0010W\u001a\u00020E2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020C2\u0006\u0010[\u001a\u00020C2\u0006\u0010\\\u001a\u00020CH\u0016J\b\u0010]\u001a\u00020EH\u0016J\u0010\u0010^\u001a\u00020E2\u0006\u0010_\u001a\u00020`H\u0016J\u001a\u0010a\u001a\u00020E2\u0006\u0010Q\u001a\u0002092\b\u0010L\u001a\u0004\u0018\u00010MH\u0016J\b\u0010b\u001a\u00020EH\u0016J\u0018\u0010c\u001a\u00020E2\u0006\u0010d\u001a\u0002022\u0006\u0010e\u001a\u000200H\u0016J\b\u0010f\u001a\u000200H&J\b\u0010g\u001a\u000200H&R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n��R\"\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086.¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020(X\u0086.¢\u0006\u000e\n��\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n��R\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0016\u00107\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u0006j"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/activity/interfaces/CallAppFilter;", "Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;", "Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;", "()V", "_binding", "Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;", "adapter", "Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;", "checkedItems", "", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "getCheckedItems", "()Ljava/util/List;", "dataArray", "", "Lcom/callapp/contacts/activity/base/BaseViewTypeData;", "filterableVerticalItems", "getFilterableVerticalItems", "setFilterableVerticalItems", "(Ljava/util/List;)V", "filterableVerticalItemsLock", "", "mainRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getMainRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setMainRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "popupViewStub", "Landroid/view/ViewStub;", "getPopupViewStub", "()Landroid/view/ViewStub;", "setPopupViewStub", "(Landroid/view/ViewStub;)V", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "scrollStateTracker", "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;", "shouldShowSuggestionItems", "", Payload.SOURCE, "", "getSource", "()Ljava/lang/String;", "setSource", "(Ljava/lang/String;)V", "suggestionItems", "getBottomLayout", "Landroid/view/View;", "getBottomSectionData", "Lcom/callapp/contacts/model/SectionData;", "getFilter", "Landroid/widget/Filter;", "getHeaderLayout", "getSuggestionsAndContacts", "Landroid/util/Pair;", "getTopSectionData", "getViewType", "", "initView", "", "notifyDataChanged", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onGreySelectChange", "memoryContactItem", "view", "onInviteClicked", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "onOverflowRequested", "onSearchActionRequested", "onSearchBoxClicked", "onSearchTextChanged", "s", "", EventConstants.START, "before", "count", "onSelectChange", "onStateIconClicked", "iconState", "Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;", "onViewCreated", "onVoiceSearchRequested", "performFilter", "text", "scrollToTop", "showSearchBox", "showShowAllButton", "Companion", "InviteFilter", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment.class */
public abstract class SearchAndSelectFragment extends Fragment implements CallAppFilter, OnSelectChangeListener, SimpleSearchBarFragment.SearchBarEvents {
    public static final Companion e = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    public RecyclerView f16922b;

    /* renamed from: c  reason: collision with root package name */
    public ProgressBar f16923c;

    /* renamed from: d  reason: collision with root package name */
    public ViewStub f16924d;
    private InviteVerticalItemsAdapter f;
    private String k;
    private FragmentSearchAndSelectBinding m;

    /* renamed from: a  reason: collision with root package name */
    private final ScrollRecyclerStateTracker f16921a = new ScrollRecyclerStateTracker();
    private final List<BaseViewTypeData> g = new ArrayList();
    private List<? extends BadgeMemoryContactItem> h = new ArrayList();
    private final Object i = new Object();
    private List<? extends BadgeMemoryContactItem> j = new ArrayList();
    private boolean l = true;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;", "", "()V", "EXTRA_SOURCE", "", "FILTER_ALL", "MAX_SUGGESTIONS", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0014¨\u0006\n"}, d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;", "Landroid/widget/Filter;", "(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V", "performFiltering", "Landroid/widget/Filter$FilterResults;", "constraint", "", "publishResults", "", "results", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter.class */
    public final class InviteFilter extends Filter {
        public InviteFilter() {
        }

        @Override // android.widget.Filter
        protected final Filter.FilterResults performFiltering(CharSequence constraint) {
            boolean c2;
            p.d(constraint, "constraint");
            Filter.FilterResults filterResults = new Filter.FilterResults();
            String obj = constraint.toString();
            Objects.requireNonNull(obj, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = obj.toLowerCase();
            p.b(lowerCase, "(this as java.lang.String).toLowerCase()");
            synchronized (SearchAndSelectFragment.this.i) {
                if (StringUtils.a((CharSequence) lowerCase)) {
                    filterResults.values = SearchAndSelectFragment.this.getFilterableVerticalItems();
                    filterResults.count = SearchAndSelectFragment.this.getFilterableVerticalItems().size();
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (BadgeMemoryContactItem badgeMemoryContactItem : SearchAndSelectFragment.this.getFilterableVerticalItems()) {
                        p.a(badgeMemoryContactItem);
                        String str = badgeMemoryContactItem.displayName;
                        p.b(str, "item!!.displayName");
                        c2 = kotlin.h.p.c(str, lowerCase, false);
                        if (c2) {
                            arrayList.add(badgeMemoryContactItem);
                        }
                    }
                    filterResults.values = arrayList;
                    filterResults.count = arrayList.size();
                }
                v vVar = v.f38654a;
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        protected final void publishResults(CharSequence constraint, Filter.FilterResults results) {
            p.d(constraint, "constraint");
            p.d(results, "results");
            Object obj = results.values;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
            List list = (List) obj;
            SearchAndSelectFragment.this.g.clear();
            if (SearchAndSelectFragment.this.getViewType() == 0) {
                if (SearchAndSelectFragment.this.l && SearchAndSelectFragment.this.h != null) {
                    List list2 = SearchAndSelectFragment.this.h;
                    p.a(list2);
                    if (!list2.isEmpty()) {
                        SectionData topSectionData = SearchAndSelectFragment.this.getTopSectionData();
                        if (topSectionData != null) {
                            SearchAndSelectFragment.this.g.add(topSectionData);
                        }
                        SearchAndSelectFragment.this.g.add(new MultipleContactsData(SearchAndSelectFragment.this.h));
                    }
                }
                if (!list.isEmpty()) {
                    SectionData bottomSectionData = SearchAndSelectFragment.this.getBottomSectionData();
                    if (bottomSectionData != null) {
                        SearchAndSelectFragment.this.g.add(bottomSectionData);
                    }
                    for (Object obj2 : list) {
                        List list3 = SearchAndSelectFragment.this.g;
                        Objects.requireNonNull(obj2, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseViewTypeData");
                        list3.add((BaseViewTypeData) obj2);
                    }
                }
            } else if (!list.isEmpty()) {
                for (Object obj3 : list) {
                    List list4 = SearchAndSelectFragment.this.g;
                    Objects.requireNonNull(obj3, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseViewTypeData");
                    list4.add((BaseViewTypeData) obj3);
                }
            }
            if (SearchAndSelectFragment.this.f == null) {
                SearchAndSelectFragment searchAndSelectFragment = SearchAndSelectFragment.this;
                searchAndSelectFragment.f = new InviteVerticalItemsAdapter(searchAndSelectFragment.g, SearchAndSelectFragment.this.f16921a, SearchAndSelectFragment.this);
                SearchAndSelectFragment.this.getMainRecyclerView().setAdapter(SearchAndSelectFragment.this.f);
                return;
            }
            InviteVerticalItemsAdapter inviteVerticalItemsAdapter = SearchAndSelectFragment.this.f;
            p.a(inviteVerticalItemsAdapter);
            inviteVerticalItemsAdapter.setData(SearchAndSelectFragment.this.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentSearchAndSelectBinding getBinding() {
        FragmentSearchAndSelectBinding fragmentSearchAndSelectBinding = this.m;
        p.a(fragmentSearchAndSelectBinding);
        return fragmentSearchAndSelectBinding;
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
    public final void a() {
    }

    public void a(MemoryContactItem memoryContactItem) {
        p.d(memoryContactItem, "memoryContactItem");
    }

    public void a(BadgeMemoryContactItem memoryContactItem, View view) {
        p.d(memoryContactItem, "memoryContactItem");
        p.d(view, "view");
    }

    @Override // com.callapp.contacts.widget.TopBarFragment.TopBarEvents
    public final void a(TopBarFragment.TopBarIconStates iconState) {
        p.d(iconState, "iconState");
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
    public final void a(CharSequence s, int i) {
        p.d(s, "s");
        getFilter().filter(s);
        this.l = StringUtils.a(s);
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppFilter
    public final void a(String text) {
        p.d(text, "text");
        getFilter().filter(text);
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
    public final void b() {
    }

    public void c() {
        boolean z;
        int i;
        synchronized (this.i) {
            Iterator<? extends BadgeMemoryContactItem> it2 = this.j.iterator();
            while (true) {
                i = 0;
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                BadgeMemoryContactItem badgeMemoryContactItem = (BadgeMemoryContactItem) it2.next();
                p.a(badgeMemoryContactItem);
                if (badgeMemoryContactItem.isChecked()) {
                    z = true;
                    break;
                }
            }
            v vVar = v.f38654a;
        }
        FrameLayout frameLayout = getBinding().f14315a;
        p.b(frameLayout, "binding.bottomContainer");
        if (!z) {
            i = 8;
        }
        frameLayout.setVisibility(i);
    }

    public abstract boolean d();

    public final void e() {
        InviteVerticalItemsAdapter inviteVerticalItemsAdapter = this.f;
        if (inviteVerticalItemsAdapter != null) {
            inviteVerticalItemsAdapter.notifyDataSetChanged();
        }
    }

    public abstract View getBottomLayout();

    public abstract SectionData getBottomSectionData();

    public final List<BadgeMemoryContactItem> getCheckedItems() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.i) {
            if (CollectionUtils.b(this.j)) {
                for (BadgeMemoryContactItem badgeMemoryContactItem : this.j) {
                    p.a(badgeMemoryContactItem);
                    if (badgeMemoryContactItem.isChecked()) {
                        arrayList.add(badgeMemoryContactItem);
                    }
                }
            }
            v vVar = v.f38654a;
        }
        return arrayList;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new InviteFilter();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<BadgeMemoryContactItem> getFilterableVerticalItems() {
        return this.j;
    }

    public abstract View getHeaderLayout();

    public final RecyclerView getMainRecyclerView() {
        RecyclerView recyclerView = this.f16922b;
        if (recyclerView == null) {
            p.a("mainRecyclerView");
        }
        return recyclerView;
    }

    public final ProgressBar getProgressBar() {
        ProgressBar progressBar = this.f16923c;
        if (progressBar == null) {
            p.a("progressBar");
        }
        return progressBar;
    }

    public abstract Pair<List<BadgeMemoryContactItem>, List<BadgeMemoryContactItem>> getSuggestionsAndContacts();

    public abstract SectionData getTopSectionData();

    public abstract int getViewType();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        p.d(inflater, "inflater");
        this.m = FragmentSearchAndSelectBinding.a(inflater, viewGroup);
        ConstraintLayout root = getBinding().getRoot();
        p.b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.m = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        p.d(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.k = arguments.getString("EXTRA_SOURCE");
        }
        ProgressBar progressBar = getBinding().e;
        p.b(progressBar, "binding.progressBar");
        this.f16923c = progressBar;
        ViewStub viewStub = getBinding().f14318d;
        p.b(viewStub, "binding.popupViewStub");
        this.f16924d = viewStub;
        View findViewById = view.findViewById(2131363232);
        p.b(findViewById, "view.findViewById(R.id.mainRecyclerView)");
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.f16922b = recyclerView;
        if (recyclerView == null) {
            p.a("mainRecyclerView");
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setOnTouchListener(SearchAndSelectFragment$onViewCreated$2$1.f16929a);
        RecyclerView.f itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator instanceof n) {
            ((n) itemAnimator).l = false;
        }
        ScrollRecyclerStateTracker scrollRecyclerStateTracker = this.f16921a;
        RecyclerView recyclerView2 = this.f16922b;
        if (recyclerView2 == null) {
            p.a("mainRecyclerView");
        }
        scrollRecyclerStateTracker.setRecyclerView(recyclerView2);
        View headerLayout = getHeaderLayout();
        if (headerLayout != null) {
            FrameLayout frameLayout = getBinding().f14316b;
            frameLayout.setVisibility(0);
            frameLayout.addView(headerLayout);
        }
        View bottomLayout = getBottomLayout();
        if (bottomLayout != null) {
            getBinding().f14315a.addView(bottomLayout);
        }
        SimpleSearchBarFragment simpleSearchBarFragment = new SimpleSearchBarFragment();
        simpleSearchBarFragment.setSearchBarEventsListener(this);
        simpleSearchBarFragment.b(false);
        simpleSearchBarFragment.setVoiceSearchHidden(true);
        simpleSearchBarFragment.setSearchHintText(Activities.getString(2131887612));
        simpleSearchBarFragment.setBackgroundColor(2131099921);
        simpleSearchBarFragment.setBackgroundResource(2131232205);
        simpleSearchBarFragment.setSearchBoxTextColor(ThemeUtils.getColor(2131099918));
        getChildFragmentManager().a().b(2131363758, simpleSearchBarFragment, null).b();
        ViewUtils.b(getView(), 2131232171, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099891), 1);
        if (d()) {
            TextView textView = getBinding().g;
            textView.setVisibility(0);
            DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f15494a;
            DialogMessageWithTopImageNew.Companion.a(textView, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131099686)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2, Integer.valueOf(ThemeUtils.getColor(2131099784)), new SpannableString(Activities.getString(2131887620)), null, true, true);
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.referandearn.SearchAndSelectFragment$initView$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FragmentSearchAndSelectBinding binding;
                    FragmentSearchAndSelectBinding binding2;
                    if (SearchAndSelectFragment.this.getFilterableVerticalItems().size() == SearchAndSelectFragment.this.getCheckedItems().size()) {
                        for (BadgeMemoryContactItem badgeMemoryContactItem : SearchAndSelectFragment.this.getFilterableVerticalItems()) {
                            if (badgeMemoryContactItem != null) {
                                badgeMemoryContactItem.setChecked(false);
                            }
                        }
                        binding2 = SearchAndSelectFragment.this.getBinding();
                        TextView textView2 = binding2.g;
                        p.b(textView2, "binding.selectAllButton");
                        textView2.setText(Activities.getString(2131887620));
                    } else {
                        for (BadgeMemoryContactItem badgeMemoryContactItem2 : SearchAndSelectFragment.this.getFilterableVerticalItems()) {
                            if (badgeMemoryContactItem2 != null) {
                                badgeMemoryContactItem2.setChecked(true);
                            }
                        }
                        binding = SearchAndSelectFragment.this.getBinding();
                        TextView textView3 = binding.g;
                        p.b(textView3, "binding.selectAllButton");
                        textView3.setText(Activities.getString(2131887622));
                    }
                    InviteVerticalItemsAdapter inviteVerticalItemsAdapter = SearchAndSelectFragment.this.f;
                    if (inviteVerticalItemsAdapter != null) {
                        inviteVerticalItemsAdapter.setForceNotifyHorizontalItems(true);
                    }
                    InviteVerticalItemsAdapter inviteVerticalItemsAdapter2 = SearchAndSelectFragment.this.f;
                    if (inviteVerticalItemsAdapter2 != null) {
                        inviteVerticalItemsAdapter2.notifyDataSetChanged();
                    }
                    SearchAndSelectFragment.this.c();
                }
            });
        }
        new SearchAndSelectFragment$initView$4(this).execute();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setFilterableVerticalItems(List<? extends BadgeMemoryContactItem> list) {
        p.d(list, "<set-?>");
        this.j = list;
    }
}
