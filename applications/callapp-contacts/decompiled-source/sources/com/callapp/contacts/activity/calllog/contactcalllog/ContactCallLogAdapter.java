package com.callapp.contacts.activity.calllog.contactcalllog;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseMultiSelectListAdapter;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.calllog.SingleCallLogData;
import com.callapp.contacts.activity.interfaces.CallEventListener;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.model.call.CallState;
import com.callapp.contacts.popup.contact.DialogContactMultiNumber;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogAdapter.class */
public class ContactCallLogAdapter extends BaseMultiSelectListAdapter<SingleCallLogData, ContactCallLogViewHolder> {

    /* renamed from: c  reason: collision with root package name */
    private final ScrollEvents f11422c;

    /* renamed from: d  reason: collision with root package name */
    private String f11423d;

    public ContactCallLogAdapter(ScrollEvents scrollEvents, List<SingleCallLogData> list) {
        super(list);
        this.f11422c = scrollEvents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view, SingleCallLogData singleCallLogData) {
        a(!isInMultiSelectMode(), Collections.singletonList(singleCallLogData));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view, final SingleCallLogData singleCallLogData) {
        AndroidUtils.a(view, 1);
        if (isInMultiSelectMode()) {
            b(singleCallLogData);
            notifyDataSetChanged();
            return;
        }
        final Context context = view.getContext();
        ContactUtils.a(context, singleCallLogData.f11101c, singleCallLogData.contactId, singleCallLogData.normalNumbers, new DialogContactMultiNumber.DialogContactMultiNumberListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogAdapter.1
            @Override // com.callapp.contacts.popup.contact.DialogContactMultiNumber.DialogContactMultiNumberListener
            public void onDone(Phone phone, boolean z) {
                if (phone != null && phone.isNotEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
                    PhoneManager.a(context, phone, singleCallLogData.contactId, ContactCallLogAdapter.this.f11423d, "Contact name or number", "Call", ContactUtils.a(singleCallLogData.getPhone()).isIncognito(), new ActionDoneListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogAdapter.1.1
                        @Override // com.callapp.contacts.action.ActionDoneListener
                        public final void a() {
                            PhoneStateManager.get().addListener(new CallStateListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogAdapter.1.1.1
                                @Override // com.callapp.contacts.manager.phone.CallStateListener
                                public void onCallStateChanged(CallData callData) {
                                    if (callData.getState() == CallState.RINGING_OUTGOING || callData.getState() == CallState.POST_CALL) {
                                        PhoneStateManager.get().removeListener(this);
                                        EventBusManager.f14368a.a((EventType<L, EventType<CallEventListener, EventBusManager.CallAppDataType>>) CallEventListener.f12935b, (EventType<CallEventListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CALL, false);
                                    }
                                }
                            });
                        }

                        @Override // com.callapp.contacts.action.ActionDoneListener
                        public final void a(boolean z2) {
                        }
                    });
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        ((ContactCallLogViewHolder) baseCallAppViewHolder).a((SingleCallLogData) baseViewTypeData, this.f11422c, new OnListItemInteractionsListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog._$$Lambda$ContactCallLogAdapter$ScDe18R2KX_e4xF6tnIgKZb6EEc
            @Override // com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener
            public final void onListItemInteracted(View view, Object obj) {
                ContactCallLogAdapter.this.b(view, (SingleCallLogData) obj);
            }
        }, new OnListItemInteractionsListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog._$$Lambda$ContactCallLogAdapter$Z3HDtiu_YyDLAO_UZLQEBdk1c34
            @Override // com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener
            public final void onListItemInteracted(View view, Object obj) {
                ContactCallLogAdapter.this.a(view, (SingleCallLogData) obj);
            }
        }, isInMultiSelectMode());
    }

    public List<Long> getAllCallLogIds() {
        int itemCount = getItemCount();
        ArrayList arrayList = new ArrayList(itemCount);
        for (int i = 0; i < itemCount; i++) {
            try {
                arrayList.add(Long.valueOf(((SingleCallLogData) getItemAt(i)).e));
            } catch (IndexOutOfBoundsException e) {
                FeedbackManager.get().a(Activities.getString(2131886732), (Integer) null);
                return null;
            }
        }
        return arrayList;
    }

    public List<Long> getSelectedRowsCallLogIds() {
        List<SingleCallLogData> checkedRows = getCheckedRows();
        ArrayList arrayList = new ArrayList(checkedRows.size());
        for (SingleCallLogData singleCallLogData : checkedRows) {
            arrayList.add(Long.valueOf(singleCallLogData.e));
        }
        return arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11159c = CallAppViewTypes.RIGHT_TEXT;
        builder.f11158b = CallAppViewTypes.CENTER_CALL_LOG;
        builder.f11157a = CallAppViewTypes.LEFT_CHECKBOX;
        return new ContactCallLogViewHolder(builder.a());
    }

    public void setContactName(String str) {
        this.f11423d = str;
    }
}
