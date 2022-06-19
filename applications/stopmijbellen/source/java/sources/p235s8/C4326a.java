package p235s8;

import java.math.BigDecimal;
import java.util.Date;
/* renamed from: s8.a */
/* loaded from: classes2-dex2jar.jar:s8/a.class */
public class C4326a extends AbstractC4332g {

    /* renamed from: a */
    public final /* synthetic */ int f13478a;

    @Override // p235s8.AbstractC4332g
    /* renamed from: a */
    public Object mo1095a(Object obj) {
        switch (this.f13478a) {
            case 0:
                BigDecimal bigDecimal = (BigDecimal) obj;
                return bigDecimal == null ? null : bigDecimal.toString();
            default:
                Date date = (Date) obj;
                return date == null ? null : Long.valueOf(date.getTime());
        }
    }
}
