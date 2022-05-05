package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.util.NumberListUtil;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nJ&\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018J\u0016\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u001e"}, m254d2 = {"Lcom/privacystar/core/ui/widgets/StaticDialogs;", "", "()V", "newAddedToNumberListInstance", "Lcom/privacystar/core/ui/widgets/dialog/InformationDialog;", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "listType", "Lcom/privacystar/core/ui/widgets/NumberListType;", "newAlreadyInListInstance", "number", "", "newAlreadyInOtherListInstance", "realm", "Lio/realm/Realm;", "newBlockedTypeInstance", "type", "", "newShareAppInstance", "newSmsInListInstance", "newSubscribeRetryDialog", "cancelAction", "Lcom/privacystar/core/ui/widgets/dialog/ButtonAction;", "subscribeAction", "newUnknownBlockingInstance", "enabled", "", "newUnsubscribeDialog", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.widgets.StaticDialogs */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/StaticDialogs.class */
public final class StaticDialogs {
    public static final StaticDialogs INSTANCE = new StaticDialogs();

    private StaticDialogs() {
    }

    @NotNull
    public final InformationDialog newAddedToNumberListInstance(@NotNull Context context, @Nullable Intent intent, @NotNull NumberListType listType) {
        InformationDialog informationDialog;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(listType, "listType");
        switch (listType) {
            case BLOCK:
                informationDialog = new InformationDialog.Builder(DialogType.BLOCKED).withTitle(C1566R.string.info_dialog_block_title).withBody(C1566R.string.info_dialog_block_explanation).withButtons(DialogButton.createFromIntent(context.getString(C1566R.string.info_dialog_okay), intent)).build();
                Intrinsics.checkExpressionValueIsNotNull(informationDialog, "InformationDialog.Builde…tent))\n          .build()");
                break;
            case APPROVED:
                informationDialog = new InformationDialog.Builder(DialogType.APPROVED).withTitle(C1566R.string.info_dialog_approved_title).withBody(C1566R.string.info_dialog_approved_explanation).withButtons(DialogButton.createFromIntent(context.getString(C1566R.string.info_dialog_okay), intent)).build();
                Intrinsics.checkExpressionValueIsNotNull(informationDialog, "InformationDialog.Builde…tent))\n          .build()");
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return informationDialog;
    }

    @NotNull
    public final InformationDialog newAlreadyInListInstance(@NotNull Context context, @NotNull String number, @NotNull NumberListType listType) {
        InformationDialog informationDialog;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(listType, "listType");
        switch (listType) {
            case BLOCK:
                informationDialog = new InformationDialog.Builder(DialogType.INFORMATION).withBody(context.getString(C1566R.string.info_dialog_already_blocked_explanation, number)).withButtons(new DialogButton(context.getString(C1566R.string.info_dialog_okay))).build();
                Intrinsics.checkExpressionValueIsNotNull(informationDialog, "InformationDialog.Builde…kay)))\n          .build()");
                break;
            case APPROVED:
                informationDialog = new InformationDialog.Builder(DialogType.INFORMATION).withBody(context.getString(C1566R.string.info_dialog_already_approved_explanation, number)).withButtons(new DialogButton(context.getString(C1566R.string.info_dialog_okay))).build();
                Intrinsics.checkExpressionValueIsNotNull(informationDialog, "InformationDialog.Builde…kay)))\n          .build()");
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return informationDialog;
    }

    @NotNull
    public final InformationDialog newAlreadyInOtherListInstance(@NotNull Context context, @NotNull final Realm realm, @NotNull final String number, @NotNull final NumberListType listType) {
        String str;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(listType, "listType");
        String string = context.getString(C1566R.string.general_text_block_list);
        String string2 = context.getString(C1566R.string.general_text_approved_list);
        switch (listType) {
            case BLOCK:
                str = context.getString(C1566R.string.info_dialog_already_in_list_explanation, string2, string);
                break;
            case APPROVED:
                str = context.getString(C1566R.string.info_dialog_already_in_list_explanation, string, string2);
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withBody(str).withButtons(new DialogButton(context.getString(C1566R.string.general_text_yes), new ButtonAction() { // from class: com.privacystar.core.ui.widgets.StaticDialogs$newAlreadyInOtherListInstance$swapBtn$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context2) {
                NumberListUtil.INSTANCE.swapBetweenLists(number, listType, realm);
            }
        }), new DialogButton(context.getString(C1566R.string.general_text_no))).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…cancelBtn)\n      .build()");
        return build;
    }

    @NotNull
    public final InformationDialog newBlockedTypeInstance(@NotNull Context context, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        InformationDialog informationDialog = new InformationDialog();
        Bundle bundle = new Bundle();
        DialogButton dialogButton = DialogButton.StaticDialogButton.OKAY.getDialogButton(context);
        bundle.putInt(InformationDialog.DIALOG_TYPE_KEY, DialogType.INFORMATION.getId());
        bundle.putString("title", null);
        bundle.putString("body", InformationDialog.formatBlockedByCategoryBody(context, i));
        bundle.putParcelableArray(InformationDialog.BUTTONS_KEY, new DialogButton[]{dialogButton});
        informationDialog.setArguments(bundle);
        return informationDialog;
    }

    @NotNull
    public final InformationDialog newShareAppInstance(@NotNull final Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withTitle(context.getString(C1566R.string.info_dialog_share_app_title)).withBody(context.getString(C1566R.string.info_dialog_share_app_body)).withButtons(new DialogButton(context.getString(C1566R.string.info_dialog_share_now), new ButtonAction() { // from class: com.privacystar.core.ui.widgets.StaticDialogs$newShareAppInstance$shareAction$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context2) {
                SystemUtil systemUtil = SystemUtil.INSTANCE;
                Context context3 = context;
                String string = context.getString(C1566R.string.share_subject);
                Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.string.share_subject)");
                String string2 = context.getString(C1566R.string.share_message);
                Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.string.share_message)");
                systemUtil.systemShare(context3, string, string2);
            }
        })).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…Action))\n        .build()");
        return build;
    }

    @NotNull
    public final InformationDialog newSmsInListInstance(@NotNull Context context, @NotNull NumberListType listType) {
        InformationDialog informationDialog;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(listType, "listType");
        switch (listType) {
            case BLOCK:
                informationDialog = new InformationDialog.Builder(DialogType.INFORMATION).withBody(context.getString(C1566R.string.info_dialog_text_block_error_explanation)).withButtons(new DialogButton(context.getString(C1566R.string.general_text_close))).build();
                Intrinsics.checkExpressionValueIsNotNull(informationDialog, "InformationDialog.Builde…ose)))\n          .build()");
                break;
            case APPROVED:
                informationDialog = new InformationDialog.Builder(DialogType.INFORMATION).withBody(context.getString(C1566R.string.info_dialog_text_approved_error_explanation)).withButtons(new DialogButton(context.getString(C1566R.string.general_text_close))).build();
                Intrinsics.checkExpressionValueIsNotNull(informationDialog, "InformationDialog.Builde…ose)))\n          .build()");
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return informationDialog;
    }

    @NotNull
    public final InformationDialog newSubscribeRetryDialog(@NotNull Context context, @NotNull ButtonAction cancelAction, @NotNull ButtonAction subscribeAction) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(cancelAction, "cancelAction");
        Intrinsics.checkParameterIsNotNull(subscribeAction, "subscribeAction");
        InformationDialog build = new InformationDialog.Builder().withTitle(C1566R.string.subscription_retry_dialog_title).withBody(C1566R.string.subscription_retry_dialog_body).withButtons(new DialogButton(context.getString(C1566R.string.subscription_cancel_button), cancelAction), new DialogButton(context.getString(C1566R.string.subscription_upgrade_button), subscribeAction)).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…ibeButton)\n      .build()");
        return build;
    }

    @NotNull
    public final InformationDialog newUnknownBlockingInstance(@NotNull Context context, boolean z) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withTitle(C1566R.string.information_dialog_title).withBody(z ? C1566R.string.info_dialog_unknown_blocking_enabled : C1566R.string.info_dialog_unknown_blocking_disabled).withButtons(new DialogButton(context.getString(C1566R.string.info_dialog_okay))).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…_okay)))\n        .build()");
        return build;
    }

    @NotNull
    public final InformationDialog newUnsubscribeDialog(@NotNull final Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        InformationDialog build = new InformationDialog.Builder(DialogType.INFORMATION).withTitle(C1566R.string.cancel_subscription_dialog_title).withBody(C1566R.string.cancel_subscription_dialog_body).withButtons(new DialogButton(context.getString(C1566R.string.cancel_subscription_dialog_button), new ButtonAction() { // from class: com.privacystar.core.ui.widgets.StaticDialogs$newUnsubscribeDialog$unsubButton$1
            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public final void performAction(Context context2) {
                SystemUtil systemUtil = SystemUtil.INSTANCE;
                Context context3 = context;
                String string = context.getString(C1566R.string.cancel_subscription_dialog_url);
                Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…_subscription_dialog_url)");
                SystemUtil.openExternalWebpage$default(systemUtil, context3, string, null, 4, null);
                AnalyticsUtil.INSTANCE.trackUnsubscribeEngaged();
            }
        })).build();
        Intrinsics.checkExpressionValueIsNotNull(build, "InformationDialog.Builde…bButton)\n        .build()");
        return build;
    }
}
