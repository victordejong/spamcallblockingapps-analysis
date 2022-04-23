package com.privacystar.core.p011ui.debug.actions;

import android.content.Context;
import android.widget.Toast;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.p011ui.PSActivity;
import com.privacystar.core.p011ui.debug.DebugAction;
import com.privacystar.core.util.DateUtil;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/debug/actions/ChangeAccountStatusTrial;", "Lcom/privacystar/core/ui/debug/DebugAction;", "()V", "getDescription", "", "getTitle", "onPerformAction", "", "context", "Landroid/content/Context;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.debug.actions.ChangeAccountStatusTrial */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/debug/actions/ChangeAccountStatusTrial.class */
public final class ChangeAccountStatusTrial extends DebugAction {
    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getDescription() {
        return "Switch user account status to trial";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    @NotNull
    public String getTitle() {
        return "Change account status: Trial";
    }

    @Override // com.privacystar.core.p011ui.debug.DebugAction
    public void onPerformAction(@Nullable Context context) {
        super.onPerformAction(context);
        PSActivity activity = getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        SubscriptionRealm.setSubscriptionStatus(activity.getRealm(), SubscriptionType.TRIAL, new Date(System.currentTimeMillis() + DateUtil.DAY_IN_MILLIS));
        PSActivity activity2 = getActivity();
        Intrinsics.checkExpressionValueIsNotNull(activity2, "activity");
        LicenseFeatureRealm.clearAndSetFeatures(activity2.getRealm(), "1,6,7,8,9,12,13,14,15,17,18,21,22,28,30,31,33,34,35,36,37");
        Toast.makeText(context, "Subscription set to TRIAL", 0).show();
    }
}
