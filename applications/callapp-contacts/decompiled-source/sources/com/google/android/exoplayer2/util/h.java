package com.google.android.exoplayer2.util;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/h.class */
public final class h<E> implements Iterable<E> {

    /* renamed from: a  reason: collision with root package name */
    public final Object f22292a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final Map<E, Integer> f22293b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public Set<E> f22294c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    public List<E> f22295d = Collections.emptyList();

    public final Set<E> a() {
        Set<E> set;
        synchronized (this.f22292a) {
            set = this.f22294c;
        }
        return set;
    }

    @Override // java.lang.Iterable
    public final Iterator<E> iterator() {
        Iterator<E> it2;
        synchronized (this.f22292a) {
            it2 = this.f22295d.iterator();
        }
        return it2;
    }
}
