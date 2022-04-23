package com.google.android.datatransport.cct;

import com.google.android.datatransport.runtime.backends.d;
import com.google.android.datatransport.runtime.backends.h;
import com.google.android.datatransport.runtime.backends.m;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/CctBackendFactory.class */
public class CctBackendFactory implements d {
    @Override // com.google.android.datatransport.runtime.backends.d
    public m create(h hVar) {
        return new b(hVar.a(), hVar.b(), hVar.c());
    }
}
