package com.privacystar.core.p011ui.util;

import android.app.Activity;
import android.support.p001v4.app.DialogFragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentTransaction;
import com.apptentive.android.sdk.ApptentiveNotifications;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/ui/util/DialogUtil;", "", "()V", "showAllowingStateLoss", "", "Landroid/support/v4/app/DialogFragment;", "fm", "Landroid/support/v4/app/FragmentManager;", "tag", "", ApptentiveNotifications.NOTIFICATION_KEY_ACTIVITY, "Landroid/app/Activity;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.DialogUtil */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/DialogUtil.class */
public final class DialogUtil {
    public static final DialogUtil INSTANCE = new DialogUtil();

    private DialogUtil() {
    }

    @JvmOverloads
    public static /* synthetic */ void showAllowingStateLoss$default(DialogUtil dialogUtil, DialogFragment dialogFragment, FragmentManager fragmentManager, String str, Activity activity, int i, Object obj) {
        if ((i & 4) != 0) {
            activity = null;
        }
        dialogUtil.showAllowingStateLoss(dialogFragment, fragmentManager, str, activity);
    }

    @JvmOverloads
    public final void showAllowingStateLoss(@NotNull DialogFragment dialogFragment, @NotNull FragmentManager fragmentManager, @NotNull String str) {
        showAllowingStateLoss$default(this, dialogFragment, fragmentManager, str, null, 4, null);
    }

    @JvmOverloads
    public final void showAllowingStateLoss(@NotNull DialogFragment receiver$0, @NotNull FragmentManager fm, @NotNull String tag, @Nullable Activity activity) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(fm, "fm");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        boolean z = true;
        boolean z2 = activity == null;
        if (activity == null || activity.isFinishing()) {
            z = false;
        }
        if (z2 ^ z) {
            FragmentTransaction beginTransaction = fm.beginTransaction();
            Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "fm.beginTransaction()");
            beginTransaction.add(receiver$0, tag);
            beginTransaction.commitAllowingStateLoss();
            return;
        }
        Timber.m25w("Could not display dialog because activity was finishing.", new Object[0]);
    }
}
