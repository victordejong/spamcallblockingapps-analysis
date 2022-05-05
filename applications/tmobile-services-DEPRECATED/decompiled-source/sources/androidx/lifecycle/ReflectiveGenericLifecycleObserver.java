package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.ClassesInfoCache;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ReflectiveGenericLifecycleObserver.class */
public class ReflectiveGenericLifecycleObserver implements LifecycleEventObserver {

    /* renamed from: f */
    private final Object f4073f;

    /* renamed from: g */
    private final ClassesInfoCache.CallbackInfo f4074g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f4073f = obj;
        this.f4074g = ClassesInfoCache.f3963c.m18261c(obj.getClass());
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.f4074g.m18258a(lifecycleOwner, event, this.f4073f);
    }
}
