package com.privacystar.core.p011ui.detail_view.campaign;

import android.content.Intent;
import android.net.Uri;
import android.webkit.URLUtil;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.p011ui.detail_view.DetailActivityManagerImpl;
import com.privacystar.core.p011ui.detail_view.approved_list.ApprovedListFragment;
import com.privacystar.core.p011ui.detail_view.block_list.BlockListFragment;
import com.privacystar.core.p011ui.detail_view.campaign.CampaignContract;
import com.privacystar.core.p011ui.detail_view.dashboard.DashboardFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment;
import com.privacystar.core.p011ui.detail_view.inbox.InboxFragment;
import com.privacystar.core.p011ui.detail_view.settings.StateOfResidenceFragment;
import com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsFragment;
import com.privacystar.core.p011ui.detail_view.subscription.SubscriptionFragment;
import com.privacystar.core.p011ui.intro.WalkthroughFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.MessageTrackingHandler;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.CampaignUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0017\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0015H\u0002J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u0015H\u0002J\b\u0010\u001d\u001a\u00020\u0015H\u0002J\b\u0010\u001e\u001a\u00020\u0015H\u0002J\b\u0010\u001f\u001a\u00020\u0015H\u0002J\b\u0010 \u001a\u00020\u0015H\u0002J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u001bH\u0002J\u0014\u0010#\u001a\u00020\u00152\n\u0010$\u001a\u0006\u0012\u0002\b\u00030%H\u0002J\u000e\u0010&\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u001bJ\u0006\u0010'\u001a\u00020\u0015J\b\u0010(\u001a\u00020\u0015H\u0002R\u001a\u0010\b\u001a\u00020\tX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013¨\u0006)"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/campaign/CampaignPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignView;", "template", "Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "(Ljava/lang/ref/WeakReference;Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;)V", "localNotification", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "getLocalNotification", "()Lcom/privacystar/core/service/analytics/Event$Campaign;", "setLocalNotification", "(Lcom/privacystar/core/service/analytics/Event$Campaign;)V", "manager", "Lcom/privacystar/core/ui/detail_view/campaign/CampaignActivityManagerImpl;", "getTemplate", "()Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "getView", "()Ljava/lang/ref/WeakReference;", "gotoApprovedList", "", "gotoBlockList", "gotoCallProtection", "gotoDashboard", "gotoExternalLink", "url", "", "gotoHome", "gotoInbox", "gotoStateofResidence", "gotoSubscription", "gotoWalkthrough", "handleButtonAction", BlockingManager.ACTION_CONSTANT, "navigateFragment", "fragmentClass", "Ljava/lang/Class;", "onButtonClick", "onViewCreated", "processButtons", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignPresenter.class */
public final class CampaignPresenter {
    @NotNull
    public Event.Campaign localNotification;
    private final CampaignActivityManagerImpl manager = CampaignActivityManagerImpl.INSTANCE;
    @NotNull
    private final CampaignUtil.CampaignTemplate template;
    @NotNull
    private final WeakReference<CampaignContract.CampaignView> view;

    public CampaignPresenter(@NotNull WeakReference<CampaignContract.CampaignView> view, @NotNull CampaignUtil.CampaignTemplate template) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(template, "template");
        this.view = view;
        this.template = template;
    }

    private final void gotoApprovedList() {
        navigateFragment(ApprovedListFragment.class);
    }

    private final void gotoBlockList() {
        navigateFragment(BlockListFragment.class);
    }

    private final void gotoCallProtection() {
        navigateFragment(AdvancedSettingsFragment.class);
    }

    private final void gotoDashboard() {
        navigateFragment(DetailActivityManagerImpl.INSTANCE.shouldUseAdvancedDashboard() ? AdvancedDashboardFragment.class : DashboardFragment.class);
    }

    private final void gotoExternalLink(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.setData(Uri.parse(str));
        CampaignContract.CampaignView campaignView = this.view.get();
        if (campaignView != null) {
            campaignView.navigate(intent);
        }
    }

    private final void gotoHome() {
        CampaignContract.CampaignView campaignView = this.view.get();
        if (campaignView != null) {
            campaignView.navigateHome();
        }
    }

    private final void gotoInbox() {
        if (PreferenceUtil.getIsCampaignFromNotification()) {
            navigateFragment(InboxFragment.class);
            return;
        }
        CampaignContract.CampaignView campaignView = this.view.get();
        if (campaignView != null) {
            campaignView.navigateBack();
        }
    }

    private final void gotoStateofResidence() {
        navigateFragment(StateOfResidenceFragment.class);
    }

    private final void gotoSubscription() {
        if (BuildUtil.INSTANCE.isAF()) {
            CampaignContract.CampaignView campaignView = this.view.get();
            if (campaignView != null) {
                campaignView.showPaywall();
                return;
            }
            return;
        }
        navigateFragment(SubscriptionFragment.class);
    }

    private final void gotoWalkthrough() {
        navigateFragment(WalkthroughFragment.class);
    }

    private final void handleButtonAction(String str) {
        int hashCode = str.hashCode();
        if (hashCode != 1567) {
            switch (hashCode) {
                case 49:
                    if (str.equals("1")) {
                        gotoHome();
                        return;
                    }
                    break;
                case 50:
                    if (str.equals("2")) {
                        gotoSubscription();
                        return;
                    }
                    break;
                case 51:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_DASHBOARD)) {
                        gotoDashboard();
                        return;
                    }
                    break;
                case 52:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_WALKTHROUGH)) {
                        PreferenceUtil.putWalkthroughCompleted(false);
                        gotoWalkthrough();
                        return;
                    }
                    break;
                case 53:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_PROTECTION)) {
                        gotoCallProtection();
                        return;
                    }
                    break;
                case 54:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_STATE)) {
                        gotoStateofResidence();
                        return;
                    }
                    break;
                case 55:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_BLOCK)) {
                        gotoBlockList();
                        return;
                    }
                    break;
                case 56:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_APPROVED)) {
                        gotoApprovedList();
                        return;
                    }
                    break;
                case 57:
                    if (str.equals(CampaignUtil.CAMPAIGN_ACTION_INBOX)) {
                        gotoInbox();
                        return;
                    }
                    break;
            }
        } else if (str.equals(CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE)) {
            PreferenceUtil.putShouldInboxShowRateDialog(true);
            gotoInbox();
            return;
        }
        if (URLUtil.isValidUrl(str)) {
            gotoExternalLink(str);
        } else {
            gotoHome();
        }
    }

    private final void navigateFragment(Class<?> cls) {
        boolean isCampaignFromNotification = PreferenceUtil.getIsCampaignFromNotification();
        PreferenceUtil.putIsCampaignFromNotification(false);
        CampaignContract.CampaignView campaignView = this.view.get();
        if (campaignView != null) {
            campaignView.navigate(cls, null, !isCampaignFromNotification);
        }
    }

    private final void processButtons() {
        CampaignContract.CampaignView campaignView = this.view.get();
        if (campaignView != null) {
            boolean z = false;
            if (this.template.getButtonText1().length() == 0) {
                campaignView.hideButtonOne();
            } else {
                campaignView.setButtonOneText(this.template.getButtonText1());
                campaignView.addButtonOneAction(this.template.getButtonAction1());
            }
            if (this.template.getButtonText2().length() == 0) {
                z = true;
            }
            if (z) {
                campaignView.hideButtonTwo();
                return;
            }
            campaignView.setButtonTwoText(this.template.getButtonText2());
            campaignView.addButtonTwoAction(this.template.getButtonAction2());
        }
    }

    @NotNull
    public final Event.Campaign getLocalNotification() {
        Event.Campaign campaign = this.localNotification;
        if (campaign == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localNotification");
        }
        return campaign;
    }

    @NotNull
    public final CampaignUtil.CampaignTemplate getTemplate() {
        return this.template;
    }

    @NotNull
    public final WeakReference<CampaignContract.CampaignView> getView() {
        return this.view;
    }

    public final void onButtonClick(@NotNull String action) {
        Intrinsics.checkParameterIsNotNull(action, "action");
        AnalyticsManager analyticsManager = AnalyticsManager.INSTANCE;
        Event.Campaign campaign = this.localNotification;
        if (campaign == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localNotification");
        }
        analyticsManager.fire(campaign.getClickEvent());
        Event.Campaign campaign2 = this.localNotification;
        if (campaign2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("localNotification");
        }
        if (campaign2 instanceof Event.Campaign.RemoteCampaign) {
            MessageTrackingHandler.getInstance().generateAndEnqueueRequest(this.template.getBatchId(), action);
        }
        handleButtonAction(action);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void onViewCreated() {
        CampaignContract.CampaignView campaignView = this.view.get();
        if (campaignView != null) {
            this.localNotification = Event.Campaign.Companion.valueOf(this.template.getBatchId());
            AnalyticsManager analyticsManager = AnalyticsManager.INSTANCE;
            Event.Campaign campaign = this.localNotification;
            if (campaign == null) {
                Intrinsics.throwUninitializedPropertyAccessException("localNotification");
            }
            analyticsManager.fire(campaign.getReadEvent());
            MessageRealm.markMessageRead(campaignView.getRealmTemp(), this.template.getBatchId());
            Event.Campaign campaign2 = this.localNotification;
            if (campaign2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("localNotification");
            }
            if (campaign2 instanceof Event.Campaign.RemoteCampaign) {
                MessageTrackingHandler.getInstance().generateAndEnqueueRequest(this.template.getBatchId());
            }
            String logo = this.template.getLogo();
            int hashCode = logo.hashCode();
            if (hashCode == 0 ? !logo.equals("") : hashCode != 49 || !logo.equals("1")) {
                campaignView.loadLogo(this.template.getLogo(), this.manager.getDefaultImage());
            } else {
                campaignView.setLogo(this.manager.getDefaultImage());
            }
            if (!(this.template.getSecondaryImage().length() == 0)) {
                String secondaryImage = this.template.getSecondaryImage();
                switch (secondaryImage.hashCode()) {
                    case 49:
                        if (secondaryImage.equals("1")) {
                            campaignView.setSecondaryImage(this.manager.getDefaultImage());
                            break;
                        }
                        campaignView.loadSecondaryImage(this.template.getSecondaryImage(), this.manager.getDefaultImage());
                        break;
                    case 50:
                        if (secondaryImage.equals("2")) {
                            campaignView.setSecondaryImage(C1566R.C1568drawable.ic_hss_logo_premium);
                            break;
                        }
                        campaignView.loadSecondaryImage(this.template.getSecondaryImage(), this.manager.getDefaultImage());
                        break;
                    default:
                        campaignView.loadSecondaryImage(this.template.getSecondaryImage(), this.manager.getDefaultImage());
                        break;
                }
            }
            campaignView.setupToolbar(this.manager.shouldShowOverflowMenu());
            campaignView.setTitle(this.template.getTitle());
            campaignView.setMessage(this.template.getMessage());
            processButtons();
        }
    }

    public final void setLocalNotification(@NotNull Event.Campaign campaign) {
        Intrinsics.checkParameterIsNotNull(campaign, "<set-?>");
        this.localNotification = campaign;
    }
}
