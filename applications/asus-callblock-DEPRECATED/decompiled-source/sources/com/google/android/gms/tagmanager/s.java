package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/s.class */
final class s extends bd {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4418b = h.GREATER_EQUALS.toString();

    public s() {
        super(f4418b);
    }

    @Override // com.google.android.gms.tagmanager.bd
    protected final boolean a(cm cmVar, cm cmVar2) {
        return cmVar.compareTo(cmVar2) >= 0;
    }
}
