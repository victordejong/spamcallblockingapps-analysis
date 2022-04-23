package com.callapp.contacts.activity.records;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.HeaderSectionData;
import com.callapp.contacts.activity.base.HeaderViewHolder;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.records.CallRecordsAdapter;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/SearchRecordsAdapter.class */
public class SearchRecordsAdapter extends BaseCallAppListAdapter<BaseAdapterItemData, BaseCallAppViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private final CallRecordsAdapter.CallRecordRowListener f13535c;

    /* renamed from: d  reason: collision with root package name */
    private ScrollEvents f13536d;

    public SearchRecordsAdapter(ScrollEvents scrollEvents, List<BaseAdapterItemData> list, CallRecordsAdapter.CallRecordRowListener callRecordRowListener) {
        super(list);
        this.f13536d = scrollEvents;
        this.f13535c = callRecordRowListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(CallRecorderViewHolder callRecorderViewHolder, CallRecorder callRecorder, View view) {
        AndroidUtils.a(view, 1);
        ListsUtils.a(callRecorderViewHolder.getCallAppRow().getContext(), callRecorder, getContextMenuType(), getContextMenuAnalyticsTag(), ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) baseViewTypeData;
        int viewType = baseAdapterItemData.getViewType();
        if (viewType == 10) {
            ((HeaderViewHolder) baseCallAppViewHolder).a(((HeaderSectionData) baseAdapterItemData).getHeaderName());
        } else if (viewType == 15) {
            final CallRecorderViewHolder callRecorderViewHolder = (CallRecorderViewHolder) baseCallAppViewHolder;
            final CallRecorder callRecorder = (CallRecorder) baseAdapterItemData;
            callRecorderViewHolder.a(callRecorder, this.f13536d, true);
            CallAppRow callAppRow = callRecorderViewHolder.getCallAppRow();
            callAppRow.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.records._$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a2;
                    a2 = SearchRecordsAdapter.this.a(callRecorderViewHolder, callRecorder, view);
                    return a2;
                }
            });
            callAppRow.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.records.SearchRecordsAdapter.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    if (SearchRecordsAdapter.this.f13535c != null) {
                        SearchRecordsAdapter.this.f13535c.a(callRecorder, false);
                    }
                }
            });
        }
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.CALL_RECORDER;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.CALL_RECORDER_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 10) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559175, viewGroup, false), ThemeUtils.a(viewGroup.getContext(), 2131099784));
        } else if (i != 15) {
            return null;
        } else {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f11158b = CallAppViewTypes.CENTER_CALL_RECORD;
            builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
            builder.f11159c = CallAppViewTypes.RIGHT_TEXT_WITH_IMAGE;
            return new CallRecorderViewHolder(builder.a(), this.f13535c);
        }
    }
}
