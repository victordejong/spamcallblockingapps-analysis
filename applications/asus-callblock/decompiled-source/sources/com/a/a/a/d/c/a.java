package com.a.a.a.d.c;

import com.a.a.a.b;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private b f399a;
    private ReadWriteLock d = new ReentrantReadWriteLock(true);

    /* renamed from: b  reason: collision with root package name */
    private ReadWriteLock f400b = new ReentrantReadWriteLock(true);
    private Lock c = new ReentrantLock(true);

    public a(b bVar) {
        this.f399a = bVar;
    }
}
