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
import androidx.recyclerview.widget.AbstractC2702n;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
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
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Æ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018�� h2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002hiB\u0005¢\u0006\u0002\u0010\u0005J\n\u00108\u001a\u0004\u0018\u000109H&J\n\u0010:\u001a\u0004\u0018\u00010;H&J\b\u0010<\u001a\u00020=H\u0016J\n\u0010>\u001a\u0004\u0018\u000109H&J$\u0010?\u001a\u001e\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0018\u00010@H&J\n\u0010A\u001a\u0004\u0018\u00010;H&J\b\u0010B\u001a\u00020CH&J\u0006\u0010D\u001a\u00020EJ\u0006\u0010F\u001a\u00020EJ$\u0010G\u001a\u0002092\u0006\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010K2\b\u0010L\u001a\u0004\u0018\u00010MH\u0016J\b\u0010N\u001a\u00020EH\u0016J\u0018\u0010O\u001a\u00020E2\u0006\u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u000209H\u0016J\u0010\u0010R\u001a\u00020E2\u0006\u0010P\u001a\u00020SH\u0016J\b\u0010T\u001a\u00020EH\u0016J\b\u0010U\u001a\u00020EH\u0016J\b\u0010V\u001a\u00020EH\u0016J(\u0010W\u001a\u00020E2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020C2\u0006\u0010[\u001a\u00020C2\u0006\u0010\\\u001a\u00020CH\u0016J\b\u0010]\u001a\u00020EH\u0016J\u0010\u0010^\u001a\u00020E2\u0006\u0010_\u001a\u00020`H\u0016J\u001a\u0010a\u001a\u00020E2\u0006\u0010Q\u001a\u0002092\b\u0010L\u001a\u0004\u0018\u00010MH\u0016J\b\u0010b\u001a\u00020EH\u0016J\u0018\u0010c\u001a\u00020E2\u0006\u0010d\u001a\u0002022\u0006\u0010e\u001a\u000200H\u0016J\b\u0010f\u001a\u000200H&J\b\u0010g\u001a\u000200H&R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n��R\"\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eX\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086.¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020(X\u0086.¢\u0006\u000e\n��\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u000e\u0010-\u001a\u00020.X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n��R\u001c\u00101\u001a\u0004\u0018\u000102X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0016\u00107\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n��¨\u0006j"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/callapp/contacts/activity/interfaces/CallAppFilter;", "Lcom/callapp/contacts/activity/invite/OnSelectChangeListener;", "Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;", "()V", "_binding", "Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;", "adapter", "Lcom/callapp/contacts/activity/invite/adapter/InviteVerticalItemsAdapter;", "binding", "getBinding", "()Lcom/callapp/contacts/databinding/FragmentSearchAndSelectBinding;", "checkedItems", "", "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;", "getCheckedItems", "()Ljava/util/List;", "dataArray", "", "Lcom/callapp/contacts/activity/base/BaseViewTypeData;", "filterableVerticalItems", "getFilterableVerticalItems", "setFilterableVerticalItems", "(Ljava/util/List;)V", "filterableVerticalItemsLock", "", "mainRecyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getMainRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setMainRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "popupViewStub", "Landroid/view/ViewStub;", "getPopupViewStub", "()Landroid/view/ViewStub;", "setPopupViewStub", "(Landroid/view/ViewStub;)V", "progressBar", "Landroid/widget/ProgressBar;", "getProgressBar", "()Landroid/widget/ProgressBar;", "setProgressBar", "(Landroid/widget/ProgressBar;)V", "scrollStateTracker", "Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;", "shouldShowSuggestionItems", "", Payload.SOURCE, "", "getSource", "()Ljava/lang/String;", "setSource", "(Ljava/lang/String;)V", "suggestionItems", "getBottomLayout", "Landroid/view/View;", "getBottomSectionData", "Lcom/callapp/contacts/model/SectionData;", "getFilter", "Landroid/widget/Filter;", "getHeaderLayout", "getSuggestionsAndContacts", "Landroid/util/Pair;", "getTopSectionData", "getViewType", "", "initView", "", "notifyDataChanged", "onCreateView", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onGreySelectChange", "memoryContactItem", "view", "onInviteClicked", "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;", "onOverflowRequested", "onSearchActionRequested", "onSearchBoxClicked", "onSearchTextChanged", "s", "", EventConstants.START, "before", "count", "onSelectChange", "onStateIconClicked", "iconState", "Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;", "onViewCreated", "onVoiceSearchRequested", "performFilter", "text", "scrollToTop", "showSearchBox", "showShowAllButton", "Companion", "InviteFilter", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment.class */
public abstract class SearchAndSelectFragment extends Fragment implements CallAppFilter, OnSelectChangeListener, SimpleSearchBarFragment.SearchBarEvents {

    /* renamed from: e */
    public static final Companion f29413e = new Companion(null);

    /* renamed from: b */
    public RecyclerView f29415b;

    /* renamed from: c */
    public ProgressBar f29416c;

    /* renamed from: d */
    public ViewStub f29417d;

    /* renamed from: f */
    private InviteVerticalItemsAdapter f29418f;

    /* renamed from: k */
    private String f29423k;

    /* renamed from: m */
    private FragmentSearchAndSelectBinding f29425m;

    /* renamed from: a */
    private final ScrollRecyclerStateTracker f29414a = new ScrollRecyclerStateTracker();

    /* renamed from: g */
    private final List<BaseViewTypeData> f29419g = new ArrayList();

    /* renamed from: h */
    private List<? extends BadgeMemoryContactItem> f29420h = new ArrayList();

    /* renamed from: i */
    private final Object f29421i = new Object();

    /* renamed from: j */
    private List<? extends BadgeMemoryContactItem> f29422j = new ArrayList();

    /* renamed from: l */
    private boolean f29424l = true;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n��¨\u0006\b"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion;", "", "()V", "EXTRA_SOURCE", "", "FILTER_ALL", "MAX_SUGGESTIONS", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\r\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0018\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004H\u0014¨\u0006\n"}, m4298d2 = {"Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter;", "Landroid/widget/Filter;", "(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;)V", "performFiltering", "Landroid/widget/Filter$FilterResults;", "constraint", "", "publishResults", "", "results", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/referandearn/SearchAndSelectFragment$InviteFilter.class */
    public final class InviteFilter extends Filter {
        public InviteFilter() {
            SearchAndSelectFragment.this = r4;
        }

        @Override // android.widget.Filter
        protected final Filter.FilterResults performFiltering(CharSequence constraint) {
            boolean c;
            C18524p.m3840d(constraint, "constraint");
            Filter.FilterResults filterResults = new Filter.FilterResults();
            String obj = constraint.toString();
            Objects.requireNonNull(obj, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = obj.toLowerCase();
            C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase()");
            synchronized (SearchAndSelectFragment.this.f29421i) {
                if (StringUtils.m26059a((CharSequence) lowerCase)) {
                    filterResults.values = SearchAndSelectFragment.this.getFilterableVerticalItems();
                    filterResults.count = SearchAndSelectFragment.this.getFilterableVerticalItems().size();
                } else {
                    ArrayList arrayList = new ArrayList();
                    for (BadgeMemoryContactItem badgeMemoryContactItem : SearchAndSelectFragment.this.getFilterableVerticalItems()) {
                        C18524p.m3851a(badgeMemoryContactItem);
                        String str = badgeMemoryContactItem.displayName;
                        C18524p.m3843b(str, "item!!.displayName");
                        c = C18425p.m3919c(str, lowerCase, false);
                        if (c) {
                            arrayList.add(badgeMemoryContactItem);
                        }
                    }
                    filterResults.values = arrayList;
                    filterResults.count = arrayList.size();
                }
                C20128v c20128v = C20128v.f66529a;
            }
            return filterResults;
        }

        @Override // android.widget.Filter
        protected final void publishResults(CharSequence constraint, Filter.FilterResults results) {
            C18524p.m3840d(constraint, "constraint");
            C18524p.m3840d(results, "results");
            Object obj = results.values;
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlin.collections.List<*>");
            List list = (List) obj;
            SearchAndSelectFragment.this.f29419g.clear();
            if (SearchAndSelectFragment.this.getViewType() == 0) {
                if (SearchAndSelectFragment.this.f29424l && SearchAndSelectFragment.this.f29420h != null) {
                    List list2 = SearchAndSelectFragment.this.f29420h;
                    C18524p.m3851a(list2);
                    if (!list2.isEmpty()) {
                        SectionData topSectionData = SearchAndSelectFragment.this.getTopSectionData();
                        if (topSectionData != null) {
                            SearchAndSelectFragment.this.f29419g.add(topSectionData);
                        }
                        SearchAndSelectFragment.this.f29419g.add(new MultipleContactsData(SearchAndSelectFragment.this.f29420h));
                    }
                }
                if (!list.isEmpty()) {
                    SectionData bottomSectionData = SearchAndSelectFragment.this.getBottomSectionData();
                    if (bottomSectionData != null) {
                        SearchAndSelectFragment.this.f29419g.add(bottomSectionData);
                    }
                    for (Object obj2 : list) {
                        List list3 = SearchAndSelectFragment.this.f29419g;
                        Objects.requireNonNull(obj2, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseViewTypeData");
                        list3.add((BaseViewTypeData) obj2);
                    }
                }
            } else if (!list.isEmpty()) {
                for (Object obj3 : list) {
                    List list4 = SearchAndSelectFragment.this.f29419g;
                    Objects.requireNonNull(obj3, "null cannot be cast to non-null type com.callapp.contacts.activity.base.BaseViewTypeData");
                    list4.add((BaseViewTypeData) obj3);
                }
            }
            if (SearchAndSelectFragment.this.f29418f == null) {
                SearchAndSelectFragment searchAndSelectFragment = SearchAndSelectFragment.this;
                searchAndSelectFragment.f29418f = new InviteVerticalItemsAdapter(searchAndSelectFragment.f29419g, SearchAndSelectFragment.this.f29414a, SearchAndSelectFragment.this);
                SearchAndSelectFragment.this.getMainRecyclerView().setAdapter(SearchAndSelectFragment.this.f29418f);
                return;
            }
            InviteVerticalItemsAdapter inviteVerticalItemsAdapter = SearchAndSelectFragment.this.f29418f;
            C18524p.m3851a(inviteVerticalItemsAdapter);
            inviteVerticalItemsAdapter.setData(SearchAndSelectFragment.this.f29419g);
        }
    }

    public final FragmentSearchAndSelectBinding getBinding() {
        FragmentSearchAndSelectBinding fragmentSearchAndSelectBinding = this.f29425m;
        C18524p.m3851a(fragmentSearchAndSelectBinding);
        return fragmentSearchAndSelectBinding;
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
    /* renamed from: a */
    public final void mo26323a() {
    }

    /* renamed from: a */
    public void mo26322a(MemoryContactItem memoryContactItem) {
        C18524p.m3840d(memoryContactItem, "memoryContactItem");
    }

    /* renamed from: a */
    public void mo26321a(BadgeMemoryContactItem memoryContactItem, View view) {
        C18524p.m3840d(memoryContactItem, "memoryContactItem");
        C18524p.m3840d(view, "view");
    }

    @Override // com.callapp.contacts.widget.TopBarFragment.TopBarEvents
    /* renamed from: a */
    public final void mo26320a(TopBarFragment.TopBarIconStates iconState) {
        C18524p.m3840d(iconState, "iconState");
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
    /* renamed from: a */
    public final void mo26316a(CharSequence s, int i) {
        C18524p.m3840d(s, "s");
        getFilter().filter(s);
        this.f29424l = StringUtils.m26059a(s);
    }

    @Override // com.callapp.contacts.activity.interfaces.CallAppFilter
    /* renamed from: a */
    public final void mo26315a(String text) {
        C18524p.m3840d(text, "text");
        getFilter().filter(text);
    }

    @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
    /* renamed from: b */
    public final void mo26314b() {
    }

    /* renamed from: c */
    public void mo26312c() {
        boolean z;
        synchronized (this.f29421i) {
            Iterator<? extends BadgeMemoryContactItem> it2 = this.f29422j.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                }
                BadgeMemoryContactItem next = it2.next();
                C18524p.m3851a(next);
                if (next.isChecked()) {
                    z = true;
                    break;
                }
            }
            C20128v c20128v = C20128v.f66529a;
        }
        FrameLayout frameLayout = getBinding().f25040a;
        C18524p.m3843b(frameLayout, "binding.bottomContainer");
        frameLayout.setVisibility(z ? 0 : 8);
    }

    /* renamed from: d */
    public abstract boolean mo26310d();

    /* renamed from: e */
    public final void m26308e() {
        InviteVerticalItemsAdapter inviteVerticalItemsAdapter = this.f29418f;
        if (inviteVerticalItemsAdapter != null) {
            inviteVerticalItemsAdapter.notifyDataSetChanged();
        }
    }

    public abstract View getBottomLayout();

    public abstract SectionData getBottomSectionData();

    public final List<BadgeMemoryContactItem> getCheckedItems() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f29421i) {
            if (CollectionUtils.m26068b(this.f29422j)) {
                for (BadgeMemoryContactItem badgeMemoryContactItem : this.f29422j) {
                    C18524p.m3851a(badgeMemoryContactItem);
                    if (badgeMemoryContactItem.isChecked()) {
                        arrayList.add(badgeMemoryContactItem);
                    }
                }
            }
            C20128v c20128v = C20128v.f66529a;
        }
        return arrayList;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return new InviteFilter();
    }

    public final List<BadgeMemoryContactItem> getFilterableVerticalItems() {
        return this.f29422j;
    }

    public abstract View getHeaderLayout();

    public final RecyclerView getMainRecyclerView() {
        RecyclerView recyclerView = this.f29415b;
        if (recyclerView == null) {
            C18524p.m3848a("mainRecyclerView");
        }
        return recyclerView;
    }

    public final ProgressBar getProgressBar() {
        ProgressBar progressBar = this.f29416c;
        if (progressBar == null) {
            C18524p.m3848a("progressBar");
        }
        return progressBar;
    }

    public abstract Pair<List<BadgeMemoryContactItem>, List<BadgeMemoryContactItem>> getSuggestionsAndContacts();

    public abstract SectionData getTopSectionData();

    public abstract int getViewType();

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        C18524p.m3840d(inflater, "inflater");
        this.f29425m = FragmentSearchAndSelectBinding.m29064a(inflater, viewGroup);
        ConstraintLayout root = getBinding().getRoot();
        C18524p.m3843b(root, "binding.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f29425m = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C18524p.m3840d(view, "view");
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f29423k = arguments.getString("EXTRA_SOURCE");
        }
        ProgressBar progressBar = getBinding().f25044e;
        C18524p.m3843b(progressBar, "binding.progressBar");
        this.f29416c = progressBar;
        ViewStub viewStub = getBinding().f25043d;
        C18524p.m3843b(viewStub, "binding.popupViewStub");
        this.f29417d = viewStub;
        View findViewById = view.findViewById(2131363232);
        C18524p.m3843b(findViewById, "view.findViewById(R.id.mainRecyclerView)");
        RecyclerView recyclerView = (RecyclerView) findViewById;
        this.f29415b = recyclerView;
        if (recyclerView == null) {
            C18524p.m3848a("mainRecyclerView");
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
        recyclerView.setOnTouchListener(SearchAndSelectFragment$onViewCreated$2$1.f29430a);
        RecyclerView.AbstractC2632f itemAnimator = recyclerView.getItemAnimator();
        if (itemAnimator instanceof AbstractC2702n) {
            ((AbstractC2702n) itemAnimator).f10307l = false;
        }
        ScrollRecyclerStateTracker scrollRecyclerStateTracker = this.f29414a;
        RecyclerView recyclerView2 = this.f29415b;
        if (recyclerView2 == null) {
            C18524p.m3848a("mainRecyclerView");
        }
        scrollRecyclerStateTracker.setRecyclerView(recyclerView2);
        View headerLayout = getHeaderLayout();
        if (headerLayout != null) {
            FrameLayout frameLayout = getBinding().f25041b;
            frameLayout.setVisibility(0);
            frameLayout.addView(headerLayout);
        }
        View bottomLayout = getBottomLayout();
        if (bottomLayout != null) {
            getBinding().f25040a.addView(bottomLayout);
        }
        SimpleSearchBarFragment simpleSearchBarFragment = new SimpleSearchBarFragment();
        simpleSearchBarFragment.setSearchBarEventsListener(this);
        simpleSearchBarFragment.m26617b(false);
        simpleSearchBarFragment.setVoiceSearchHidden(true);
        simpleSearchBarFragment.setSearchHintText(Activities.getString(2131887612));
        simpleSearchBarFragment.setBackgroundColor(2131099921);
        simpleSearchBarFragment.setBackgroundResource(2131232205);
        simpleSearchBarFragment.setSearchBoxTextColor(ThemeUtils.getColor(2131099918));
        getChildFragmentManager().m43765a().m43535b(2131363758, simpleSearchBarFragment, null).mo43536b();
        ViewUtils.m27299b(getView(), 2131232171, ThemeUtils.getColor(2131099686), ThemeUtils.getColor(2131099891), 1);
        if (mo26310d()) {
            TextView textView = getBinding().f25046g;
            textView.setVisibility(0);
            DialogMessageWithTopImageNew.Companion companion = DialogMessageWithTopImageNew.f27121a;
            DialogMessageWithTopImageNew.Companion.m27968a(textView, 2131232141, Integer.valueOf(ThemeUtils.getColor(2131099686)), Integer.valueOf(ThemeUtils.getColor(2131099784)), 2, Integer.valueOf(ThemeUtils.getColor(2131099784)), new SpannableString(Activities.getString(2131887620)), null, true, true);
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
                        TextView textView2 = binding2.f25046g;
                        C18524p.m3843b(textView2, "binding.selectAllButton");
                        textView2.setText(Activities.getString(2131887620));
                    } else {
                        for (BadgeMemoryContactItem badgeMemoryContactItem2 : SearchAndSelectFragment.this.getFilterableVerticalItems()) {
                            if (badgeMemoryContactItem2 != null) {
                                badgeMemoryContactItem2.setChecked(true);
                            }
                        }
                        binding = SearchAndSelectFragment.this.getBinding();
                        TextView textView3 = binding.f25046g;
                        C18524p.m3843b(textView3, "binding.selectAllButton");
                        textView3.setText(Activities.getString(2131887622));
                    }
                    InviteVerticalItemsAdapter inviteVerticalItemsAdapter = SearchAndSelectFragment.this.f29418f;
                    if (inviteVerticalItemsAdapter != null) {
                        inviteVerticalItemsAdapter.setForceNotifyHorizontalItems(true);
                    }
                    InviteVerticalItemsAdapter inviteVerticalItemsAdapter2 = SearchAndSelectFragment.this.f29418f;
                    if (inviteVerticalItemsAdapter2 != null) {
                        inviteVerticalItemsAdapter2.notifyDataSetChanged();
                    }
                    SearchAndSelectFragment.this.mo26312c();
                }
            });
        }
        new SearchAndSelectFragment$initView$4(this).execute();
    }

    public final void setFilterableVerticalItems(List<? extends BadgeMemoryContactItem> list) {
        C18524p.m3840d(list, "<set-?>");
        this.f29422j = list;
    }
}
