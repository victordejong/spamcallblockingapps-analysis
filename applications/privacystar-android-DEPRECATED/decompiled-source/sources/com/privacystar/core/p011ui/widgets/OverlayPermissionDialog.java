package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.annotation.RequiresApi;
import android.support.p001v4.app.FragmentManager;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\u0004H\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/OverlayPermissionDialog;", "", "()V", "overlaySystemIntent", "Landroid/content/Intent;", "getOverlaySystemIntent", "()Landroid/content/Intent;", "overlaySystemIntent$delegate", "Lkotlin/Lazy;", "getOverlaySettingsIntent", "newCallerYDInfoDialog", "Lcom/privacystar/core/ui/widgets/dialog/InformationDialog;", "context", "Landroid/content/Context;", "newOverlayPermissionsDialog", "fm", "Landroid/support/v4/app/FragmentManager;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.OverlayPermissionDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/OverlayPermissionDialog.class */
public final class OverlayPermissionDialog {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(OverlayPermissionDialog.class), "overlaySystemIntent", "getOverlaySystemIntent()Landroid/content/Intent;"))};
    public static final OverlayPermissionDialog INSTANCE = new OverlayPermissionDialog();
    @NotNull
    private static final Lazy overlaySystemIntent$delegate = LazyKt.lazy(OverlayPermissionDialog$overlaySystemIntent$2.INSTANCE);

    private OverlayPermissionDialog() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    public final Intent getOverlaySettingsIntent() {
        StringBuilder sb = new StringBuilder();
        sb.append("package:");
        PSApplication instance = PSApplication.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "PSApplication.getInstance()");
        sb.append(instance.getPackageName());
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse(sb.toString()));
        intent.addFlags(268435456);
        return intent;
    }

    @NotNull
    public final Intent getOverlaySystemIntent() {
        Lazy lazy = overlaySystemIntent$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (Intent) lazy.getValue();
    }

    @RequiresApi(23)
    @NotNull
    public final InformationDialog newCallerYDInfoDialog(@NotNull Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withTitle(C1566R.string.overlay_permission_cyd_info_title).withBody(C1566R.string.overlay_permission_cyd_info_body).withButtons(new DialogButton(context.getString(C1566R.string.info_dialog_overlay_cyd_yes), OverlayPermissionDialog$newCallerYDInfoDialog$1.INSTANCE), new DialogButton(context.getString(C1566R.string.info_dialog_overlay_cyd_no), OverlayPermissionDialog$newCallerYDInfoDialog$2.INSTANCE)).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…       )\n        .build()");
        return build;
    }

    @RequiresApi(23)
    @NotNull
    public final InformationDialog newOverlayPermissionsDialog(@NotNull Context context, @NotNull final FragmentManager fm) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(fm, "fm");
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withTitle(C1566R.string.overlay_permission_request_title).withBody(C1566R.string.overlay_permission_request_body).withButtons(DialogButton.createFromIntent(context.getString(C1566R.string.info_dialog_overlay_permission_yes), getOverlaySystemIntent()), new DialogButton(context.getString(C1566R.string.info_dialog_overlay_permission_no), new ButtonAction() { // from class: com.privacystar.core.ui.widgets.OverlayPermissionDialog$newOverlayPermissionsDialog$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context c) {
                Timber.m28v("User cancelled the overlay permissions dialog.", new Object[0]);
                if (CallerYDHelper.INSTANCE.isCydActive()) {
                    OverlayPermissionDialog overlayPermissionDialog = OverlayPermissionDialog.INSTANCE;
                    Intrinsics.checkExpressionValueIsNotNull(c, "c");
                    overlayPermissionDialog.newCallerYDInfoDialog(c).show(FragmentManager.this, "CYD_Info");
                }
            }
        })).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…       )\n        .build()");
        return build;
    }
}
