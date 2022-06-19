package p193e.p194a.p1342w4;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import java.util.LinkedHashMap;
import java.util.Map;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p437c.p548h.AbstractC10252b;
import s1.f0.w;
import s1.z.c.l;
/* renamed from: e.a.w4.c */
/* loaded from: classes13-dex2jar.jar:e/a/w4/c.class */
public final class C21203c implements AbstractC10252b {

    /* renamed from: a */
    public final Map<String, Boolean> f59406a = new LinkedHashMap();

    @Override // p193e.p194a.p437c.p548h.AbstractC10252b
    /* renamed from: a */
    public boolean mo10140a(Context context, String str) {
        boolean z;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (str != null) {
            String str2 = str;
            if (str.length() > 10) {
                str2 = w.o0(str, 10);
            }
            Boolean bool = this.f59406a.get(str2);
            if (bool != null) {
                z = bool.booleanValue();
            } else {
                z = C17422k.m16042z(context, str2);
                this.f59406a.put(str2, Boolean.valueOf(z));
            }
            return z;
        }
        return false;
    }
}
