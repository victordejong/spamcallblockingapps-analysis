package p193e.p1577m.p1578a.p1642f.p1661g;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: e.m.a.f.g.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/g/f.class */
public final class C25007f implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    /* renamed from: a */
    public final DynamiteModule.VersionPolicy.SelectionResult mo4234a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        selectionResult.f6190a = iVersions.zza(context, str);
        int mo4233a = iVersions.mo4233a(context, str, true);
        selectionResult.f6191b = mo4233a;
        int i = selectionResult.f6190a;
        int i2 = i;
        if (i == 0) {
            if (mo4233a == 0) {
                selectionResult.f6192c = 0;
                return selectionResult;
            }
            i2 = 0;
        }
        if (i2 >= mo4233a) {
            selectionResult.f6192c = -1;
        } else {
            selectionResult.f6192c = 1;
        }
        return selectionResult;
    }
}
