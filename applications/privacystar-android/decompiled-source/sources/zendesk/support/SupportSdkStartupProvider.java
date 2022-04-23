package zendesk.support;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.SDKStartUpProvider;
import zendesk.core.Zendesk;
@SuppressLint({"RestrictedApi"})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkStartupProvider.class */
public final class SupportSdkStartupProvider extends SDKStartUpProvider {
    @Nullable
    private CreateRequestActionHandler actionHandler;

    @Override // zendesk.core.SDKStartUpProvider
    protected void onStartUp(Context context) {
        ActionHandlerRegistry actionHandlerRegistry = Zendesk.INSTANCE.actionHandlerRegistry();
        if (this.actionHandler != null) {
            actionHandlerRegistry.remove(this.actionHandler);
        }
        this.actionHandler = new CreateRequestActionHandler(context);
        actionHandlerRegistry.add(this.actionHandler);
    }
}
