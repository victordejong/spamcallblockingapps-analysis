package androidx.savedstate;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import p1727n3.p1757d0.C25700a;
/* loaded from: classes-dex2jar.jar:androidx/savedstate/Recreator$a.class */
public final class Recreator$a implements C25700a.AbstractC25702b {

    /* renamed from: a */
    public final Set<String> f1423a = new HashSet();

    public Recreator$a(C25700a c25700a) {
        c25700a.m3046b("androidx.savedstate.Restarter", this);
    }

    @Override // p1727n3.p1757d0.C25700a.AbstractC25702b
    /* renamed from: a */
    public Bundle mo990a() {
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f1423a));
        return bundle;
    }
}
