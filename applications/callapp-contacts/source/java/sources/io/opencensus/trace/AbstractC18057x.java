package io.opencensus.trace;

import io.opencensus.p507b.C17993b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: io.opencensus.trace.x */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/x.class */
public abstract class AbstractC18057x {

    /* renamed from: io.opencensus.trace.x$a */
    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/x$a.class */
    public static final class C18059a {

        /* renamed from: c */
        private static final AbstractC18057x f62980c = AbstractC18057x.m4495a(Collections.emptyList());

        /* renamed from: a */
        private final AbstractC18057x f62981a;

        /* renamed from: b */
        private ArrayList<Object> f62982b;

        private C18059a(AbstractC18057x abstractC18057x) {
            C17993b.m4562a(abstractC18057x, "parent");
            this.f62981a = abstractC18057x;
            this.f62982b = null;
        }

        /* renamed from: a */
        public final AbstractC18057x m4493a() {
            ArrayList<Object> arrayList = this.f62982b;
            return arrayList == null ? this.f62981a : AbstractC18057x.m4495a(arrayList);
        }
    }

    /* renamed from: a */
    static /* synthetic */ AbstractC18057x m4495a(List list) {
        if (list.size() <= 32) {
            return new C18020g(Collections.unmodifiableList(list));
        }
        throw new IllegalStateException("Invalid size");
    }

    /* renamed from: b */
    public static C18059a m4494b() {
        return new C18059a();
    }

    /* renamed from: a */
    public abstract List<Object> mo4496a();
}
