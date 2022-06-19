package com.callapp.contacts.activity.callreminder;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.action.ActionDoneListener;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.activity.base.BaseCallAppListAdapter;
import com.callapp.contacts.activity.base.BaseCallAppViewHolder;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.CallAppViewTypes;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.event.listener.Listener;
import com.callapp.contacts.manager.CallRemindersManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.workers.CallReminderWorker;
import com.callapp.framework.util.CollectionUtils;
import java.util.Calendar;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallRemindersAdapter.class */
public class CallRemindersAdapter extends BaseCallAppListAdapter<CallRemindersData, CallReminderViewHolder> {

    /* renamed from: c */
    private final ReminderEvents f20848c;

    /* renamed from: d */
    private ScrollEvents f20849d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.callreminder.CallRemindersAdapter$4 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallRemindersAdapter$4.class */
    public class View$OnClickListenerC59414 implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CallRemindersData f20858a;

        /* renamed from: b */
        final /* synthetic */ CallReminderViewHolder f20859b;

        View$OnClickListenerC59414(CallRemindersData callRemindersData, CallReminderViewHolder callReminderViewHolder) {
            CallRemindersAdapter.this = r4;
            this.f20858a = callRemindersData;
            this.f20859b = callReminderViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AndroidUtils.m27630a(view, 1);
            AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Delete entry from reminders", Constants.CLICK);
            ListsUtils.m27488a(view.getContext(), 2131887463, 2131887462, new Listener<Object>() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.4.1
                @Override // com.callapp.contacts.event.listener.Listener
                /* renamed from: a */
                public final void mo27399a(Object obj) {
                    CallRemindersManager.m28692b(View$OnClickListenerC59414.this.f20858a.notificationId);
                    if (View$OnClickListenerC59414.this.f20858a.notificationId.longValue() != -1) {
                        NotificationManager.get().m28578a(View$OnClickListenerC59414.this.f20858a.notificationId.intValue());
                    }
                    CallReminderWorker.Companion companion = CallReminderWorker.f29582a;
                    CallReminderWorker.Companion.m26165a(View$OnClickListenerC59414.this.f20858a.jobId);
                    CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int adapterPosition = View$OnClickListenerC59414.this.f20859b.getAdapterPosition();
                            CallRemindersAdapter callRemindersAdapter = CallRemindersAdapter.this;
                            ((List) callRemindersAdapter.f20245a).remove(adapterPosition);
                            callRemindersAdapter.notifyItemRemoved(adapterPosition);
                            CallRemindersAdapter.this.f20848c.mo31273a(CallRemindersAdapter.this.getItemCount());
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents.class */
    public interface ReminderEvents {
        /* renamed from: a */
        void mo31274a();

        /* renamed from: a */
        void mo31273a(int i);
    }

    public CallRemindersAdapter(List<CallRemindersData> list, ScrollEvents scrollEvents, ReminderEvents reminderEvents) {
        super(list);
        this.f20849d = scrollEvents;
        this.f20848c = reminderEvents;
    }

    /* renamed from: a */
    public static void m31278a(Context context, int i, long j, ActionDoneListener actionDoneListener) {
        List<CallRemindersData> m28694a = CallRemindersManager.m28694a(Long.valueOf(i));
        if (CollectionUtils.m26068b(m28694a)) {
            ContactData m28327a = ContactUtils.m28327a(m28694a.get(0).getPhone());
            if (m28327a == null) {
                CLog.m27611a(CallRemindersAdapter.class, "Snooze Call Reminder - contactData is null");
                FeedbackManager.get().m28669a(Activities.getString(2131886446), (Integer) null);
                return;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            m31277a(context, calendar, m28327a.getNameOrNumber(), m28327a.getPhone().getRawNumber(), i, actionDoneListener, true);
        }
    }

    /* renamed from: a */
    public static void m31277a(Context context, Calendar calendar, String str, String str2, final int i, final ActionDoneListener actionDoneListener, final boolean z) {
        AddCallReminderAction.m31834a(calendar, context, str, str2, new AddCallReminderAction.ICallReminder() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.1
            @Override // com.callapp.contacts.action.local.AddCallReminderAction.ICallReminder
            /* renamed from: a */
            public final void mo31275a(String str3, String str4, Calendar calendar2) {
                String m26166a = CallReminderWorker.f29582a.m26166a(i, calendar2.getTimeInMillis());
                if (z) {
                    CallRemindersManager.m28695a(i, Long.valueOf(calendar2.getTimeInMillis()), m26166a);
                } else {
                    CallRemindersManager.m28693a(str3, str4, calendar2, i, m26166a);
                }
                FeedbackManager.get().m28669a(Activities.getString(2131886451), (Integer) null);
                ActionDoneListener actionDoneListener2 = actionDoneListener;
                if (actionDoneListener2 != null) {
                    actionDoneListener2.mo27471a(true);
                }
            }
        }, new DefaultInterfaceImplUtils.OnDialogSimpleListener() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnDialogSimpleListener, com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: b */
            public final void mo26208b(DialogPopup dialogPopup) {
                if (z) {
                    FeedbackManager.get().m28669a(Activities.getString(2131887568), (Integer) null);
                    return;
                }
                CallRemindersManager.m28692b(Long.valueOf(i));
                FeedbackManager.get().m28669a(Activities.getString(2131887569), (Integer) null);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    /* renamed from: a */
    public final /* synthetic */ void mo29362a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        CallReminderViewHolder callReminderViewHolder = (CallReminderViewHolder) baseCallAppViewHolder;
        final CallRemindersData callRemindersData = (CallRemindersData) baseViewTypeData;
        callReminderViewHolder.m31279a(callRemindersData, this.f20849d, getContextMenuType(), getContextMenuAnalyticsTag());
        callReminderViewHolder.setOnEditClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallRemindersAdapter.m31278a(view.getContext(), callRemindersData.notificationId.intValue(), callRemindersData.notificationTime.longValue(), new ActionDoneListener() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.3.1
                    @Override // com.callapp.contacts.action.ActionDoneListener
                    /* renamed from: a */
                    public final void mo27472a() {
                    }

                    @Override // com.callapp.contacts.action.ActionDoneListener
                    /* renamed from: a */
                    public final void mo27471a(boolean z) {
                        CallReminderWorker.Companion companion = CallReminderWorker.f29582a;
                        CallReminderWorker.Companion.m26165a(callRemindersData.jobId);
                        CallRemindersAdapter.this.f20848c.mo31274a();
                    }
                });
            }
        });
        callReminderViewHolder.setOnDeleteClickListener(new View$OnClickListenerC59414(callRemindersData, callReminderViewHolder));
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.MISSED_CALLS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.MISSED_CALL_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2626a
    public /* synthetic */ RecyclerView.AbstractC2657v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f20368b = CallAppViewTypes.CENTER_REMINDER;
        builder.f20367a = CallAppViewTypes.LEFT_PROFILE;
        return new CallReminderViewHolder(builder.m31474a());
    }
}
