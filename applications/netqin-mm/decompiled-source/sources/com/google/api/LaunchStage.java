package com.google.api;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/api/LaunchStage.class */
public enum LaunchStage implements C6381y.AbstractC6384c {
    LAUNCH_STAGE_UNSPECIFIED(0),
    EARLY_ACCESS(1),
    ALPHA(2),
    BETA(3),
    GA(4),
    DEPRECATED(5),
    UNRECOGNIZED(-1);
    
    public static final int ALPHA_VALUE = 2;
    public static final int BETA_VALUE = 3;
    public static final int DEPRECATED_VALUE = 5;
    public static final int EARLY_ACCESS_VALUE = 1;
    public static final int GA_VALUE = 4;
    public static final int LAUNCH_STAGE_UNSPECIFIED_VALUE = 0;
    public static final C6381y.AbstractC6385d<LaunchStage> internalValueMap = new C6381y.AbstractC6385d<LaunchStage>() { // from class: com.google.api.LaunchStage.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public LaunchStage mo6797a(int i) {
            return LaunchStage.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.api.LaunchStage$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/LaunchStage$b.class */
    public static final class C7304b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30263a = new C7304b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return LaunchStage.forNumber(i) != null;
        }
    }

    LaunchStage(int i) {
        this.value = i;
    }

    public static LaunchStage forNumber(int i) {
        if (i == 0) {
            return LAUNCH_STAGE_UNSPECIFIED;
        }
        if (i == 1) {
            return EARLY_ACCESS;
        }
        if (i == 2) {
            return ALPHA;
        }
        if (i == 3) {
            return BETA;
        }
        if (i == 4) {
            return GA;
        }
        if (i != 5) {
            return null;
        }
        return DEPRECATED;
    }

    public static C6381y.AbstractC6385d<LaunchStage> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7304b.f30263a;
    }

    @Deprecated
    public static LaunchStage valueOf(int i) {
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
