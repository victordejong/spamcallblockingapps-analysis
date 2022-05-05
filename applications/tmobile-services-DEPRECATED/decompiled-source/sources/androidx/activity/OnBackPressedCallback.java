package androidx.activity;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:androidx/activity/OnBackPressedCallback.class */
public abstract class OnBackPressedCallback {

    /* renamed from: a */
    private boolean f10a;

    /* renamed from: b */
    private CopyOnWriteArrayList<Cancellable> f11b = new CopyOnWriteArrayList<>();

    public OnBackPressedCallback(boolean z) {
        this.f10a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m22331a(@NonNull Cancellable cancellable) {
        this.f11b.add(cancellable);
    }

    @MainThread
    /* renamed from: b */
    public abstract void mo18435b();

    @MainThread
    /* renamed from: c */
    public final boolean m22330c() {
        return this.f10a;
    }

    @MainThread
    /* renamed from: d */
    public final void m22329d() {
        Iterator<Cancellable> it = this.f11b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m22328e(@NonNull Cancellable cancellable) {
        this.f11b.remove(cancellable);
    }

    @MainThread
    /* renamed from: f */
    public final void m22327f(boolean z) {
        this.f10a = z;
    }
}
