package kotlin.reflect.jvm.internal.impl.descriptors.p547a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.C18538n;
import kotlin.C20126t;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.n */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/n.class */
public enum EnumC18996n {
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
    
    private static final Set<EnumC18996n> ALL_TARGET_SET;
    private static final Set<EnumC18996n> DEFAULT_TARGET_SET;
    private static final Map<EnumC18980e, EnumC18996n> USE_SITE_MAPPING;
    private final String description;
    private final boolean isDefault;
    public static final C18997a Companion = new C18997a(null);
    private static final HashMap<String, EnumC18996n> map = new HashMap<>();

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a.n$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/a/n$a.class */
    public static final class C18997a {
        private C18997a() {
        }

        public /* synthetic */ C18997a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        EnumC18996n[] values = values();
        int length = values.length;
        int i = 0;
        while (i < length) {
            EnumC18996n enumC18996n = values[i];
            i++;
            map.put(enumC18996n.name(), enumC18996n);
        }
        EnumC18996n[] values2 = values();
        ArrayList arrayList = new ArrayList();
        for (EnumC18996n enumC18996n2 : values2) {
            if (enumC18996n2.isDefault()) {
                arrayList.add(enumC18996n2);
            }
        }
        DEFAULT_TARGET_SET = C18282n.m4114j((Iterable) arrayList);
        ALL_TARGET_SET = C18273i.m4181k(values());
        EnumC18980e enumC18980e = EnumC18980e.CONSTRUCTOR_PARAMETER;
        EnumC18996n enumC18996n3 = VALUE_PARAMETER;
        C18538n m1103a = C20126t.m1103a(enumC18980e, enumC18996n3);
        EnumC18980e enumC18980e2 = EnumC18980e.FIELD;
        EnumC18996n enumC18996n4 = FIELD;
        USE_SITE_MAPPING = C18247ai.m4251a(m1103a, C20126t.m1103a(enumC18980e2, enumC18996n4), C20126t.m1103a(EnumC18980e.PROPERTY, PROPERTY), C20126t.m1103a(EnumC18980e.FILE, FILE), C20126t.m1103a(EnumC18980e.PROPERTY_GETTER, PROPERTY_GETTER), C20126t.m1103a(EnumC18980e.PROPERTY_SETTER, PROPERTY_SETTER), C20126t.m1103a(EnumC18980e.RECEIVER, enumC18996n3), C20126t.m1103a(EnumC18980e.SETTER_PARAMETER, enumC18996n3), C20126t.m1103a(EnumC18980e.PROPERTY_DELEGATE_FIELD, enumC18996n4));
    }

    EnumC18996n(String str, boolean z) {
        this.description = str;
        this.isDefault = z;
    }

    /* synthetic */ EnumC18996n(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? true : z);
    }

    public final boolean isDefault() {
        return this.isDefault;
    }
}
