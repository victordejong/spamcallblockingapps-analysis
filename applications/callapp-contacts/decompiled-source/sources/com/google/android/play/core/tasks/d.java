package com.google.android.play.core.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/tasks/d.class */
public abstract class d<ResultT> {
    public abstract d<ResultT> a(a<ResultT> aVar);

    public abstract d<ResultT> a(b bVar);

    public abstract d<ResultT> a(c<? super ResultT> cVar);

    public abstract d<ResultT> a(Executor executor, b bVar);

    public abstract d<ResultT> a(Executor executor, c<? super ResultT> cVar);

    public abstract boolean a();

    public abstract boolean b();

    public abstract ResultT c();

    public abstract Exception d();
}
