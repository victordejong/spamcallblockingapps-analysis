package com.privacystar.core.service.calleryd;

import com.firstorion.libcyd.CYDApplication;
import com.firstorion.libcyd.CYDApplicationBuilder;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.firebase.FirebaseConstants;
import com.privacystar.core.util.BuildUtil;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "Lcom/firstorion/libcyd/CYDApplication;", "kotlin.jvm.PlatformType", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/calleryd/CallerYDHelper$cydApp$2.class */
final class CallerYDHelper$cydApp$2 extends Lambda implements Function0<CYDApplication> {
    public static final CallerYDHelper$cydApp$2 INSTANCE = new CallerYDHelper$cydApp$2();

    CallerYDHelper$cydApp$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CYDApplication invoke() {
        Timber.m37d("Initializing ENGAGE with package name [%s].", BuildUtil.INSTANCE.getTestPackageName());
        new CYDApplicationBuilder(PSApplication.context()).withAppId("com.privacystar.android.spg").withAppVersion(BuildConfig.VERSION_NAME).withFirstOrionFirebase().withTokenType(FirebaseConstants.LIBCYD_TOKEN_TYPE).initializeCallerYD();
        return CYDApplication.getInstance();
    }
}
