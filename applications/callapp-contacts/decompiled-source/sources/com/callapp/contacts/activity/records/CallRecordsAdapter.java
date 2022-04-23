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

    /* renamed from: c  reason: collision with root package name */
    private final CallRecordRowListener f13521c;

    /* renamed from: d  reason: collision with root package name */
    private ScrollEvents f13522d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/CallRecordsAdapter$CallRecordRowListener.class */
    public interface CallRecordRowListener {
        void a(CallRecorder callRecorder, boolean z);
    }

    public CallRecordsAdapter(ScrollEvents scrollEvents, List<CallRecorder> list, CallRecordRowListener callRecordRowListener) {
        super(list);
        this.f13522d = scrollEvents;
        this.f13521c = callRecordRowListener;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        final CallRecorderViewHolder callRecorderViewHolder = (CallRecorderViewHolder) baseCallAppViewHolder;
        final CallRecorder callRecorder = (CallRecorder) baseViewTypeData;
        callRecorderViewHolder.a(callRecorder, this.f13522d, false);
        if (isInMultiSelectMode()) {
            callRecorderViewHolder.u.setVisibility(8);
        } else {
            callRecorderViewHolder.u.setVisibility(0);
        }
        CallAppRow callAppRow = callRecorderViewHolder.getCallAppRow();
        callAppRow.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsAdapter.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                if (CallRecordsAdapter.this.isInMultiSelectMode()) {
                    return true;
                }
                AndroidUtils.a(view, 1);
                ListsUtils.a(callRecorderViewHolder.getCallAppRow().getContext(), callRecorder, CallRecordsAdapter.this.getContextMenuType(), CallRecordsAdapter.this.getContextMenuAnalyticsTag(), ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
        callAppRow.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.records.CallRecordsAdapter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                if (CallRecordsAdapter.this.isInMultiSelectMode()) {
                    callRecorderViewHolder.getProfilePicture().b(!callRecorder.isChecked(), true);
                    CallRecordsAdapter.this.b(callRecorder);
                } else if (CallRecordsAdapter.this.f13521c != null) {
                    CallRecordsAdapter.this.f13521c.a(callRecorder, false);
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

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11158b = CallAppViewTypes.CENTER_CALL_RECORD;
        builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
        builder.f11159c = CallAppViewTypes.RIGHT_TEXT_WITH_IMAGE;
        return new CallRecorderViewHolder(builder.a(), this.f13521c);
    }
}
