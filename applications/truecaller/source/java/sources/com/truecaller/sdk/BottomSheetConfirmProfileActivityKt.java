package com.truecaller.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020��2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/os/Bundle;", "extras", "Landroid/content/Intent;", "getLaunchIntent", "(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;", "sdk-internal_release"}, k = 2, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/sdk/BottomSheetConfirmProfileActivityKt.class */
public final class BottomSheetConfirmProfileActivityKt {
    @Keep
    @DeepLink({"truecallersdk://truesdk/mweb_verify_btmsheet"})
    public static final Intent getLaunchIntent(Context context, Bundle bundle) {
        Intent m8581q0 = C22128a.m8581q0(context, AnalyticsConstants.CONTEXT, context, BottomSheetConfirmProfileActivity.class);
        if (bundle != null) {
            m8581q0.addFlags(268468224);
            m8581q0.putExtras(bundle);
        }
        return m8581q0;
    }
}
