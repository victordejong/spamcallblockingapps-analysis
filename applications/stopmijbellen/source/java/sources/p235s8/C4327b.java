package p235s8;

import java.math.BigInteger;
import java.util.UUID;
/* renamed from: s8.b */
/* loaded from: classes2-dex2jar.jar:s8/b.class */
public class C4327b extends AbstractC4332g {

    /* renamed from: a */
    public final /* synthetic */ int f13479a;

    @Override // p235s8.AbstractC4332g
    /* renamed from: a */
    public Object mo1095a(Object obj) {
        switch (this.f13479a) {
            case 0:
                BigInteger bigInteger = (BigInteger) obj;
                return bigInteger == null ? null : bigInteger.toString();
            default:
                UUID uuid = (UUID) obj;
                String str = null;
                if (uuid != null) {
                    str = uuid.toString();
                }
                return str;
        }
    }
}
