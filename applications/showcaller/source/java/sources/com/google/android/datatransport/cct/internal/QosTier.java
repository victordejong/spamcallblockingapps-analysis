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
    

    /* renamed from: j */
    private static final SparseArray<QosTier> f14088j;
    private final int value;

    static {
        QosTier qosTier = DEFAULT;
        QosTier qosTier2 = UNMETERED_ONLY;
        QosTier qosTier3 = UNMETERED_OR_DAILY;
        QosTier qosTier4 = FAST_IF_RADIO_AWAKE;
        QosTier qosTier5 = NEVER;
        QosTier qosTier6 = UNRECOGNIZED;
        SparseArray<QosTier> sparseArray = new SparseArray<>();
        f14088j = sparseArray;
        sparseArray.put(0, qosTier);
        sparseArray.put(1, qosTier2);
        sparseArray.put(2, qosTier3);
        sparseArray.put(3, qosTier4);
        sparseArray.put(4, qosTier5);
        sparseArray.put(-1, qosTier6);
    }

    QosTier(int i) {
        this.value = i;
    }

    public static QosTier forNumber(int i) {
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
