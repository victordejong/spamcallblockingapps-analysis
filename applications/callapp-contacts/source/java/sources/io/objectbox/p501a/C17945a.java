package io.objectbox.p501a;

import androidx.lifecycle.LiveData;
import io.objectbox.p503c.AbstractC17958a;
import io.objectbox.p503c.AbstractC17961d;
import io.objectbox.p503c.C17968k;
import io.objectbox.query.Query;
import java.util.List;
/* renamed from: io.objectbox.a.a */
/* loaded from: classes5-dex2jar.jar:io/objectbox/a/a.class */
public final class C17945a<T> extends LiveData<List<T>> {

    /* renamed from: g */
    private final Query<T> f62712g;

    /* renamed from: h */
    private AbstractC17961d f62713h;

    /* renamed from: i */
    private final AbstractC17958a<List<T>> f62714i = new AbstractC17958a<List<T>>() { // from class: io.objectbox.a.a.1
        @Override // io.objectbox.p503c.AbstractC17958a
        public final /* synthetic */ void onData(Object obj) {
            C17945a.this.mo43287a((C17945a) ((List) obj));
        }
    };

    public C17945a(Query<T> query) {
        this.f62712g = query;
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: a */
    public final void mo4697a() {
        if (this.f62713h == null) {
            Query<T> query = this.f62712g;
            this.f62713h = new C17968k(query.f62824b, null, query.f62823a.f62707a.f62683g).m4677a(this.f62714i);
        }
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: b */
    public final void mo4695b() {
        if (!(this.f4779c.f208e > 0)) {
            this.f62713h.mo4680a();
            this.f62713h = null;
        }
    }
}
