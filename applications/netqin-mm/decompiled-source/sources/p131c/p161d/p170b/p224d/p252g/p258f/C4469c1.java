package p131c.p161d.p170b.p224d.p252g.p258f;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzdm;
/* renamed from: c.d.b.d.g.f.c1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/c1.class */
public final class C4469c1 extends zzdh<Boolean> {
    public C4469c1(zzdm zzdmVar, String str, Boolean bool, boolean z) {
        super(zzdmVar, str, bool, true, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdh
    /* renamed from: a */
    public final /* synthetic */ Boolean mo9840a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (zzcp.f29431c.matcher(str).matches()) {
                return true;
            }
            if (zzcp.f29432d.matcher(str).matches()) {
                return false;
            }
        }
        String a = super.m9846a();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 28 + String.valueOf(valueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(a);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
