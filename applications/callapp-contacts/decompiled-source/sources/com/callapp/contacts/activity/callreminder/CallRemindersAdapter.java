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

    /* renamed from: c  reason: collision with root package name */
    private final ReminderEvents f11465c;

    /* renamed from: d  reason: collision with root package name */
    private ScrollEvents f11466d;

    /* renamed from: com.callapp.contacts.activity.callreminder.CallRemindersAdapter$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallRemindersAdapter$4.class */
    class AnonymousClass4 implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CallRemindersData f11475a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CallReminderViewHolder f11476b;

        AnonymousClass4(CallRemindersData callRemindersData, CallReminderViewHolder callReminderViewHolder) {
            this.f11475a = callRemindersData;
            this.f11476b = callReminderViewHolder;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AndroidUtils.a(view, 1);
            AnalyticsManager.get().a(Constants.CONTACT_LIST, "Delete entry from reminders", Constants.CLICK);
            ListsUtils.a(view.getContext(), 2131887463, 2131887462, new Listener<Object>() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.4.1
                @Override // com.callapp.contacts.event.listener.Listener
                public final void a(Object obj) {
                    CallRemindersManager.b(AnonymousClass4.this.f11475a.notificationId);
                    if (AnonymousClass4.this.f11475a.notificationId.longValue() != -1) {
                        NotificationManager.get().a(AnonymousClass4.this.f11475a.notificationId.intValue());
                    }
                    CallReminderWorker.Companion companion = CallReminderWorker.f17034a;
                    CallReminderWorker.Companion.a(AnonymousClass4.this.f11475a.jobId);
                    CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.4.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int adapterPosition = AnonymousClass4.this.f11476b.getAdapterPosition();
                            CallRemindersAdapter callRemindersAdapter = CallRemindersAdapter.this;
                            ((List) callRemindersAdapter.f11075a).remove(adapterPosition);
                            callRemindersAdapter.notifyItemRemoved(adapterPosition);
                            CallRemindersAdapter.this.f11465c.a(CallRemindersAdapter.this.getItemCount());
                        }
                    });
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallRemindersAdapter$ReminderEvents.class */
    public interface ReminderEvents {
        void a();

        void a(int i);
    }

    public CallRemindersAdapter(List<CallRemindersData> list, ScrollEvents scrollEvents, ReminderEvents reminderEvents) {
        super(list);
        this.f11466d = scrollEvents;
        this.f11465c = reminderEvents;
    }

    public static void a(Context context, int i, long j, ActionDoneListener actionDoneListener) {
        List<CallRemindersData> a2 = CallRemindersManager.a(Long.valueOf(i));
        if (CollectionUtils.b(a2)) {
            ContactData a3 = ContactUtils.a(a2.get(0).getPhone());
            if (a3 == null) {
                CLog.a(CallRemindersAdapter.class, "Snooze Call Reminder - contactData is null");
                FeedbackManager.get().a(Activities.getString(2131886446), (Integer) null);
                return;
            }
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(j);
            a(context, instance, a3.getNameOrNumber(), a3.getPhone().getRawNumber(), i, actionDoneListener, true);
        }
    }

    public static void a(Context context, Calendar calendar, String str, String str2, final int i, final ActionDoneListener actionDoneListener, final boolean z) {
        AddCallReminderAction.a(calendar, context, str, str2, new AddCallReminderAction.ICallReminder() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.1
            @Override // com.callapp.contacts.action.local.AddCallReminderAction.ICallReminder
            public final void a(String str3, String str4, Calendar calendar2) {
                String a2 = CallReminderWorker.f17034a.a(i, calendar2.getTimeInMillis());
                if (z) {
                    CallRemindersManager.a(i, Long.valueOf(calendar2.getTimeInMillis()), a2);
                } else {
                    CallRemindersManager.a(str3, str4, calendar2, i, a2);
                }
                FeedbackManager.get().a(Activities.getString(2131886451), (Integer) null);
                ActionDoneListener actionDoneListener2 = actionDoneListener;
                if (actionDoneListener2 != null) {
                    actionDoneListener2.a(true);
                }
            }
        }, new DefaultInterfaceImplUtils.OnDialogSimpleListener() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnDialogSimpleListener, com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void b(DialogPopup dialogPopup) {
                if (!z) {
                    CallRemindersManager.b(Long.valueOf(i));
                    FeedbackManager.get().a(Activities.getString(2131887569), (Integer) null);
                    return;
                }
                FeedbackManager.get().a(Activities.getString(2131887568), (Integer) null);
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppAdapter
    public final /* synthetic */ void a(BaseCallAppViewHolder baseCallAppViewHolder, BaseViewTypeData baseViewTypeData) {
        CallReminderViewHolder callReminderViewHolder = (CallReminderViewHolder) baseCallAppViewHolder;
        final CallRemindersData callRemindersData = (CallRemindersData) baseViewTypeData;
        callReminderViewHolder.a(callRemindersData, this.f11466d, getContextMenuType(), getContextMenuAnalyticsTag());
        callReminderViewHolder.setOnEditClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallRemindersAdapter.a(view.getContext(), callRemindersData.notificationId.intValue(), callRemindersData.notificationTime.longValue(), new ActionDoneListener() { // from class: com.callapp.contacts.activity.callreminder.CallRemindersAdapter.3.1
                    @Override // com.callapp.contacts.action.ActionDoneListener
                    public final void a() {
                    }

                    @Override // com.callapp.contacts.action.ActionDoneListener
                    public final void a(boolean z) {
                        CallReminderWorker.Companion companion = CallReminderWorker.f17034a;
                        CallReminderWorker.Companion.a(callRemindersData.jobId);
                        CallRemindersAdapter.this.f11465c.a();
                    }
                });
            }
        });
        callReminderViewHolder.setOnDeleteClickListener(new AnonymousClass4(callRemindersData, callReminderViewHolder));
    }

    public String getContextMenuAnalyticsTag() {
        return Constants.MISSED_CALLS;
    }

    public Action.ContextType getContextMenuType() {
        return Action.ContextType.MISSED_CALL_ITEM;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.a
    public /* synthetic */ RecyclerView.v onCreateViewHolder(ViewGroup viewGroup, int i) {
        CallAppRow.Builder builder = new CallAppRow.Builder(viewGroup.getContext());
        builder.f11158b = CallAppViewTypes.CENTER_REMINDER;
        builder.f11157a = CallAppViewTypes.LEFT_PROFILE;
        return new CallReminderViewHolder(builder.a());
    }
}
