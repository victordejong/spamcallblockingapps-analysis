package com.privacystar.core.p011ui.debug;

import android.os.Bundle;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.debug.DebugViewActivity;
import com.privacystar.core.p011ui.debug.actions.AFAnalyticConfigTest;
import com.privacystar.core.p011ui.debug.actions.AddOneCallBlockStat;
import com.privacystar.core.p011ui.debug.actions.AddYearBlockStats;
import com.privacystar.core.p011ui.debug.actions.BadTimberFormatting;
import com.privacystar.core.p011ui.debug.actions.ChangeAccountStatusInactive;
import com.privacystar.core.p011ui.debug.actions.ChangeAccountStatusPaid;
import com.privacystar.core.p011ui.debug.actions.ChangeAccountStatusTrial;
import com.privacystar.core.p011ui.debug.actions.CompactRealm;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignFreeUserBiweekly;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignLookupSecondDay;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignRateSeventhDay;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignReportFourthDay;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignThreeDayInactive;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignWeeklyReport;
import com.privacystar.core.p011ui.debug.actions.LocalCampaignWelcomeSubscriber;
import com.privacystar.core.p011ui.debug.actions.LogGroupingAdjacent;
import com.privacystar.core.p011ui.debug.actions.LogGroupingNone;
import com.privacystar.core.p011ui.debug.actions.MessageBodies;
import com.privacystar.core.p011ui.debug.actions.RemoteCampaignTest;
import com.privacystar.core.p011ui.debug.actions.SpoofCallSms;
import com.privacystar.core.p011ui.debug.actions.TestAction;
import com.privacystar.core.p011ui.debug.actions.TestBadFileProcessing;
import com.privacystar.core.p011ui.debug.actions.TestBlockListGet;
import com.privacystar.core.p011ui.debug.actions.TestBlockListPut;
import com.privacystar.core.p011ui.debug.actions.TestBulkLookupRequest;
import com.privacystar.core.p011ui.debug.actions.TestCallCenterContacts;
import com.privacystar.core.p011ui.debug.actions.TestCallCenterNeutral;
import com.privacystar.core.p011ui.debug.actions.TestCallCenterScam;
import com.privacystar.core.p011ui.debug.actions.TestCallCenterTelemarketer;
import com.privacystar.core.p011ui.debug.actions.TestCallerOffenderRefresh;
import com.privacystar.core.p011ui.debug.actions.TestCrashlyticsCaught;
import com.privacystar.core.p011ui.debug.actions.TestCrashlyticsUncaught;
import com.privacystar.core.p011ui.debug.actions.TestCustomRequest;
import com.privacystar.core.p011ui.debug.actions.TestDatelessReg;
import com.privacystar.core.p011ui.debug.actions.TestFcmRegisterUpstream;
import com.privacystar.core.p011ui.debug.actions.TestFcmTopic;
import com.privacystar.core.p011ui.debug.actions.TestGPCancel;
import com.privacystar.core.p011ui.debug.actions.TestGPOwned;
import com.privacystar.core.p011ui.debug.actions.TestGPStaticPurchased;
import com.privacystar.core.p011ui.debug.actions.TestGPSubMonth;
import com.privacystar.core.p011ui.debug.actions.TestGPSubYear;
import com.privacystar.core.p011ui.debug.actions.TestLicenseCheckTask;
import com.privacystar.core.p011ui.debug.actions.TestLicenseRequest;
import com.privacystar.core.p011ui.debug.actions.TestNetworkQueue;
import com.privacystar.core.p011ui.debug.actions.TestNotRegisteredNotification;
import com.privacystar.core.p011ui.debug.actions.TestNotificationBlocked;
import com.privacystar.core.p011ui.debug.actions.TestNotificationMessage;
import com.privacystar.core.p011ui.debug.actions.TestNotificationMissed;
import com.privacystar.core.p011ui.debug.actions.TestPlayStoreReceiptDelta;
import com.privacystar.core.p011ui.debug.actions.TestRegResponse;
import com.privacystar.core.p011ui.debug.actions.TestRegistrationRequest;
import com.privacystar.core.p011ui.debug.actions.TestSQLiteConversion;
import com.privacystar.core.p011ui.debug.actions.TestSQLiteMigration;
import com.privacystar.core.p011ui.debug.actions.TestSQLiteMigrationAndClean;
import com.privacystar.core.p011ui.debug.actions.TestSQLiteMigrationConvertAndClean;
import com.privacystar.core.p011ui.debug.actions.TestSampleMessages;
import com.privacystar.core.p011ui.debug.actions.TestSampleRequest;
import com.privacystar.core.p011ui.debug.actions.TestSplashScreen;
import com.privacystar.core.p011ui.debug.actions.TestThemeBoost;
import com.privacystar.core.p011ui.debug.actions.TestThemeNeutral;
import com.privacystar.core.p011ui.debug.actions.TestThemeSprint;
import com.privacystar.core.p011ui.debug.actions.TestThemeVirgin;
import com.privacystar.core.p011ui.debug.actions.TestTotalCallers;
import java.util.ArrayList;
import java.util.Collections;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.debug.DebugViewActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/DebugViewActivity.class */
public class DebugViewActivity extends PSActivity {
    private DebugAction[] actions;
    @BindView(C1566R.C1569id.debug_item_list)
    RecyclerView debugItemsView;
    private RecyclerView.LayoutManager layoutManager;
    private RecyclerView.Adapter<DebugViewHolder> recyclerViewAdapter;

    /* renamed from: com.privacystar.core.ui.debug.DebugViewActivity$DebugItemAdapter */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/DebugViewActivity$DebugItemAdapter.class */
    private static class DebugItemAdapter extends RecyclerView.Adapter<DebugViewHolder> {
        private DebugAction[] mDebugActions;

        DebugItemAdapter(DebugAction[] debugActionArr) {
            this.mDebugActions = debugActionArr;
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mDebugActions.length;
        }

        public void onBindViewHolder(DebugViewHolder debugViewHolder, int i) {
            debugViewHolder.setDebugAction(this.mDebugActions[i]);
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public DebugViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new DebugViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(17367044, viewGroup, false));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.privacystar.core.ui.debug.DebugViewActivity$DebugViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/DebugViewActivity$DebugViewHolder.class */
    public static class DebugViewHolder extends RecyclerView.ViewHolder {
        private DebugAction debugAction;
        private View main;
        TextView major;
        TextView minor;
        private boolean processingClick = false;

        DebugViewHolder(View view) {
            super(view);
            this.major = (TextView) view.findViewById(16908308);
            this.minor = (TextView) view.findViewById(16908309);
            int color = ContextCompat.getColor(view.getContext(), C1566R.color.ps3_black);
            this.major.setTextColor(color);
            this.major.setTextSize(2, 18.0f);
            this.minor.setTextColor(color);
            this.minor.setTextSize(2, 12.0f);
            this.main = view;
        }

        private void update() {
            this.major.setText(this.debugAction.getTitle());
            this.minor.setText(this.debugAction.getDescription());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final /* synthetic */ void lambda$setDebugAction$0$DebugViewActivity$DebugViewHolder(View view) {
            if (!this.processingClick) {
                this.processingClick = true;
                this.debugAction.onPerformAction(view.getContext());
                this.processingClick = false;
            }
        }

        void setDebugAction(DebugAction debugAction) {
            this.debugAction = debugAction;
            this.main.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.debug.DebugViewActivity$DebugViewHolder$$Lambda$0
                private final DebugViewActivity.DebugViewHolder arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = this;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    this.arg$1.lambda$setDebugAction$0$DebugViewActivity$DebugViewHolder(view);
                }
            });
            update();
        }
    }

    private DebugAction[] getActionClasses() {
        String[] classNames;
        ArrayList arrayList = new ArrayList();
        try {
            for (String str : getClassNames()) {
                Timber.m37d("Found class: " + str, new Object[0]);
                DebugAction debugAction = (DebugAction) getClass().getClassLoader().loadClass(str).newInstance();
                debugAction.setActivity(this);
                arrayList.add(debugAction);
            }
        } catch (ClassNotFoundException e) {
            Timber.m32e(e, "Encountered error while loading class in getActionClasses", new Object[0]);
        } catch (IllegalAccessException e2) {
            Timber.m32e(e2, "Could not access class.", new Object[0]);
        } catch (InstantiationException e3) {
            Timber.m32e(e3, "Could not instantiate class", new Object[0]);
        }
        Collections.sort(arrayList);
        return (DebugAction[]) arrayList.toArray(new DebugAction[arrayList.size()]);
    }

    public static String[] getClassNames() {
        return new String[]{AddOneCallBlockStat.class.getName(), AddYearBlockStats.class.getName(), AFAnalyticConfigTest.class.getName(), BadTimberFormatting.class.getName(), ChangeAccountStatusInactive.class.getName(), ChangeAccountStatusPaid.class.getName(), ChangeAccountStatusTrial.class.getName(), CompactRealm.class.getName(), LocalCampaignFreeUserBiweekly.class.getName(), LocalCampaignLookupSecondDay.class.getName(), LocalCampaignRateSeventhDay.class.getName(), LocalCampaignReportFourthDay.class.getName(), LocalCampaignThreeDayInactive.class.getName(), LocalCampaignWeeklyReport.class.getName(), LocalCampaignWelcomeSubscriber.class.getName(), LogGroupingAdjacent.class.getName(), LogGroupingNone.class.getName(), MessageBodies.class.getName(), RemoteCampaignTest.class.getName(), SpoofCallSms.class.getName(), TestAction.class.getName(), TestBadFileProcessing.class.getName(), TestBlockListGet.class.getName(), TestBlockListPut.class.getName(), TestBulkLookupRequest.class.getName(), TestCallCenterContacts.class.getName(), TestCallerOffenderRefresh.class.getName(), TestCallCenterNeutral.class.getName(), TestCallCenterScam.class.getName(), TestCallCenterTelemarketer.class.getName(), TestCrashlyticsCaught.class.getName(), TestCrashlyticsUncaught.class.getName(), TestCustomRequest.class.getName(), TestDatelessReg.class.getName(), TestFcmRegisterUpstream.class.getName(), TestFcmTopic.class.getName(), TestGPCancel.class.getName(), TestGPOwned.class.getName(), TestGPStaticPurchased.class.getName(), TestGPSubMonth.class.getName(), TestGPSubYear.class.getName(), TestLicenseCheckTask.class.getName(), TestLicenseRequest.class.getName(), TestNetworkQueue.class.getName(), TestNotificationBlocked.class.getName(), TestNotificationMessage.class.getName(), TestNotificationMissed.class.getName(), TestNotRegisteredNotification.class.getName(), TestPlayStoreReceiptDelta.class.getName(), TestRegistrationRequest.class.getName(), TestRegResponse.class.getName(), TestSampleMessages.class.getName(), TestSampleRequest.class.getName(), TestSplashScreen.class.getName(), TestSQLiteConversion.class.getName(), TestSQLiteMigration.class.getName(), TestSQLiteMigrationAndClean.class.getName(), TestSQLiteMigrationConvertAndClean.class.getName(), TestThemeBoost.class.getName(), TestThemeNeutral.class.getName(), TestThemeSprint.class.getName(), TestThemeVirgin.class.getName(), TestTotalCallers.class.getName()};
    }

    public void closeButtonClicked(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (restartAppIfPermissionsMissing()) {
            finishAffinity();
            return;
        }
        setContentView(C1566R.C1571layout.activity_debug_view);
        this.actions = getActionClasses();
        ButterKnife.bind(this);
        this.debugItemsView.setHasFixedSize(true);
        this.layoutManager = new LinearLayoutManager(this);
        this.debugItemsView.setLayoutManager(this.layoutManager);
        this.recyclerViewAdapter = new DebugItemAdapter(this.actions);
        this.debugItemsView.setAdapter(this.recyclerViewAdapter);
    }
}
