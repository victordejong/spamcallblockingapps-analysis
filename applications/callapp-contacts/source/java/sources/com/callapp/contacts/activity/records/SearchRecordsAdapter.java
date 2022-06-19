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

    /* renamed from: c */
    private final CallRecordsAdapter.CallRecordRowListener f24036c;

    /* renamed from: d */
    private ScrollEvents f24037d;

    public SearchRecordsAdapter(ScrollEvents scrollEvents, List<BaseAdapterItemData> list, CallRecordsAdapter.CallRecordRowListener callRecordRowListener) {
        super(list);
        this.f24037d = scrollEvents;
        this.f24036c = callRecordRowListener;
    }

    /* renamed from: a */
    public /* synthetic */ boolean m29718a(CallRecorderViewHolder callRecorderViewHolder, CallRecorder callRecorder, View view) {
        AndroidUtils.m27630a(view, 1);
        ListsUtils.m27486a(callRecorderViewHolder.getCallAppRow().getContext(), callRecorder, getContextMenuType(), getContextMenuAnalyticsTag(), ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        BaseAdapterItemData baseAdapterItemData = (BaseAdapterItemData) baseViewTypeData;
        int viewType = baseAdapterItemData.getViewType();
        if (viewType == 10) {
            ((HeaderViewHolder) baseCallAppViewHolder).m31473a(((HeaderSectionData) baseAdapterItemData).getHeaderName());
        } else if (viewType != 15) {
        } else {
            final CallRecorderViewHolder callRecorderViewHolder = (CallRecorderViewHolder) baseCallAppViewHolder;
            final CallRecorder callRecorder = (CallRecorder) baseAdapterItemData;
            callRecorderViewHolder.m29764a(callRecorder, this.f24037d, true);
            CallAppRow callAppRow = callRecorderViewHolder.getCallAppRow();
            callAppRow.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.records._$$Lambda$SearchRecordsAdapter$QZy841U4qunkqqwXCLxv6oFNBo8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m29718a;
                    m29718a = SearchRecordsAdapter.this.m29718a(callRecorderViewHolder, callRecorder, view);
                    return m29718a;
                }
            });
            callAppRow.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.records.SearchRecordsAdapter.1
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    if (SearchRecordsAdapter.this.f24036c != null) {
                        SearchRecordsAdapter.this.f24036c.mo29709a(callRecorder, false);
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

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 10) {
            return new HeaderViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(2131559175, viewGroup, false), ThemeUtils.m27386a(viewGroup.getContext(), 2131099784));
        } else if (i != 15) {
            return null;
        } else {
            CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
            builder.f20368b = CallAppViewTypes.CENTER_CALL_RECORD;
            builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
            builder.f20369c = CallAppViewTypes.RIGHT_TEXT_WITH_IMAGE;
            return new CallRecorderViewHolder(builder.m31474a(), this.f24036c);
        }
    }
}
