package com.google.android.datatransport.cct.internal;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/QosTier.class */
public enum QosTier {
    DEFAULT(0),
    UNMETERED_ONLY(1),
    UNMETERED_OR_DAILY(2),
    FAST_IF_RADIO_AWAKE(3),
    NEVER(4),
    UNRECOGNIZED(-1);
    
    public static final SparseArray<QosTier> valueMap;
    public final int value;

    static {
        SparseArray<QosTier> sparseArray = new SparseArray<>();
        valueMap = sparseArray;
        sparseArray.put(0, DEFAULT);
        valueMap.put(1, UNMETERED_ONLY);
        valueMap.put(2, UNMETERED_OR_DAILY);
        valueMap.put(3, FAST_IF_RADIO_AWAKE);
        valueMap.put(4, NEVER);
        valueMap.put(-1, UNRECOGNIZED);
    }

    QosTier(int i) {
        this.value = i;
    }

    public static QosTier forNumber(int i) {
        if (i == 0) {
            return DEFAULT;
        }
        if (i == 1) {
            return UNMETERED_ONLY;
        }
        if (i == 2) {
            return UNMETERED_OR_DAILY;
        }
        if (i == 3) {
            return FAST_IF_RADIO_AWAKE;
        }
        if (i != 4) {
            return null;
        }
        return NEVER;
    }

    public final int getNumber() {
        return this.value;
    }
}
