package com.privacystar.core.p011ui.intro.custom_protection;

import com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionManagerImpl;", "Lcom/privacystar/core/ui/intro/custom_protection/CustomProtectionContract$Manager;", "()V", "isNuisanceTogglable", "", "isTogglePaywalled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.custom_protection.CustomProtectionManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/custom_protection/CustomProtectionManagerImpl.class */
public final class CustomProtectionManagerImpl implements CustomProtectionContract.Manager {
    public static final CustomProtectionManagerImpl INSTANCE = new CustomProtectionManagerImpl();

    private CustomProtectionManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.Manager
    public boolean isNuisanceTogglable() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.custom_protection.CustomProtectionContract.Manager
    public boolean isTogglePaywalled() {
        return true;
    }
}
