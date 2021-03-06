package com.callapp.contacts.activity.records;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.C0790b;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint;
import com.callapp.contacts.activity.base.CallAppMoPubRecyclerAdapter;
import com.callapp.contacts.activity.interfaces.MultiSelectEvents;
import com.callapp.contacts.activity.records.CallRecordsAdapter;
import com.callapp.contacts.activity.records.StickyCallRecorder;
import com.callapp.contacts.activity.viewcontroller.TopHintViewController;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.CallRecorder;
import com.callapp.contacts.popup.contact.callrecorder.DialogCallRecorderPlayer;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.date.DateUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/AllRecordingsFragment.class */
public class AllRecordingsFragment extends BaseCallAppFragmentWithHint<CallRecorder> implements MultiSelectEvents, StickyCallRecorder.StickyCallRecordingActions {

    /* renamed from: a */
    private RecordsActivityActions f23965a;

    /* renamed from: b */
    private DialogCallRecorderPlayer f23966b;

    /* renamed from: c */
    private StickyCallRecorder f23967c;

    /* renamed from: d */
    private final int f23968d = 7;

    /* renamed from: e */
    private final int f23969e = 3;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/records/AllRecordingsFragment$AccessibilityStickyClicked.class */
    interface AccessibilityStickyClicked {
        /* renamed from: a */
        void mo29761a();
    }

    /* renamed from: f */
    private static boolean m29768f() {
        if (Build.VERSION.SDK_INT < 29 || Activities.isCallAppAccessibilityServiceEnabled()) {
            return false;
        }
        if (Prefs.f26461eZ.get().booleanValue()) {
            if (Prefs.f26620hZ.get() == null) {
                return true;
            }
            if (Prefs.f26620hZ.get() != null && DateUtils.m27118b(new Date(), Prefs.f26620hZ.get()) >= 3) {
                return true;
            }
        }
        if (Prefs.f26619hY.get() == null) {
            return true;
        }
        return Prefs.f26619hY.get() != null && DateUtils.m27118b(new Date(), Prefs.f26619hY.get()) >= 7;
    }

    /* renamed from: g */
    public static /* synthetic */ void m29766g() {
        Prefs.f26520ff.set(Boolean.FALSE);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    /* renamed from: a */
    public final boolean mo29775a() {
        return Prefs.f26520ff.get().booleanValue() && !m29768f();
    }

    @Override // com.callapp.contacts.activity.records.StickyCallRecorder.StickyCallRecordingActions
    /* renamed from: d */
    public final void mo29707d() {
        FragmentActivity activity = getActivity();
        if (activity == null || !(activity instanceof AccessibilityStickyClicked)) {
            return;
        }
        this.f23967c.setVisibility(8);
        ((AccessibilityStickyClicked) activity).mo29761a();
    }

    @Override // com.callapp.contacts.activity.records.StickyCallRecorder.StickyCallRecordingActions
    /* renamed from: e */
    public final void mo29706e() {
        this.f23967c.setVisibility(8);
        Prefs.f26619hY.set(new Date());
        Prefs.f26620hZ.set(new Date());
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getAdUnitIdsConfiguration() {
        return CallAppRemoteConfigManager.get().m28703a(CallAppRemoteConfigManager.f25634v);
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getDataChangeOrigin() {
        return 3;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public BaseCallAppFragment.EmptyViewData getEmptyViewData() {
        return new BaseCallAppFragment.EmptyViewData(2131231380, Activities.getString(2131886404));
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public String getExperimentRemoteConfigName() {
        return "AllRecordingsListExperiments";
    }

    @Override // com.callapp.contacts.activity.interfaces.FragmentDataType
    public int[] getFragmentType() {
        return new int[]{EventBusManager.CallAppDataType.CALL_RECORDERS.ordinal(), EventBusManager.CallAppDataType.RECENT_CALLS.ordinal(), EventBusManager.CallAppDataType.CONTACTS.ordinal()};
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public TopHintViewController.HintBuilder getHintBuilder() {
        TopHintViewController.HintBuilder hintBuilder = new TopHintViewController.HintBuilder();
        hintBuilder.f24611a = 2131231861;
        hintBuilder.f24615e = _$$Lambda$AllRecordingsFragment$KBa0Q8LwY_kQxmQQLpM5ADx_SSk.INSTANCE;
        hintBuilder.f24612b = Activities.getString(2131886412);
        hintBuilder.f24613c = Activities.getString(2131886411);
        hintBuilder.f24614d = 2131100140;
        return hintBuilder;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint
    public BaseCallAppFragmentWithHint.HintType getHintType() {
        return BaseCallAppFragmentWithHint.HintType.REGULAR;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint, com.callapp.contacts.activity.base.BaseCallAppFragment
    public int getLayoutResId() {
        return 2131558784;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public /* synthetic */ CallAppMoPubRecyclerAdapter getNewAdapter(Object obj) {
        this.originalAdapter = new CallRecordsAdapter(getScrollEvents(), (List) obj, new CallRecordsAdapter.CallRecordRowListener() { // from class: com.callapp.contacts.activity.records.AllRecordingsFragment.2
            @Override // com.callapp.contacts.activity.records.CallRecordsAdapter.CallRecordRowListener
            /* renamed from: a */
            public final void mo29709a(CallRecorder callRecorder, boolean z) {
                if (AllRecordingsFragment.this.f23966b != null) {
                    AllRecordingsFragment.this.f23966b.dismiss();
                    AllRecordingsFragment.this.f23966b = null;
                }
                AllRecordingsFragment.this.f23966b = new DialogCallRecorderPlayer(callRecorder, z, null);
                PopupManager.get().m28209a(AllRecordingsFragment.this.getActivity(), AllRecordingsFragment.this.f23966b);
            }
        });
        return AdUtils.m27284a(getActivity(), ListsUtils.m27474a(getAdUnitIdsConfiguration(), getExperimentRemoteConfigName()), this.originalAdapter);
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public ArrayList<BaseAdapterItemData> getSelectedContacts() {
        return new ArrayList<>(getCheckedRows());
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment
    public boolean isPartOfViewPagerActivity() {
        return false;
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            this.f23965a = (RecordsActivityActions) getActivity();
        } catch (ClassCastException e) {
            throw new IllegalStateException("Parent activity must implement RecordsActivityActions");
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f23966b;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.dismiss();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogCallRecorderPlayer dialogCallRecorderPlayer = this.f23966b;
        if (dialogCallRecorderPlayer != null) {
            dialogCallRecorderPlayer.pausePlayer();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseCallAppFragmentWithHint, com.callapp.contacts.activity.base.BaseCallAppFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        StickyCallRecorder stickyCallRecorder = (StickyCallRecorder) view.findViewById(2131364190);
        this.f23967c = stickyCallRecorder;
        stickyCallRecorder.setListener(this);
        final StickyCallRecorder stickyCallRecorder2 = this.f23967c;
        View inflate = LayoutInflater.from(getActivity()).inflate(stickyCallRecorder2.getLayout(), (ViewGroup) stickyCallRecorder2, true);
        TextView textView = (TextView) stickyCallRecorder2.findViewById(2131364130);
        TextView textView2 = (TextView) stickyCallRecorder2.findViewById(2131364013);
        ImageView imageView = (ImageView) stickyCallRecorder2.findViewById(2131363030);
        textView.setText(Activities.getString(2131886397));
        textView2.setText(Activities.getString(2131886396));
        RelativeLayout relativeLayout = (RelativeLayout) stickyCallRecorder2.findViewById(2131364570);
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.m27299b(relativeLayout, 2131232170, ThemeUtils.getColor(2131100126), ThemeUtils.getColor(2131100128), 2);
        } else {
            ViewUtils.m27299b(relativeLayout, 2131232170, ThemeUtils.getColor(2131100125), ThemeUtils.getColor(2131100127), 2);
        }
        imageView.setImageResource(2131232211);
        final TextView textView3 = (TextView) stickyCallRecorder2.findViewById(2131362338);
        final ImageView imageView2 = (ImageView) stickyCallRecorder2.findViewById(2131362371);
        imageView2.setColorFilter(ThemeUtils.getColor(2131099917), PorterDuff.Mode.SRC_IN);
        textView3.setVisibility(0);
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        textView3.setTextColor(C0790b.m44492c(inflate.getContext(), 2131100228));
        ViewUtils.m27294c(textView3, 2131232210, ThemeUtils.getColor(2131099784));
        textView3.setText(Activities.getString(2131886231));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.records.StickyCallRecorder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AndroidUtils.m27630a(textView3, 1);
                if (stickyCallRecorder2.f24046a != null) {
                    AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "ClickAllowAccessibilityStickyBanner");
                    stickyCallRecorder2.f24046a.mo29707d();
                }
            }
        });
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.records.StickyCallRecorder.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                AndroidUtils.m27630a(imageView2, 1);
                if (stickyCallRecorder2.f24046a != null) {
                    AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "ClickCloseAccessibilityStickyBanner");
                    stickyCallRecorder2.f24046a.mo29706e();
                }
            }
        });
        if (m29768f()) {
            if (!Prefs.f26651id.get().booleanValue()) {
                AnalyticsManager.get().m28450a(Constants.PERMISSIONS, "ViewAccessibilityStickyBanner");
                Prefs.f26651id.set(Boolean.TRUE);
            }
            m31508c();
            this.f23967c.setVisibility(0);
        } else {
            this.f23967c.setVisibility(8);
            if (mo29775a()) {
                m31507n_();
            } else {
                m31508c();
            }
        }
        refreshData();
    }

    @Override // com.callapp.contacts.activity.interfaces.DataFragmentsEvents
    public void refreshData() {
        showLoadingProgress();
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.records.AllRecordingsFragment.1
            @Override // java.lang.Runnable
            public void run() {
                final List<CallRecorder> allRecords = AllRecordingsFragment.this.f23965a.getAllRecords();
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.records.AllRecordingsFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (AllRecordingsFragment.this.originalAdapter != null) {
                            AllRecordingsFragment.this.originalAdapter.m31513c();
                        }
                        AllRecordingsFragment.this.setData(allRecords);
                        AllRecordingsFragment.this.toggleEmptyViewIfNeeded();
                        AllRecordingsFragment.this.hideLoadingProgress();
                    }
                });
            }
        });
    }

    @Override // com.callapp.contacts.activity.interfaces.MultiSelectEvents
    public void setMultiSelectModeEnable(boolean z) {
        showMultiSelect(true);
    }

    @Override // com.callapp.contacts.activity.base.BaseMultiSelectListFragment
    public void showMultiSelect(boolean z) {
        super.showMultiSelect(z);
        if (mo29775a()) {
            if (z) {
                m31508c();
            } else {
                m31507n_();
            }
        }
    }
}
