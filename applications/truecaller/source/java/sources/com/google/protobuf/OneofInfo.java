package com.google.protobuf;

import java.lang.reflect.Field;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/OneofInfo.class */
public final class OneofInfo {
    private final Field caseField;

    /* renamed from: id */
    private final int f7132id;
    private final Field valueField;

    public OneofInfo(int i, Field field, Field field2) {
        this.f7132id = i;
        this.caseField = field;
        this.valueField = field2;
    }

    public Field getCaseField() {
        return this.caseField;
    }

    public int getId() {
        return this.f7132id;
    }

    public Field getValueField() {
        return this.valueField;
    }
}
