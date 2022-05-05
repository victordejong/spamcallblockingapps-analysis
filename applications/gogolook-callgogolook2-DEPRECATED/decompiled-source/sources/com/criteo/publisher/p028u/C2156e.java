package com.criteo.publisher.p028u;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.model.C2052w;
import java.util.Map;
/* renamed from: com.criteo.publisher.u.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/u/e.class */
public class C2156e implements AbstractC2154c {
    @Override // com.criteo.publisher.p028u.AbstractC2154c
    /* renamed from: a */
    public void mo35589a(@NonNull Object obj, @Nullable AdUnit adUnit, @NonNull C2052w wVar) {
        if (mo35590a(obj)) {
            Map map = (Map) obj;
            map.put("crt_displayUrl", wVar.m35796c());
            map.put("crt_cpm", wVar.m35801a());
            if (adUnit instanceof BannerAdUnit) {
                map.put("crt_size", wVar.m35790i() + "x" + wVar.m35795d());
            }
        }
    }

    @Override // com.criteo.publisher.p028u.AbstractC2154c
    /* renamed from: a */
    public boolean mo35590a(@NonNull Object obj) {
        return obj instanceof Map;
    }
}
