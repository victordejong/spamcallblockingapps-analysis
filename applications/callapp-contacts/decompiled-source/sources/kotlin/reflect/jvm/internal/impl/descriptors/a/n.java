package kotlin.reflect.jvm.internal.impl.descriptors.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.a.ai;
import kotlin.a.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.t;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/n.class */
public enum n {
    CLASS("class", false, 2, null),
    ANNOTATION_CLASS("annotation class", false, 2, null),
    TYPE_PARAMETER("type parameter", false),
    PROPERTY("property", false, 2, null),
    FIELD("field", false, 2, null),
    LOCAL_VARIABLE("local variable", false, 2, null),
    VALUE_PARAMETER("value parameter", false, 2, null),
    CONSTRUCTOR("constructor", false, 2, null),
    FUNCTION("function", false, 2, null),
    PROPERTY_GETTER("getter", false, 2, null),
    PROPERTY_SETTER("setter", false, 2, null),
    TYPE("type usage", false),
    EXPRESSION("expression", false),
    FILE("file", false),
    TYPEALIAS("typealias", false),
    TYPE_PROJECTION("type projection", false),
    STAR_PROJECTION("star projection", false),
    PROPERTY_PARAMETER("property constructor parameter", false),
    CLASS_ONLY("class", false),
    OBJECT("object", false),
    COMPANION_OBJECT("companion object", false),
    INTERFACE("interface", false),
    ENUM_CLASS("enum class", false),
    ENUM_ENTRY("enum entry", false),
    LOCAL_CLASS("local class", false),
    LOCAL_FUNCTION("local function", false),
    MEMBER_FUNCTION("member function", false),
    TOP_LEVEL_FUNCTION("top level function", false),
    MEMBER_PROPERTY("member property", false),
    MEMBER_PROPERTY_WITH_BACKING_FIELD("member property with backing field", false),
    MEMBER_PROPERTY_WITH_DELEGATE("member property with delegate", false),
    MEMBER_PROPERTY_WITHOUT_FIELD_OR_DELEGATE("member property without backing field or delegate", false),
    TOP_LEVEL_PROPERTY("top level property", false),
    TOP_LEVEL_PROPERTY_WITH_BACKING_FIELD("top level property with backing field", false),
    TOP_LEVEL_PROPERTY_WITH_DELEGATE("top level property with delegate", false),
    TOP_LEVEL_PROPERTY_WITHOUT_FIELD_OR_DELEGATE("top level property without backing field or delegate", false),
    INITIALIZER("initializer", false),
    DESTRUCTURING_DECLARATION("destructuring declaration", false),
    LAMBDA_EXPRESSION("lambda expression", false),
    ANONYMOUS_FUNCTION("anonymous function", false),
    OBJECT_LITERAL("object literal", false);
    
    private static final Set<n> ALL_TARGET_SET;
    private static final Set<n> DEFAULT_TARGET_SET;
    private static final Map<e, n> USE_SITE_MAPPING;
    private final String description;
    private final boolean isDefault;
    public static final a Companion = new a(null);
    private static final HashMap<String, n> map = new HashMap<>();

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/n$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        n[] values = values();
        int length = values.length;
        int i = 0;
        while (i < length) {
            n nVar = values[i];
            i++;
            map.put(nVar.name(), nVar);
        }
        n[] values2 = values();
        ArrayList arrayList = new ArrayList();
        for (n nVar2 : values2) {
            if (nVar2.isDefault()) {
                arrayList.add(nVar2);
            }
        }
        DEFAULT_TARGET_SET = kotlin.a.n.j((Iterable) arrayList);
        ALL_TARGET_SET = i.k(values());
        e eVar = e.CONSTRUCTOR_PARAMETER;
        n nVar3 = VALUE_PARAMETER;
        kotlin.n a2 = t.a(eVar, nVar3);
        e eVar2 = e.FIELD;
        n nVar4 = FIELD;
        USE_SITE_MAPPING = ai.a(a2, t.a(eVar2, nVar4), t.a(e.PROPERTY, PROPERTY), t.a(e.FILE, FILE), t.a(e.PROPERTY_GETTER, PROPERTY_GETTER), t.a(e.PROPERTY_SETTER, PROPERTY_SETTER), t.a(e.RECEIVER, nVar3), t.a(e.SETTER_PARAMETER, nVar3), t.a(e.PROPERTY_DELEGATE_FIELD, nVar4));
    }

    n(String str, boolean z) {
        this.description = str;
        this.isDefault = z;
    }

    /* synthetic */ n(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? true : z);
    }

    public final boolean isDefault() {
        return this.isDefault;
    }
}
