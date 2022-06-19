package p305z4;

import android.support.p012v4.media.AbstractC0081a;
import com.google.firebase.components.DependencyException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p253u5.AbstractC4488c;
import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
/* renamed from: z4.t */
/* loaded from: classes-dex2jar.jar:z4/t.class */
public final class C5100t extends AbstractC0081a {

    /* renamed from: a */
    public final Set<Class<?>> f15451a;

    /* renamed from: b */
    public final Set<Class<?>> f15452b;

    /* renamed from: c */
    public final Set<Class<?>> f15453c;

    /* renamed from: d */
    public final Set<Class<?>> f15454d;

    /* renamed from: e */
    public final Set<Class<?>> f15455e;

    /* renamed from: f */
    public final Set<Class<?>> f15456f;

    /* renamed from: g */
    public final AbstractC5080d f15457g;

    /* renamed from: z4.t$a */
    /* loaded from: classes-dex2jar.jar:z4/t$a.class */
    public static class C5101a implements AbstractC4488c {

        /* renamed from: a */
        public final AbstractC4488c f15458a;

        public C5101a(Set<Class<?>> set, AbstractC4488c abstractC4488c) {
            this.f15458a = abstractC4488c;
        }
    }

    public C5100t(C5077c<?> c5077c, AbstractC5080d abstractC5080d) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (C5093m c5093m : c5077c.f15403b) {
            int i = c5093m.f15435c;
            if (!(i == 0)) {
                if (i == 2) {
                    hashSet3.add(c5093m.f15433a);
                } else if (c5093m.m42a()) {
                    hashSet5.add(c5093m.f15433a);
                } else {
                    hashSet2.add(c5093m.f15433a);
                }
            } else if (c5093m.m42a()) {
                hashSet4.add(c5093m.f15433a);
            } else {
                hashSet.add(c5093m.f15433a);
            }
        }
        if (!c5077c.f15407f.isEmpty()) {
            hashSet.add(AbstractC4488c.class);
        }
        this.f15451a = Collections.unmodifiableSet(hashSet);
        this.f15452b = Collections.unmodifiableSet(hashSet2);
        this.f15453c = Collections.unmodifiableSet(hashSet3);
        this.f15454d = Collections.unmodifiableSet(hashSet4);
        this.f15455e = Collections.unmodifiableSet(hashSet5);
        this.f15456f = c5077c.f15407f;
        this.f15457g = abstractC5080d;
    }

    @Override // android.support.p012v4.media.AbstractC0081a, p305z4.AbstractC5080d
    /* renamed from: a */
    public <T> T mo40a(Class<T> cls) {
        if (this.f15451a.contains(cls)) {
            T t = (T) this.f15457g.mo40a(cls);
            return !cls.equals(AbstractC4488c.class) ? t : (T) new C5101a(this.f15456f, (AbstractC4488c) t);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // android.support.p012v4.media.AbstractC0081a, p305z4.AbstractC5080d
    /* renamed from: b */
    public <T> Set<T> mo39b(Class<T> cls) {
        if (this.f15454d.contains(cls)) {
            return this.f15457g.mo39b(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: c */
    public <T> AbstractC4739b<T> mo38c(Class<T> cls) {
        if (this.f15452b.contains(cls)) {
            return this.f15457g.mo38c(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: d */
    public <T> AbstractC4739b<Set<T>> mo37d(Class<T> cls) {
        if (this.f15455e.contains(cls)) {
            return this.f15457g.mo37d(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // p305z4.AbstractC5080d
    /* renamed from: e */
    public <T> AbstractC4737a<T> mo36e(Class<T> cls) {
        if (this.f15453c.contains(cls)) {
            return this.f15457g.mo36e(cls);
        }
        throw new DependencyException(String.format("Attempting to request an undeclared dependency Deferred<%s>.", cls));
    }
}
