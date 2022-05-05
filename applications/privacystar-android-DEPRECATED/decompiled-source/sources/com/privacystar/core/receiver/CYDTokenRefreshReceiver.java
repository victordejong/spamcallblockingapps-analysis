package com.privacystar.core.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.firstorion.libcyd.TokenRefreshResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/receiver/CYDTokenRefreshReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/receiver/CYDTokenRefreshReceiver.class */
public final class CYDTokenRefreshReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(@NotNull Context context, @NotNull Intent intent) {
        String str;
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        String stringExtra = intent.getStringExtra(TokenRefreshResult.EXTRA_STATUS);
        Timber.m37d("Received ENGAGE Token Refresh result: [%s]", stringExtra);
        if (stringExtra != null) {
            int hashCode = stringExtra.hashCode();
            if (hashCode != -1867169789) {
                if (hashCode == -1086574198 && stringExtra.equals(TokenRefreshResult.STATUS_FAILURE)) {
                    String stringExtra2 = intent.getStringExtra(TokenRefreshResult.EXTRA_FAILURE_REASON);
                    if (stringExtra2 != null && stringExtra2.hashCode() == 491463348 && stringExtra2.equals(TokenRefreshResult.FAILURE_REASON_NOT_VERIFIED)) {
                        str = "ENGAGE Token Refresh failed because token verification failed.";
                    } else {
                        str = "ENGAGE Token Refresh failed for an undocumented reason: " + stringExtra2;
                    }
                    Timber.m31i(str, new Object[0]);
                    return;
                }
            } else if (stringExtra.equals("success")) {
                Timber.m31i("ENGAGE Token Refresh successful.", new Object[0]);
                return;
            }
        }
        Timber.m25w("Received a Token Refresh result undocumented type. (Not success or failure.)", new Object[0]);
    }
}
