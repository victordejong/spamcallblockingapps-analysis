package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.a;
import androidx.core.view.v;
import androidx.fragment.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/z.class */
public abstract class z {

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<b> f2389a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<b> f2390b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    boolean f2391c = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f2392d = false;
    private final ViewGroup e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.z$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$3.class */
    public static final /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2397a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f2398b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0060 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0068 -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006c -> B:35:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0070 -> B:31:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0074 -> B:27:0x0054). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.a.values().length];
            f2398b = iArr;
            try {
                iArr[b.a.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2398b[b.a.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2398b[b.a.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[b.EnumC0064b.values().length];
            f2397a = iArr2;
            try {
                iArr2[b.EnumC0064b.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2397a[b.EnumC0064b.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f2397a[b.EnumC0064b.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f2397a[b.EnumC0064b.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$a.class */
    public static final class a extends b {
        private final p f;

        a(b.EnumC0064b bVar, b.a aVar, p pVar, androidx.core.os.a aVar2) {
            super(bVar, aVar, pVar.f2308a, aVar2);
            this.f = pVar;
        }

        @Override // androidx.fragment.app.z.b
        final void a() {
            if (this.f2400b == b.a.ADDING) {
                Fragment fragment = this.f.f2308a;
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.a(2)) {
                        StringBuilder sb = new StringBuilder("requestFocus: Saved focused view ");
                        sb.append(findFocus);
                        sb.append(" for Fragment ");
                        sb.append(fragment);
                    }
                }
                View requireView = this.f2401c.requireView();
                if (requireView.getParent() == null) {
                    this.f.r();
                    requireView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                }
                if (requireView.getAlpha() == BitmapDescriptorFactory.HUE_RED && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }

        @Override // androidx.fragment.app.z.b
        public final void b() {
            super.b();
            this.f.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b.class */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        EnumC0064b f2399a;

        /* renamed from: b  reason: collision with root package name */
        a f2400b;

        /* renamed from: c  reason: collision with root package name */
        final Fragment f2401c;
        private final List<Runnable> f = new ArrayList();
        private final HashSet<androidx.core.os.a> g = new HashSet<>();

        /* renamed from: d  reason: collision with root package name */
        boolean f2402d = false;
        boolean e = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b$a.class */
        public enum a {
            NONE,
            ADDING,
            REMOVING
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.fragment.app.z$b$b  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/z$b$b.class */
        public enum EnumC0064b {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            /* JADX INFO: Access modifiers changed from: package-private */
            public static EnumC0064b from(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                throw new IllegalArgumentException("Unknown visibility ".concat(String.valueOf(i)));
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public static EnumC0064b from(View view) {
                return (view.getAlpha() == BitmapDescriptorFactory.HUE_RED && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public final void applyState(View view) {
                int i = AnonymousClass3.f2397a[ordinal()];
                if (i == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.a(2)) {
                            StringBuilder sb = new StringBuilder("SpecialEffectsController: Removing view ");
                            sb.append(view);
                            sb.append(" from container ");
                            sb.append(viewGroup);
                        }
                        viewGroup.removeView(view);
                    }
                } else if (i == 2) {
                    if (FragmentManager.a(2)) {
                        StringBuilder sb2 = new StringBuilder("SpecialEffectsController: Setting view ");
                        sb2.append(view);
                        sb2.append(" to VISIBLE");
                    }
                    view.setVisibility(0);
                } else if (i == 3) {
                    if (FragmentManager.a(2)) {
                        StringBuilder sb3 = new StringBuilder("SpecialEffectsController: Setting view ");
                        sb3.append(view);
                        sb3.append(" to GONE");
                    }
                    view.setVisibility(8);
                } else if (i == 4) {
                    if (FragmentManager.a(2)) {
                        StringBuilder sb4 = new StringBuilder("SpecialEffectsController: Setting view ");
                        sb4.append(view);
                        sb4.append(" to INVISIBLE");
                    }
                    view.setVisibility(4);
                }
            }
        }

        b(EnumC0064b bVar, a aVar, Fragment fragment, androidx.core.os.a aVar2) {
            this.f2399a = bVar;
            this.f2400b = aVar;
            this.f2401c = fragment;
            aVar2.a(new a.AbstractC0050a() { // from class: androidx.fragment.app.z.b.1
                @Override // androidx.core.os.a.AbstractC0050a
                public final void a() {
                    b.this.c();
                }
            });
        }

        void a() {
        }

        public final void a(androidx.core.os.a aVar) {
            a();
            this.g.add(aVar);
        }

        final void a(EnumC0064b bVar, a aVar) {
            int i = AnonymousClass3.f2398b[aVar.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    if (FragmentManager.a(2)) {
                        StringBuilder sb = new StringBuilder("SpecialEffectsController: For fragment ");
                        sb.append(this.f2401c);
                        sb.append(" mFinalState = ");
                        sb.append(this.f2399a);
                        sb.append(" -> REMOVED. mLifecycleImpact  = ");
                        sb.append(this.f2400b);
                        sb.append(" to REMOVING.");
                    }
                    this.f2399a = EnumC0064b.REMOVED;
                    this.f2400b = a.REMOVING;
                } else if (i == 3 && this.f2399a != EnumC0064b.REMOVED) {
                    if (FragmentManager.a(2)) {
                        StringBuilder sb2 = new StringBuilder("SpecialEffectsController: For fragment ");
                        sb2.append(this.f2401c);
                        sb2.append(" mFinalState = ");
                        sb2.append(this.f2399a);
                        sb2.append(" -> ");
                        sb2.append(bVar);
                        sb2.append(". ");
                    }
                    this.f2399a = bVar;
                }
            } else if (this.f2399a == EnumC0064b.REMOVED) {
                if (FragmentManager.a(2)) {
                    StringBuilder sb3 = new StringBuilder("SpecialEffectsController: For fragment ");
                    sb3.append(this.f2401c);
                    sb3.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                    sb3.append(this.f2400b);
                    sb3.append(" to ADDING.");
                }
                this.f2399a = EnumC0064b.VISIBLE;
                this.f2400b = a.ADDING;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(Runnable runnable) {
            this.f.add(runnable);
        }

        public void b() {
            if (!this.e) {
                if (FragmentManager.a(2)) {
                    StringBuilder sb = new StringBuilder("SpecialEffectsController: ");
                    sb.append(this);
                    sb.append(" has called complete.");
                }
                this.e = true;
                for (Runnable runnable : this.f) {
                    runnable.run();
                }
            }
        }

        public final void b(androidx.core.os.a aVar) {
            if (this.g.remove(aVar) && this.g.isEmpty()) {
                b();
            }
        }

        final void c() {
            if (!this.f2402d) {
                this.f2402d = true;
                if (this.g.isEmpty()) {
                    b();
                    return;
                }
                Iterator it2 = new ArrayList(this.g).iterator();
                while (it2.hasNext()) {
                    ((androidx.core.os.a) it2.next()).b();
                }
            }
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f2399a + "} {mLifecycleImpact = " + this.f2400b + "} {mFragment = " + this.f2401c + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(ViewGroup viewGroup) {
        this.e = viewGroup;
    }

    private b a(Fragment fragment) {
        Iterator<b> it2 = this.f2389a.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f2401c.equals(fragment) && !next.f2402d) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z a(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return a(viewGroup, fragmentManager.r());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z a(ViewGroup viewGroup, aa aaVar) {
        Object tag = viewGroup.getTag(a.b.special_effects_controller_view_tag);
        if (tag instanceof z) {
            return (z) tag;
        }
        z a2 = aaVar.a(viewGroup);
        viewGroup.setTag(a.b.special_effects_controller_view_tag, a2);
        return a2;
    }

    private void a(b.EnumC0064b bVar, b.a aVar, p pVar) {
        synchronized (this.f2389a) {
            androidx.core.os.a aVar2 = new androidx.core.os.a();
            b a2 = a(pVar.f2308a);
            if (a2 != null) {
                a2.a(bVar, aVar);
                return;
            }
            final a aVar3 = new a(bVar, aVar, pVar, aVar2);
            this.f2389a.add(aVar3);
            aVar3.a(new Runnable() { // from class: androidx.fragment.app.z.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (z.this.f2389a.contains(aVar3)) {
                        aVar3.f2399a.applyState(aVar3.f2401c.mView);
                    }
                }
            });
            aVar3.a(new Runnable() { // from class: androidx.fragment.app.z.2
                @Override // java.lang.Runnable
                public final void run() {
                    z.this.f2389a.remove(aVar3);
                    z.this.f2390b.remove(aVar3);
                }
            });
        }
    }

    private b b(Fragment fragment) {
        Iterator<b> it2 = this.f2390b.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f2401c.equals(fragment) && !next.f2402d) {
                return next;
            }
        }
        return null;
    }

    private void f() {
        Iterator<b> it2 = this.f2389a.iterator();
        while (it2.hasNext()) {
            b next = it2.next();
            if (next.f2400b == b.a.ADDING) {
                next.a(b.EnumC0064b.from(next.f2401c.requireView().getVisibility()), b.a.NONE);
            }
        }
    }

    public final ViewGroup a() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b.a a(p pVar) {
        b a2 = a(pVar.f2308a);
        if (a2 != null) {
            return a2.f2400b;
        }
        b b2 = b(pVar.f2308a);
        if (b2 != null) {
            return b2.f2400b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b.EnumC0064b bVar, p pVar) {
        if (FragmentManager.a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing add operation for fragment ").append(pVar.f2308a);
        }
        a(bVar, b.a.ADDING, pVar);
    }

    abstract void a(List<b> list, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        synchronized (this.f2389a) {
            f();
            this.f2392d = false;
            int size = this.f2389a.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                b bVar = this.f2389a.get(size);
                b.EnumC0064b from = b.EnumC0064b.from(bVar.f2401c.mView);
                if (bVar.f2399a == b.EnumC0064b.VISIBLE && from != b.EnumC0064b.VISIBLE) {
                    this.f2392d = bVar.f2401c.isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(p pVar) {
        if (FragmentManager.a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing show operation for fragment ").append(pVar.f2308a);
        }
        a(b.EnumC0064b.VISIBLE, b.a.NONE, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (this.f2392d) {
            this.f2392d = false;
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(p pVar) {
        if (FragmentManager.a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing hide operation for fragment ").append(pVar.f2308a);
        }
        a(b.EnumC0064b.GONE, b.a.NONE, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        if (!this.f2392d) {
            if (!v.E(this.e)) {
                e();
                this.f2391c = false;
                return;
            }
            synchronized (this.f2389a) {
                if (!this.f2389a.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.f2390b);
                    this.f2390b.clear();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        b bVar = (b) it2.next();
                        if (FragmentManager.a(2)) {
                            new StringBuilder("SpecialEffectsController: Cancelling operation ").append(bVar);
                        }
                        bVar.c();
                        if (!bVar.e) {
                            this.f2390b.add(bVar);
                        }
                    }
                    f();
                    ArrayList arrayList2 = new ArrayList(this.f2389a);
                    this.f2389a.clear();
                    this.f2390b.addAll(arrayList2);
                    Iterator it3 = arrayList2.iterator();
                    while (it3.hasNext()) {
                        ((b) it3.next()).a();
                    }
                    a(arrayList2, this.f2391c);
                    this.f2391c = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(p pVar) {
        if (FragmentManager.a(2)) {
            new StringBuilder("SpecialEffectsController: Enqueuing remove operation for fragment ").append(pVar.f2308a);
        }
        a(b.EnumC0064b.REMOVED, b.a.REMOVING, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        String str;
        String str2;
        boolean E = v.E(this.e);
        synchronized (this.f2389a) {
            f();
            Iterator<b> it2 = this.f2389a.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
            Iterator it3 = new ArrayList(this.f2390b).iterator();
            while (it3.hasNext()) {
                b bVar = (b) it3.next();
                if (FragmentManager.a(2)) {
                    StringBuilder sb = new StringBuilder("SpecialEffectsController: ");
                    if (E) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.e + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(bVar);
                }
                bVar.c();
            }
            Iterator it4 = new ArrayList(this.f2389a).iterator();
            while (it4.hasNext()) {
                b bVar2 = (b) it4.next();
                if (FragmentManager.a(2)) {
                    StringBuilder sb2 = new StringBuilder("SpecialEffectsController: ");
                    if (E) {
                        str = "";
                    } else {
                        str = "Container " + this.e + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(bVar2);
                }
                bVar2.c();
            }
        }
    }
}
