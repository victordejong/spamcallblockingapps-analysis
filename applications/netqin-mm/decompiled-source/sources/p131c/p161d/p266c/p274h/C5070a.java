package p131c.p161d.p266c.p274h;

import com.google.common.reflect.TypeToken;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Member;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.h.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/h/a.class */
public class C5070a extends AccessibleObject implements Member {

    /* renamed from: a */
    public final AccessibleObject f17663a;

    /* renamed from: b */
    public final Member f17664b;

    public <M extends AccessibleObject & Member> C5070a(M m) {
        C4933n.m24795a(m);
        this.f17663a = m;
        this.f17664b = m;
    }

    /* renamed from: a */
    public TypeToken<?> mo7769a() {
        return TypeToken.m7772of((Class) getDeclaringClass());
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof C5070a) {
            C5070a aVar = (C5070a) obj;
            z = false;
            if (mo7769a().equals(aVar.mo7769a())) {
                z = false;
                if (this.f17664b.equals(aVar.f17664b)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f17663a.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.f17663a.getAnnotations();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.f17663a.getDeclaredAnnotations();
    }

    @Override // java.lang.reflect.Member
    public Class<?> getDeclaringClass() {
        return this.f17664b.getDeclaringClass();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.f17664b.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.f17664b.getName();
    }

    public int hashCode() {
        return this.f17664b.hashCode();
    }

    @Override // java.lang.reflect.AccessibleObject
    public final boolean isAccessible() {
        return this.f17663a.isAccessible();
    }

    @Override // java.lang.reflect.AccessibleObject, java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f17663a.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.f17664b.isSynthetic();
    }

    @Override // java.lang.reflect.AccessibleObject
    public final void setAccessible(boolean z) throws SecurityException {
        this.f17663a.setAccessible(z);
    }

    public String toString() {
        return this.f17664b.toString();
    }
}
