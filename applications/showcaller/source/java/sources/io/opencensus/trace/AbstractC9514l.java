package io.opencensus.trace;

import com.allinone.callerid.bean.ShortCut;
import p321d.p323b.p327b.C9475b;
/* renamed from: io.opencensus.trace.l */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/l.class */
public abstract class AbstractC9514l {

    /* renamed from: io.opencensus.trace.l$a */
    /* loaded from: classes2-dex2jar.jar:io/opencensus/trace/l$a.class */
    static final class C9515a extends AbstractC9514l {
        private C9515a(String str) {
            C9475b.m512b(str, ShortCut.NAME);
        }

        /* renamed from: c */
        public static C9515a m425c(String str, Span span) {
            return new C9515a(str);
        }

        @Override // io.opencensus.trace.AbstractC9514l
        /* renamed from: a */
        public AbstractC9514l mo427a(boolean z) {
            return this;
        }

        @Override // io.opencensus.trace.AbstractC9514l
        /* renamed from: b */
        public Span mo426b() {
            return C9508i.f40446e;
        }
    }

    /* renamed from: a */
    public abstract AbstractC9514l mo427a(boolean z);

    /* renamed from: b */
    public abstract Span mo426b();
}
