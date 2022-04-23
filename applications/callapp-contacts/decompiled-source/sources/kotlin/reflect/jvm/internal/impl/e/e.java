package kotlin.reflect.jvm.internal.impl.e;

import java.util.ArrayList;
import java.util.Set;
import kotlin.a.i;
import kotlin.a.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/e.class */
public enum e {
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
    
    public static final Set<e> ALL;
    public static final Set<e> ALL_EXCEPT_ANNOTATIONS;
    public static final a Companion = new a(null);
    private final boolean includeByDefault;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/e/e$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        e[] values = values();
        ArrayList arrayList = new ArrayList();
        for (e eVar : values) {
            if (eVar.getIncludeByDefault()) {
                arrayList.add(eVar);
            }
        }
        ALL_EXCEPT_ANNOTATIONS = n.j((Iterable) arrayList);
        ALL = i.k(values());
    }

    e(boolean z) {
        this.includeByDefault = z;
    }

    public final boolean getIncludeByDefault() {
        return this.includeByDefault;
    }
}
