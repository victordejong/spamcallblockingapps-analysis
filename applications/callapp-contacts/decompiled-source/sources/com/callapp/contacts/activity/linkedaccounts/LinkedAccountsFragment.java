package com.callapp.contacts.activity.linkedaccounts;

import a.a.a.a.a.a;
import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter;
import com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment;
import com.callapp.contacts.activity.settings.TextualSocialLoginFragment;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.google.GoogleHelper;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.GooglePlayUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ads.AdUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment.class */
public class LinkedAccountsFragment extends BaseCallAppFragment<List<SocialConnectorData>> implements LinkedAccountsAdapter.AdapterWithSwitchEvents {

    /* renamed from: b  reason: collision with root package name */
    private static final List<RemoteAccountHelper> f13000b = new ArrayList<RemoteAccountHelper>() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.1
        {
            Iterator it2 = DataSource.LINKED_ACCOUNTS_SOURCE.iterator();
            while (it2.hasNext()) {
                DataSource dataSource = (DataSource) it2.next();
                if (dataSource != DataSource.google || GooglePlayUtils.isGooglePlayServicesAvailable()) {
                    add(RemoteAccountHelper.a(dataSource));
                }
            }
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private LinkedAccountsFragmentEvents f13001a;

    /* renamed from: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment$3  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3.class */
    class AnonymousClass3 implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ RemoteAccountHelper f13006a;

        AnonymousClass3(RemoteAccountHelper remoteAccountHelper) {
            this.f13006a = remoteAccountHelper;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(RemoteAccountHelper remoteAccountHelper) {
            LinkedAccountsFragment.a(LinkedAccountsFragment.this, remoteAccountHelper);
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            final RemoteAccountHelper remoteAccountHelper = this.f13006a;
            final boolean z = remoteAccountHelper instanceof GoogleHelper;
            if (z) {
                ((GoogleHelper) remoteAccountHelper).setDisconnectListener(new GoogleHelper.DisconnectListener() { // from class: com.callapp.contacts.activity.linkedaccounts._$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU
                    @Override // com.callapp.contacts.api.helper.google.GoogleHelper.DisconnectListener
                    public final void onDisconnected() {
                        LinkedAccountsFragment.AnonymousClass3.this.a(remoteAccountHelper);
                    }
                });
            }
            new Task() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.3.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    AnonymousClass3.this.f13006a.e();
                    if (!z) {
                        LinkedAccountsFragment.a(LinkedAccountsFragment.this, AnonymousClass3.this.f13006a);
                    }
                }
            }.execute();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents.class */
    public interface LinkedAccountsFragmentEvents {
        void a(DataSource dataSource);

        void b(DataSource dataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        final ArrayList arrayList = new ArrayList();
        for (RemoteAccountHelper remoteAccountHelper : f13000b) {
            arrayList.add(new SocialConnectorData(remoteAccountHelper));
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts._$$Lambda$LinkedAccountsFragment$rS_3WblrSNOOuSb2_2sN_v4B_CM
            @Override // java.lang.Runnable
            public final void run() {
                LinkedAccountsFragment.this.a(arrayList);
            }
        });
    }

    static /* synthetic */ void a(LinkedAccountsFragment linkedAccountsFragment, RemoteAccountHelper remoteAccountHelper) {
        linkedAccountsFragment.refreshData();
        FeedbackManager.get().a(Activities.a(2131887285, remoteAccountHelper.getName()), (Integer) null);
        LinkedAccountsFragmentEvents linkedAccountsFragmentEvents = linkedAccountsFragment.f13001a;
        if (linkedAccountsFragmentEvents != null) {
            linkedAccountsFragmentEvents.b(remoteAccountHelper.getDataSource());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        setData(list);
    }

    private void c(SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        remoteAccountHelper.setLoginListener(d(switchCompat, remoteAccountHelper));
        remoteAccountHelper.b(getActivity());
    }

    private RemoteAccountHelper.DefaultLoginListener d(final SwitchCompat switchCompat, final RemoteAccountHelper remoteAccountHelper) {
        return new RemoteAccountHelper.DefaultLoginListener(remoteAccountHelper) { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.6
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            public final void a() {
                super.a();
                final FragmentActivity activity = LinkedAccountsFragment.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TextualSocialLoginFragment.a(remoteAccountHelper, activity, false);
                            LinkedAccountsFragment.this.refreshData();
                        }
                    });
                }
                if (LinkedAccountsFragment.this.f13001a != null) {
                    LinkedAccountsFragment.this.f13001a.a(remoteAccountHelper.getDataSource());
                }
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            public final void b() {
                super.b();
                FragmentActivity activity = LinkedAccountsFragment.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (switchCompat != null) {
                                switchCompat.setChecked(false);
                            }
                        }
                    });
                }
                FeedbackManager.get().a(Activities.getString(2131887286), (Integer) null);
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            public final void c() {
                b();
            }
        };
    }

    @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.AdapterWithSwitchEvents
    public final void a(final SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        if (remoteAccountHelper.isLoggedIn()) {
            final FragmentActivity activity = getActivity();
            if (activity != null) {
                AnonymousClass3 r0 = new AnonymousClass3(remoteAccountHelper);
                final DialogPopup.IDialogOnClickListener iDialogOnClickListener = new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.4
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public void onClickListener(Activity activity2) {
                        SwitchCompat switchCompat2 = switchCompat;
                        if (switchCompat2 != null) {
                            switchCompat2.setChecked(true);
                        }
                    }
                };
                PopupManager.get().a(activity, new DialogSimpleMessage(null, Activities.a(2131887110, remoteAccountHelper.getName()), Activities.getString(2131888248), Activities.getString(2131887301), r0, iDialogOnClickListener) { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.5
                    @Override // com.callapp.contacts.manager.popup.DialogPopup
                    public void onDialogCancelled(DialogInterface dialogInterface) {
                        super.onDialogCancelled(dialogInterface);
                        iDialogOnClickListener.onClickListener(activity);
                    }
                });
                return;
            }
            return;
        }
        c(switchCompat, remoteAccountHelper);
    }

    @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.AdapterWithSwitchEvents
    public final void b(SwitchCompat switchCompat, final RemoteAccountHelper remoteAccountHelper) {
        if (remoteAccountHelper.isLoggedIn()) {
            CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.2
                @Override // java.lang.Runnable
                public void run() {
                    remoteAccountHelper.a(LinkedAccountsFragment.this.getActivity(), remoteAccountHelper.getCurrentUserId(), (Runnable) null, new OutcomeListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.2.1
                        @Override // com.callapp.contacts.manager.task.OutcomeListener
                        public final void a(boolean z) {
                            if (!z) {
                                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        FeedbackManager.get().a(Activities.getString(2131887112), (Integer) null);
                                    }
                                });
                            }
                        }
                    });
                }
            });
        } else {
            c(switchCompat, remoteAccountHelper);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return DataChangedInfo.POSITION_ALL;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return null;
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[EventBusManager.CallAppDataType.NETWORK_DATA_CONNECTIVITY_CHANGED.ordinal()];
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(List<SocialConnectorData> list) {
        LinkedAccountsAdapter linkedAccountsAdapter = new LinkedAccountsAdapter(list);
        linkedAccountsAdapter.setEventsListener(this);
        this.originalAdapter = linkedAccountsAdapter;
        return AdUtils.a(getActivity(), ListsUtils.a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        a.C0000a aVar = new a.C0000a(getContext());
        aVar.e = ThemeUtils.getColor(2131099891);
        aVar.f371b = aVar.f370a.getDimensionPixelSize(2131165556);
        this.recyclerView.a(new a(aVar.f371b, aVar.f372c, aVar.f373d, aVar.e), -1);
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts._$$Lambda$LinkedAccountsFragment$y4YgNkT9Npp_nj9tnrwxn29jYPY
            @Override // java.lang.Runnable
            public final void run() {
                LinkedAccountsFragment.this.a();
            }
        });
    }

    public void setEventsListener(LinkedAccountsFragmentEvents linkedAccountsFragmentEvents) {
        this.f13001a = linkedAccountsFragmentEvents;
    }
}
