package p193e.p194a.p1114o5;

import android.content.Context;
import android.widget.Toast;
import com.razorpay.AnalyticsConstants;
import s1.s;
import s1.z.b.q;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o5.g */
/* loaded from: classes15-dex2jar.jar:e/a/o5/g.class */
public final class C19028g extends m implements q<Context, Integer, Integer, s> {

    /* renamed from: b */
    public static final C19028g f53151b = new C19028g();

    public C19028g() {
        super(3);
    }

    /* renamed from: h */
    public Object m14247h(Object obj, Object obj2, Object obj3) {
        Context context = (Context) obj;
        int intValue = ((Number) obj2).intValue();
        int intValue2 = ((Number) obj3).intValue();
        l.e(context, AnalyticsConstants.CONTEXT);
        Toast.makeText(context, intValue, intValue2).show();
        return s.a;
    }
}
