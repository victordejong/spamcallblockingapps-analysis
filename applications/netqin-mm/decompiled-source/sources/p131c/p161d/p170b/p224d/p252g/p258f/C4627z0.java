package p131c.p161d.p170b.p224d.p252g.p258f;

import android.util.Log;
import com.google.android.gms.internal.measurement.zzdh;
import com.google.android.gms.internal.measurement.zzdm;
/* renamed from: c.d.b.d.g.f.z0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/z0.class */
public final class C4627z0 extends zzdh<Long> {
    public C4627z0(zzdm zzdmVar, String str, Long l, boolean z) {
        super(zzdmVar, str, l, true, null);
    }

    /* renamed from: b */
    public final Long mo9840a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException e) {
            }
        }
        String a = super.m9846a();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 25 + String.valueOf(valueOf).length());
        sb.append("Invalid long value for ");
        sb.append(a);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
