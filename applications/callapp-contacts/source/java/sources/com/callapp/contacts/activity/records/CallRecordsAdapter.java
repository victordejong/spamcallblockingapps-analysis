package com.callapp.contacts.activity.records;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseMultiSelectListAdapter;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ListsUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsAdapter.class */
public class CallRecordsAdapter extends BaseMultiSelectListAdapter<CallRecorder, CallRecorderViewHolder> {

    /* renamed from: c */
    private final CallRecordRowListener f24022c;

    /* renamed from: d */
    private ScrollEvents f24023d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener.class */
    public interface CallRecordRowListener {
        /* renamed from: a */
        void mo29709a(CallRecorder callRecorder, boolean z);
    }

    public CallRecordsAdapter(ScrollEvents scrollEvents, List<CallRecorder> list, CallRecordRowListener callRecordRowListener) {
        super(list);
        this.f24023d = scrollEvents;
        this.f24022c = callRecordRowListener;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        final CallRecorderViewHolder callRecorderViewHolder = (CallRecorderViewHolder) baseCallAppViewHolder;
        final CallRecorder callRecorder = (CallRecorder) baseViewTypeData;
        callRecorderViewHolder.m29764a(callRecorder, this.f24023d, false);
        if (isInMultiSelectMode()) {
            callRecorderViewHolder.f23979u.setVisibility(8);
        } else {
            callRecorderViewHolder.f23979u.setVisibility(0);
        }
        CallAppRow callAppRow = callRecorderViewHolder.getCallAppRow();
        callAppRow.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsAdapter.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (!CallRecordsAdapter.this.isInMultiSelectMode()) {
                    AndroidUtils.m27630a(view, 1);
                    ListsUtils.m27486a(callRecorderViewHolder.getCallAppRow().getContext(), callRecorder, CallRecordsAdapter.this.getContextMenuType(), CallRecordsAdapter.this.getContextMenuAnalyticsTag(), ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                    return true;
                }
                return true;
            }
        });
        callAppRow.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsAdapter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                if (CallRecordsAdapter.this.isInMultiSelectMode()) {
                    callRecorderViewHolder.getProfilePicture().m26679b(!callRecorder.isChecked(), true);
                    CallRecordsAdapter.this.m31484b(callRecorder);
                } else if (CallRecordsAdapter.this.f24022c == null) {
                } else {
                    CallRecordsAdapter.this.f24022c.mo29709a(callRecorder, false);
                }
            }
        });
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALL_RECORDER;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALL_RECORDER_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20368b = CallAppViewTypes.CENTER_CALL_RECORD;
        builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
        builder.f20369c = CallAppViewTypes.RIGHT_TEXT_WITH_IMAGE;
        return new CallRecorderViewHolder(builder.m31474a(), this.f24022c);
    }
}
