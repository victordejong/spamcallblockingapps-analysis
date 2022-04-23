package com.criteo.publisher.h;

import com.criteo.publisher.i.a;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.s;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/f.class */
public final class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final g f17345a = h.a(getClass());

    @Override // com.criteo.publisher.h.d
    public final a a() {
        return a.CUSTOM_APP_BIDDING;
    }

    @Override // com.criteo.publisher.h.d
    public final void a(Object obj, com.criteo.publisher.m0.a aVar, s sVar) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            map.put("crt_displayUrl", sVar.d());
            map.put("crt_cpm", sVar.a());
            String str = "crt_displayUrl=" + sVar.d() + ",crt_cpm=" + sVar.a();
            String str2 = str;
            if (aVar == com.criteo.publisher.m0.a.CRITEO_BANNER) {
                String str3 = sVar.k() + "x" + sVar.e();
                map.put("crt_size", str3);
                str2 = str + ",crt_size=" + str3;
            }
            this.f17345a.a(a.a(a.CUSTOM_APP_BIDDING, str2));
        }
    }

    @Override // com.criteo.publisher.h.d
    public final boolean a(Object obj) {
        return obj instanceof Map;
    }

    @Override // com.criteo.publisher.h.d
    public final void b(Object obj) {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            map.remove("crt_cpm");
            map.remove("crt_displayUrl");
            map.remove("crt_size");
        }
    }
}
