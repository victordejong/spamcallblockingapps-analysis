package com.google.android.gms.tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/tasks/i.class */
public final class i<TResult> {

    /* renamed from: a  reason: collision with root package name */
    public final ah<TResult> f30014a = new ah<>();

    public i() {
    }

    public i(a aVar) {
        new ae(this);
    }

    public final h<TResult> a() {
        return this.f30014a;
    }

    public final void a(Exception exc) {
        this.f30014a.a(exc);
    }

    public final void a(TResult tresult) {
        this.f30014a.a((ah<TResult>) tresult);
    }

    public final boolean b(Exception exc) {
        return this.f30014a.b(exc);
    }

    public final boolean b(TResult tresult) {
        return this.f30014a.b((ah<TResult>) tresult);
    }
}
