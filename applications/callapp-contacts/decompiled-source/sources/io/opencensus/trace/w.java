package io.opencensus.trace;

import io.opencensus.common.b;
import io.opencensus.trace.k;
import io.opencensus.trace.p;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/w.class */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    private static final a f36341a = new a();

    /* loaded from: classes5-dex2jar.jar:io/opencensus/trace/w$a.class */
    static final class a extends w {
        private a() {
        }

        @Override // io.opencensus.trace.w
        public final p a(String str) {
            return new p.a(str);
        }
    }

    protected w() {
    }

    public static b a(o oVar) {
        return new k.a((o) io.opencensus.b.b.a(oVar, "span"), false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w a() {
        return f36341a;
    }

    public abstract p a(String str);
}
