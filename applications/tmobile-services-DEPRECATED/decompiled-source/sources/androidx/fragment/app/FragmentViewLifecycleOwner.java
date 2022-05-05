package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentViewLifecycleOwner.class */
public class FragmentViewLifecycleOwner implements LifecycleOwner {

    /* renamed from: f */
    private LifecycleRegistry f3925f = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m18282a(@NonNull Lifecycle.Event event) {
        this.f3925f.m18223i(event);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m18281b() {
        if (this.f3925f == null) {
            this.f3925f = new LifecycleRegistry(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public boolean m18280c() {
        return this.f3925f != null;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NonNull
    public Lifecycle getLifecycle() {
        m18281b();
        return this.f3925f;
    }
}
