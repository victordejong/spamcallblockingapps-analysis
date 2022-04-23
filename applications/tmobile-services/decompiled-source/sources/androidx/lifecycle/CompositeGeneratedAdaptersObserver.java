package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/CompositeGeneratedAdaptersObserver.class */
public class CompositeGeneratedAdaptersObserver implements LifecycleEventObserver {

    /* renamed from: f */
    private final GeneratedAdapter[] f3970f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeGeneratedAdaptersObserver(GeneratedAdapter[] generatedAdapterArr) {
        this.f3970f = generatedAdapterArr;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        MethodCallsLogger methodCallsLogger = new MethodCallsLogger();
        for (GeneratedAdapter generatedAdapter : this.f3970f) {
            generatedAdapter.m18240a(lifecycleOwner, event, false, methodCallsLogger);
        }
        for (GeneratedAdapter generatedAdapter2 : this.f3970f) {
            generatedAdapter2.m18240a(lifecycleOwner, event, true, methodCallsLogger);
        }
    }
}
