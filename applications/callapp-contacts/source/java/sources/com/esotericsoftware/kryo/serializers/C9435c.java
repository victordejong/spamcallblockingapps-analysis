package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.C9408n;
import java.io.Serializable;
import java.lang.invoke.SerializedLambda;
import java.lang.reflect.Method;
/* renamed from: com.esotericsoftware.kryo.serializers.c */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/c.class */
public final class C9435c extends AbstractC9413h {

    /* renamed from: a */
    private static Method f32393a;

    /* renamed from: com.esotericsoftware.kryo.serializers.c$a */
    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/c$a.class */
    public static class C9436a {
    }

    public C9435c() {
        if (f32393a == null) {
            try {
                Method declaredMethod = SerializedLambda.class.getDeclaredMethod("readResolve", new Class[0]);
                f32393a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
                throw new KryoException("Unable to obtain SerializedLambda#readResolve via reflection.", e);
            }
        }
    }

    /* renamed from: a */
    private static SerializedLambda m24267a(Object obj) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod("writeReplace", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(obj, new Object[0]);
            try {
                return (SerializedLambda) invoke;
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("writeReplace must return a SerializedLambda: ");
                sb.append(invoke == null ? null : C9408n.m24292d(invoke.getClass()));
                throw new KryoException(sb.toString(), e);
            }
        } catch (Exception e2) {
            if (!(obj instanceof Serializable)) {
                throw new KryoException("Closure must implement java.io.Serializable.", e2);
            }
            throw new KryoException("Error serializing closure.", e2);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public final Object copy(C9380c c9380c, Object obj) {
        try {
            return f32393a.invoke(m24267a(obj), new Object[0]);
        } catch (Exception e) {
            throw new KryoException("Error copying closure.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public final Object read(C9380c c9380c, C9374a c9374a, Class cls) {
        int m24456b = c9374a.m24456b(true);
        Object[] objArr = new Object[m24456b];
        for (int i = 0; i < m24456b; i++) {
            objArr[i] = c9380c.m24379b(c9374a);
        }
        try {
            return f32393a.invoke(new SerializedLambda(c9380c.m24393a(c9374a).f32360a, c9374a.m24433m(), c9374a.m24433m(), c9374a.m24433m(), c9374a.m24456b(true), c9374a.m24433m(), c9374a.m24433m(), c9374a.m24433m(), c9374a.m24433m(), objArr), new Object[0]);
        } catch (Exception e) {
            throw new KryoException("Error reading closure.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.AbstractC9413h
    public final void write(C9380c c9380c, C9376c c9376c, Object obj) {
        SerializedLambda m24267a = m24267a(obj);
        int capturedArgCount = m24267a.getCapturedArgCount();
        c9376c.m24402b(capturedArgCount, true);
        for (int i = 0; i < capturedArgCount; i++) {
            c9380c.m24388a(c9376c, m24267a.getCapturedArg(i));
        }
        try {
            c9380c.m24389a(c9376c, (Class) Class.forName(m24267a.getCapturingClass().replace('/', '.')));
            c9376c.m24416a(m24267a.getFunctionalInterfaceClass());
            c9376c.m24416a(m24267a.getFunctionalInterfaceMethodName());
            c9376c.m24416a(m24267a.getFunctionalInterfaceMethodSignature());
            c9376c.m24402b(m24267a.getImplMethodKind(), true);
            c9376c.m24416a(m24267a.getImplClass());
            c9376c.m24416a(m24267a.getImplMethodName());
            c9376c.m24416a(m24267a.getImplMethodSignature());
            c9376c.m24416a(m24267a.getInstantiatedMethodType());
        } catch (ClassNotFoundException e) {
            throw new KryoException("Error writing closure.", e);
        }
    }
}
