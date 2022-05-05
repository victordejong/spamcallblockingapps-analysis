package com.privacystar.core.p011ui.detail_view.settings;

import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsManagerImpl;", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Manager;", "()V", "doesContainProtectionLevels", "", "shouldShowOptionVoicemail", "shouldShowSettingSavedSnackbar", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsManagerImpl */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsManagerImpl.class */
public final class BasicSettingsManagerImpl implements BasicSettingsContract.Manager {
    public static final BasicSettingsManagerImpl INSTANCE = new BasicSettingsManagerImpl();

    private BasicSettingsManagerImpl() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Manager
    public boolean doesContainProtectionLevels() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Manager
    public boolean shouldShowOptionVoicemail() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.Manager
    public boolean shouldShowSettingSavedSnackbar() {
        return false;
    }
}
