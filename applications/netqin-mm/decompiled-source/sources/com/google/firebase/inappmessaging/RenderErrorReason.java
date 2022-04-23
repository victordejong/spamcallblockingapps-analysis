package com.google.firebase.inappmessaging;

import p131c.p161d.p367h.C6381y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/RenderErrorReason.class */
public enum RenderErrorReason implements C6381y.AbstractC6384c {
    UNSPECIFIED_RENDER_ERROR(0),
    IMAGE_FETCH_ERROR(1),
    IMAGE_DISPLAY_ERROR(2),
    IMAGE_UNSUPPORTED_FORMAT(3);
    
    public static final int IMAGE_DISPLAY_ERROR_VALUE = 2;
    public static final int IMAGE_FETCH_ERROR_VALUE = 1;
    public static final int IMAGE_UNSUPPORTED_FORMAT_VALUE = 3;
    public static final int UNSPECIFIED_RENDER_ERROR_VALUE = 0;
    public static final C6381y.AbstractC6385d<RenderErrorReason> internalValueMap = new C6381y.AbstractC6385d<RenderErrorReason>() { // from class: com.google.firebase.inappmessaging.RenderErrorReason.a
        @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public RenderErrorReason mo6797a(int i) {
            return RenderErrorReason.forNumber(i);
        }
    };
    public final int value;

    /* renamed from: com.google.firebase.inappmessaging.RenderErrorReason$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/RenderErrorReason$b.class */
    public static final class C7841b implements C6381y.AbstractC6386e {

        /* renamed from: a */
        public static final C6381y.AbstractC6386e f30963a = new C7841b();

        @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
        /* renamed from: a */
        public boolean mo6796a(int i) {
            return RenderErrorReason.forNumber(i) != null;
        }
    }

    RenderErrorReason(int i) {
        this.value = i;
    }

    public static RenderErrorReason forNumber(int i) {
        if (i == 0) {
            return UNSPECIFIED_RENDER_ERROR;
        }
        if (i == 1) {
            return IMAGE_FETCH_ERROR;
        }
        if (i == 2) {
            return IMAGE_DISPLAY_ERROR;
        }
        if (i != 3) {
            return null;
        }
        return IMAGE_UNSUPPORTED_FORMAT;
    }

    public static C6381y.AbstractC6385d<RenderErrorReason> internalGetValueMap() {
        return internalValueMap;
    }

    public static C6381y.AbstractC6386e internalGetVerifier() {
        return C7841b.f30963a;
    }

    @Deprecated
    public static RenderErrorReason valueOf(int i) {
        return forNumber(i);
    }

    @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
    public final int getNumber() {
        return this.value;
    }
}
