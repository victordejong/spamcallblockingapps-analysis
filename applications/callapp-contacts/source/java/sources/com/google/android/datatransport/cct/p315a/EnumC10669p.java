package com.google.android.datatransport.cct.p315a;

import android.util.SparseArray;
/* renamed from: com.google.android.datatransport.cct.a.p */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/p.class */
public enum EnumC10669p {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    
    private static final SparseArray<EnumC10669p> valueMap;
    private final int value;

    static {
        EnumC10669p enumC10669p = DEFAULT;
        EnumC10669p enumC10669p2 = UNMETERED_ONLY;
        EnumC10669p enumC10669p3 = UNMETERED_OR_DAILY;
        EnumC10669p enumC10669p4 = FAST_IF_RADIO_AWAKE;
        EnumC10669p enumC10669p5 = NEVER;
        EnumC10669p enumC10669p6 = UNRECOGNIZED;
        SparseArray<EnumC10669p> sparseArray = new SparseArray<>();
        valueMap = sparseArray;
        sparseArray.put(0, enumC10669p);
        sparseArray.put(1, enumC10669p2);
        sparseArray.put(2, enumC10669p3);
        sparseArray.put(3, enumC10669p4);
        sparseArray.put(4, enumC10669p5);
        sparseArray.put(-1, enumC10669p6);
    }

    EnumC10669p(int i) {
        this.value = i;
    }

    public static EnumC10669p forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return UNMETERED_ONLY;
            }
            if (i == 2) {
                return UNMETERED_OR_DAILY;
            }
            if (i == 3) {
                return FAST_IF_RADIO_AWAKE;
            }
            if (i == 4) {
                return NEVER;
            }
            return null;
        }
        return DEFAULT;
    }

    public final int getNumber() {
        return this.value;
    }
}
