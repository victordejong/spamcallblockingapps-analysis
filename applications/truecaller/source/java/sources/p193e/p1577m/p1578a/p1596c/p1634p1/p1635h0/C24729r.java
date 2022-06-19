package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* renamed from: e.m.a.c.p1.h0.r */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/r.class */
public class C24729r {

    /* renamed from: a */
    public final Map<String, Object> f69299a = new HashMap();

    /* renamed from: b */
    public final List<String> f69300b = new ArrayList();

    /* renamed from: a */
    public static C24729r m4721a(C24729r c24729r, long j) {
        Long valueOf = Long.valueOf(j);
        Map<String, Object> map = c24729r.f69299a;
        Objects.requireNonNull(valueOf);
        map.put("exo_len", valueOf);
        c24729r.f69300b.remove("exo_len");
        return c24729r;
    }
}
