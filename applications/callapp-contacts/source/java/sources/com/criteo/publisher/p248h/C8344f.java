package com.criteo.publisher.p248h;

import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p256m0.EnumC8423a;
import java.util.Map;
/* renamed from: com.criteo.publisher.h.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/f.class */
public final class C8344f implements AbstractC8342d {

    /* renamed from: a */
    private final C8402g f29989a = C8404h.m25741a(getClass());

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final EnumC8347a mo25819a() {
        return EnumC8347a.CUSTOM_APP_BIDDING;
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final void mo25817a(Object obj, EnumC8423a enumC8423a, C8503s c8503s) {
        if (!(obj instanceof Map)) {
            return;
        }
        Map map = (Map) obj;
        map.put("crt_displayUrl", c8503s.m25547d());
        map.put("crt_cpm", c8503s.m25554a());
        String str = "crt_displayUrl=" + c8503s.m25547d() + ",crt_cpm=" + c8503s.m25554a();
        String str2 = str;
        if (enumC8423a == EnumC8423a.CRITEO_BANNER) {
            String str3 = c8503s.m25540k() + "x" + c8503s.m25546e();
            map.put("crt_size", str3);
            str2 = str + ",crt_size=" + str3;
        }
        this.f29989a.m25744a(C8337a.m25826a(EnumC8347a.CUSTOM_APP_BIDDING, str2));
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final boolean mo25818a(Object obj) {
        return obj instanceof Map;
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: b */
    public final void mo25816b(Object obj) {
        if (!(obj instanceof Map)) {
            return;
        }
        Map map = (Map) obj;
        map.remove("crt_cpm");
        map.remove("crt_displayUrl");
        map.remove("crt_size");
    }
}
