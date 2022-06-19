package p193e.p194a.p1060m4;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.editprofile.p164ui.EditProfileActivity;
import com.truecaller.editprofile.p164ui.EditProfileLaunchContext;
import s1.z.c.l;
/* renamed from: e.a.m4.a */
/* loaded from: classes12-dex2jar.jar:e/a/m4/a.class */
public final class C18200a {
    /* renamed from: a */
    public final Intent m15457a(Context context) {
        return m15456b(context, EditProfileLaunchContext.OTHERS);
    }

    /* renamed from: b */
    public final Intent m15456b(Context context, EditProfileLaunchContext editProfileLaunchContext) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(editProfileLaunchContext, "launchContext");
        EditProfileActivity.C3896a c3896a = EditProfileActivity.f11910a;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(editProfileLaunchContext, "launchContext");
        Intent intent = new Intent(context, EditProfileActivity.class);
        intent.putExtra("launchContext", editProfileLaunchContext);
        return intent;
    }

    /* renamed from: c */
    public final Intent m15455c(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        EditProfileActivity.C3896a c3896a = EditProfileActivity.f11910a;
        EditProfileLaunchContext editProfileLaunchContext = EditProfileLaunchContext.OTHERS;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(editProfileLaunchContext, "launchContext");
        Intent intent = new Intent(context, EditProfileActivity.class);
        intent.putExtra("launchContext", editProfileLaunchContext);
        intent.putExtra("conversion_from_business", true);
        return intent;
    }
}
