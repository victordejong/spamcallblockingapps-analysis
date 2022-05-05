package com.privacystar.core.p011ui.detail_view.settings;

import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsModel$saveProtectionLevelSetting$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsModel$saveProtectionLevelSetting$1.class */
final class BasicSettingsModel$saveProtectionLevelSetting$1 extends MutablePropertyReference0 {
    BasicSettingsModel$saveProtectionLevelSetting$1(BasicSettingsModel basicSettingsModel) {
        super(basicSettingsModel);
    }

    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return BasicSettingsModel.access$getSelectedProtectionLevel$p((BasicSettingsModel) this.receiver);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "selectedProtectionLevel";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(BasicSettingsModel.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getSelectedProtectionLevel()Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;";
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(@Nullable Object obj) {
        ((BasicSettingsModel) this.receiver).selectedProtectionLevel = (ProtectionLevel) obj;
    }
}
