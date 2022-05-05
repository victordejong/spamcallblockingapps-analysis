package com.privacystar.core.p011ui.intro.verification;

import android.view.View;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.SystemUtil;
import kotlin.Metadata;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.CodeVerificationFragment$onEditNumberClick$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/CodeVerificationFragment$onEditNumberClick$1.class */
final class CodeVerificationFragment$onEditNumberClick$1 implements View.OnClickListener {
    public static final CodeVerificationFragment$onEditNumberClick$1 INSTANCE = new CodeVerificationFragment$onEditNumberClick$1();

    CodeVerificationFragment$onEditNumberClick$1() {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Timber.m37d("Edit number clicked.", new Object[0]);
        PreferenceUtil.putIsNumberVerifying(false);
        SystemUtil.internallyRestartApp$default(SystemUtil.INSTANCE, null, 1, null);
    }
}
