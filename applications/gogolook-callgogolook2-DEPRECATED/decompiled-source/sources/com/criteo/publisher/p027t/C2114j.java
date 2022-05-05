package com.criteo.publisher.p027t;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1917h;
import java.util.List;
/* renamed from: com.criteo.publisher.t.j */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/j.class */
public class C2114j extends AbstractC2141u {
    @NonNull
    @GuardedBy("delegateLock")

    /* renamed from: a */
    public final AbstractC2141u f2392a;
    @NonNull

    /* renamed from: b */
    public final Object f2393b = new Object();
    @NonNull

    /* renamed from: c */
    public final C1917h f2394c;

    public C2114j(@NonNull AbstractC2141u uVar, @NonNull C1917h hVar) {
        this.f2392a = uVar;
        this.f2394c = hVar;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2141u
    /* renamed from: a */
    public int mo35604a() {
        return this.f2392a.mo35604a();
    }

    @Override // com.criteo.publisher.p027t.AbstractC2141u
    @NonNull
    /* renamed from: a */
    public List<AbstractC2127m> mo35603a(int i) {
        List<AbstractC2127m> a;
        synchronized (this.f2393b) {
            a = this.f2392a.mo35603a(i);
        }
        return a;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2141u
    /* renamed from: a */
    public boolean mo35602a(@NonNull AbstractC2127m mVar) {
        boolean a;
        synchronized (this.f2393b) {
            if (mo35604a() >= this.f2394c.m36029h()) {
                this.f2392a.mo35603a(1);
            }
            a = this.f2392a.mo35602a(mVar);
        }
        return a;
    }
}
