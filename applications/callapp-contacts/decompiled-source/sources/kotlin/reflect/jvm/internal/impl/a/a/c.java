package kotlin.reflect.jvm.internal.impl.a.a;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a/c.class */
public interface c {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/a/a/c$a.class */
    public static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36964a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.a.a.c
        public final void a(String filePath, e position, String scopeFqName, f scopeKind, String name) {
            p.d(filePath, "filePath");
            p.d(position, "position");
            p.d(scopeFqName, "scopeFqName");
            p.d(scopeKind, "scopeKind");
            p.d(name, "name");
        }
    }

    void a(String str, e eVar, String str2, f fVar, String str3);
}
