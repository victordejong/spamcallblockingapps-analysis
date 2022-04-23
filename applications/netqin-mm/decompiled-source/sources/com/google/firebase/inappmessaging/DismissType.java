package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/DismissType.class */
public enum DismissType implements C6381y.AbstractC6384c {
    UNKNOWN_DISMISS_TYPE(0),
    AUTO(1),
    CLICK(2),
    SWIPE(3);
    
    public static final int AUTO_VALUE = 1;
    public static final int CLICK_VALUE = 2;
    public static final int SWIPE_VALUE = 3;
    public static final int UNKNOWN_DISMISS_TYPE_VALUE = 0;
    public static final C6381y.AbstractC6385d<DismissType> internalValueMap = new C6381y.AbstractC6385d<DismissType>() { // from class: com.google.firebase.inappmessaging.DismissType.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public DismissType mo6797a(int i) {
            return DismissType.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.DismissType$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/DismissType$b.class */
    public static final class C7831b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30959a = new C7831b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return DismissType.forNumber(i) != null;
        }
    }

    DismissType(int i) {
        this.value = i;
    }

    public static DismissType forNumber(int i) {
        if (i == 0) {
            return UNKNOWN_DISMISS_TYPE;
        }
        if (i == 1) {
            return AUTO;
        }
        if (i == 2) {
            return CLICK;
        }
        if (i != 3) {
            return null;
        }
        return SWIPE;
    }

    public static C6381y.AbstractC6385d<DismissType> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7831b.f30959a;
    }

    @Deprecated
    public static DismissType valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
