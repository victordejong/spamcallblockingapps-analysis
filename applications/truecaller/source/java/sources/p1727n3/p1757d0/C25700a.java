package p1727n3.p1757d0;

import android.os.Bundle;
import androidx.savedstate.Recreator$a;
import p1727n3.p1746c.p1747a.p1749b.C25635b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.d0.a */
/* loaded from: classes-dex2jar.jar:n3/d0/a.class */
public final class C25700a {

    /* renamed from: b */
    public Bundle f71989b;

    /* renamed from: c */
    public boolean f71990c;

    /* renamed from: d */
    public Recreator$a f71991d;

    /* renamed from: a */
    public C25635b<String, AbstractC25702b> f71988a = new C25635b<>();

    /* renamed from: e */
    public boolean f71992e = true;

    /* renamed from: n3.d0.a$a */
    /* loaded from: classes-dex2jar.jar:n3/d0/a$a.class */
    public interface AbstractC25701a {
        /* renamed from: a */
        void mo3044a(AbstractC25704c abstractC25704c);
    }

    /* renamed from: n3.d0.a$b */
    /* loaded from: classes-dex2jar.jar:n3/d0/a$b.class */
    public interface AbstractC25702b {
        /* renamed from: a */
        Bundle mo990a();
    }

    /* renamed from: a */
    public Bundle m3047a(String str) {
        if (this.f71990c) {
            Bundle bundle = this.f71989b;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f71989b.remove(str);
            if (this.f71989b.isEmpty()) {
                this.f71989b = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: b */
    public void m3046b(String str, AbstractC25702b abstractC25702b) {
        if (this.f71988a.mo3104d(str, abstractC25702b) == null) {
            return;
        }
        throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
    }

    /* renamed from: c */
    public void m3045c(Class<? extends AbstractC25701a> cls) {
        if (this.f71992e) {
            if (this.f71991d == null) {
                this.f71991d = new Recreator$a(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                Recreator$a recreator$a = this.f71991d;
                recreator$a.f1423a.add(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                StringBuilder m8728C = C22128a.m8728C("Class");
                m8728C.append(cls.getSimpleName());
                m8728C.append(" must have default constructor in order to be automatically recreated");
                throw new IllegalArgumentException(m8728C.toString(), e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }
}
