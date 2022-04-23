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

    /* renamed from: a  reason: collision with root package name */
    private List<CallRecorder> f13539a;

    /* renamed from: b  reason: collision with root package name */
    private List<CallRecorder> f13540b;

    /* renamed from: c  reason: collision with root package name */
    private RecordsActivityActions f13541c;

    /* renamed from: d  reason: collision with root package name */
    private DialogCallRecorderPlayer f13542d;

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public final BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> a(ScrollRecyclerStateTracker scrollRecyclerStateTracker, List<BaseAdapterItemData> list) {
        return new SearchRecordsAdapter(scrollRecyclerStateTracker, list, new CallRecordsAdapter.CallRecordRowListener() { // from class: com.callapp.contacts.activity.records.SearchRecordsFragment.2
            @Override // com.callapp.contacts.activity.records.CallRecordsAdapter.CallRecordRowListener
            public final void a(CallRecorder callRecorder, boolean z) {
                if (SearchRecordsFragment.this.f13542d != null) {
                    SearchRecordsFragment.this.f13542d.dismiss();
                    SearchRecordsFragment.this.f13542d = null;
                }
                SearchRecordsFragment.this.f13542d = new DialogCallRecorderPlayer(callRecorder, z, null);
                PopupManager.get().a(SearchRecordsFragment.this.getActivity(), SearchRecordsFragment.this.f13542d);
            }
        });
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment
    public final Collection<? extends BaseAdapterItemData> a(CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(a(charSequence, this.f13540b, true));
        arrayList.addAll(a(charSequence, this.f13539a, false));
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
                    searchRecordsFragment.f13539a = searchRecordsFragment.f13541c.getUnStarredRecords();
                    SearchRecordsFragment searchRecordsFragment2 = SearchRecordsFragment.this;
                    searchRecordsFragment2.f13540b = searchRecordsFragment2.f13541c.getStarredRecords();
                    SearchRecordsFragment searchRecordsFragment3 = SearchRecordsFragment.this;
                    searchRecordsFragment3.a(searchRecordsFragment3.getCurrentFilter());
                }
            }
        };
    }

    @Override // com.callapp.contacts.activity.fragments.SearchBarFilterFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            RecordsActivityActions recordsActivityActions = (RecordsActivityActions) getActivity();
            this.f13541c = recordsActivityActions;
            this.f13539a = recordsActivityActions.getUnStarredRecords();
            this.f13540b = this.f13541c.getStarredRecords();
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement RecordsActivityActions");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f13542d;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f13542d;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.pausePlayer();
        }
    }
}
