package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import com.google.android.datatransport.runtime.backends.AbstractC4760d;
import com.google.android.datatransport.runtime.backends.AbstractC4764g;
import com.google.android.datatransport.runtime.backends.AbstractC4770l;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/CctBackendFactory.class */
public class CctBackendFactory implements AbstractC4760d {
    @Override // com.google.android.datatransport.runtime.backends.AbstractC4760d
    public AbstractC4770l create(AbstractC4764g abstractC4764g) {
        return new C4607d(abstractC4764g.mo21832b(), abstractC4764g.mo21829e(), abstractC4764g.mo21830d());
    }
}
