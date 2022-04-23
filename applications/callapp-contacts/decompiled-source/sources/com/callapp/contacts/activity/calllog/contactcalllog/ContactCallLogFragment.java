package com.callapp.contacts.activity.calllog.contactcalllog;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseMultiSelectListFragment;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.calllog.SingleCallLogData;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogFragment.class */
public class ContactCallLogFragment extends BaseMultiSelectListFragment<SingleCallLogData> implements ContactDataChangeListener {
    private String contactName;
    private Collection<Phone> phones;

    private void deleteAndRefresh(Context context, List<Long> list, boolean z, final ContactCallLogAdapter contactCallLogAdapter, final DialogInterface.OnClickListener onClickListener) {
        if (list != null && list.size() > 0) {
            deleteCallLogEntries(context, list, list.size(), z, false, new DialogInterface.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.5
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == -1) {
                        contactCallLogAdapter.d();
                        ContactCallLogFragment.this.refreshData();
                    }
                    onClickListener.onClick(dialogInterface, i);
                }
            });
        }
    }

    public static boolean deleteCallLogEntries(Context context, final List<Long> list, int i, boolean z, final boolean z2, final DialogInterface.OnClickListener onClickListener) {
        String str;
        String str2;
        if (!z2 && (list == null || list.size() == 0)) {
            return false;
        }
        if (z) {
            str2 = Activities.getString(2131886753);
            str = Activities.getString(2131886752);
        } else {
            str2 = Activities.getString(i > 1 ? 2131887464 : 2131887461);
            str = Activities.a(2131887465, Integer.valueOf(i));
        }
        PopupManager.get().a(context, new DialogSimpleMessage(str2, str, Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                if (!z2) {
                    CallLogUtils.a((List<Long>) list);
                } else {
                    CallLogUtils.c();
                }
                DialogInterface.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(null, -1);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }));
        return true;
    }

    public static void deleteEntireDeviceCallLog(Context context, final DialogInterface.OnClickListener onClickListener) {
        PopupManager.get().a(context, new DialogSimpleMessage(Activities.getString(2131887456), Activities.getString(2131887000), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.1
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                CallLogUtils.b();
                DialogInterface.OnClickListener onClickListener2 = onClickListener;
                if (onClickListener2 != null) {
                    onClickListener2.onClick(null, -1);
                }
            }
        }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
            }
        }));
    }

    public void deleteAllPresentedCallLogEntries(Context context, DialogInterface.OnClickListener onClickListener) {
        deleteAndRefresh(context, ((ContactCallLogAdapter) this.originalAdapter).getAllCallLogIds(), true, (ContactCallLogAdapter) this.originalAdapter, onClickListener);
    }

    public boolean deleteSelectedCallLogEntries(Context context, DialogInterface.OnClickListener onClickListener) {
        deleteAndRefresh(context, ((ContactCallLogAdapter) this.originalAdapter).getSelectedRowsCallLogIds(), false, (ContactCallLogAdapter) this.originalAdapter, onClickListener);
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void filterReq(CharSequence charSequence, boolean z) {
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 0;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CALL_RECORD_CHANGED.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal(), EventBusManager.CallAppDataType.RECENT_CALLS.ordinal()};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CallAppMoPubRecyclerAdapter getNewAdapter(List list) {
        this.originalAdapter = new ContactCallLogAdapter(getScrollEvents(), list);
        if (this.contactName != null) {
            ((ContactCallLogAdapter) this.originalAdapter).setContactName(this.contactName);
        }
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
    public void onContactChanged(ContactData contactData, Set<ContactField> set) {
        if (set.contains(ContactField.phones)) {
            this.phones = contactData.getPhones();
            refreshData();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ViewUtils.a(view.findViewById(2131362685), 2131231546, 2131231547, Activities.getString(2131886384), Activities.getString(2131886383));
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        new Task() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.6
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                final List<SingleCallLogData> a2 = CallLogUtils.a(ContactCallLogFragment.this.phones);
                if (ContactCallLogFragment.this.originalAdapter != null) {
                    ContactCallLogFragment.this.originalAdapter.c();
                }
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.contactcalllog.ContactCallLogFragment.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactCallLogFragment.this.setData(a2);
                    }
                });
            }
        }.execute();
    }

    public void setContact(ContactData contactData) {
        this.contactName = contactData.getFullName();
        if (this.originalAdapter != null) {
            ((ContactCallLogAdapter) this.originalAdapter).setContactName(StringUtils.j(contactData.getFullName()));
        }
    }

    public void setSingleContactPhone(Phone phone) {
        this.phones = Collections.singletonList(phone);
        refreshData();
    }
}
