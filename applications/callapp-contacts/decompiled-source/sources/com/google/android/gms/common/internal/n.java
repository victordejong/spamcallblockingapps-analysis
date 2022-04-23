package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.m;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/n.class */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final al f22899a = new ai();

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/n$a.class */
    public interface a<R extends m, T> {
        T a(R r);
    }

    public static <R extends m> h<Void> a(j<R> jVar) {
        return a(jVar, new ak());
    }

    public static <R extends m, T> h<T> a(j<R> jVar, a<R, T> aVar) {
        al alVar = f22899a;
        i iVar = new i();
        jVar.a(new aj(jVar, iVar, aVar, alVar));
        return iVar.f30014a;
    }
}
