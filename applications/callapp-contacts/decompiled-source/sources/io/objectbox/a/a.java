package io.objectbox.a;

import androidx.lifecycle.LiveData;
import io.objectbox.c.d;
import io.objectbox.c.k;
import io.objectbox.query.Query;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/a/a.class */
public final class a<T> extends LiveData<List<T>> {
    private final Query<T> g;
    private d h;
    private final io.objectbox.c.a<List<T>> i = new io.objectbox.c.a<List<T>>() { // from class: io.objectbox.a.a.1
        @Override // io.objectbox.c.a
        public final /* synthetic */ void onData(Object obj) {
            a.this.a((a) ((List) obj));
        }
    };

    public a(Query<T> query) {
        this.g = query;
    }

    @Override // androidx.lifecycle.LiveData
    public final void a() {
        if (this.h == null) {
            Query<T> query = this.g;
            this.h = new k(query.f36244b, null, query.f36243a.f36185a.g).a(this.i);
        }
    }

    @Override // androidx.lifecycle.LiveData
    public final void b() {
        if (!(this.f2537c.e > 0)) {
            this.h.a();
            this.h = null;
        }
    }
}
