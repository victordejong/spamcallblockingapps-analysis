package com.callapp.contacts.activity.records;

import android.content.Context;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.fragments.SearchBarFilterFragment;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.records.CallRecordsAdapter;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/SearchRecordsFragment.class */
public class SearchRecordsFragment extends SearchBarFilterFragment {

    /* renamed from: a */
    private List<CallRecorder> f24040a;

    /* renamed from: b */
    private List<CallRecorder> f24041b;

    /* renamed from: c */
    private RecordsActivityActions f24042c;

    /* renamed from: d */
    private DialogCallRecorderPlayer f24043d;

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    /* renamed from: a */
    public final BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> mo29716a(ScrollRecyclerStateTracker scrollRecyclerStateTracker, List<BaseAdapterItemData> list) {
        return new SearchRecordsAdapter(scrollRecyclerStateTracker, list, new CallRecordsAdapter.CallRecordRowListener() { // from class: com.callapp.contacts.activity.records.SearchRecordsFragment.2
            @Override // com.callapp.contacts.activity.records.CallRecordsAdapter.CallRecordRowListener
            /* renamed from: a */
            public final void mo29709a(CallRecorder callRecorder, boolean z) {
                if (SearchRecordsFragment.this.f24043d != null) {
                    SearchRecordsFragment.this.f24043d.dismiss();
                    SearchRecordsFragment.this.f24043d = null;
                }
                SearchRecordsFragment.this.f24043d = new DialogCallRecorderPlayer(callRecorder, z, null);
                PopupManager.get().m28209a(SearchRecordsFragment.this.getActivity(), SearchRecordsFragment.this.f24043d);
            }
        });
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    /* renamed from: a */
    public final Collection<? extends BaseAdapterItemData> mo29712a(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m30259a(charSequence, this.f24041b, true));
        arrayList.addAll(m30259a(charSequence, this.f24040a, false));
        return arrayList;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getAllHeaderText() {
        return 2131887854;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptySearchResultText() {
        return 2131886425;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptyViewBoldTitle() {
        return 2131886406;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptyViewImage() {
        return 2131231559;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public int getEmptyViewTitle() {
        return 2131886405;
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public InvalidateDataListener getInvalidateDataListener() {
        return new InvalidateDataListener() { // from class: com.callapp.contacts.activity.records.SearchRecordsFragment.1
            @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
            public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
                if (callAppDataType == EventBusManager.CallAppDataType.CALL_RECORDERS) {
                    SearchRecordsFragment searchRecordsFragment = SearchRecordsFragment.this;
                    searchRecordsFragment.f24040a = searchRecordsFragment.f24042c.getUnStarredRecords();
                    SearchRecordsFragment searchRecordsFragment2 = SearchRecordsFragment.this;
                    searchRecordsFragment2.f24041b = searchRecordsFragment2.f24042c.getStarredRecords();
                    SearchRecordsFragment searchRecordsFragment3 = SearchRecordsFragment.this;
                    searchRecordsFragment3.mo30194a(searchRecordsFragment3.getCurrentFilter());
                }
            }
        };
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            RecordsActivityActions recordsActivityActions = (RecordsActivityActions) getActivity();
            this.f24042c = recordsActivityActions;
            this.f24040a = recordsActivityActions.getUnStarredRecords();
            this.f24041b = this.f24042c.getStarredRecords();
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement RecordsActivityActions");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f24043d;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f24043d;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.pausePlayer();
        }
    }
}
