package com.google.firebase.datatransport;

import android.content.Context;
import com.google.android.datatransport.g;
import com.google.firebase.components.b;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import java.util.Collections;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/datatransport/TransportRegistrar.class */
public class TransportRegistrar implements i {
    @Override // com.google.firebase.components.i
    public List<b<?>> getComponents() {
        return Collections.singletonList(b.a(g.class).a(r.b(Context.class)).a(a.a()).a());
    }
}
