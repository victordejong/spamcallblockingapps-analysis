package com.privacystar.core.p011ui;

import android.content.Intent;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.debug.DebugViewActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.about.AboutFragment;
import com.privacystar.core.p011ui.detail_view.approved_list.ApprovedListFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment;
import com.privacystar.core.p011ui.detail_view.inbox.InboxFragment;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsFragment;
import com.privacystar.core.p011ui.detail_view.subscription.SubscriptionFragmentLegacy;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.walkthrough.WalkthroughActivity;
import com.privacystar.core.p011ui.widgets.StaticDialogs;
import com.privacystar.core.util.SystemUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\b\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0012"}, m254d2 = {"Lcom/privacystar/core/ui/BaseDrawerItemFunctionality;", "", "baseActivity", "Lcom/privacystar/core/ui/BaseActivity;", "(Lcom/privacystar/core/ui/BaseActivity;)V", "Ljava/lang/ref/WeakReference;", "launchAbout", "", "launchApprovedList", "launchBlockList", "launchDashboard", "launchDebug", "launchHome", "launchInbox", "launchSettings", "launchShare", "launchSubscription", "launchWalkthrough", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.BaseDrawerItemFunctionality */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseDrawerItemFunctionality.class */
public final class BaseDrawerItemFunctionality {
    private final WeakReference<BaseActivity> baseActivity;

    public BaseDrawerItemFunctionality(@NotNull BaseActivity baseActivity) {
        Intrinsics.checkParameterIsNotNull(baseActivity, "baseActivity");
        this.baseActivity = new WeakReference<>(baseActivity);
    }

    public final void launchAbout() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(baseActivity.detailIntent(AboutFragment.class));
        }
    }

    public final void launchApprovedList() {
        BaseActivity it = this.baseActivity.get();
        if (it != null) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (!LicenseFeatureRealm.isFeatureAvailable(it.getRealm(), Feature.APPROVE_LIST)) {
                it.startActivity(DetailActivity.detailIntent(it, SubscriptionFragmentLegacy.class, null));
            } else {
                it.createBackStack(it.detailIntent(ApprovedListFragment.class));
            }
        }
    }

    public final void launchBlockList() {
        BaseActivity it = this.baseActivity.get();
        if (it != null) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (!LicenseFeatureRealm.isFeatureAvailable(it.getRealm(), Feature.CALL_BLOCKING)) {
                it.startActivity(DetailActivity.detailIntent(it, SubscriptionFragmentLegacy.class, null));
            } else {
                it.createBackStack(it.detailIntent(BlockListFragment.class));
            }
        }
    }

    public final void launchDashboard() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(baseActivity.detailIntent(AdvancedDashboardFragment.class));
        }
    }

    public final void launchDebug() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(new Intent(baseActivity, DebugViewActivity.class));
        }
    }

    public final void launchHome() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(new Intent(baseActivity, HomeActivity.class));
        }
    }

    public final void launchInbox() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(baseActivity.detailIntent(InboxFragment.class));
        }
    }

    public final void launchSettings() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(baseActivity.detailIntent(BasicSettingsFragment.class));
        }
    }

    public final void launchShare() {
        BaseActivity it = this.baseActivity.get();
        if (it != null) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            if (it.getResources().getBoolean(C1566R.bool.show_message_before_share)) {
                StaticDialogs.INSTANCE.newShareAppInstance(it).show(it.getSupportFragmentManager(), "share_app_fragment");
                return;
            }
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            BaseActivity baseActivity = it;
            String string = it.getString(C1566R.string.share_subject);
            Intrinsics.checkExpressionValueIsNotNull(string, "it.getString(R.string.share_subject)");
            String string2 = it.getString(C1566R.string.share_message);
            Intrinsics.checkExpressionValueIsNotNull(string2, "it.getString(R.string.share_message)");
            systemUtil.systemShare(baseActivity, string, string2);
        }
    }

    public final void launchSubscription() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(baseActivity.detailIntent(SubscriptionFragmentLegacy.class));
        }
    }

    public final void launchWalkthrough() {
        BaseActivity baseActivity = this.baseActivity.get();
        if (baseActivity != null) {
            baseActivity.createBackStack(new Intent(baseActivity, WalkthroughActivity.class));
        }
    }
}
