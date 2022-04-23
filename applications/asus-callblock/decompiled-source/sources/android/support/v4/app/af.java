package android.support.v4.app;

import android.app.RemoteInput;
import android.support.v4.app.ag;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/af.class */
final class af {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static RemoteInput[] a(ag.a[] aVarArr) {
        RemoteInput[] remoteInputArr;
        if (aVarArr == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                ag.a aVar = aVarArr[i];
                remoteInputArr2[i] = new RemoteInput.Builder(aVar.a()).setLabel(aVar.b()).setChoices(aVar.c()).setAllowFreeFormInput(aVar.d()).addExtras(aVar.e()).build();
            }
            remoteInputArr = remoteInputArr2;
        }
        return remoteInputArr;
    }
}
