package io.opencensus.trace;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.s */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/s.class */
public abstract class AbstractC9532s {

    /* renamed from: io.opencensus.trace.s$b */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/s$b.class */
    public static final class C9534b {

        /* renamed from: a */
        private static final AbstractC9532s f40468a = AbstractC9532s.m397c(Collections.emptyList());

        /* renamed from: b */
        private final AbstractC9532s f40469b;

        /* renamed from: c */
        private ArrayList<?> f40470c;

        private C9534b(AbstractC9532s abstractC9532s) {
            C9475b.m512b(abstractC9532s, "parent");
            this.f40469b = abstractC9532s;
            this.f40470c = null;
        }

        /* renamed from: b */
        public AbstractC9532s m394b() {
            ArrayList<?> arrayList = this.f40470c;
            return arrayList == null ? this.f40469b : AbstractC9532s.m397c(arrayList);
        }
    }

    /* renamed from: b */
    public static C9534b m398b() {
        return new C9534b();
    }

    /* renamed from: c */
    public static AbstractC9532s m397c(List<?> list) {
        C9475b.m511c(list.size() <= 32, "Invalid size");
        return new C9505f(Collections.unmodifiableList(list));
    }

    /* renamed from: d */
    public abstract List<?> mo396d();
}
