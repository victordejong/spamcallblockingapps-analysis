package p193e.p194a.p1221t.p1230b.p1231c.p1232k;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.t.b.c.k.b */
/* loaded from: classes5-dex2jar.jar:e/a/t/b/c/k/b.class */
public final class C20368b implements AbstractC20367a {

    /* renamed from: a */
    public final TelephonyManager f57228a;

    public C20368b(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        Object systemService = context.getSystemService(AnalyticsConstants.PHONE);
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        this.f57228a = (TelephonyManager) systemService;
    }

    @Override // p193e.p194a.p1221t.p1230b.p1231c.p1232k.AbstractC20367a
    /* renamed from: a */
    public boolean mo11223a() {
        try {
            Object m11225b = m11225b(this.f57228a, "getITelephony");
            if (m11225b == null) {
                return true;
            }
            m11225b(m11225b, "endCall");
            return true;
        } catch (Exception e) {
            try {
                Object m11225b2 = m11225b(this.f57228a, "getITelephonyMSim");
                if (m11225b2 == null) {
                    return false;
                }
                if (!l.a(m11224c(m11225b2, "endCall", 0), Boolean.FALSE)) {
                    return true;
                }
                m11224c(m11225b2, "endCall", 1);
                return true;
            } catch (Exception e2) {
                return false;
            }
        }
    }

    /* renamed from: b */
    public final Object m11225b(Object obj, String str) {
        Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, new Object[0]);
    }

    /* renamed from: c */
    public final Object m11224c(Object obj, String str, Object... objArr) {
        Class<?> cls = obj.getClass();
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj2 : objArr) {
            arrayList.add(obj2.getClass());
        }
        Object[] array = arrayList.toArray(new Class[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        Class[] clsArr = (Class[]) array;
        Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, objArr);
    }
}
