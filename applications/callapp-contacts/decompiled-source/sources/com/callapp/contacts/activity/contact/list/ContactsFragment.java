package com.callapp.contacts.activity.contact.list;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.PopupWindow;
import androidx.h.a.a;
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

    /* renamed from: a  reason: collision with root package name */
    ToolTipPopup f12551a;

    /* renamed from: b  reason: collision with root package name */
    private ContactsClickEvents f12552b;

    /* renamed from: c  reason: collision with root package name */
    private UseCase<ContactsAggregatorCursor> f12553c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f12554d;
    private MultiSelectChangeListener e;
    private String f = "";

    private void a() {
        if (this.originalAdapter instanceof ContactListAdapter) {
            ((ContactListAdapter) this.originalAdapter).d();
        }
    }

    private void a(View view, String str) {
        if (this.f12551a == null && view != null) {
            this.f12551a = ToolTipPopup.a(view, str, (int) getResources().getDimension(2131166094), new PopupWindow.OnDismissListener() { // from class: com.callapp.contacts.activity.contact.list.ContactsFragment.2
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                }
            }, view.findViewById(2131363123));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ContactsAggregatorCursor contactsAggregatorCursor) {
        if (this.originalAdapter != null) {
            this.originalAdapter.c();
        }
        setData(contactsAggregatorCursor);
        a();
        if (this.f12554d) {
            ArrayList<BaseAdapterItemData> selectedContacts = getSelectedContacts();
            this.e.a(selectedContacts == null ? 0 : selectedContacts.size(), 2131886649);
        }
        this.viewPagerManager.a(1);
    }

    private void a(final String str) {
        if (this.recyclerView != null) {
            View childAt = this.recyclerView.getChildAt(0);
            if (childAt != null) {
                a(childAt, str);
            } else {
                ViewUtils.a(this.recyclerView, new ContextRunnable() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsFragment$26LfbTLZlr_ZjxiidqZIXeboaLw
                    @Override // com.callapp.contacts.api.ContextRunnable
                    public final void run(Object obj) {
                        ContactsFragment.this.a(str, (View) obj);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, View view) {
        a(str);
    }

    @Override // com.callapp.contacts.activity.interfaces.OnSelectChangeListener
    public final void b() {
        ArrayList<BaseAdapterItemData> selectedContacts = getSelectedContacts();
        this.e.a(selectedContacts == null ? 0 : selectedContacts.size(), 2131886649);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        if (AdUtils.a(AdUtils.AdsLimitForNewUsers.CONTACT_LIST)) {
            return null;
        }
        return CallAppRemoteConfigManager.get().a(CallAppRemoteConfigManager.s);
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
            public final void a() {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.list.ContactsFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactsFragment.this.f12552b.d(0);
                    }
                });
            }

            @Override // com.callapp.contacts.activity.interfaces.ContactItemViewEvents
            public final void b() {
                ContactsFragment.this.f12552b.d(1);
            }
        }, this.f12554d, this, this);
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.fastscroll.FastScroller.SectionIndexer
    public String getSectionText(int i) {
        String str;
        int originalPosition = this.recyclerAdapter.getOriginalPosition(i);
        if (originalPosition < 0 || originalPosition >= this.originalAdapter.getItemCount()) {
            str = this.f;
        } else {
            BaseViewTypeData itemAt = this.originalAdapter.getItemAt(originalPosition);
            if (itemAt instanceof MemoryContactItem) {
                MemoryContactItem memoryContactItem = (MemoryContactItem) itemAt;
                if (StringUtils.b((CharSequence) memoryContactItem.displayName)) {
                    char charAt = memoryContactItem.displayName.charAt(0);
                    str = StringUtils.a(charAt) ? "#" : String.valueOf(Character.toUpperCase(charAt));
                } else {
                    str = "";
                }
            } else {
                str = this.f;
            }
        }
        this.f = str;
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
        a();
        super.invalidateDataEvent(callAppDataType);
    }

    public boolean isTooltipShowing() {
        ToolTipPopup toolTipPopup = this.f12551a;
        return toolTipPopup != null && toolTipPopup.isTooltipShowing();
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean notifyItemChangedEvent(DataChangedInfo dataChangedInfo) {
        a();
        return super.notifyItemChangedEvent(dataChangedInfo);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.viewPagerManager.getCurrentPage() == 1) {
            if (getActivity().getIntent().getExtras() != null && getActivity().getIntent().hasExtra("EXTRA_COVER_CHANGED")) {
                getActivity().getIntent().removeExtra("EXTRA_COVER_CHANGED");
                a(Activities.getString(2131886552));
            }
            refreshData();
        }
        this.recyclerView.setHasFixedSize(true);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof ContactsClickEvents) {
            this.f12552b = (ContactsClickEvents) getActivity();
            if (getActivity() instanceof MultiSelectChangeListener) {
                this.e = (MultiSelectChangeListener) getActivity();
                return;
            }
            throw new IllegalStateException("Parent activity must implement MultiSelectChangeListener");
        }
        throw new IllegalStateException("Parent activity must implement ContactsClickEvents");
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12553c = new LoadContactsAndCountUseCase(getContext(), a.a(this));
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
            if (contactListAdapter.f12528d != null) {
                FavoritesHeaderContactListHolder favoritesHeaderContactListHolder = contactListAdapter.f12528d;
                if (favoritesHeaderContactListHolder.v || favoritesHeaderContactListHolder.s != favoritesHeaderContactListHolder.x) {
                    favoritesHeaderContactListHolder.n();
                }
            }
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        if (!this.isDataLoaded && shouldRefreshData()) {
            this.isDataLoaded = true;
            this.f12553c.a(new UseCase.Callback() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactsFragment$NuC5U5PwR_ACEy2A8E_ENIMO_V0
                @Override // com.callapp.contacts.manager.usecase.UseCase.Callback
                public final void onResponseReady(Object obj) {
                    ContactsFragment.this.a((ContactsAggregatorCursor) obj);
                }
            });
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void scrollToTop() {
        super.scrollToTop();
        if (this.recyclerView != null) {
            this.recyclerView.d(0);
        }
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public void setMultiSelectModeEnable(boolean z) {
        if (this.f12554d != z) {
            this.f12554d = z;
            if (this.originalAdapter != null) {
                ((ContactListAdapter) this.originalAdapter).setMultiSelectMode(z);
                if (!z) {
                    ContactListAdapter contactListAdapter = (ContactListAdapter) this.originalAdapter;
                    contactListAdapter.f12527c.clear();
                    contactListAdapter.notifyDataSetChanged();
                }
            }
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
