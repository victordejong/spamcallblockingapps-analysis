package com.callapp.contacts.activity.linkedaccounts;

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
import p001a.p002a.p003a.p004a.p005a.C0000a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment.class */
public class LinkedAccountsFragment extends BaseCallAppFragment<List<SocialConnectorData>> implements LinkedAccountsAdapter.AdapterWithSwitchEvents {

    /* renamed from: b */
    private static final List<RemoteAccountHelper> f23197b = new ArrayList<RemoteAccountHelper>() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.1
        {
            Iterator it2 = DataSource.LINKED_ACCOUNTS_SOURCE.iterator();
            while (it2.hasNext()) {
                DataSource dataSource = (DataSource) it2.next();
                if (dataSource != DataSource.google || GooglePlayUtils.isGooglePlayServicesAvailable()) {
                    add(RemoteAccountHelper.m29244a(dataSource));
                }
            }
        }
    };

    /* renamed from: a */
    private LinkedAccountsFragmentEvents f23198a;

    /* renamed from: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment$3 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$3.class */
    public class C66493 implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a */
        final /* synthetic */ RemoteAccountHelper f23203a;

        C66493(RemoteAccountHelper remoteAccountHelper) {
            LinkedAccountsFragment.this = r4;
            this.f23203a = remoteAccountHelper;
        }

        /* renamed from: a */
        public /* synthetic */ void m30168a(RemoteAccountHelper remoteAccountHelper) {
            LinkedAccountsFragment.m30173a(LinkedAccountsFragment.this, remoteAccountHelper);
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            final RemoteAccountHelper remoteAccountHelper = this.f23203a;
            final boolean z = remoteAccountHelper instanceof GoogleHelper;
            if (z) {
                ((GoogleHelper) remoteAccountHelper).setDisconnectListener(new GoogleHelper.DisconnectListener() { // from class: com.callapp.contacts.activity.linkedaccounts._$$Lambda$LinkedAccountsFragment$3$4DINwGfLkoXGB3vFbxEVrmMQAzU
                    @Override // com.callapp.contacts.api.helper.google.GoogleHelper.DisconnectListener
                    public final void onDisconnected() {
                        LinkedAccountsFragment.C66493.this.m30168a(remoteAccountHelper);
                    }
                });
            }
            new Task() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.3.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    C66493.this.f23203a.mo29101e();
                    if (!z) {
                        LinkedAccountsFragment.m30173a(LinkedAccountsFragment.this, C66493.this.f23203a);
                    }
                }
            }.execute();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/linkedaccounts/LinkedAccountsFragment$LinkedAccountsFragmentEvents.class */
    public interface LinkedAccountsFragmentEvents {
        /* renamed from: a */
        void mo30167a(DataSource dataSource);

        /* renamed from: b */
        void mo30166b(DataSource dataSource);
    }

    /* renamed from: a */
    public /* synthetic */ void m30176a() {
        final ArrayList arrayList = new ArrayList();
        for (RemoteAccountHelper remoteAccountHelper : f23197b) {
            arrayList.add(new SocialConnectorData(remoteAccountHelper));
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts._$$Lambda$LinkedAccountsFragment$rS_3WblrSNOOuSb2_2sN_v4B_CM
            @Override // java.lang.Runnable
            public final void run() {
                LinkedAccountsFragment.this.m30172a(arrayList);
            }
        });
    }

    /* renamed from: a */
    static /* synthetic */ void m30173a(LinkedAccountsFragment linkedAccountsFragment, RemoteAccountHelper remoteAccountHelper) {
        linkedAccountsFragment.refreshData();
        FeedbackManager.get().m28669a(Activities.m27697a(2131887285, remoteAccountHelper.getName()), (Integer) null);
        LinkedAccountsFragmentEvents linkedAccountsFragmentEvents = linkedAccountsFragment.f23198a;
        if (linkedAccountsFragmentEvents != null) {
            linkedAccountsFragmentEvents.mo30166b(remoteAccountHelper.getDataSource());
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30172a(List list) {
        setData(list);
    }

    /* renamed from: c */
    private void m30170c(SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        remoteAccountHelper.setLoginListener(m30169d(switchCompat, remoteAccountHelper));
        remoteAccountHelper.m29241b(getActivity());
    }

    /* renamed from: d */
    private RemoteAccountHelper.DefaultLoginListener m30169d(final SwitchCompat switchCompat, final RemoteAccountHelper remoteAccountHelper) {
        return new RemoteAccountHelper.DefaultLoginListener(remoteAccountHelper) { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.6
            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            /* renamed from: a */
            public final void mo26206a() {
                super.mo26206a();
                final FragmentActivity activity = LinkedAccountsFragment.this.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            TextualSocialLoginFragment.m29577a(remoteAccountHelper, activity, false);
                            LinkedAccountsFragment.this.refreshData();
                        }
                    });
                }
                if (LinkedAccountsFragment.this.f23198a != null) {
                    LinkedAccountsFragment.this.f23198a.mo30167a(remoteAccountHelper.getDataSource());
                }
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            /* renamed from: b */
            public final void mo26205b() {
                super.mo26205b();
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
                FeedbackManager.get().m28669a(Activities.getString(2131887286), (Integer) null);
            }

            @Override // com.callapp.contacts.api.helper.common.RemoteAccountHelper.DefaultLoginListener, com.callapp.contacts.api.helper.common.LoginListener
            /* renamed from: c */
            public final void mo26203c() {
                mo26205b();
            }
        };
    }

    @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.AdapterWithSwitchEvents
    /* renamed from: a */
    public final void mo30175a(final SwitchCompat switchCompat, RemoteAccountHelper remoteAccountHelper) {
        if (!remoteAccountHelper.isLoggedIn()) {
            m30170c(switchCompat, remoteAccountHelper);
            return;
        }
        final FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        C66493 c66493 = new C66493(remoteAccountHelper);
        final DialogPopup.IDialogOnClickListener iDialogOnClickListener = new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public void onClickListener(Activity activity2) {
                SwitchCompat switchCompat2 = switchCompat;
                if (switchCompat2 != null) {
                    switchCompat2.setChecked(true);
                }
            }
        };
        PopupManager.get().m28209a(activity, new DialogSimpleMessage(null, Activities.m27697a(2131887110, remoteAccountHelper.getName()), Activities.getString(2131888248), Activities.getString(2131887301), c66493, iDialogOnClickListener) { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.5
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public void onDialogCancelled(DialogInterface dialogInterface) {
                super.onDialogCancelled(dialogInterface);
                iDialogOnClickListener.onClickListener(activity);
            }
        });
    }

    @Override // com.callapp.contacts.activity.linkedaccounts.LinkedAccountsAdapter.AdapterWithSwitchEvents
    /* renamed from: b */
    public final void mo30171b(SwitchCompat switchCompat, final RemoteAccountHelper remoteAccountHelper) {
        if (remoteAccountHelper.isLoggedIn()) {
            CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.2
                @Override // java.lang.Runnable
                public void run() {
                    remoteAccountHelper.mo29111a(LinkedAccountsFragment.this.getActivity(), remoteAccountHelper.getCurrentUserId(), (Runnable) null, new OutcomeListener() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.2.1
                        @Override // com.callapp.contacts.manager.task.OutcomeListener
                        /* renamed from: a */
                        public final void mo28119a(boolean z) {
                            if (!z) {
                                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts.LinkedAccountsFragment.2.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        FeedbackManager.get().m28669a(Activities.getString(2131887112), (Integer) null);
                                    }
                                });
                            }
                        }
                    });
                }
            });
        } else {
            m30170c(switchCompat, remoteAccountHelper);
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
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        C0000a.C0002a c0002a = new C0000a.C0002a(getContext());
        c0002a.f8e = ThemeUtils.getColor(2131099891);
        c0002a.f5b = c0002a.f4a.getDimensionPixelSize(2131165556);
        this.recyclerView.m40480a(new C0000a(c0002a.f5b, c0002a.f6c, c0002a.f7d, c0002a.f8e), -1);
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.linkedaccounts._$$Lambda$LinkedAccountsFragment$y4YgNkT9Npp_nj9tnrwxn29jYPY
            @Override // java.lang.Runnable
            public final void run() {
                LinkedAccountsFragment.this.m30176a();
            }
        });
    }

    public void setEventsListener(LinkedAccountsFragmentEvents linkedAccountsFragmentEvents) {
        this.f23198a = linkedAccountsFragmentEvents;
    }
}
