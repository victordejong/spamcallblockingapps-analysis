package p193e.p194a.p1221t.p1230b.p1231c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.truecaller.android.sdk.C2859R;
import com.truecaller.android.sdk.ITrueCallback;
import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.android.sdk.TrueError;
import com.truecaller.android.sdk.TrueException;
import com.truecaller.android.sdk.clients.CustomDataBundle;
import e.m.d.y.n;
import java.util.Objects;
import java.util.UUID;
import n3.r.a.l;
import p193e.p194a.p1221t.p1230b.C20348a;
import p193e.p194a.p1221t.p1230b.C20349b;
/* renamed from: e.a.t.b.c.e */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/e.class */
public class C20360e extends AbstractC20359d {

    /* renamed from: h */
    public final C20358c f57204h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Deprecated
    public C20360e(Context context, String str, ITrueCallback iTrueCallback) {
        super(context, str, iTrueCallback, 1);
        C20358c c20358c = new C20358c(4, 0, null);
        this.f57204h = c20358c;
    }

    public C20360e(Context context, String str, ITrueCallback iTrueCallback, C20358c c20358c) {
        super(context, str, iTrueCallback, 1);
        this.f57204h = c20358c;
    }

    /* renamed from: h */
    public Intent m11228h(Activity activity) {
        PackageInfo packageInfo;
        Signature[] signatureArr;
        try {
            packageInfo = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 64);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        String encodeToString = (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length == 0) ? null : Base64.encodeToString(n.Y(signatureArr[0].toByteArray()).getBytes(), 2);
        if (encodeToString != null) {
            if (TextUtils.isEmpty(this.f57201e)) {
                this.f57201e = UUID.randomUUID().toString();
            }
            PartnerInformation partnerInformation = new PartnerInformation("2.6.0", this.f57200d, activity.getPackageName(), encodeToString, this.f57201e, this.f57202f, this.f57203g, activity.getString(C2859R.string.sdk_variant), activity.getString(C2859R.string.sdk_variant_version));
            C20358c c20358c = this.f57204h;
            Intent m11233b = C20349b.m11233b(activity, c20358c);
            if (m11233b == null) {
                m11233b = null;
            } else {
                Bundle bundle = new Bundle();
                partnerInformation.writeToBundle(bundle);
                bundle.putParcelable(PartnerInformation.PARTNER_INFO_EXTRA, partnerInformation);
                m11233b.putExtra("PARTNERINFO_OTHER_NUMBER", true);
                m11233b.putExtra("truesdk flags", c20358c.f57194a);
                m11233b.putExtra("truesdk_consent_title", c20358c.f57195b);
                CustomDataBundle customDataBundle = c20358c.f57196c;
                if (customDataBundle != null) {
                    bundle.putInt("CUSTOMDATA_BTN_COLOR", customDataBundle.f9995a);
                    bundle.putInt("CUSTOMDATA_BTN_TEXT_COLOR", customDataBundle.f9996b);
                    bundle.putString("CUSTOMDATA_PRIVACY_URL", customDataBundle.f9997c);
                    bundle.putString("CUSTOMDATA_TERMS_URL", customDataBundle.f9998d);
                    bundle.putInt("CUSTOMDATA_CTA_TEXT_PREFIX_OPTION", customDataBundle.f10001g);
                    bundle.putInt("CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION", customDataBundle.f9999e);
                    bundle.putInt("CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION", customDataBundle.f10000f);
                }
                m11233b.putExtras(bundle);
            }
            return m11233b;
        }
        throw new RuntimeException(TrueException.TYPE_APP_SIGNATURE_MISSING);
    }

    /* renamed from: i */
    public void m11227i(l lVar, int i) {
        if (!this.f57204h.m11229b(32)) {
            this.f57198b.onFailureProfileShared(new TrueError(i));
            return;
        }
        C20348a c20348a = C20348a.f57188b;
        Context context = this.f57197a;
        String str = this.f57200d;
        ITrueCallback iTrueCallback = this.f57198b;
        Objects.requireNonNull(c20348a);
        C20362g c20362g = new C20362g(context, str, iTrueCallback, true);
        n.h1(lVar);
        iTrueCallback.onVerificationRequired(new TrueError(i));
        c20348a.f57189a = c20362g;
    }
}
