package p193e.p1512i.p1516b.p1535v1;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import s1.z.c.l;
/* renamed from: e.i.b.v1.a */
/* loaded from: classes-dex2jar.jar:e/i/b/v1/a.class */
public class C23139a {

    /* renamed from: a */
    public final C23021h f64092a;

    /* renamed from: b */
    public final Context f64093b;

    /* renamed from: e.i.b.v1.a$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/v1/a$a.class */
    public enum EnumC23140a {
        WIRED(1),
        WIFI(2),
        CELLULAR_UNKNOWN(3),
        CELLULAR_2G(4),
        CELLULAR_3G(5),
        CELLULAR_4G(6),
        CELLULAR_5G(7);
        

        /* renamed from: a */
        public final int f64102a;

        EnumC23140a(int i) {
            this.f64102a = i;
        }
    }

    public C23139a(Context context) {
        l.f(context, AnalyticsConstants.CONTEXT);
        this.f64093b = context;
        C23021h m7583a = C23023i.m7583a(C23139a.class);
        l.b(m7583a, "LoggerFactory.getLogger(…nTypeFetcher::class.java)");
        this.f64092a = m7583a;
    }

    /* renamed from: a */
    public final EnumC23140a m7469a(int i) {
        EnumC23140a enumC23140a;
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            case 16:
                enumC23140a = EnumC23140a.CELLULAR_2G;
                break;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
            case 17:
                enumC23140a = EnumC23140a.CELLULAR_3G;
                break;
            case 13:
            case 18:
            case 19:
                enumC23140a = EnumC23140a.CELLULAR_4G;
                break;
            case 20:
                enumC23140a = EnumC23140a.CELLULAR_5G;
                break;
            default:
                enumC23140a = EnumC23140a.CELLULAR_UNKNOWN;
                break;
        }
        return enumC23140a;
    }
}
