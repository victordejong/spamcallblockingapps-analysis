package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.workers.CampaignWorkerManager;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/LocalCampaignFreeUserBiweekly;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getDescription", "", "getTitle", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.LocalCampaignFreeUserBiweekly */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/LocalCampaignFreeUserBiweekly.class */
public final class LocalCampaignFreeUserBiweekly extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getDescription() {
        return "Triggered every two weeks for free users";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Local Campaign: Free Users Biweekly";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        CampaignWorkerManager campaignWorkerManager = CampaignWorkerManager.INSTANCE;
        String string = context.getString(C1566R.string.af_local_notifications_biweekly_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…fications_biweekly_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_biweekly_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…cations_biweekly_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_biweekly_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…ons_biweekly_button1Text)");
        CampaignWorkerManager.scheduleRepeatingMessageWithDelay$default(CampaignWorkerManager.INSTANCE, CampaignWorkerManager.createMessageData$default(campaignWorkerManager, "1", string, string2, string3, "2", null, null, null, 224, null), Event.Campaign.FreeUserBiweeklyLocalCampaign.INSTANCE.getBatchId(), CampaignWorkerManager.TAG_FREE_USER_BIWEEKLY, 0L, TimeUnit.MINUTES, 10L, context.getString(C1566R.string.af_local_notifications_biweekly_notification_message), null, 128, null);
    }
}
