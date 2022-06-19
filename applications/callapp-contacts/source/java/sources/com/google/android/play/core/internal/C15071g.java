package com.google.android.play.core.internal;

import com.google.android.play.core.p377a.AbstractC14869a;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.play.core.internal.g */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/g.class */
public final class C15071g<StateT> {

    /* renamed from: a */
    protected final Set<AbstractC14869a<StateT>> f54776a = new HashSet();

    /* renamed from: a */
    public final void m9514a(StateT statet) {
        synchronized (this) {
            for (AbstractC14869a<StateT> abstractC14869a : this.f54776a) {
                abstractC14869a.onStateUpdate(statet);
            }
        }
    }
}
