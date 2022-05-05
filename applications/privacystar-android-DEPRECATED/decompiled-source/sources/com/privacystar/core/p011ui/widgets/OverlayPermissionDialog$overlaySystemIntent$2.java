package com.privacystar.core.p011ui.widgets;

import android.content.Intent;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "Landroid/content/Intent;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.OverlayPermissionDialog$overlaySystemIntent$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/OverlayPermissionDialog$overlaySystemIntent$2.class */
final class OverlayPermissionDialog$overlaySystemIntent$2 extends Lambda implements Function0<Intent> {
    public static final OverlayPermissionDialog$overlaySystemIntent$2 INSTANCE = new OverlayPermissionDialog$overlaySystemIntent$2();

    OverlayPermissionDialog$overlaySystemIntent$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final Intent invoke() {
        Intent overlaySettingsIntent;
        overlaySettingsIntent = OverlayPermissionDialog.INSTANCE.getOverlaySettingsIntent();
        return overlaySettingsIntent;
    }
}
