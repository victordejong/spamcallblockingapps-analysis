package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00040\fj\b\u0012\u0004\u0012\u00020\u0004`\rX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m4298d2 = {"Lcom/facebook/internal/FacebookSignatureValidator;", "", "()V", "FBF_HASH", "", "FBI_HASH", "FBL2_HASH", "FBL_HASH", "FBR2_HASH", "FBR_HASH", "MSR_HASH", "validAppSignatureHashes", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "validateSignature", "", "context", "Landroid/content/Context;", "packageName", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.j */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/j.class */
public final class C10288j {

    /* renamed from: a */
    public static final C10288j f33821a = new C10288j();

    /* renamed from: b */
    private static final HashSet<String> f33822b;

    static {
        String[] elements = {"8a3c4b262d721acd49a4bf97d5213199c86fa2b9", "cc2751449a350f668590264ed76692694a80308a", "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc", "5e8f16062ea3cd2c4a0d547876baa6f38cabf625", "df6b721c8b4d3b6eb44c861d4415007e5a35fc95", "9b8f518b086098de3d77736f9458a3d2f6f95a37", "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"};
        C18524p.m3840d(elements, "elements");
        f33822b = (HashSet) C18273i.m4191b((Object[]) elements, new HashSet(C18247ai.m4260a(7)));
    }

    private C10288j() {
    }

    /* renamed from: a */
    public static final boolean m23056a(Context context, String packageName) {
        C18524p.m3840d(context, "context");
        C18524p.m3840d(packageName, "packageName");
        String brand = Build.BRAND;
        int i = context.getApplicationInfo().flags;
        C18524p.m3843b(brand, "brand");
        if (!C18425p.m3957a(brand, "generic", false) || (i & 2) == 0) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 64);
                if (packageInfo.signatures == null) {
                    return false;
                }
                Signature[] signatureArr = packageInfo.signatures;
                C18524p.m3843b(signatureArr, "packageInfo.signatures");
                if (signatureArr.length == 0) {
                    return false;
                }
                Signature[] signatureArr2 = packageInfo.signatures;
                C18524p.m3843b(signatureArr2, "packageInfo.signatures");
                for (Signature signature : signatureArr2) {
                    HashSet<String> hashSet = f33822b;
                    byte[] byteArray = signature.toByteArray();
                    C18524p.m3843b(byteArray, "it.toByteArray()");
                    if (!C18282n.m4147a((Iterable<? extends String>) hashSet, C10213ae.m23214a(byteArray))) {
                        return false;
                    }
                }
                return true;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
        return true;
    }
}
