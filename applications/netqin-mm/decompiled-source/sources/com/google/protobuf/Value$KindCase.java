package com.google.protobuf;
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/Value$KindCase.class */
public enum Value$KindCase {
    NULL_VALUE(1),
    NUMBER_VALUE(2),
    STRING_VALUE(3),
    BOOL_VALUE(4),
    STRUCT_VALUE(5),
    LIST_VALUE(6),
    KIND_NOT_SET(0);
    
    public final int value;

    Value$KindCase(int i) {
        this.value = i;
    }

    public static Value$KindCase forNumber(int i) {
        switch (i) {
            case 0:
                return KIND_NOT_SET;
            case 1:
                return NULL_VALUE;
            case 2:
                return NUMBER_VALUE;
            case 3:
                return STRING_VALUE;
            case 4:
                return BOOL_VALUE;
            case 5:
                return STRUCT_VALUE;
            case 6:
                return LIST_VALUE;
            default:
                return null;
        }
    }

    @Deprecated
    public static Value$KindCase valueOf(int i) {
        return forNumber(i);
    }

    public int getNumber() {
        return this.value;
    }
}
