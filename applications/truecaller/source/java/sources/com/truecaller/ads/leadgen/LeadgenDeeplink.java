package com.truecaller.ads.leadgen;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.airbnb.deeplinkdispatch.DeepLink;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.offline.deeplink.OfflineAdsDeeplink;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018��2\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/ads/leadgen/LeadgenDeeplink;", "", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/os/Bundle;", "extras", "Landroid/content/Intent;", "createDeeplink", "(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/leadgen/LeadgenDeeplink.class */
public final class LeadgenDeeplink {
    public static final LeadgenDeeplink INSTANCE = new LeadgenDeeplink();

    private LeadgenDeeplink() {
    }

    @DeepLink({"truecaller://leadgen/{leadgenId}"})
    public static final Intent createDeeplink(Context context, Bundle bundle) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(bundle, "extras");
        Intent intent = new Intent(context, LeadgenActivity.class);
        intent.putExtra(OfflineAdsDeeplink.EXTRA_LEADGEN_ID, bundle.getString(OfflineAdsDeeplink.PARAM_DEEPLINK_LEADGEN_ID));
        intent.addFlags(268435456);
        return intent;
    }
}
