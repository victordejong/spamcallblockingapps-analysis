package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import androidx.savedstate.Recreator;
import p173n.C3686b;
@SuppressLint({"RestrictedApi"})
/* renamed from: androidx.savedstate.a */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/a.class */
public final class C0657a {

    /* renamed from: b */
    public Bundle f2560b;

    /* renamed from: c */
    public boolean f2561c;

    /* renamed from: d */
    public Recreator.C0656a f2562d;

    /* renamed from: a */
    public C3686b<String, AbstractC0659b> f2559a = new C3686b<>();

    /* renamed from: e */
    public boolean f2563e = true;

    /* renamed from: androidx.savedstate.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$a.class */
    public interface AbstractC0658a {
        /* renamed from: a */
        void mo7512a(AbstractC0661c abstractC0661c);
    }

    /* renamed from: androidx.savedstate.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$b.class */
    public interface AbstractC0659b {
        /* renamed from: a */
        Bundle mo3371a();
    }

    /* renamed from: a */
    public Bundle m7515a(String str) {
        if (this.f2561c) {
            Bundle bundle = this.f2560b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f2560b.remove(str);
            if (this.f2560b.isEmpty()) {
                this.f2560b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: b */
    public void m7514b(String str, AbstractC0659b abstractC0659b) {
        if (this.f2559a.mo1888d(str, abstractC0659b) == null) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
    }

    /* renamed from: c */
    public void m7513c(Class<? extends AbstractC0658a> cls) {
        if (this.f2563e) {
            if (this.f2562d == null) {
                this.f2562d = new Recreator.C0656a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                Recreator.C0656a c0656a = this.f2562d;
                c0656a.f2557a.add(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                StringBuilder m8752j = C0082b.m8752j("Class");
                m8752j.append(cls.getSimpleName());
                m8752j.append(" must have default constructor in order to be automatically recreated");
                throw new IllegalArgumentException(m8752j.toString(), e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}
