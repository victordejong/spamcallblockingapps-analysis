package p193e.p1512i.p1516b.p1518b2;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.EnumC23072a;
import p193e.p1512i.p1516b.p1533u2.C23131w;
/* renamed from: e.i.b.b2.f */
/* loaded from: classes-dex2jar.jar:e/i/b/b2/f.class */
public class C22924f implements AbstractC22922d {

    /* renamed from: a */
    public final C23021h f63597a = C23023i.m7583a(C22924f.class);

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: a */
    public EnumC22933a mo7626a() {
        return EnumC22933a.CUSTOM_APP_BIDDING;
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: a */
    public void mo7625a(Object obj) {
        if (!(obj instanceof Map)) {
            return;
        }
        Map map = (Map) obj;
        map.remove("crt_cpm");
        map.remove("crt_displayUrl");
        map.remove("crt_size");
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: b */
    public boolean mo7624b(Object obj) {
        return obj instanceof Map;
    }

    @Override // p193e.p1512i.p1516b.p1518b2.AbstractC22922d
    /* renamed from: c */
    public void mo7623c(Object obj, EnumC23072a enumC23072a, C23131w c23131w) {
        if (!(obj instanceof Map)) {
            return;
        }
        Map map = (Map) obj;
        map.put("crt_displayUrl", c23131w.m7479f());
        map.put("crt_cpm", c23131w.m7483b());
        String str = "crt_displayUrl=" + c23131w.m7479f() + ",crt_cpm" + ContainerUtils.KEY_VALUE_DELIMITER + c23131w.m7483b();
        String str2 = str;
        if (enumC23072a == EnumC23072a.CRITEO_BANNER) {
            String str3 = c23131w.m7473l() + "x" + c23131w.m7478g();
            map.put("crt_size", str3);
            str2 = C22128a.m8717E2(str, ",", "crt_size", ContainerUtils.KEY_VALUE_DELIMITER, str3);
        }
        this.f63597a.m7586a(C22915a.m7630a(EnumC22933a.CUSTOM_APP_BIDDING, str2));
    }
}
