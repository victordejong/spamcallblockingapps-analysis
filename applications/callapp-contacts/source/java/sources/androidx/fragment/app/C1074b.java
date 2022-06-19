package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.core.app.AbstractC0766n;
import androidx.core.p036e.C0833d;
import androidx.core.p037os.C0856a;
import androidx.core.view.C0926v;
import androidx.core.view.C0938w;
import androidx.core.view.View$OnAttachStateChangeListenerC0923s;
import androidx.fragment.app.AbstractC1147z;
import androidx.fragment.app.C1095d;
import androidx.p023b.C0428a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.b */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/b.class */
public final class C1074b extends AbstractC1147z {

    /* renamed from: androidx.fragment.app.b$2 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$2.class */
    static final /* synthetic */ class C10772 {

        /* renamed from: a */
        static final /* synthetic */ int[] f4279a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC1147z.C1152b.EnumC1155b.values().length];
            f4279a = iArr;
            try {
                iArr[AbstractC1147z.C1152b.EnumC1155b.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4279a[AbstractC1147z.C1152b.EnumC1155b.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4279a[AbstractC1147z.C1152b.EnumC1155b.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4279a[AbstractC1147z.C1152b.EnumC1155b.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: androidx.fragment.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$a.class */
    public static final class C1086a extends C1087b {

        /* renamed from: c */
        private boolean f4308c;

        /* renamed from: d */
        private boolean f4309d = false;

        /* renamed from: e */
        private C1095d.C1100a f4310e;

        C1086a(AbstractC1147z.C1152b c1152b, C0856a c0856a, boolean z) {
            super(c1152b, c0856a);
            this.f4308c = z;
        }

        /* renamed from: a */
        final C1095d.C1100a m43633a(Context context) {
            if (this.f4309d) {
                return this.f4310e;
            }
            C1095d.C1100a m43623a = C1095d.m43623a(context, this.f4311a.f4531c, this.f4311a.f4529a == AbstractC1147z.C1152b.EnumC1155b.VISIBLE, this.f4308c);
            this.f4310e = m43623a;
            this.f4309d = true;
            return m43623a;
        }
    }

    /* renamed from: androidx.fragment.app.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$b.class */
    public static class C1087b {

        /* renamed from: a */
        final AbstractC1147z.C1152b f4311a;

        /* renamed from: b */
        final C0856a f4312b;

        C1087b(AbstractC1147z.C1152b c1152b, C0856a c0856a) {
            this.f4311a = c1152b;
            this.f4312b = c0856a;
        }

        /* renamed from: a */
        final boolean m43632a() {
            AbstractC1147z.C1152b.EnumC1155b from = AbstractC1147z.C1152b.EnumC1155b.from(this.f4311a.f4531c.mView);
            AbstractC1147z.C1152b.EnumC1155b enumC1155b = this.f4311a.f4529a;
            if (from != enumC1155b) {
                return (from == AbstractC1147z.C1152b.EnumC1155b.VISIBLE || enumC1155b == AbstractC1147z.C1152b.EnumC1155b.VISIBLE) ? false : true;
            }
            return true;
        }

        /* renamed from: b */
        final void m43631b() {
            this.f4311a.m43463b(this.f4312b);
        }
    }

    /* renamed from: androidx.fragment.app.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/b$c.class */
    public static final class C1088c extends C1087b {

        /* renamed from: c */
        final Object f4313c;

        /* renamed from: d */
        final boolean f4314d;

        /* renamed from: e */
        final Object f4315e;

        C1088c(AbstractC1147z.C1152b c1152b, C0856a c0856a, boolean z, boolean z2) {
            super(c1152b, c0856a);
            if (c1152b.f4529a == AbstractC1147z.C1152b.EnumC1155b.VISIBLE) {
                this.f4313c = z ? c1152b.f4531c.getReenterTransition() : c1152b.f4531c.getEnterTransition();
                this.f4314d = z ? c1152b.f4531c.getAllowReturnTransitionOverlap() : c1152b.f4531c.getAllowEnterTransitionOverlap();
            } else {
                this.f4313c = z ? c1152b.f4531c.getReturnTransition() : c1152b.f4531c.getExitTransition();
                this.f4314d = true;
            }
            if (!z2) {
                this.f4315e = null;
            } else if (z) {
                this.f4315e = c1152b.f4531c.getSharedElementReturnTransition();
            } else {
                this.f4315e = c1152b.f4531c.getSharedElementEnterTransition();
            }
        }

        /* renamed from: a */
        final AbstractC1138v m43630a(Object obj) {
            if (obj == null) {
                return null;
            }
            if (C1123t.f4428a != null && C1123t.f4428a.mo39716a(obj)) {
                return C1123t.f4428a;
            }
            if (C1123t.f4429b != null && C1123t.f4429b.mo39716a(obj)) {
                return C1123t.f4429b;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f4311a.f4531c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public C1074b(ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* renamed from: a */
    private Map<AbstractC1147z.C1152b, Boolean> m43636a(List<C1088c> list, List<AbstractC1147z.C1152b> list2, final boolean z, final AbstractC1147z.C1152b c1152b, final AbstractC1147z.C1152b c1152b2) {
        AbstractC1147z.C1152b c1152b3;
        View view;
        AbstractC0766n abstractC0766n;
        AbstractC0766n abstractC0766n2;
        final View view2;
        String m43520a;
        AbstractC1147z.C1152b c1152b4 = c1152b;
        AbstractC1147z.C1152b c1152b5 = c1152b2;
        HashMap hashMap = new HashMap();
        AbstractC1138v abstractC1138v = null;
        for (C1088c c1088c : list) {
            if (!c1088c.m43632a()) {
                AbstractC1138v m43630a = c1088c.m43630a(c1088c.f4313c);
                AbstractC1138v m43630a2 = c1088c.m43630a(c1088c.f4315e);
                if (m43630a != null && m43630a2 != null && m43630a != m43630a2) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + c1088c.f4311a.f4531c + " returned Transition " + c1088c.f4313c + " which uses a different Transition  type than its shared element transition " + c1088c.f4315e);
                }
                if (m43630a == null) {
                    m43630a = m43630a2;
                }
                if (abstractC1138v == null) {
                    abstractC1138v = m43630a;
                } else if (m43630a != null && abstractC1138v != m43630a) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + c1088c.f4311a.f4531c + " returned Transition " + c1088c.f4313c + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (abstractC1138v == null) {
            for (C1088c c1088c2 : list) {
                hashMap.put(c1088c2.f4311a, Boolean.FALSE);
                c1088c2.m43631b();
            }
            return hashMap;
        }
        View view3 = new View(m43485a().getContext());
        final Rect rect = new Rect();
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        C0428a c0428a = new C0428a();
        Object obj = null;
        boolean z2 = false;
        final AbstractC1138v abstractC1138v2 = abstractC1138v;
        View view4 = null;
        for (C1088c c1088c3 : list) {
            if (!(c1088c3.f4315e != null) || c1152b4 == null || c1152b5 == null) {
                AbstractC1147z.C1152b c1152b6 = c1152b5;
                view = view3;
                c1152b3 = c1152b6;
            } else {
                Object mo39702c = abstractC1138v2.mo39702c(abstractC1138v2.mo39707b(c1088c3.f4315e));
                ArrayList<String> sharedElementSourceNames = c1152b5.f4531c.getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = c1152b4.f4531c.getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = c1152b4.f4531c.getSharedElementTargetNames();
                for (int i = 0; i < sharedElementTargetNames.size(); i++) {
                    int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                    if (indexOf != -1) {
                        sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i));
                    }
                }
                ArrayList<String> sharedElementTargetNames2 = c1152b5.f4531c.getSharedElementTargetNames();
                if (!z) {
                    abstractC0766n = c1152b4.f4531c.getExitTransitionCallback();
                    abstractC0766n2 = c1152b5.f4531c.getEnterTransitionCallback();
                } else {
                    abstractC0766n = c1152b4.f4531c.getEnterTransitionCallback();
                    abstractC0766n2 = c1152b5.f4531c.getExitTransitionCallback();
                }
                int size = sharedElementSourceNames.size();
                for (int i2 = 0; i2 < size; i2++) {
                    c0428a.put(sharedElementSourceNames.get(i2), sharedElementTargetNames2.get(i2));
                }
                C0428a c0428a2 = new C0428a();
                m43634a(c0428a2, c1152b4.f4531c.mView);
                c0428a2.m45566a((Collection<?>) sharedElementSourceNames);
                if (abstractC0766n != null) {
                    for (int size2 = sharedElementSourceNames.size() - 1; size2 >= 0; size2--) {
                        String str = sharedElementSourceNames.get(size2);
                        View view5 = (View) c0428a2.get(str);
                        if (view5 == null) {
                            c0428a.remove(str);
                        } else if (!str.equals(C0926v.m44083p(view5))) {
                            c0428a.put(C0926v.m44083p(view5), (String) c0428a.remove(str));
                        }
                    }
                } else {
                    c0428a.m45566a((Collection<?>) c0428a2.keySet());
                }
                final C0428a c0428a3 = new C0428a();
                m43634a(c0428a3, c1152b5.f4531c.mView);
                c0428a3.m45566a((Collection<?>) sharedElementTargetNames2);
                c0428a3.m45566a(c0428a.values());
                if (abstractC0766n2 != null) {
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str2 = sharedElementTargetNames2.get(size3);
                        View view6 = (View) c0428a3.get(str2);
                        if (view6 == null) {
                            String m43520a2 = C1123t.m43520a(c0428a, str2);
                            if (m43520a2 != null) {
                                c0428a.remove(m43520a2);
                            }
                        } else if (!str2.equals(C0926v.m44083p(view6)) && (m43520a = C1123t.m43520a(c0428a, str2)) != null) {
                            c0428a.put(m43520a, C0926v.m44083p(view6));
                        }
                    }
                } else {
                    C1123t.m43522a(c0428a, c0428a3);
                }
                m43639a(c0428a2, c0428a.keySet());
                m43639a(c0428a3, c0428a.values());
                if (c0428a.isEmpty()) {
                    arrayList.clear();
                    arrayList2.clear();
                    obj = null;
                } else {
                    C1123t.m43518a(c1152b5.f4531c, c1152b4.f4531c, z, c0428a2);
                    View$OnAttachStateChangeListenerC0923s.m44160a(m43485a(), new Runnable() { // from class: androidx.fragment.app.b.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            C1123t.m43518a(c1152b2.f4531c, c1152b.f4531c, z, c0428a3);
                        }
                    });
                    for (View view7 : c0428a2.values()) {
                        m43637a(arrayList, view7);
                    }
                    if (!sharedElementSourceNames.isEmpty()) {
                        view4 = (View) c0428a2.get(sharedElementSourceNames.get(0));
                        abstractC1138v2.mo39714a(mo39702c, view4);
                    }
                    obj = mo39702c;
                    for (View view8 : c0428a3.values()) {
                        m43637a(arrayList2, view8);
                    }
                    if (!sharedElementTargetNames2.isEmpty() && (view2 = (View) c0428a3.get(sharedElementTargetNames2.get(0))) != null) {
                        View$OnAttachStateChangeListenerC0923s.m44160a(m43485a(), new Runnable() { // from class: androidx.fragment.app.b.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                AbstractC1138v.m43499a(view2, rect);
                            }
                        });
                        z2 = true;
                    }
                    view = view3;
                    abstractC1138v2.mo39713a(obj, view, arrayList);
                    abstractC1138v2.mo39710a(obj, null, null, null, null, obj, arrayList2);
                    c1152b4 = c1152b;
                    hashMap.put(c1152b4, Boolean.TRUE);
                    c1152b3 = c1152b2;
                    hashMap.put(c1152b3, Boolean.TRUE);
                }
            }
            View view9 = view;
            c1152b5 = c1152b3;
            view3 = view9;
        }
        View view10 = view4;
        AbstractC1147z.C1152b c1152b7 = c1152b5;
        View view11 = view3;
        ArrayList arrayList3 = new ArrayList();
        Object obj2 = null;
        Object obj3 = null;
        AbstractC1147z.C1152b c1152b8 = c1152b4;
        for (C1088c c1088c4 : list) {
            if (c1088c4.m43632a()) {
                hashMap.put(c1088c4.f4311a, Boolean.FALSE);
                c1088c4.m43631b();
            } else {
                Object mo39707b = abstractC1138v2.mo39707b(c1088c4.f4313c);
                AbstractC1147z.C1152b c1152b9 = c1088c4.f4311a;
                boolean z3 = obj != null && (c1152b9 == c1152b8 || c1152b9 == c1152b7);
                if (mo39707b != null) {
                    final ArrayList<View> arrayList4 = new ArrayList<>();
                    m43637a(arrayList4, c1152b9.f4531c.mView);
                    if (z3) {
                        if (c1152b9 == c1152b8) {
                            arrayList4.removeAll(arrayList);
                        } else {
                            arrayList4.removeAll(arrayList2);
                        }
                    }
                    if (arrayList4.isEmpty()) {
                        abstractC1138v2.mo39706b(mo39707b, view11);
                    } else {
                        abstractC1138v2.mo39709a(mo39707b, arrayList4);
                        abstractC1138v2.mo39710a(mo39707b, mo39707b, arrayList4, null, null, null, null);
                        if (c1152b9.f4529a == AbstractC1147z.C1152b.EnumC1155b.GONE) {
                            list2.remove(c1152b9);
                            abstractC1138v2.mo39705b(mo39707b, c1152b9.f4531c.mView, arrayList4);
                            View$OnAttachStateChangeListenerC0923s.m44160a(m43485a(), new Runnable() { // from class: androidx.fragment.app.b.9
                                @Override // java.lang.Runnable
                                public final void run() {
                                    C1123t.m43507a(arrayList4, 4);
                                }
                            });
                        }
                    }
                    if (c1152b9.f4529a == AbstractC1147z.C1152b.EnumC1155b.VISIBLE) {
                        arrayList3.addAll(arrayList4);
                        if (z2) {
                            abstractC1138v2.mo39715a(mo39707b, rect);
                        }
                    } else {
                        abstractC1138v2.mo39714a(mo39707b, view10);
                    }
                    hashMap.put(c1152b9, Boolean.TRUE);
                    if (c1088c4.f4314d) {
                        obj3 = abstractC1138v2.mo39711a(obj3, mo39707b, (Object) null);
                    } else {
                        obj2 = abstractC1138v2.mo39711a(obj2, mo39707b, (Object) null);
                    }
                } else if (!z3) {
                    hashMap.put(c1152b9, Boolean.FALSE);
                    c1088c4.m43631b();
                }
                c1152b8 = c1152b;
                c1152b7 = c1152b2;
            }
        }
        Object mo39704b = abstractC1138v2.mo39704b(obj3, obj2, obj);
        for (final C1088c c1088c5 : list) {
            if (!c1088c5.m43632a()) {
                Object obj4 = c1088c5.f4313c;
                AbstractC1147z.C1152b c1152b10 = c1088c5.f4311a;
                boolean z4 = obj != null && (c1152b10 == c1152b || c1152b10 == c1152b2);
                if (obj4 != null || z4) {
                    if (!C0926v.m44157B(m43485a())) {
                        if (FragmentManager.m43764a(2)) {
                            StringBuilder sb = new StringBuilder("SpecialEffectsController: Container ");
                            sb.append(m43485a());
                            sb.append(" has not been laid out. Completing operation ");
                            sb.append(c1152b10);
                        }
                        c1088c5.m43631b();
                    } else {
                        abstractC1138v2.mo39712a(mo39704b, c1088c5.f4312b, new Runnable() { // from class: androidx.fragment.app.b.10
                            @Override // java.lang.Runnable
                            public final void run() {
                                c1088c5.m43631b();
                            }
                        });
                    }
                }
            }
        }
        if (!C0926v.m44157B(m43485a())) {
            return hashMap;
        }
        C1123t.m43507a(arrayList3, 4);
        ArrayList<String> m43497a = AbstractC1138v.m43497a(arrayList2);
        abstractC1138v2.mo39718a(m43485a(), mo39704b);
        abstractC1138v2.m43498a(m43485a(), arrayList, arrayList2, m43497a, c0428a);
        C1123t.m43507a(arrayList3, 0);
        abstractC1138v2.mo39708a(obj, arrayList, arrayList2);
        return hashMap;
    }

    /* renamed from: a */
    private static void m43639a(C0428a<String, View> c0428a, Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it2 = c0428a.entrySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(C0926v.m44083p(it2.next().getValue()))) {
                it2.remove();
            }
        }
    }

    /* renamed from: a */
    static void m43638a(AbstractC1147z.C1152b c1152b) {
        c1152b.f4529a.applyState(c1152b.f4531c.mView);
    }

    /* renamed from: a */
    private void m43637a(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (C0938w.m44057a(viewGroup)) {
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt.getVisibility() == 0) {
                m43637a(arrayList, childAt);
            }
        }
    }

    /* renamed from: a */
    private void m43635a(List<C1086a> list, List<AbstractC1147z.C1152b> list2, boolean z, Map<AbstractC1147z.C1152b, Boolean> map) {
        final ViewGroup a = m43485a();
        Context context = a.getContext();
        ArrayList arrayList = new ArrayList();
        boolean z2 = false;
        for (final C1086a c1086a : list) {
            if (c1086a.m43632a()) {
                c1086a.m43631b();
            } else {
                C1095d.C1100a m43633a = c1086a.m43633a(context);
                if (m43633a == null) {
                    c1086a.m43631b();
                } else {
                    final Animator animator = m43633a.f4350b;
                    if (animator == null) {
                        arrayList.add(c1086a);
                    } else {
                        final AbstractC1147z.C1152b c1152b = c1086a.f4311a;
                        Fragment fragment = c1152b.f4531c;
                        if (Boolean.TRUE.equals(map.get(c1152b))) {
                            if (FragmentManager.m43764a(2)) {
                                StringBuilder sb = new StringBuilder("Ignoring Animator set on ");
                                sb.append(fragment);
                                sb.append(" as this Fragment was involved in a Transition.");
                            }
                            c1086a.m43631b();
                        } else {
                            boolean z3 = c1152b.f4529a == AbstractC1147z.C1152b.EnumC1155b.GONE;
                            if (z3) {
                                list2.remove(c1152b);
                            }
                            final View view = fragment.mView;
                            a.startViewTransition(view);
                            final boolean z4 = z3;
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.b.3
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator2) {
                                    a.endViewTransition(view);
                                    if (z4) {
                                        c1152b.f4529a.applyState(view);
                                    }
                                    c1086a.m43631b();
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            c1086a.f4312b.m44302a(new C0856a.AbstractC0857a() { // from class: androidx.fragment.app.b.4
                                @Override // androidx.core.p037os.C0856a.AbstractC0857a
                                /* renamed from: a */
                                public final void mo39700a() {
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
            final C1086a c1086a2 = (C1086a) it2.next();
            AbstractC1147z.C1152b c1152b2 = c1086a2.f4311a;
            Fragment fragment2 = c1152b2.f4531c;
            if (z) {
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb2 = new StringBuilder("Ignoring Animation set on ");
                    sb2.append(fragment2);
                    sb2.append(" as Animations cannot run alongside Transitions.");
                }
                c1086a2.m43631b();
            } else if (z2) {
                if (FragmentManager.m43764a(2)) {
                    StringBuilder sb3 = new StringBuilder("Ignoring Animation set on ");
                    sb3.append(fragment2);
                    sb3.append(" as Animations cannot run alongside Animators.");
                }
                c1086a2.m43631b();
            } else {
                final View view2 = fragment2.mView;
                Animation animation = (Animation) C0833d.m44410a(((C1095d.C1100a) C0833d.m44410a(c1086a2.m43633a(context))).f4349a);
                if (c1152b2.f4529a != AbstractC1147z.C1152b.EnumC1155b.REMOVED) {
                    view2.startAnimation(animation);
                    c1086a2.m43631b();
                } else {
                    a.startViewTransition(view2);
                    C1095d.RunnableC1101b runnableC1101b = new C1095d.RunnableC1101b(animation, a, view2);
                    runnableC1101b.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.b.5
                        @Override // android.view.animation.Animation.AnimationListener
                        public final void onAnimationEnd(Animation animation2) {
                            a.post(new Runnable() { // from class: androidx.fragment.app.b.5.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    a.endViewTransition(view2);
                                    c1086a2.m43631b();
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
                    view2.startAnimation(runnableC1101b);
                }
                c1086a2.f4312b.m44302a(new C0856a.AbstractC0857a() { // from class: androidx.fragment.app.b.6
                    @Override // androidx.core.p037os.C0856a.AbstractC0857a
                    /* renamed from: a */
                    public final void mo39700a() {
                        view2.clearAnimation();
                        a.endViewTransition(view2);
                        c1086a2.m43631b();
                    }
                });
            }
        }
    }

    /* renamed from: a */
    private void m43634a(Map<String, View> map, View view) {
        String m44083p = C0926v.m44083p(view);
        if (m44083p != null) {
            map.put(m44083p, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    m43634a(map, childAt);
                }
            }
        }
    }

    @Override // androidx.fragment.app.AbstractC1147z
    /* renamed from: a */
    final void mo43478a(List<AbstractC1147z.C1152b> list, boolean z) {
        AbstractC1147z.C1152b c1152b = null;
        AbstractC1147z.C1152b c1152b2 = null;
        for (AbstractC1147z.C1152b c1152b3 : list) {
            AbstractC1147z.C1152b.EnumC1155b from = AbstractC1147z.C1152b.EnumC1155b.from(c1152b3.f4531c.mView);
            int i = C10772.f4279a[c1152b3.f4529a.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                if (from == AbstractC1147z.C1152b.EnumC1155b.VISIBLE && c1152b == null) {
                    c1152b = c1152b3;
                }
            } else if (i == 4 && from != AbstractC1147z.C1152b.EnumC1155b.VISIBLE) {
                c1152b2 = c1152b3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList<AbstractC1147z.C1152b> arrayList3 = new ArrayList(list);
        for (final AbstractC1147z.C1152b c1152b4 : list) {
            C0856a c0856a = new C0856a();
            c1152b4.m43467a(c0856a);
            arrayList.add(new C1086a(c1152b4, c0856a, z));
            C0856a c0856a2 = new C0856a();
            c1152b4.m43467a(c0856a2);
            boolean z2 = false;
            if (z) {
                if (c1152b4 != c1152b) {
                    arrayList2.add(new C1088c(c1152b4, c0856a2, z, z2));
                    c1152b4.m43465a(new Runnable() { // from class: androidx.fragment.app.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (arrayList3.contains(c1152b4)) {
                                arrayList3.remove(c1152b4);
                                C1074b.m43638a(c1152b4);
                            }
                        }
                    });
                }
                z2 = true;
                arrayList2.add(new C1088c(c1152b4, c0856a2, z, z2));
                c1152b4.m43465a(new Runnable() { // from class: androidx.fragment.app.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (arrayList3.contains(c1152b4)) {
                            arrayList3.remove(c1152b4);
                            C1074b.m43638a(c1152b4);
                        }
                    }
                });
            } else {
                if (c1152b4 != c1152b2) {
                    arrayList2.add(new C1088c(c1152b4, c0856a2, z, z2));
                    c1152b4.m43465a(new Runnable() { // from class: androidx.fragment.app.b.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (arrayList3.contains(c1152b4)) {
                                arrayList3.remove(c1152b4);
                                C1074b.m43638a(c1152b4);
                            }
                        }
                    });
                }
                z2 = true;
                arrayList2.add(new C1088c(c1152b4, c0856a2, z, z2));
                c1152b4.m43465a(new Runnable() { // from class: androidx.fragment.app.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (arrayList3.contains(c1152b4)) {
                            arrayList3.remove(c1152b4);
                            C1074b.m43638a(c1152b4);
                        }
                    }
                });
            }
        }
        Map<AbstractC1147z.C1152b, Boolean> m43636a = m43636a(arrayList2, arrayList3, z, c1152b, c1152b2);
        m43635a(arrayList, arrayList3, m43636a.containsValue(Boolean.TRUE), m43636a);
        for (AbstractC1147z.C1152b c1152b5 : arrayList3) {
            m43638a(c1152b5);
        }
        arrayList3.clear();
    }
}
