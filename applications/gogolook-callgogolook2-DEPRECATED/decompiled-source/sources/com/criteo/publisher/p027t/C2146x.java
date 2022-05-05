package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
/* renamed from: com.criteo.publisher.t.x */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/x.class */
public class C2146x {
    @NonNull

    /* renamed from: a */
    public final AbstractC2141u f2443a;

    /* renamed from: com.criteo.publisher.t.x$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/x$a.class */
    public class C2147a implements AbstractC2131o {
        public C2147a() {
        }

        @Override // com.criteo.publisher.p027t.AbstractC2131o
        /* renamed from: a */
        public boolean mo35612a(@NonNull AbstractC2127m mVar) {
            return C2146x.this.f2443a.mo35602a(mVar);
        }
    }

    public C2146x(@NonNull AbstractC2141u uVar) {
        this.f2443a = uVar;
    }

    /* renamed from: a */
    public void m35615a(@NonNull AbstractC2135r rVar) {
        for (AbstractC2127m mVar : rVar.mo35643a()) {
            m35614a(rVar, mVar.mo35672d());
        }
    }

    /* renamed from: a */
    public void m35614a(@NonNull AbstractC2135r rVar, @NonNull String str) {
        rVar.mo35641a(str, new C2147a());
    }
}
