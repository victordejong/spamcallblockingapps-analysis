package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import p229s2.C4282d;
import p261v2.AbstractC4591d;
import p261v2.AbstractC4595h;
import p261v2.AbstractC4599k;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/CctBackendFactory.class */
public class CctBackendFactory implements AbstractC4591d {
    @Override // p261v2.AbstractC4591d
    public AbstractC4599k create(AbstractC4595h abstractC4595h) {
        return new C4282d(abstractC4595h.mo745a(), abstractC4595h.mo742d(), abstractC4595h.mo743c());
    }
}
