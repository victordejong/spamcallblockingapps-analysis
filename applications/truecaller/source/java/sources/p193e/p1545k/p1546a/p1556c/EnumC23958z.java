package p193e.p1545k.p1546a.p1556c;

import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e;
/* renamed from: e.k.a.c.z */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/z.class */
public enum EnumC23958z implements AbstractC23449e {
    WRAP_ROOT_VALUE(false),
    INDENT_OUTPUT(false),
    FAIL_ON_EMPTY_BEANS(true),
    FAIL_ON_SELF_REFERENCES(true),
    WRAP_EXCEPTIONS(true),
    FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS(true),
    WRITE_SELF_REFERENCES_AS_NULL(false),
    CLOSE_CLOSEABLE(false),
    FLUSH_AFTER_WRITE_VALUE(true),
    WRITE_DATES_AS_TIMESTAMPS(true),
    WRITE_DATE_KEYS_AS_TIMESTAMPS(false),
    WRITE_DATES_WITH_ZONE_ID(false),
    WRITE_DURATIONS_AS_TIMESTAMPS(true),
    WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS(false),
    WRITE_ENUMS_USING_TO_STRING(false),
    WRITE_ENUMS_USING_INDEX(false),
    WRITE_ENUM_KEYS_USING_INDEX(false),
    WRITE_NULL_MAP_VALUES(true),
    WRITE_EMPTY_JSON_ARRAYS(true),
    WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED(false),
    WRITE_BIGDECIMAL_AS_PLAIN(false),
    WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS(true),
    ORDER_MAP_ENTRIES_BY_KEYS(false),
    EAGER_SERIALIZER_FETCH(true),
    USE_EQUALITY_FOR_OBJECT_ID(false);
    

    /* renamed from: a */
    public final boolean f66343a;

    /* renamed from: b */
    public final int f66344b = 1 << ordinal();

    EnumC23958z(boolean z) {
        this.f66343a = z;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e
    /* renamed from: a */
    public int mo5649a() {
        return this.f66344b;
    }

    @Override // p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23449e
    /* renamed from: c */
    public boolean mo5648c() {
        return this.f66343a;
    }
}
