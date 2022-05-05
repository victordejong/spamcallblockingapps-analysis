package com.a.a.a;

import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/a/a/a/e.class */
public final class e<E> extends ArrayList<E> {

    /* renamed from: a  reason: collision with root package name */
    private int f405a;

    /* renamed from: b  reason: collision with root package name */
    private String f406b;

    public e(Collection<? extends E> collection, int i) {
        super(collection);
        this.f405a = i;
    }

    public e(Collection<? extends E> collection, int i, String str) {
        this(collection, i);
        this.f406b = str;
    }
}
