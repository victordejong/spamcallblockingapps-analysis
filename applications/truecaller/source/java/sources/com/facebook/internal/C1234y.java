package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import java.util.HashSet;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.r;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00040\fj\b\u0012\u0004\u0012\u00020\u0004`\rX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/FacebookSignatureValidator;", "", "()V", "FBF_HASH", "", "FBI_HASH", "FBL_HASH", "FBR2_HASH", "FBR_HASH", "IGR_HASH", "MSR_HASH", "validAppSignatureHashes", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "validateSignature", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "packageName", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.y */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/y.class */
public final class C1234y {

    /* renamed from: a */
    public static final C1234y f3326a = new C1234y();

    /* renamed from: b */
    public static final HashSet<String> f3327b;

    static {
        String[] strArr = {"8a3c4b262d721acd49a4bf97d5213199c86fa2b9", "cc2751449a350f668590264ed76692694a80308a", "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc", "df6b721c8b4d3b6eb44c861d4415007e5a35fc95", "9b8f518b086098de3d77736f9458a3d2f6f95a37", "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3", "c56fb7d591ba6704df047fd98f535372fea00211"};
        l.e(strArr, "elements");
        HashSet<String> hashSet = new HashSet<>(C25225a.m3942Y1(7));
        C25225a.m3927b3(strArr, hashSet);
        f3327b = hashSet;
    }

    /* renamed from: a */
    public static final boolean m41611a(Context context, String str) {
        boolean z;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "packageName");
        String str2 = Build.BRAND;
        int i = context.getApplicationInfo().flags;
        l.d(str2, "brand");
        if (!r.y(str2, "generic", false, 2) || (i & 2) == 0) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
                Signature[] signatureArr = packageInfo.signatures;
                z = false;
                if (signatureArr != null) {
                    l.d(signatureArr, "packageInfo.signatures");
                    if (!(signatureArr.length == 0)) {
                        Signature[] signatureArr2 = packageInfo.signatures;
                        l.d(signatureArr2, "packageInfo.signatures");
                        int length = signatureArr2.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                z = true;
                                break;
                            }
                            Signature signature = signatureArr2[i2];
                            HashSet<String> hashSet = f3327b;
                            byte[] byteArray = signature.toByteArray();
                            l.d(byteArray, "it.toByteArray()");
                            if (!i.l(hashSet, C1168q0.m41685Q(byteArray))) {
                                z = false;
                                break;
                            }
                            i2++;
                        }
                    } else {
                        z = false;
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                z = false;
            }
            return z;
        }
        return true;
    }
}
