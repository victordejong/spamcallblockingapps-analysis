package com.criteo.publisher.p028u;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.C1963b;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2052w;
import java.util.List;
/* renamed from: com.criteo.publisher.u.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/u/b.class */
public class C2153b {
    @NonNull

    /* renamed from: a */
    public final C1963b f2458a;
    @NonNull

    /* renamed from: b */
    public final List<AbstractC2154c> f2459b;

    public C2153b(@NonNull C1963b bVar, @NonNull List<AbstractC2154c> list) {
        this.f2458a = bVar;
        this.f2459b = list;
    }

    /* renamed from: a */
    public void m35591a(@Nullable Object obj, @Nullable AdUnit adUnit) {
        if (obj != null) {
            for (AbstractC2154c cVar : this.f2459b) {
                if (cVar.mo35590a(obj)) {
                    C2052w a = this.f2458a.m35957a(adUnit);
                    if (a != null) {
                        cVar.mo35589a(obj, adUnit, a);
                        return;
                    }
                    return;
                }
            }
        }
    }
}
