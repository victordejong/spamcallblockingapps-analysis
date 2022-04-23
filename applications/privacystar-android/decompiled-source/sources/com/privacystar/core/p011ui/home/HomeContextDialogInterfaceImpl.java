package com.privacystar.core.p011ui.home;

import com.apptentive.android.sdk.ApptentiveNotifications;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.BaseActivity;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListFragment;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.widgets.ILogContextDialogFragment;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.ContactUtil;
import com.privacystar.core.util.NavigationUtil;
import com.privacystar.core.util.SystemUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018��2\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\nH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \b*\u0004\u0018\u00010\u00030\u00030\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0019"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeContextDialogInterfaceImpl;", "Lcom/privacystar/core/ui/widgets/ILogContextDialogFragment;", ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, "Lcom/privacystar/core/ui/BaseActivity;", "contentRefreshCallback", "Lcom/privacystar/core/ui/home/HomeContextDialogInterfaceImpl$OnTriggerContentRefresh;", "(Lcom/privacystar/core/ui/BaseActivity;Lcom/privacystar/core/ui/home/HomeContextDialogInterfaceImpl$OnTriggerContentRefresh;)V", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "launchAddContact", "", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "launchBlockList", "launchCallerDetails", "launchComplaintFlow", "launchReport", "callDetails", "Lcom/privacystar/core/data/call/call_details/CallDetails;", "launchSendCall", "launchSendMessage", "triggerContentRefresh", "fullRefresh", "", "OnTriggerContentRefresh", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.home.HomeContextDialogInterfaceImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeContextDialogInterfaceImpl.class */
public final class HomeContextDialogInterfaceImpl implements ILogContextDialogFragment {
    private final WeakReference<BaseActivity> activity;
    private final OnTriggerContentRefresh contentRefreshCallback;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n��\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/home/HomeContextDialogInterfaceImpl$OnTriggerContentRefresh;", "", "triggerContentRefresh", "", "isFullRefresh", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.home.HomeContextDialogInterfaceImpl$OnTriggerContentRefresh */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/home/HomeContextDialogInterfaceImpl$OnTriggerContentRefresh.class */
    public interface OnTriggerContentRefresh {
        void triggerContentRefresh(boolean z);
    }

    public HomeContextDialogInterfaceImpl(@NotNull BaseActivity activity, @NotNull OnTriggerContentRefresh contentRefreshCallback) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        Intrinsics.checkParameterIsNotNull(contentRefreshCallback, "contentRefreshCallback");
        this.contentRefreshCallback = contentRefreshCallback;
        this.activity = new WeakReference<>(activity);
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchAddContact(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        BaseActivity it = this.activity.get();
        if (it != null) {
            Timber.m37d("Launching native Contacts to add caller.", new Object[0]);
            String str = "";
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (SubscriptionRealm.isSubscriptionOngoing(it.getRealm())) {
                str = caller.getDisplayName();
                Intrinsics.checkExpressionValueIsNotNull(str, "caller.displayName");
            }
            ContactUtil.openAddContactScreen(it, str, caller.getNumber());
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchBlockList() {
        BaseActivity baseActivity = this.activity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(baseActivity.detailIntent(BlockListFragment.class));
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchCallerDetails(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        BaseActivity it = this.activity.get();
        if (it != null) {
            LookupHandler instance = LookupHandler.getInstance();
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            instance.lookupUncachedCaller(it.getRealm(), caller.getNumber(), LookupRequest.LookupType.MANUAL);
            it.createBackStack(it.detailIntent(CallerDetailsFragment.class, caller));
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchComplaintFlow(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        BaseActivity it = this.activity.get();
        if (it != null) {
            LookupHandler instance = LookupHandler.getInstance();
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            instance.lookupUncachedCaller(it.getRealm(), caller.getNumber(), LookupRequest.LookupType.MANUAL);
            CallDetails callDetails = new CallDetails(caller);
            callDetails.setToMostRecentEvent();
            AnalyticsManager.INSTANCE.fire(Event.ComplaintFromHomeEvent.INSTANCE);
            launchReport(callDetails);
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchReport(@NotNull CallDetails callDetails) {
        Intrinsics.checkParameterIsNotNull(callDetails, "callDetails");
        BaseActivity baseActivity = this.activity.get();
        if (baseActivity != null) {
            NavigationUtil.launchReport(baseActivity, callDetails.getCaller(), false);
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchSendCall(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        BaseActivity it = this.activity.get();
        if (it != null) {
            Timber.m37d("Launching native dialer application to place call.", new Object[0]);
            try {
                SystemUtil systemUtil = SystemUtil.INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                BaseActivity baseActivity = it;
                String number = caller.getNumber();
                Intrinsics.checkExpressionValueIsNotNull(number, "caller.number");
                systemUtil.sendCall(baseActivity, number);
            } catch (SecurityException e) {
                Timber.m23w(e, "Couldn't send call because permissions were revoked.", new Object[0]);
            }
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void launchSendMessage(@NotNull Caller caller) {
        Intrinsics.checkParameterIsNotNull(caller, "caller");
        BaseActivity it = this.activity.get();
        if (it != null) {
            Timber.m37d("caller is not null", new Object[0]);
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            BaseActivity baseActivity = it;
            String number = caller.getNumber();
            Intrinsics.checkExpressionValueIsNotNull(number, "caller.number");
            SystemUtil.sendMessage$default(systemUtil, baseActivity, number, null, 4, null);
            Timber.m37d("Launching native sms application to compose message.", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.widgets.ILogContextDialogFragment
    public void triggerContentRefresh(boolean z) {
        this.contentRefreshCallback.triggerContentRefresh(z);
    }
}
