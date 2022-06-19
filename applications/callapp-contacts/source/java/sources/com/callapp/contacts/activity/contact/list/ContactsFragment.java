package com.callapp.contacts.activity.contact.list;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.PopupWindow;
import androidx.p049h.p050a.AbstractC1160a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup;
import com.callapp.contacts.activity.contact.list.contactListHeader.FavoritesHeaderContactListHolder;
import com.callapp.contacts.activity.contact.list.search.ContactsClickEvents;
import com.callapp.contacts.activity.fastscroll.FastScrollRecyclerView;
import com.callapp.contacts.activity.fastscroll.FastScroller;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.MultiSelectChangeListener;
import com.callapp.contacts.activity.interfaces.MultiSelectEvents;
import com.callapp.contacts.activity.interfaces.OnSelectChangeListener;
import com.callapp.contacts.api.ContextRunnable;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.cursor.ContactsAggregatorCursor;
import com.callapp.contacts.manager.usecase.LoadContactsAndCountUseCase;
import com.callapp.contacts.manager.usecase.UseCase;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactsFragment.class */
public class ContactsFragment extends BaseCallAppFragment<ContactsAggregatorCursor> implements ContactListFragmentMarker, FastScroller.SectionIndexer, MultiSelectEvents, OnSelectChangeListener {

    /* renamed from: a */
    ToolTipPopup f22459a;

    /* renamed from: b */
    private ContactsClickEvents f22460b;

    /* renamed from: c */
    private UseCase<ContactsAggregatorCursor> f22461c;

    /* renamed from: d */
    private boolean f22462d;

    /* renamed from: e */
    private MultiSelectChangeListener f22463e;

    /* renamed from: f */
    private String f22464f = "";

    /* renamed from: a */
    private void m30677a() {
        if (this.originalAdapter instanceof ContactListAdapter) {
            ((ContactListAdapter) this.originalAdapter).m30684d();
        }
    }

    /* renamed from: a */
    private void m30676a(View view, String str) {
        if (this.f22459a != null || view == null) {
            return;
        }
        this.f22459a = ToolTipPopup.m30851a(view, str, (int) getResources().getDimension(2131166094), new PopupWindow.OnDismissListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsFragment.2
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
            }
        }, view.findViewById(2131363123));
    }

    /* renamed from: a */
    public /* synthetic */ void m30674a(ContactsAggregatorCursor contactsAggregatorCursor) {
        if (this.originalAdapter != null) {
            this.originalAdapter.m31513c();
        }
        setData(contactsAggregatorCursor);
        m30677a();
        if (this.f22462d) {
            ArrayList<BaseAdapterItemData> selectedContacts = getSelectedContacts();
            this.f22463e.mo30205a(selectedContacts == null ? 0 : selectedContacts.size(), 2131886649);
        }
        this.viewPagerManager.mo30518a(1);
    }

    /* renamed from: a */
    private void m30673a(final String str) {
        if (this.recyclerView != null) {
            View childAt = this.recyclerView.getChildAt(0);
            if (childAt != null) {
                m30676a(childAt, str);
            } else {
                ViewUtils.m27317a(this.recyclerView, new ContextRunnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsFragment$26LfbTLZlr_ZjxiidqZIXeboaLw
                    @Override // com.callapp.contacts.api.ContextRunnable
                    public final void run(Object obj) {
                        ContactsFragment.this.m30672a(str, (View) obj);
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30672a(String str, View view) {
        m30673a(str);
    }

    @Override // com.callapp.contacts.activity.interfaces.OnSelectChangeListener
    /* renamed from: b */
    public final void mo30201b() {
        ArrayList<BaseAdapterItemData> selectedContacts = getSelectedContacts();
        this.f22463e.mo30205a(selectedContacts == null ? 0 : selectedContacts.size(), 2131886649);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        if (AdUtils.m27275a(AdUtils.AdsLimitForNewUsers.CONTACT_LIST)) {
            return null;
        }
        return CallAppRemoteConfigManager.get().m28703a(CallAppRemoteConfigManager.f25631s);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 2;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getExperimentRemoteConfigName() {
        return "ContactListAdExperiments";
    }

    @Override // com.callapp.contacts.activity.contact.list.ContactListFragmentMarker
    public int getFragmentIconResId() {
        return 2131231782;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CONTACTS.ordinal(), EventBusManager.CallAppDataType.FAVORITES.ordinal(), EventBusManager.CallAppDataType.SUPER_SKIN_CHANGED.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(ContactsAggregatorCursor contactsAggregatorCursor) {
        ContactsAggregatorCursor contactsAggregatorCursor2 = contactsAggregatorCursor;
        if (this.recyclerView instanceof FastScrollRecyclerView) {
            ((FastScrollRecyclerView) this.recyclerView).setFastScrollerIndexer(this);
            ((FastScrollRecyclerView) this.recyclerView).setWideClickArea(true);
        }
        this.originalAdapter = new ContactListAdapter(getScrollEvents(), contactsAggregatorCursor2, this.storeItemAssetManager, new ContactItemViewEvents() { // from class: com.callapp.contacts.activity.contact.list.ContactsFragment.1
            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            /* renamed from: a */
            public final void mo29814a() {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsFragment.this.f22460b.mo30422d(0);
                    }
                });
            }

            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            /* renamed from: b */
            public final void mo29813b() {
                ContactsFragment.this.f22460b.mo30422d(1);
            }
        }, this.f22462d, this, this);
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.fastscroll.FastScroller.SectionIndexer
    public String getSectionText(int i) {
        String str;
        int originalPosition = this.recyclerAdapter.getOriginalPosition(i);
        if (originalPosition < 0 || originalPosition >= this.originalAdapter.getItemCount()) {
            str = this.f22464f;
        } else {
            BaseViewTypeData itemAt = this.originalAdapter.getItemAt(originalPosition);
            if (itemAt instanceof MemoryContactItem) {
                MemoryContactItem memoryContactItem = (MemoryContactItem) itemAt;
                if (StringUtils.m26045b((CharSequence) memoryContactItem.displayName)) {
                    char charAt = memoryContactItem.displayName.charAt(0);
                    str = StringUtils.m26062a(charAt) ? "#" : String.valueOf(Character.toUpperCase(charAt));
                } else {
                    str = "";
                }
            } else {
                str = this.f22464f;
            }
        }
        this.f22464f = str;
        return str;
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public ArrayList<BaseAdapterItemData> getSelectedContacts() {
        if (this.originalAdapter != null) {
            return ((ContactListAdapter) this.originalAdapter).getCheckedItems();
        }
        return null;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public void invalidateDataEvent(EventBusManager.CallAppDataType callAppDataType) {
        m30677a();
        super.invalidateDataEvent(callAppDataType);
    }

    public boolean isTooltipShowing() {
        ToolTipPopup toolTipPopup = this.f22459a;
        return toolTipPopup != null && toolTipPopup.isTooltipShowing();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean notifyItemChangedEvent(DataChangedInfo dataChangedInfo) {
        m30677a();
        return super.notifyItemChangedEvent(dataChangedInfo);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.viewPagerManager.getCurrentPage() == 1) {
            if (getActivity().getIntent().getExtras() != null && getActivity().getIntent().hasExtra("EXTRA_COVER_CHANGED")) {
                getActivity().getIntent().removeExtra("EXTRA_COVER_CHANGED");
                m30673a(Activities.getString(2131886552));
            }
            refreshData();
        }
        this.recyclerView.setHasFixedSize(true);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof ContactsClickEvents) {
            this.f22460b = (ContactsClickEvents) getActivity();
            if (!(getActivity() instanceof MultiSelectChangeListener)) {
                throw new IllegalStateException("Parent activity must implement MultiSelectChangeListener");
            }
            this.f22463e = (MultiSelectChangeListener) getActivity();
            return;
        }
        throw new IllegalStateException("Parent activity must implement ContactsClickEvents");
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f22461c = new LoadContactsAndCountUseCase(getContext(), AbstractC1160a.m43461a(this));
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        if (this.originalAdapter != null) {
            this.originalAdapter.setData(null);
        }
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (this.originalAdapter instanceof ContactListAdapter) {
            ContactListAdapter contactListAdapter = (ContactListAdapter) this.originalAdapter;
            if (contactListAdapter.f22424d == null) {
                return;
            }
            FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = contactListAdapter.f22424d;
            if (!favoritesHeaderContactListHolder.f22626v && favoritesHeaderContactListHolder.f22623s == favoritesHeaderContactListHolder.f22628x) {
                return;
            }
            favoritesHeaderContactListHolder.m30509n();
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (this.isDataLoaded || !shouldRefreshData()) {
            return;
        }
        this.isDataLoaded = true;
        this.f22461c.mo28111a(new UseCase.Callback() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsFragment$NuC5U5PwR_ACEy2A8E_ENIMO_V0
            @Override // com.callapp.contacts.manager.usecase.UseCase.Callback
            public final void onResponseReady(Object obj) {
                ContactsFragment.this.m30674a((ContactsAggregatorCursor) obj);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void scrollToTop() {
        super.scrollToTop();
        if (this.recyclerView != null) {
            this.recyclerView.m40449d(0);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public void setMultiSelectModeEnable(boolean z) {
        if (this.f22462d != z) {
            this.f22462d = z;
            if (this.originalAdapter == null) {
                return;
            }
            ((ContactListAdapter) this.originalAdapter).setMultiSelectMode(z);
            if (z) {
                return;
            }
            ContactListAdapter contactListAdapter = (ContactListAdapter) this.originalAdapter;
            contactListAdapter.f22423c.clear();
            contactListAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean shouldEnableFastScroll() {
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean shouldInvalidateFromEvent(EventBusManager.CallAppDataType callAppDataType) {
        return !callAppDataType.isObserverOriginated || callAppDataType.equals(EventBusManager.CallAppDataType.FAVORITES);
    }
}
