package com.criteo.publisher.p025r;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdSize;
import com.criteo.publisher.model.C2037k;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p020a0.EnumC1908a;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.criteo.publisher.r.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/r/a.class */
public class C2094a {

    /* renamed from: a */
    public final Map<C2037k, C2052w> f2342a = new HashMap();

    /* renamed from: b */
    public final C1925m f2343b;

    public C2094a(@NonNull C1925m mVar) {
        this.f2343b = mVar;
    }

    /* renamed from: b */
    private EnumC1908a m35700b(C2052w wVar) {
        return wVar.m35789j() ? EnumC1908a.CRITEO_CUSTOM_NATIVE : ((this.f2343b.m36012d().getHeight() == wVar.m35795d() && this.f2343b.m36012d().getWidth() == wVar.m35790i()) || (this.f2343b.m36013c().getHeight() == wVar.m35795d() && this.f2343b.m36013c().getWidth() == wVar.m35790i())) ? EnumC1908a.CRITEO_INTERSTITIAL : EnumC1908a.CRITEO_BANNER;
    }

    @Nullable
    /* renamed from: a */
    public C2052w m35703a(C2037k kVar) {
        return this.f2342a.get(kVar);
    }

    /* renamed from: a */
    public void m35702a(@NonNull C2052w wVar) {
        this.f2342a.put(new C2037k(new AdSize(wVar.m35790i(), wVar.m35795d()), wVar.m35792g(), m35700b(wVar)), wVar);
    }

    /* renamed from: b */
    public void m35701b(C2037k kVar) {
        this.f2342a.remove(kVar);
    }
}
