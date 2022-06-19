package com.google.android.exoplayer2.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.exoplayer2.util.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/h.class */
public final class C11608h<E> implements Iterable<E> {

    /* renamed from: a */
    public final Object f38676a = new Object();

    /* renamed from: b */
    public final Map<E, Integer> f38677b = new HashMap();

    /* renamed from: c */
    public Set<E> f38678c = Collections.emptySet();

    /* renamed from: d */
    public List<E> f38679d = Collections.emptyList();

    /* renamed from: a */
    public final Set<E> m19894a() {
        Set<E> set;
        synchronized (this.f38676a) {
            set = this.f38678c;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public final Iterator<E> iterator() {
        Iterator<E> it2;
        synchronized (this.f38676a) {
            it2 = this.f38679d.iterator();
        }
        return it2;
    }
}
