package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.workers.CampaignWorkerManager;
import com.privacystar.core.util.CampaignUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/LocalCampaignThreeDayInactive;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getDescription", "", "getTitle", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.LocalCampaignThreeDayInactive */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/LocalCampaignThreeDayInactive.class */
public final class LocalCampaignThreeDayInactive extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getDescription() {
        return "Triggered on 3rd day of inactivity";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Local Campaign: Three Day Inactive";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        CampaignWorkerManager campaignWorkerManager = CampaignWorkerManager.INSTANCE;
        String string = context.getString(C1566R.string.af_local_notifications_three_day_inactive_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…three_day_inactive_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_three_day_inactive_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…ree_day_inactive_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_three_day_inactive_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…day_inactive_button1Text)");
        CampaignWorkerManager.scheduleRepeatingMessage$default(CampaignWorkerManager.INSTANCE, CampaignWorkerManager.createMessageData$default(campaignWorkerManager, "1", string, string2, string3, CampaignUtil.CAMPAIGN_ACTION_INBOX_RATE, null, null, null, 224, null), Event.Campaign.InactiveUseLocalCampaign.INSTANCE.getBatchId(), CampaignWorkerManager.TAG_THREE_DAY_INACTIVE, 0L, context.getString(C1566R.string.af_local_notifications_three_day_inactive_notification_message), null, 32, null);
    }
}
