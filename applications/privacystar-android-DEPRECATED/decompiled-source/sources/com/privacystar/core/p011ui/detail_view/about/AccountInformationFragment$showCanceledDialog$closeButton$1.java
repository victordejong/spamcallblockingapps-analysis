package com.privacystar.core.p011ui.detail_view.about;

import android.content.Context;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.util.SystemUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "", "context", "Landroid/content/Context;", "kotlin.jvm.PlatformType", "performAction"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.AccountInformationFragment$showCanceledDialog$closeButton$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AccountInformationFragment$showCanceledDialog$closeButton$1.class */
final class AccountInformationFragment$showCanceledDialog$closeButton$1 implements ButtonAction {
    public static final AccountInformationFragment$showCanceledDialog$closeButton$1 INSTANCE = new AccountInformationFragment$showCanceledDialog$closeButton$1();

    AccountInformationFragment$showCanceledDialog$closeButton$1() {
    }

    @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
    public final void performAction(Context context) {
        SystemUtil systemUtil = SystemUtil.INSTANCE;
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        systemUtil.internallyRestartApp(context);
    }
}
