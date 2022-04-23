package com.google.android.play.core.internal;

import com.google.android.play.core.a.a;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/g.class */
public final class g<StateT> {

    /* renamed from: a  reason: collision with root package name */
    protected final Set<a<StateT>> f31373a = new HashSet();

    public final void a(StateT statet) {
        synchronized (this) {
            for (a<StateT> aVar : this.f31373a) {
                aVar.onStateUpdate(statet);
            }
        }
    }
}
