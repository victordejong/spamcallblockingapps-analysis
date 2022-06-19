package com.google.firebase.datatransport;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.datatransport.AbstractC4647f;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import java.util.Collections;
import java.util.List;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/datatransport/TransportRegistrar.class */
public class TransportRegistrar implements AbstractC8868i {
    @Override // com.google.firebase.components.AbstractC8868i
    public List<C8858d<?>> getComponents() {
        return Collections.singletonList(C8858d.m2510a(AbstractC4647f.class).m2495b(C8881q.m2438i(Context.class)).m2491f(C9149a.m1713b()).m2493d());
    }
}
