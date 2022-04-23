package com.esotericsoftware.kryo.serializers;

import com.esotericsoftware.kryo.KryoException;
import com.esotericsoftware.kryo.c.n;
import com.esotericsoftware.kryo.h;
import java.io.Serializable;
import java.lang.invoke.SerializedLambda;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/c.class */
public final class c extends h {

    /* renamed from: a  reason: collision with root package name */
    private static Method f19055a;

    /* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/serializers/c$a.class */
    public static class a {
    }

    public c() {
        if (f19055a == null) {
            try {
                Method declaredMethod = SerializedLambda.class.getDeclaredMethod("readResolve", new Class[0]);
                f19055a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
                throw new KryoException("Unable to obtain SerializedLambda#readResolve via reflection.", e);
            }
        }
    }

    private static SerializedLambda a(Object obj) {
        try {
            Method declaredMethod = obj.getClass().getDeclaredMethod("writeReplace", new Class[0]);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(obj, new Object[0]);
            try {
                return (SerializedLambda) invoke;
            } catch (Exception e) {
                StringBuilder sb = new StringBuilder("writeReplace must return a SerializedLambda: ");
                sb.append(invoke == null ? null : n.d(invoke.getClass()));
                throw new KryoException(sb.toString(), e);
            }
        } catch (Exception e2) {
            if (obj instanceof Serializable) {
                throw new KryoException("Error serializing closure.", e2);
            }
            throw new KryoException("Closure must implement java.io.Serializable.", e2);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public final Object copy(com.esotericsoftware.kryo.c cVar, Object obj) {
        try {
            return f19055a.invoke(a(obj), new Object[0]);
        } catch (Exception e) {
            throw new KryoException("Error copying closure.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public final Object read(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.a aVar, Class cls) {
        int b2 = aVar.b(true);
        Object[] objArr = new Object[b2];
        for (int i = 0; i < b2; i++) {
            objArr[i] = cVar.b(aVar);
        }
        try {
            return f19055a.invoke(new SerializedLambda(cVar.a(aVar).f19039a, aVar.m(), aVar.m(), aVar.m(), aVar.b(true), aVar.m(), aVar.m(), aVar.m(), aVar.m(), objArr), new Object[0]);
        } catch (Exception e) {
            throw new KryoException("Error reading closure.", e);
        }
    }

    @Override // com.esotericsoftware.kryo.h
    public final void write(com.esotericsoftware.kryo.c cVar, com.esotericsoftware.kryo.a.c cVar2, Object obj) {
        SerializedLambda a2 = a(obj);
        int capturedArgCount = a2.getCapturedArgCount();
        cVar2.b(capturedArgCount, true);
        for (int i = 0; i < capturedArgCount; i++) {
            cVar.a(cVar2, a2.getCapturedArg(i));
        }
        try {
            cVar.a(cVar2, (Class) Class.forName(a2.getCapturingClass().replace('/', '.')));
            cVar2.a(a2.getFunctionalInterfaceClass());
            cVar2.a(a2.getFunctionalInterfaceMethodName());
            cVar2.a(a2.getFunctionalInterfaceMethodSignature());
            cVar2.b(a2.getImplMethodKind(), true);
            cVar2.a(a2.getImplClass());
            cVar2.a(a2.getImplMethodName());
            cVar2.a(a2.getImplMethodSignature());
            cVar2.a(a2.getInstantiatedMethodType());
        } catch (ClassNotFoundException e) {
            throw new KryoException("Error writing closure.", e);
        }
    }
}
