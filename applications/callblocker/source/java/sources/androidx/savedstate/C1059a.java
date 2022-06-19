package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0863d;
import androidx.lifecycle.AbstractC0864e;
import androidx.lifecycle.AbstractC0869h;
import androidx.p003a.p004a.p006b.C0068b;
import java.util.Map;
@SuppressLint({"RestrictedApi"})
/* renamed from: androidx.savedstate.a */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/a.class */
public final class C1059a {

    /* renamed from: c */
    private Bundle f3602c;

    /* renamed from: d */
    private boolean f3603d;

    /* renamed from: b */
    private C0068b<String, AbstractC1061b> f3601b = new C0068b<>();

    /* renamed from: a */
    boolean f3600a = true;

    /* renamed from: androidx.savedstate.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$a.class */
    public interface AbstractC1060a {
        /* renamed from: a */
        void m18231a(AbstractC1063c abstractC1063c);
    }

    /* renamed from: androidx.savedstate.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$b.class */
    public interface AbstractC1061b {
        /* renamed from: a */
        Bundle m18230a();
    }

    /* renamed from: a */
    public Bundle m18232a(String str) {
        Bundle bundle;
        if (!this.f3603d) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        if (this.f3602c != null) {
            Bundle bundle2 = this.f3602c.getBundle(str);
            this.f3602c.remove(str);
            bundle = bundle2;
            if (this.f3602c.isEmpty()) {
                this.f3602c = null;
                bundle = bundle2;
            }
        } else {
            bundle = null;
        }
        return bundle;
    }

    /* renamed from: a */
    public void m18234a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (this.f3602c != null) {
            bundle2.putAll(this.f3602c);
        }
        C0068b<String, AbstractC1061b>.C0072d m22299c = this.f3601b.m22299c();
        while (m22299c.hasNext()) {
            Map.Entry next = m22299c.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC1061b) next.getValue()).m18230a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: a */
    public void m18233a(AbstractC0864e abstractC0864e, Bundle bundle) {
        if (this.f3603d) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.f3602c = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        abstractC0864e.mo19219a(new AbstractC0863d() { // from class: androidx.savedstate.SavedStateRegistry$1
            @Override // androidx.lifecycle.AbstractC0867f
            /* renamed from: a */
            public void mo17991a(AbstractC0869h abstractC0869h, AbstractC0864e.EnumC0865a enumC0865a) {
                if (enumC0865a == AbstractC0864e.EnumC0865a.ON_START) {
                    C1059a.this.f3600a = true;
                } else if (enumC0865a != AbstractC0864e.EnumC0865a.ON_STOP) {
                } else {
                    C1059a.this.f3600a = false;
                }
            }
        });
        this.f3603d = true;
    }
}
