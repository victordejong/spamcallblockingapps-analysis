package io.opencensus.trace;

import io.opencensus.b.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/x.class */
public abstract class x {

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/x$a.class */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final x f36342c = x.a(Collections.emptyList());

        /* renamed from: a  reason: collision with root package name */
        private final x f36343a;

        /* renamed from: b  reason: collision with root package name */
        private ArrayList<Object> f36344b;

        private a(x xVar) {
            b.a(xVar, "parent");
            this.f36343a = xVar;
            this.f36344b = null;
        }

        public final x a() {
            ArrayList<Object> arrayList = this.f36344b;
            return arrayList == null ? this.f36343a : x.a(arrayList);
        }
    }

    static /* synthetic */ x a(List list) {
        if (list.size() <= 32) {
            return new g(Collections.unmodifiableList(list));
        }
        throw new IllegalStateException("Invalid size");
    }

    public static a b() {
        return new a();
    }

    public abstract List<Object> a();
}
