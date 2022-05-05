package com.b.a;

import java.util.ArrayDeque;
import java.util.Deque;
/* loaded from: classes-dex2jar.jar:com/b/a/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    private int f3330a = 64;

    /* renamed from: b  reason: collision with root package name */
    private int f3331b = 5;
    private final Deque<Object> c = new ArrayDeque();
    private final Deque<Object> d = new ArrayDeque();
    private final Deque<e> e = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(e eVar) {
        synchronized (this) {
            this.e.add(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(e eVar) {
        synchronized (this) {
            if (!this.e.remove(eVar)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
        }
    }
}
