package com.privacystar.core.p011ui.intro.af_overlay_permissions;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\b\n��\n\u0002\u0010\u0002\n��\u0010��\u001a\u00020\u0001¢\u0006\u0002\b\u0002"}, m254d2 = {"<anonymous>", "", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_overlay_permissions.AFOverlayPermissionsFragment$showOverlayDialog$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_overlay_permissions/AFOverlayPermissionsFragment$showOverlayDialog$2.class */
final class AFOverlayPermissionsFragment$showOverlayDialog$2 extends FunctionReference implements Function0<Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AFOverlayPermissionsFragment$showOverlayDialog$2(AFOverlayPermissionsPresenter aFOverlayPermissionsPresenter) {
        super(0, aFOverlayPermissionsPresenter);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "onDialogFinished";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(AFOverlayPermissionsPresenter.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "onDialogFinished()V";
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((AFOverlayPermissionsPresenter) this.receiver).onDialogFinished();
    }
}
