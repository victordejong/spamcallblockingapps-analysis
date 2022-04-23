package kotlin.reflect.jvm.internal.impl.e;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/m.class */
public enum m {
    PLAIN { // from class: kotlin.reflect.jvm.internal.impl.e.m.b
        @Override // kotlin.reflect.jvm.internal.impl.e.m
        public final String escape(String string) {
            p.d(string, "string");
            return string;
        }
    },
    HTML { // from class: kotlin.reflect.jvm.internal.impl.e.m.a
        @Override // kotlin.reflect.jvm.internal.impl.e.m
        public final String escape(String string) {
            p.d(string, "string");
            return kotlin.h.p.a(kotlin.h.p.a(string, "<", "&lt;", false), ">", "&gt;", false);
        }
    };

    /* synthetic */ m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String escape(String str);
}
