package p193e.p194a.p1129p5;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.List;
import javax.inject.Inject;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.p5.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/f0.class */
public final class C19229f0 implements AbstractC19225d0 {

    /* renamed from: a */
    public final List<String> f53594a = i.T(new String[]{"su", "magisk"});

    /* renamed from: b */
    public final List<String> f53595b = i.T(new String[]{"/data/local/", "/data/local/bin/", "/data/local/xbin/", "/sbin/", "/su/bin/", "/system/bin/", "/system/bin/.ext/", "/system/bin/failsafe/", "/system/sd/xbin/", "/system/usr/we-need-root/", "/system/xbin/", "/cache", "/data", "/dev"});

    /* renamed from: c */
    public final List<String> f53596c = i.T(new String[]{"com.devadvance.rootcloakplus", "com.chelpus.luckypatcher", "com.koushikdutta.rommanager", "com.noshufou.android.su.elite", "com.ramdroid.appquarantine", "eu.chainfire.supersu", "com.devadvance.rootcloak", "com.topjohnwu.magisk", "com.thirdparty.superuser", "com.formyhm.hiderootPremium", "de.robv.android.xposed.installer", "com.saurik.substrate", "com.chelpus.lackypatch", "com.zachspong.temprootremovejb", "com.dimonvideo.luckypatcher", "com.android.vending.billing.InAppBillingService.COIN", "com.noshufou.android.su", "com.koushikdutta.superuser", "com.yellowes.su", "com.koushikdutta.rommanager.license", "com.amphoras.hidemyroot", "com.formyhm.hideroot", "com.amphoras.hidemyrootadfree", "com.ramdroid.appquarantinepro"});

    /* renamed from: d */
    public final Context f53597d;

    @Inject
    public C19229f0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f53597d = context;
    }
}
