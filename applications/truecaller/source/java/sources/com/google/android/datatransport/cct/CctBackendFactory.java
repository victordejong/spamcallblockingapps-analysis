package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import p193e.p1577m.p1578a.p1580b.p1581i.C23997d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24170d;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24175h;
import p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24181m;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/android/datatransport/cct/CctBackendFactory.class */
public class CctBackendFactory implements AbstractC24170d {
    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1593y.AbstractC24170d
    public AbstractC24181m create(AbstractC24175h abstractC24175h) {
        return new C23997d(abstractC24175h.mo5509a(), abstractC24175h.mo5506d(), abstractC24175h.mo5507c());
    }
}
