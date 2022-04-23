package com.criteo.publisher.p024q;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.C2037k;
import com.criteo.publisher.model.C2038l;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.model.C2052w;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.criteo.publisher.q.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/q/b.class */
public class C2091b implements AbstractC2090a {
    @NonNull

    /* renamed from: a */
    public final List<AbstractC2090a> f2339a = new ArrayList();

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35694a() {
        for (AbstractC2090a aVar : this.f2339a) {
            aVar.mo35694a();
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35693a(@NonNull C2037k kVar, @NonNull C2052w wVar) {
        for (AbstractC2090a aVar : this.f2339a) {
            aVar.mo35693a(kVar, wVar);
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35692a(@NonNull C2038l lVar) {
        for (AbstractC2090a aVar : this.f2339a) {
            aVar.mo35692a(lVar);
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35691a(@NonNull C2038l lVar, @NonNull C2041o oVar) {
        for (AbstractC2090a aVar : this.f2339a) {
            aVar.mo35691a(lVar, oVar);
        }
    }

    @Override // com.criteo.publisher.p024q.AbstractC2090a
    /* renamed from: a */
    public void mo35689a(@NonNull C2038l lVar, @NonNull Exception exc) {
        for (AbstractC2090a aVar : this.f2339a) {
            aVar.mo35689a(lVar, exc);
        }
    }

    /* renamed from: a */
    public void m35708a(@NonNull AbstractC2090a aVar) {
        this.f2339a.add(aVar);
    }
}
