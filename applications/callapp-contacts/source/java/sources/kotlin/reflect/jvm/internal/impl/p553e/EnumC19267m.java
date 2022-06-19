package kotlin.reflect.jvm.internal.impl.p553e;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.m */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/m.class */
public enum EnumC19267m {
    PLAIN { // from class: kotlin.reflect.jvm.internal.impl.e.m.b
        @Override // kotlin.reflect.jvm.internal.impl.p553e.EnumC19267m
        public final String escape(String string) {
            C18524p.m3840d(string, "string");
            return string;
        }
    },
    HTML { // from class: kotlin.reflect.jvm.internal.impl.e.m.a
        @Override // kotlin.reflect.jvm.internal.impl.p553e.EnumC19267m
        public final String escape(String string) {
            C18524p.m3840d(string, "string");
            return C18425p.m3958a(C18425p.m3958a(string, "<", "&lt;", false), ">", "&gt;", false);
        }
    };

    /* synthetic */ EnumC19267m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract String escape(String str);
}
