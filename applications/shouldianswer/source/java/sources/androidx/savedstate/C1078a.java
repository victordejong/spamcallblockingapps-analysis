package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0895f;
import androidx.lifecycle.AbstractC0896g;
import androidx.lifecycle.AbstractC0903k;
import androidx.p002a.p003a.p005b.C0037b;
import java.util.Map;
/* renamed from: androidx.savedstate.a */
/* loaded from: classes-dex2jar.jar:androidx/savedstate/a.class */
public final class C1078a {

    /* renamed from: c */
    private Bundle f3392c;

    /* renamed from: d */
    private boolean f3393d;

    /* renamed from: b */
    private C0037b<String, AbstractC1080b> f3391b = new C0037b<>();

    /* renamed from: a */
    boolean f3390a = true;

    /* renamed from: androidx.savedstate.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$a.class */
    public interface AbstractC1079a {
        /* renamed from: a */
        void m4385a(AbstractC1082c abstractC1082c);
    }

    /* renamed from: androidx.savedstate.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/savedstate/a$b.class */
    public interface AbstractC1080b {
        /* renamed from: a */
        Bundle m4384a();
    }

    /* renamed from: a */
    public Bundle m4386a(String str) {
        if (this.f3393d) {
            Bundle bundle = this.f3392c;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            this.f3392c.remove(str);
            if (this.f3392c.isEmpty()) {
                this.f3392c = null;
            }
            return bundle2;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    /* renamed from: a */
    public void m4388a(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f3392c;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        C0037b<String, AbstractC1080b>.C0041d m8007c = this.f3391b.m8007c();
        while (m8007c.hasNext()) {
            Map.Entry next = m8007c.next();
            bundle2.putBundle((String) next.getKey(), ((AbstractC1080b) next.getValue()).m4384a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    /* renamed from: a */
    public void m4387a(AbstractC0896g abstractC0896g, Bundle bundle) {
        if (!this.f3393d) {
            if (bundle != null) {
                this.f3392c = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
            }
            abstractC0896g.mo5108a(new AbstractC0895f() { // from class: androidx.savedstate.SavedStateRegistry$1
                @Override // androidx.lifecycle.AbstractC0901i
                /* renamed from: a */
                public void mo4389a(AbstractC0903k abstractC0903k, AbstractC0896g.EnumC0897a enumC0897a) {
                    if (enumC0897a == AbstractC0896g.EnumC0897a.ON_START) {
                        C1078a.this.f3390a = true;
                    } else if (enumC0897a != AbstractC0896g.EnumC0897a.ON_STOP) {
                    } else {
                        C1078a.this.f3390a = false;
                    }
                }
            });
            this.f3393d = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }
}
