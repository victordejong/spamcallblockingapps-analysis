package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function12;
import kotlin.jvm.functions.Function13;
import kotlin.jvm.functions.Function14;
import kotlin.jvm.functions.Function15;
import kotlin.jvm.functions.Function16;
import kotlin.jvm.functions.Function17;
import kotlin.jvm.functions.Function18;
import kotlin.jvm.functions.Function19;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function20;
import kotlin.jvm.functions.Function21;
import kotlin.jvm.functions.Function22;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.functions.Function8;
import kotlin.jvm.functions.Function9;
@Deprecated
@Deprecated
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/FunctionImpl.class */
public abstract class FunctionImpl implements Function, Serializable, Function0, Function1, Function2, Function3, Function4, Function5, Function6, Function7, Function8, Function9, Function10, Function11, Function12, Function13, Function14, Function15, Function16, Function17, Function18, Function19, Function20, Function21, Function22 {
    /* renamed from: b */
    private void m1846b(int i) {
        if (getArity() != i) {
            m1844d(i);
            throw null;
        }
    }

    /* renamed from: d */
    private void m1844d(int i) {
        throw new IllegalStateException("Wrong function arity, expected: " + i + ", actual: " + getArity());
    }

    @Override // kotlin.jvm.functions.Function3
    /* renamed from: a */
    public Object mo594a(Object obj, Object obj2, Object obj3) {
        m1846b(3);
        return m1845c(obj, obj2, obj3);
    }

    /* renamed from: c */
    public Object m1845c(Object... objArr) {
        throw new UnsupportedOperationException();
    }

    public abstract int getArity();

    @Override // kotlin.jvm.functions.Function4
    /* renamed from: h */
    public Object mo643h(Object obj, Object obj2, Object obj3, Object obj4) {
        m1846b(4);
        return m1845c(obj, obj2, obj3, obj4);
    }

    @Override // kotlin.jvm.functions.Function8
    /* renamed from: i */
    public Object mo1843i(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8) {
        m1846b(8);
        return m1845c(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        m1846b(0);
        return m1845c(new Object[0]);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        m1846b(1);
        return m1845c(obj);
    }

    @Override // kotlin.jvm.functions.Function6
    /* renamed from: l */
    public Object mo1842l(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        m1846b(6);
        return m1845c(obj, obj2, obj3, obj4, obj5, obj6);
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: o */
    public Object mo422o(Object obj, Object obj2) {
        m1846b(2);
        return m1845c(obj, obj2);
    }

    @Override // kotlin.jvm.functions.Function9
    /* renamed from: r */
    public Object mo1841r(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9) {
        m1846b(9);
        return m1845c(obj, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9);
    }

    @Override // kotlin.jvm.functions.Function5
    /* renamed from: t */
    public Object mo1840t(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        m1846b(5);
        return m1845c(obj, obj2, obj3, obj4, obj5);
    }

    @Override // kotlin.jvm.functions.Function7
    /* renamed from: x */
    public Object mo1839x(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7) {
        m1846b(7);
        return m1845c(obj, obj2, obj3, obj4, obj5, obj6, obj7);
    }
}
