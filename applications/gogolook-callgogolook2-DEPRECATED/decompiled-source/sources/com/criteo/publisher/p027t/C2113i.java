package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1917h;
import com.criteo.publisher.p027t.AbstractC2135r;
import java.util.Collection;
/* renamed from: com.criteo.publisher.t.i */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/i.class */
public class C2113i extends AbstractC2135r {
    @NonNull

    /* renamed from: a */
    public final AbstractC2135r f2390a;
    @NonNull

    /* renamed from: b */
    public final C1917h f2391b;

    public C2113i(@NonNull AbstractC2135r rVar, @NonNull C1917h hVar) {
        this.f2390a = rVar;
        this.f2391b = hVar;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    @NonNull
    /* renamed from: a */
    public Collection<AbstractC2127m> mo35643a() {
        return this.f2390a.mo35643a();
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: a */
    public void mo35641a(@NonNull String str, @NonNull AbstractC2131o oVar) {
        this.f2390a.mo35641a(str, oVar);
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: a */
    public void mo35640a(@NonNull String str, @NonNull AbstractC2135r.AbstractC2136a aVar) {
        if (mo35639b() < this.f2391b.m36028i() || mo35642a(str)) {
            this.f2390a.mo35640a(str, aVar);
        }
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: a */
    public boolean mo35642a(@NonNull String str) {
        return this.f2390a.mo35642a(str);
    }

    @Override // com.criteo.publisher.p027t.AbstractC2135r
    /* renamed from: b */
    public int mo35639b() {
        return this.f2390a.mo35639b();
    }
}
