package com.google.type;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/type/DayOfWeek.class */
public enum DayOfWeek implements C6381y.AbstractC6384c {
    DAY_OF_WEEK_UNSPECIFIED(0),
    MONDAY(1),
    TUESDAY(2),
    WEDNESDAY(3),
    THURSDAY(4),
    FRIDAY(5),
    SATURDAY(6),
    SUNDAY(7),
    UNRECOGNIZED(-1);
    
    public static final int DAY_OF_WEEK_UNSPECIFIED_VALUE = 0;
    public static final int FRIDAY_VALUE = 5;
    public static final int MONDAY_VALUE = 1;
    public static final int SATURDAY_VALUE = 6;
    public static final int SUNDAY_VALUE = 7;
    public static final int THURSDAY_VALUE = 4;
    public static final int TUESDAY_VALUE = 2;
    public static final int WEDNESDAY_VALUE = 3;
    public static final C6381y.AbstractC6385d<DayOfWeek> internalValueMap = new C6381y.AbstractC6385d<DayOfWeek>() { // from class: com.google.type.DayOfWeek.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DayOfWeek mo6797a(int i) {
            return DayOfWeek.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.type.DayOfWeek$b */
    /* loaded from: classes2-dex2jar.jar:com/google/type/DayOfWeek$b.class */
    public static final class C7978b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f31165a = new C7978b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DayOfWeek.forNumber(i) != null;
        }
    }

    DayOfWeek(int i) {
        this.value = i;
    }

    public static DayOfWeek forNumber(int i) {
        switch (i) {
            case 0:
                return DAY_OF_WEEK_UNSPECIFIED;
            case 1:
                return MONDAY;
            case 2:
                return TUESDAY;
            case 3:
                return WEDNESDAY;
            case 4:
                return THURSDAY;
            case 5:
                return FRIDAY;
            case 6:
                return SATURDAY;
            case 7:
                return SUNDAY;
            default:
                return null;
        }
    }

    public static C6381y.AbstractC6385d<DayOfWeek> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7978b.f31165a;
    }

    @Deprecated
    public static DayOfWeek valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
