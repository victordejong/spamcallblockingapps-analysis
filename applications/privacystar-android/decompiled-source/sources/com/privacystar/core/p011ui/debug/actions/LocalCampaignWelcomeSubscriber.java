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
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/LocalCampaignWelcomeSubscriber;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getDescription", "", "getTitle", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.LocalCampaignWelcomeSubscriber */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/LocalCampaignWelcomeSubscriber.class */
public final class LocalCampaignWelcomeSubscriber extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getDescription() {
        return "Triggered after a free user subscribes";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Local CampaignContract - Welcome subscriber";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        CampaignWorkerManager campaignWorkerManager = CampaignWorkerManager.INSTANCE;
        String string = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_title);
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…welcome_subscriber_title)");
        String string2 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_message);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…lcome_subscriber_message)");
        String string3 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_button1Text);
        Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.stri…e_subscriber_button1Text)");
        String string4 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_button1Action);
        Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.stri…subscriber_button1Action)");
        String string5 = context.getString(C1566R.string.af_local_notifications_welcome_subscriber_secondary_image);
        Intrinsics.checkExpressionValueIsNotNull(string5, "context.getString(R.stri…bscriber_secondary_image)");
        CampaignWorkerManager.scheduleMessage$default(CampaignWorkerManager.INSTANCE, CampaignWorkerManager.createMessageData$default(campaignWorkerManager, "1", string, string2, string3, string4, string5, null, null, 192, null), Event.Campaign.WelcomeSubscriberLocalCampaign.INSTANCE.getBatchId(), CampaignWorkerManager.TAG_WELCOME_SUBSCRIBER, 0L, TimeUnit.MINUTES, null, null, 96, null);
    }
}
