package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/FetchErrorReason.class */
public enum FetchErrorReason implements C6381y.AbstractC6384c {
    UNSPECIFIED_FETCH_ERROR(0),
    SERVER_ERROR(1),
    CLIENT_ERROR(2),
    NETWORK_ERROR(3);
    
    public static final int CLIENT_ERROR_VALUE = 2;
    public static final int NETWORK_ERROR_VALUE = 3;
    public static final int SERVER_ERROR_VALUE = 1;
    public static final int UNSPECIFIED_FETCH_ERROR_VALUE = 0;
    public static final C6381y.AbstractC6385d<FetchErrorReason> internalValueMap = new C6381y.AbstractC6385d<FetchErrorReason>() { // from class: com.google.firebase.inappmessaging.FetchErrorReason.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public FetchErrorReason mo6797a(int i) {
            return FetchErrorReason.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.FetchErrorReason$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/FetchErrorReason$b.class */
    public static final class C7838b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30962a = new C7838b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return FetchErrorReason.forNumber(i) != null;
        }
    }

    FetchErrorReason(int i) {
        this.value = i;
    }

    public static FetchErrorReason forNumber(int i) {
        if (i == 0) {
            return UNSPECIFIED_FETCH_ERROR;
        }
        if (i == 1) {
            return SERVER_ERROR;
        }
        if (i == 2) {
            return CLIENT_ERROR;
        }
        if (i != 3) {
            return null;
        }
        return NETWORK_ERROR;
    }

    public static C6381y.AbstractC6385d<FetchErrorReason> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7838b.f30962a;
    }

    @Deprecated
    public static FetchErrorReason valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
