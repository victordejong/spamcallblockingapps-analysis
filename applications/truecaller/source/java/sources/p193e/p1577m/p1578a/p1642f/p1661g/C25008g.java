package p193e.p1577m.p1578a.p1642f.p1661g;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
/* renamed from: e.m.a.f.g.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/g/g.class */
public final class C25008g implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    /* renamed from: a */
    public final DynamiteModule.VersionPolicy.SelectionResult mo4234a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) throws DynamiteModule.LoadingException {
        int i;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int zza = iVersions.zza(context, str);
        selectionResult.f6190a = zza;
        int i2 = 0;
        if (zza != 0) {
            i = iVersions.mo4233a(context, str, false);
            selectionResult.f6191b = i;
        } else {
            i = iVersions.mo4233a(context, str, true);
            selectionResult.f6191b = i;
        }
        int i3 = selectionResult.f6190a;
        if (i3 != 0) {
            i2 = i3;
        } else if (i == 0) {
            selectionResult.f6192c = 0;
            return selectionResult;
        }
        if (i2 >= i) {
            selectionResult.f6192c = -1;
        } else {
            selectionResult.f6192c = 1;
        }
        return selectionResult;
    }
}
