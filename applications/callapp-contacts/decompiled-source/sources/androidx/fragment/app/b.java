package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.n;
import androidx.core.os.a;
import androidx.core.view.s;
import androidx.core.view.v;
import androidx.core.view.w;
import androidx.fragment.app.d;
import androidx.fragment.app.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
final class b extends z {

    /* renamed from: androidx.fragment.app.b$2  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$2.class */
    static final /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2230a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[z.b.EnumC0064b.values().length];
            f2230a = iArr;
            try {
                iArr[z.b.EnumC0064b.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2230a[z.b.EnumC0064b.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2230a[z.b.EnumC0064b.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2230a[z.b.EnumC0064b.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$a.class */
    public static final class a extends C0063b {

        /* renamed from: c  reason: collision with root package name */
        private boolean f2256c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f2257d = false;
        private d.a e;

        a(z.b bVar, androidx.core.os.a aVar, boolean z) {
            super(bVar, aVar);
            this.f2256c = z;
        }

        final d.a a(Context context) {
            if (this.f2257d) {
                return this.e;
            }
            d.a a2 = d.a(context, this.f2258a.f2401c, this.f2258a.f2399a == z.b.EnumC0064b.VISIBLE, this.f2256c);
            this.e = a2;
            this.f2257d = true;
            return a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$b.class */
    public static class C0063b {

        /* renamed from: a  reason: collision with root package name */
        final z.b f2258a;

        /* renamed from: b  reason: collision with root package name */
        final androidx.core.os.a f2259b;

        C0063b(z.b bVar, androidx.core.os.a aVar) {
            this.f2258a = bVar;
            this.f2259b = aVar;
        }

        final boolean a() {
            z.b.EnumC0064b from = z.b.EnumC0064b.from(this.f2258a.f2401c.mView);
            z.b.EnumC0064b bVar = this.f2258a.f2399a;
            if (from != bVar) {
                return (from == z.b.EnumC0064b.VISIBLE || bVar == z.b.EnumC0064b.VISIBLE) ? false : true;
            }
            return true;
        }

        final void b() {
            this.f2258a.b(this.f2259b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$c.class */
    public static final class c extends C0063b {

        /* renamed from: c  reason: collision with root package name */
        final Object f2260c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f2261d;
        final Object e;

        c(z.b bVar, androidx.core.os.a aVar, boolean z, boolean z2) {
            super(bVar, aVar);
            if (bVar.f2399a == z.b.EnumC0064b.VISIBLE) {
                this.f2260c = z ? bVar.f2401c.getReenterTransition() : bVar.f2401c.getEnterTransition();
                this.f2261d = z ? bVar.f2401c.getAllowReturnTransitionOverlap() : bVar.f2401c.getAllowEnterTransitionOverlap();
            } else {
                this.f2260c = z ? bVar.f2401c.getReturnTransition() : bVar.f2401c.getExitTransition();
                this.f2261d = true;
            }
            if (!z2) {
                this.e = null;
            } else if (z) {
                this.e = bVar.f2401c.getSharedElementReturnTransition();
            } else {
                this.e = bVar.f2401c.getSharedElementEnterTransition();
            }
        }

        final v a(Object obj) {
            if (obj == null) {
                return null;
            }
            if (t.f2329a != null && t.f2329a.a(obj)) {
                return t.f2329a;
            }
            if (t.f2330b != null && t.f2330b.a(obj)) {
                return t.f2330b;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f2258a.f2401c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ViewGroup viewGroup) {
        super(viewGroup);
    }

    private Map<z.b, Boolean> a(List<c> list, List<z.b> list2, final boolean z, final z.b bVar, final z.b bVar2) {
        n nVar;
        n nVar2;
        final View view;
        String a2;
        z.b bVar3 = bVar;
        z.b bVar4 = bVar2;
        HashMap hashMap = new HashMap();
        final v vVar = null;
        for (c cVar : list) {
            if (!cVar.a()) {
                v a3 = cVar.a(cVar.f2260c);
                v a4 = cVar.a(cVar.e);
                if (a3 == null || a4 == null || a3 == a4) {
                    if (a3 == null) {
                        a3 = a4;
                    }
                    if (vVar == null) {
                        vVar = a3;
                    } else if (!(a3 == null || vVar == a3)) {
                        throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + cVar.f2258a.f2401c + " returned Transition " + cVar.f2260c + " which uses a different Transition  type than other Fragments.");
                    }
                } else {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + cVar.f2258a.f2401c + " returned Transition " + cVar.f2260c + " which uses a different Transition  type than its shared element transition " + cVar.e);
                }
            }
        }
        if (vVar == null) {
            for (c cVar2 : list) {
                hashMap.put(cVar2.f2258a, Boolean.FALSE);
                cVar2.b();
            }
            return hashMap;
        }
        View view2 = new View(a().getContext());
        final Rect rect = new Rect();
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        androidx.b.a aVar = new androidx.b.a();
        Object obj = null;
        View view3 = null;
        boolean z2 = false;
        for (c cVar3 : list) {
            if (!(cVar3.e != null) || bVar3 == null || bVar4 == null) {
                view2 = view2;
                bVar4 = bVar4;
            } else {
                Object c2 = vVar.c(vVar.b(cVar3.e));
                ArrayList<String> sharedElementSourceNames = bVar4.f2401c.getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = bVar3.f2401c.getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = bVar3.f2401c.getSharedElementTargetNames();
                for (int i = 0; i < sharedElementTargetNames.size(); i++) {
                    int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                    if (indexOf != -1) {
                        sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i));
                    }
                }
                ArrayList<String> sharedElementTargetNames2 = bVar4.f2401c.getSharedElementTargetNames();
                if (!z) {
                    nVar = bVar3.f2401c.getExitTransitionCallback();
                    nVar2 = bVar4.f2401c.getEnterTransitionCallback();
                } else {
                    nVar = bVar3.f2401c.getEnterTransitionCallback();
                    nVar2 = bVar4.f2401c.getExitTransitionCallback();
                }
                int size = sharedElementSourceNames.size();
                for (int i2 = 0; i2 < size; i2++) {
                    aVar.put(sharedElementSourceNames.get(i2), sharedElementTargetNames2.get(i2));
                }
                androidx.b.a aVar2 = new androidx.b.a();
                a(aVar2, bVar3.f2401c.mView);
                aVar2.a((Collection<?>) sharedElementSourceNames);
                if (nVar != null) {
                    for (int size2 = sharedElementSourceNames.size() - 1; size2 >= 0; size2--) {
                        String str = sharedElementSourceNames.get(size2);
                        View view4 = (View) aVar2.get(str);
                        if (view4 == null) {
                            aVar.remove(str);
                        } else if (!str.equals(v.p(view4))) {
                            aVar.put(v.p(view4), (String) aVar.remove(str));
                        }
                    }
                } else {
                    aVar.a((Collection<?>) aVar2.keySet());
                }
                final androidx.b.a aVar3 = new androidx.b.a();
                a(aVar3, bVar4.f2401c.mView);
                aVar3.a((Collection<?>) sharedElementTargetNames2);
                aVar3.a(aVar.values());
                if (nVar2 != null) {
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str2 = sharedElementTargetNames2.get(size3);
                        View view5 = (View) aVar3.get(str2);
                        if (view5 == null) {
                            String a5 = t.a(aVar, str2);
                            if (a5 != null) {
                                aVar.remove(a5);
                            }
                        } else if (!str2.equals(v.p(view5)) && (a2 = t.a(aVar, str2)) != null) {
                            aVar.put(a2, v.p(view5));
                        }
                    }
                } else {
                    t.a(aVar, aVar3);
                }
                a(aVar2, aVar.keySet());
                a(aVar3, aVar.values());
                if (aVar.isEmpty()) {
                    arrayList.clear();
                    arrayList2.clear();
                    obj = null;
                } else {
                    t.a(bVar4.f2401c, bVar3.f2401c, z, aVar2);
                    s.a(a(), new Runnable() { // from class: androidx.fragment.app.b.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            t.a(bVar2.f2401c, bVar.f2401c, z, aVar3);
                        }
                    });
                    for (View view6 : aVar2.values()) {
                        a(arrayList, view6);
                    }
                    if (!sharedElementSourceNames.isEmpty()) {
                        view3 = (View) aVar2.get(sharedElementSourceNames.get(0));
                        vVar.a(c2, view3);
                    }
                    obj = c2;
                    for (View view7 : aVar3.values()) {
                        a(arrayList2, view7);
                    }
                    if (!sharedElementTargetNames2.isEmpty() && (view = (View) aVar3.get(sharedElementTargetNames2.get(0))) != null) {
                        s.a(a(), new Runnable() { // from class: androidx.fragment.app.b.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                v.a(view, rect);
                            }
                        });
                        z2 = true;
                    }
                    view2 = view2;
                    vVar.a(obj, view2, arrayList);
                    vVar.a(obj, null, null, null, null, obj, arrayList2);
                    bVar3 = bVar;
                    hashMap.put(bVar3, Boolean.TRUE);
                    bVar4 = bVar2;
                    hashMap.put(bVar4, Boolean.TRUE);
                }
            }
        }
        z.b bVar5 = bVar4;
        ArrayList arrayList3 = new ArrayList();
        Object obj2 = null;
        Object obj3 = null;
        z.b bVar6 = bVar3;
        for (c cVar4 : list) {
            if (cVar4.a()) {
                hashMap.put(cVar4.f2258a, Boolean.FALSE);
                cVar4.b();
            } else {
                Object b2 = vVar.b(cVar4.f2260c);
                z.b bVar7 = cVar4.f2258a;
                boolean z3 = obj != null && (bVar7 == bVar6 || bVar7 == bVar5);
                if (b2 != null) {
                    final ArrayList<View> arrayList4 = new ArrayList<>();
                    a(arrayList4, bVar7.f2401c.mView);
                    if (z3) {
                        if (bVar7 == bVar6) {
                            arrayList4.removeAll(arrayList);
                        } else {
                            arrayList4.removeAll(arrayList2);
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        vVar.b(b2, view2);
                    } else {
                        vVar.a(b2, arrayList4);
                        vVar.a(b2, b2, arrayList4, null, null, null, null);
                        if (bVar7.f2399a == z.b.EnumC0064b.GONE) {
                            list2.remove(bVar7);
                            vVar.b(b2, bVar7.f2401c.mView, arrayList4);
                            s.a(a(), new Runnable() { // from class: androidx.fragment.app.b.9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    t.a(arrayList4, 4);
                                }
                            });
                        }
                    }
                    if (bVar7.f2399a == z.b.EnumC0064b.VISIBLE) {
                        arrayList3.addAll(arrayList4);
                        if (z2) {
                            vVar.a(b2, rect);
                        }
                    } else {
                        vVar.a(b2, view3);
                    }
                    hashMap.put(bVar7, Boolean.TRUE);
                    if (cVar4.f2261d) {
                        obj3 = vVar.a(obj3, b2, (Object) null);
                    } else {
                        obj2 = vVar.a(obj2, b2, (Object) null);
                    }
                } else if (!z3) {
                    hashMap.put(bVar7, Boolean.FALSE);
                    cVar4.b();
                }
                bVar6 = bVar;
                bVar5 = bVar2;
            }
        }
        Object b3 = vVar.b(obj3, obj2, obj);
        for (final c cVar5 : list) {
            if (!cVar5.a()) {
                Object obj4 = cVar5.f2260c;
                z.b bVar8 = cVar5.f2258a;
                boolean z4 = obj != null && (bVar8 == bVar || bVar8 == bVar2);
                if (obj4 != null || z4) {
                    if (!v.B(a())) {
                        if (FragmentManager.a(2)) {
                            StringBuilder sb = new StringBuilder("SpecialEffectsController: Container ");
                            sb.append(a());
                            sb.append(" has not been laid out. Completing operation ");
                            sb.append(bVar8);
                        }
                        cVar5.b();
                    } else {
                        vVar.a(b3, cVar5.f2259b, new Runnable() { // from class: androidx.fragment.app.b.10
                            @Override // java.lang.Runnable
                            public final void run() {
                                cVar5.b();
                            }
                        });
                    }
                }
            }
        }
        if (!v.B(a())) {
            return hashMap;
        }
        t.a(arrayList3, 4);
        ArrayList<String> a6 = v.a(arrayList2);
        vVar.a(a(), b3);
        vVar.a(a(), arrayList, arrayList2, a6, aVar);
        t.a(arrayList3, 0);
        vVar.a(obj, arrayList, arrayList2);
        return hashMap;
    }

    private static void a(androidx.b.a<String, View> aVar, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it2 = aVar.entrySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(v.p(it2.next().getValue()))) {
                it2.remove();
            }
        }
    }

    static void a(z.b bVar) {
        bVar.f2399a.applyState(bVar.f2401c.mView);
    }

    private void a(ArrayList<View> arrayList, View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (w.a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    a(arrayList, childAt);
                }
            }
        } else if (!arrayList.contains(view)) {
            arrayList.add(view);
        }
    }

    private void a(List<a> list, List<z.b> list2, boolean z, Map<z.b, Boolean> map) {
        final ViewGroup a2 = a();
        Context context = a2.getContext();
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        for (final a aVar : list) {
            if (aVar.a()) {
                aVar.b();
            } else {
                d.a a3 = aVar.a(context);
                if (a3 == null) {
                    aVar.b();
                } else {
                    final Animator animator = a3.f2282b;
                    if (animator == null) {
                        arrayList.add(aVar);
                    } else {
                        final z.b bVar = aVar.f2258a;
                        Fragment fragment = bVar.f2401c;
                        if (Boolean.TRUE.equals(map.get(bVar))) {
                            if (FragmentManager.a(2)) {
                                StringBuilder sb = new StringBuilder("Ignoring Animator set on ");
                                sb.append(fragment);
                                sb.append(" as this Fragment was involved in a Transition.");
                            }
                            aVar.b();
                        } else {
                            final boolean z3 = bVar.f2399a == z.b.EnumC0064b.GONE;
                            if (z3) {
                                list2.remove(bVar);
                            }
                            final View view = fragment.mView;
                            a2.startViewTransition(view);
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.b.3
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator2) {
                                    a2.endViewTransition(view);
                                    if (z3) {
                                        bVar.f2399a.applyState(view);
                                    }
                                    aVar.b();
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            aVar.f2259b.a(new a.AbstractC0050a() { // from class: androidx.fragment.app.b.4
                                @Override // androidx.core.os.a.AbstractC0050a
                                public final void a() {
                                    animator.end();
                                }
                            });
                            z2 = true;
                        }
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final a aVar2 = (a) it2.next();
            z.b bVar2 = aVar2.f2258a;
            Fragment fragment2 = bVar2.f2401c;
            if (z) {
                if (FragmentManager.a(2)) {
                    StringBuilder sb2 = new StringBuilder("Ignoring Animation set on ");
                    sb2.append(fragment2);
                    sb2.append(" as Animations cannot run alongside Transitions.");
                }
                aVar2.b();
            } else if (z2) {
                if (FragmentManager.a(2)) {
                    StringBuilder sb3 = new StringBuilder("Ignoring Animation set on ");
                    sb3.append(fragment2);
                    sb3.append(" as Animations cannot run alongside Animators.");
                }
                aVar2.b();
            } else {
                final View view2 = fragment2.mView;
                Animation animation = (Animation) androidx.core.e.d.a(((d.a) androidx.core.e.d.a(aVar2.a(context))).f2281a);
                if (bVar2.f2399a != z.b.EnumC0064b.REMOVED) {
                    view2.startAnimation(animation);
                    aVar2.b();
                } else {
                    a2.startViewTransition(view2);
                    d.b bVar3 = new d.b(animation, a2, view2);
                    bVar3.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.b.5
                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationEnd(Animation animation2) {
                            a2.post(new Runnable() { // from class: androidx.fragment.app.b.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    a2.endViewTransition(view2);
                                    aVar2.b();
                                }
                            });
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationRepeat(Animation animation2) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationStart(Animation animation2) {
                        }
                    });
                    view2.startAnimation(bVar3);
                }
                aVar2.f2259b.a(new a.AbstractC0050a() { // from class: androidx.fragment.app.b.6
                    @Override // androidx.core.os.a.AbstractC0050a
                    public final void a() {
                        view2.clearAnimation();
                        a2.endViewTransition(view2);
                        aVar2.b();
                    }
                });
            }
        }
    }

    private void a(Map<String, View> map, View view) {
        String p = v.p(view);
        if (p != null) {
            map.put(p, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    a(map, childAt);
                }
            }
        }
    }

    @Override // androidx.fragment.app.z
    final void a(List<z.b> list, boolean z) {
        z.b bVar = null;
        z.b bVar2 = null;
        for (z.b bVar3 : list) {
            z.b.EnumC0064b from = z.b.EnumC0064b.from(bVar3.f2401c.mView);
            int i = AnonymousClass2.f2230a[bVar3.f2399a.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                if (from == z.b.EnumC0064b.VISIBLE && bVar == null) {
                    bVar = bVar3;
                }
            } else if (i == 4 && from != z.b.EnumC0064b.VISIBLE) {
                bVar2 = bVar3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList<z.b> arrayList3 = new ArrayList(list);
        for (final z.b bVar4 : list) {
            androidx.core.os.a aVar = new androidx.core.os.a();
            bVar4.a(aVar);
            arrayList.add(new a(bVar4, aVar, z));
            androidx.core.os.a aVar2 = new androidx.core.os.a();
            bVar4.a(aVar2);
            boolean z2 = false;
            if (z) {
                if (bVar4 != bVar) {
                    arrayList2.add(new c(bVar4, aVar2, z, z2));
                    bVar4.a(new Runnable() { // from class: androidx.fragment.app.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (arrayList3.contains(bVar4)) {
                                arrayList3.remove(bVar4);
                                b.a(bVar4);
                            }
                        }
                    });
                }
                z2 = true;
                arrayList2.add(new c(bVar4, aVar2, z, z2));
                bVar4.a(new Runnable() { // from class: androidx.fragment.app.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (arrayList3.contains(bVar4)) {
                            arrayList3.remove(bVar4);
                            b.a(bVar4);
                        }
                    }
                });
            } else {
                if (bVar4 != bVar2) {
                    arrayList2.add(new c(bVar4, aVar2, z, z2));
                    bVar4.a(new Runnable() { // from class: androidx.fragment.app.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (arrayList3.contains(bVar4)) {
                                arrayList3.remove(bVar4);
                                b.a(bVar4);
                            }
                        }
                    });
                }
                z2 = true;
                arrayList2.add(new c(bVar4, aVar2, z, z2));
                bVar4.a(new Runnable() { // from class: androidx.fragment.app.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (arrayList3.contains(bVar4)) {
                            arrayList3.remove(bVar4);
                            b.a(bVar4);
                        }
                    }
                });
            }
        }
        Map<z.b, Boolean> a2 = a(arrayList2, arrayList3, z, bVar, bVar2);
        a(arrayList, arrayList3, a2.containsValue(Boolean.TRUE), a2);
        for (z.b bVar5 : arrayList3) {
            a(bVar5);
        }
        arrayList3.clear();
    }
}
