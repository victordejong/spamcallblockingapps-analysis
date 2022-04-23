package com.privacystar.core.p011ui.intro;

import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroContract;
import com.privacystar.core.util.PermissionUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006H\u0016J\u0013\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0016¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\u0004H\u0016¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/ui/intro/IntroManagerImpl;", "Lcom/privacystar/core/ui/intro/intro_core/IntroContract$Manager;", "()V", "entryDependsOnActivityLoaded", "", "lastFragmentBeforePermissions", "Ljava/lang/Class;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "minPermissionsRequired", "", "", "()[Ljava/lang/String;", "registerAfterPermissionsGranted", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.IntroManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/IntroManagerImpl.class */
public final class IntroManagerImpl implements IntroContract.Manager {
    public static final IntroManagerImpl INSTANCE = new IntroManagerImpl();

    private IntroManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.Manager
    public boolean entryDependsOnActivityLoaded() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.Manager
    @NotNull
    public Class<? extends IntroActivity.IntroActivityContent> lastFragmentBeforePermissions() {
        return EulaFragment.class;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.Manager
    @NotNull
    public String[] minPermissionsRequired() {
        String[] generalPermissions = PermissionUtils.getGeneralPermissions();
        Intrinsics.checkExpressionValueIsNotNull(generalPermissions, "getGeneralPermissions()");
        return generalPermissions;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroContract.Manager
    public boolean registerAfterPermissionsGranted() {
        return true;
    }
}
