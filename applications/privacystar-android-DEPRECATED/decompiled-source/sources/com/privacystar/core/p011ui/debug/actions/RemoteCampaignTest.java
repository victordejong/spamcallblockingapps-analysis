package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.CampaignUtil;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/RemoteCampaignTest;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getTitle", "", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.RemoteCampaignTest */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/RemoteCampaignTest.class */
public final class RemoteCampaignTest extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Receive a test campaign message (";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Toast.makeText(context, "Creating a test campaign", 0).show();
        CampaignUtil campaignUtil = CampaignUtil.INSTANCE;
        String uuid = UUID.randomUUID().toString();
        Intrinsics.checkExpressionValueIsNotNull(uuid, "UUID.randomUUID().toString()");
        campaignUtil.testMessage(context, StringsKt.replace$default(uuid, "[^0-9]", "", false, 4, (Object) null), "", "Test Title", "This is a test description", "Dashboard", CampaignUtil.CAMPAIGN_ACTION_DASHBOARD, "Home", "1");
    }
}
