package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.p020a0.C1917h;
/* renamed from: com.criteo.publisher.t.w */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/w.class */
public class C2145w implements C1974i.AbstractC2000m0<AbstractC2141u> {
    @NonNull

    /* renamed from: a */
    public final C2132p f2441a;
    @NonNull

    /* renamed from: b */
    public final C1917h f2442b;

    public C2145w(@NonNull C2132p pVar, @NonNull C1917h hVar) {
        this.f2441a = pVar;
        this.f2442b = hVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.criteo.publisher.C1974i.AbstractC2000m0
    @NonNull
    /* renamed from: a */
    public AbstractC2141u mo35616a() {
        return new C2114j(new C2149z(this.f2441a), this.f2442b);
    }
}
