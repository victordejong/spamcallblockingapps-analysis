package com.google.a.d.a;

import com.google.a.a.a;
import com.google.a.b.d;
import com.google.a.b.v;
import com.google.a.d.a.i;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/a/d/a/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final v<Constructor<?>> f3746a = new d(new a<Constructor<?>, Boolean>() { // from class: com.google.a.d.a.e.2
        @Override // com.google.a.a.a
        public final /* synthetic */ Boolean a(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }, v.b()).a();

    public static <V> void a(final f<V> fVar, final d<? super V> dVar) {
        i.a aVar = new i.a((byte) 0);
        com.google.a.a.d.a(dVar);
        fVar.a(new Runnable() { // from class: com.google.a.d.a.e.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    dVar.a((d) k.a(f.this));
                } catch (Error e) {
                    dVar.a((Throwable) e);
                } catch (RuntimeException e2) {
                    dVar.a((Throwable) e2);
                } catch (ExecutionException e3) {
                    dVar.a(e3.getCause());
                }
            }
        }, aVar);
    }
}
