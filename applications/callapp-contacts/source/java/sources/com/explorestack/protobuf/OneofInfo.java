package com.explorestack.protobuf;

import java.lang.reflect.Field;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/OneofInfo.class */
final class OneofInfo {
    private final Field caseField;

    /* renamed from: id */
    private final int f32913id;
    private final Field valueField;

    public OneofInfo(int i, Field field, Field field2) {
        this.f32913id = i;
        this.caseField = field;
        this.valueField = field2;
    }

    public final Field getCaseField() {
        return this.caseField;
    }

    public final int getId() {
        return this.f32913id;
    }

    public final Field getValueField() {
        return this.valueField;
    }
}
