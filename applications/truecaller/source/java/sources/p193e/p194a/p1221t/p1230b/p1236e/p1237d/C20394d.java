package p193e.p194a.p1221t.p1230b.p1236e.p1237d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import com.truecaller.android.sdk.C2859R;
import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.oAuth.SdkOptionsDataBundle;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import com.truecaller.android.sdk.oAuth.clients.PartnerInformationV2;
import e.m.d.y.n;
import p193e.p194a.p1221t.p1230b.p1236e.C20385b;
import p193e.p194a.p1221t.p1230b.p1236e.C20386c;
/* renamed from: e.a.t.b.e.d.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/e/d/d.class */
public class C20394d extends AbstractC20393c {

    /* renamed from: i */
    public final C20385b f57275i;

    public C20394d(Context context, String str, TcOAuthCallback tcOAuthCallback, C20385b c20385b) {
        super(context, str, tcOAuthCallback, 1);
        this.f57275i = c20385b;
    }

    /* renamed from: h */
    public Intent m11209h(Activity activity) {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        try {
            packageInfo = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 64);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        String encodeToString = (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length == 0) ? null : Base64.encodeToString(n.Z(signatureArr[0].toByteArray()).getBytes(), 2);
        if (encodeToString != null) {
            PartnerInformationV2 partnerInformationV2 = new PartnerInformationV2("3.0.0", this.f57270d, activity.getPackageName(), encodeToString, this.f57271e, activity.getString(C2859R.string.sdk_variant), activity.getString(C2859R.string.sdk_variant_version), this.f57274h, this.f57272f, this.f57273g);
            C20385b c20385b = this.f57275i;
            Intent m11211a = C20386c.m11211a(activity);
            if (m11211a == null) {
                m11211a = null;
            } else {
                m11211a.putExtra("truesdk_partner_info", partnerInformationV2);
                m11211a.putExtra("truesdk_flags", c20385b.f57261a);
                SdkOptionsDataBundle sdkOptionsDataBundle = c20385b.f57262b;
                if (sdkOptionsDataBundle != null) {
                    m11211a.putExtra("truesdk_options_info", sdkOptionsDataBundle);
                }
            }
            return m11211a;
        }
        throw new RuntimeException(TrueException.TYPE_APP_SIGNATURE_MISSING);
    }
}
