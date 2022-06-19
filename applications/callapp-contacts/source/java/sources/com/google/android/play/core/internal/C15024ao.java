package com.google.android.play.core.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Build;
import com.google.android.play.core.splitcompat.C15121q;
import java.util.Arrays;
/* renamed from: com.google.android.play.core.internal.ao */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ao.class */
public final class C15024ao {

    /* renamed from: a */
    private static final C15072h f54751a = new C15072h("PhoneskyVerificationUtils");

    /* renamed from: a */
    public static boolean m9585a(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo("com.android.vending", 64).signatures;
            if (signatureArr == null || (r0 = signatureArr.length) == 0) {
                f54751a.m9507d("Phonesky package is not signed -- possibly self-built package. Could not verify.", new Object[0]);
                return false;
            }
            for (Signature signature : signatureArr) {
                String m9422a = C15121q.m9422a(signature.toByteArray());
                if ("8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M".equals(m9422a)) {
                    return true;
                }
                if ((Build.TAGS.contains("dev-keys") || Build.TAGS.contains("test-keys")) && "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA".equals(m9422a)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m9584b(Context context) {
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(Binder.getCallingUid());
        return packagesForUid != null && Arrays.asList(packagesForUid).contains("com.android.vending");
    }
}
