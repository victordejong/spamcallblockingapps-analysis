package p193e.p1545k.p1546a.p1556c;

import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e;
/* renamed from: e.k.a.c.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/p.class */
public enum EnumC23942p implements AbstractC23449e {
    USE_ANNOTATIONS(true),
    USE_GETTERS_AS_SETTERS(true),
    PROPAGATE_TRANSIENT_MARKER(false),
    AUTO_DETECT_CREATORS(true),
    AUTO_DETECT_FIELDS(true),
    AUTO_DETECT_GETTERS(true),
    AUTO_DETECT_IS_GETTERS(true),
    AUTO_DETECT_SETTERS(true),
    REQUIRE_SETTERS_FOR_GETTERS(false),
    ALLOW_FINAL_FIELDS_AS_MUTATORS(true),
    INFER_PROPERTY_MUTATORS(true),
    INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES(true),
    ALLOW_VOID_VALUED_PROPERTIES(false),
    CAN_OVERRIDE_ACCESS_MODIFIERS(true),
    OVERRIDE_PUBLIC_ACCESS_MODIFIERS(true),
    USE_STATIC_TYPING(false),
    USE_BASE_TYPE_AS_DEFAULT_IMPL(false),
    INFER_BUILDER_TYPE_BINDINGS(true),
    DEFAULT_VIEW_INCLUSION(true),
    SORT_PROPERTIES_ALPHABETICALLY(false),
    SORT_CREATOR_PROPERTIES_FIRST(true),
    ACCEPT_CASE_INSENSITIVE_PROPERTIES(false),
    ACCEPT_CASE_INSENSITIVE_ENUMS(false),
    ACCEPT_CASE_INSENSITIVE_VALUES(false),
    USE_WRAPPER_NAME_AS_PROPERTY_NAME(false),
    USE_STD_BEAN_NAMING(false),
    ALLOW_EXPLICIT_PROPERTY_RENAMING(false),
    ALLOW_COERCION_OF_SCALARS(true),
    IGNORE_DUPLICATE_MODULE_REGISTRATIONS(true),
    IGNORE_MERGE_FOR_UNMERGEABLE(true),
    BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES(false);
    

    /* renamed from: a */
    public final boolean f66255a;

    /* renamed from: b */
    public final int f66256b = 1 << ordinal();

    EnumC23942p(boolean z) {
        this.f66255a = z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e
    /* renamed from: a */
    public int mo5649a() {
        return this.f66256b;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e
    /* renamed from: c */
    public boolean mo5648c() {
        return this.f66255a;
    }
}
