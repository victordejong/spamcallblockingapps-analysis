package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentLifecycleCallbacksDispatcher.class */
public class FragmentLifecycleCallbacksDispatcher {
    @NonNull

    /* renamed from: a */
    private final CopyOnWriteArrayList<FragmentLifecycleCallbacksHolder> f3764a = new CopyOnWriteArrayList<>();
    @NonNull

    /* renamed from: b */
    private final FragmentManager f3765b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder.class */
    public static final class FragmentLifecycleCallbacksHolder {
        @NonNull

        /* renamed from: a */
        final FragmentManager.FragmentLifecycleCallbacks f3766a;

        /* renamed from: b */
        final boolean f3767b;

        FragmentLifecycleCallbacksHolder(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
            this.f3766a = fragmentLifecycleCallbacks;
            this.f3767b = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentLifecycleCallbacksDispatcher(@NonNull FragmentManager fragmentManager) {
        this.f3765b = fragmentManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m18451a(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18451a(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18433a(this.f3765b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m18450b(@NonNull Fragment fragment, @NonNull Context context, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18450b(fragment, context, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18432b(this.f3765b, fragment, context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m18449c(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18449c(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18431c(this.f3765b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m18448d(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18448d(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18430d(this.f3765b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m18447e(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18447e(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18429e(this.f3765b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m18446f(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18446f(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18428f(this.f3765b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m18445g(@NonNull Fragment fragment, @NonNull Context context, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18445g(fragment, context, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18427g(this.f3765b, fragment, context);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m18444h(@NonNull Fragment fragment, @Nullable Bundle bundle, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18444h(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18426h(this.f3765b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m18443i(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18443i(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18425i(this.f3765b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public void m18442j(@NonNull Fragment fragment, @NonNull Bundle bundle, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18442j(fragment, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18424j(this.f3765b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public void m18441k(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18441k(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18423k(this.f3765b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m18440l(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18440l(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18422l(this.f3765b, fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m18439m(@NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18439m(fragment, view, bundle, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.mo16462m(this.f3765b, fragment, view, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m18438n(@NonNull Fragment fragment, boolean z) {
        Fragment parent = this.f3765b.getParent();
        if (parent != null) {
            parent.getParentFragmentManager().getLifecycleCallbacksDispatcher().m18438n(fragment, true);
        }
        Iterator<FragmentLifecycleCallbacksHolder> it = this.f3764a.iterator();
        while (it.hasNext()) {
            FragmentLifecycleCallbacksHolder next = it.next();
            if (!z || next.f3767b) {
                next.f3766a.m18421n(this.f3765b, fragment);
            }
        }
    }

    /* renamed from: o */
    public void m18437o(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z) {
        this.f3764a.add(new FragmentLifecycleCallbacksHolder(fragmentLifecycleCallbacks, z));
    }

    /* renamed from: p */
    public void m18436p(@NonNull FragmentManager.FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        synchronized (this.f3764a) {
            int i = 0;
            int size = this.f3764a.size();
            while (true) {
                if (i >= size) {
                    break;
                } else if (this.f3764a.get(i).f3766a == fragmentLifecycleCallbacks) {
                    this.f3764a.remove(i);
                    break;
                } else {
                    i++;
                }
            }
        }
    }
}
