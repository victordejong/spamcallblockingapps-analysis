package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.ag;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/ah.class */
final class ah {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle[] a(ag.a[] aVarArr) {
        Bundle[] bundleArr;
        if (aVarArr == null) {
            bundleArr = null;
        } else {
            Bundle[] bundleArr2 = new Bundle[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                ag.a aVar = aVarArr[i];
                Bundle bundle = new Bundle();
                bundle.putString("resultKey", aVar.a());
                bundle.putCharSequence("label", aVar.b());
                bundle.putCharSequenceArray("choices", aVar.c());
                bundle.putBoolean("allowFreeFormInput", aVar.d());
                bundle.putBundle("extras", aVar.e());
                bundleArr2[i] = bundle;
            }
            bundleArr = bundleArr2;
        }
        return bundleArr;
    }
}
