package kotlin.reflect.jvm.internal.impl.p553e;

import java.util.ArrayList;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
/* renamed from: kotlin.reflect.jvm.internal.impl.e.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/e.class */
public enum EnumC19255e {
    VISIBILITY(true),
    MODALITY(true),
    OVERRIDE(true),
    ANNOTATIONS(false),
    INNER(true),
    MEMBER_KIND(true),
    DATA(true),
    INLINE(true),
    EXPECT(true),
    ACTUAL(true),
    CONST(true),
    LATEINIT(true),
    FUN(true),
    VALUE(true);
    
    public static final Set<EnumC19255e> ALL;
    public static final Set<EnumC19255e> ALL_EXCEPT_ANNOTATIONS;
    public static final C19256a Companion = new C19256a(null);
    private final boolean includeByDefault;

    /* renamed from: kotlin.reflect.jvm.internal.impl.e.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/e$a.class */
    public static final class C19256a {
        private C19256a() {
        }

        public /* synthetic */ C19256a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        EnumC19255e[] values = values();
        ArrayList arrayList = new ArrayList();
        for (EnumC19255e enumC19255e : values) {
            if (enumC19255e.getIncludeByDefault()) {
                arrayList.add(enumC19255e);
            }
        }
        ALL_EXCEPT_ANNOTATIONS = C18282n.m4114j((Iterable) arrayList);
        ALL = C18273i.m4181k(values());
    }

    EnumC19255e(boolean z) {
        this.includeByDefault = z;
    }

    public final boolean getIncludeByDefault() {
        return this.includeByDefault;
    }
}
