package com.google.android.play.core.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Build;
import com.google.android.play.core.splitcompat.C8552q;
import java.util.Arrays;
/* renamed from: com.google.android.play.core.internal.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/e0.class */
public final class C8483e0 {

    /* renamed from: a */
    private static final C8466a f38034a = new C8466a("PhoneskyVerificationUtils");

    /* renamed from: a */
    public static boolean m3521a(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures;
            if (signatureArr == null || (r0 = signatureArr.length) == 0) {
                f38034a.m3563e("Phonesky package is not signed -- possibly self-built package. Could not verify.", new Object[0]);
                return false;
            }
            for (Signature signature : signatureArr) {
                String m3356b = C8552q.m3356b(signature.toByteArray());
                if ("8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(m3356b)) {
                    return true;
                }
                if ((Build.TAGS.contains("dev-keys") || Build.TAGS.contains("test-keys")) && "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(m3356b)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m3520b(Context context) {
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(Binder.getCallingUid());
        return packagesForUid != null && Arrays.asList(packagesForUid).contains("com.android.vending");
    }
}
