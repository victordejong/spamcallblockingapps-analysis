package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.b.d;
import androidx.core.content.res.g;
import androidx.core.view.v;
import androidx.transition.a;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {
    private b G;
    private androidx.b.a<String, String> H;
    v j;
    private ArrayList<x> y;
    private ArrayList<x> z;

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f5730a = {2, 1, 3, 4};
    private static final PathMotion k = new PathMotion() { // from class: androidx.transition.Transition.1
        @Override // androidx.transition.PathMotion
        public final Path a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };
    private static ThreadLocal<androidx.b.a<Animator, a>> A = new ThreadLocal<>();
    private String l = getClass().getName();
    private long m = -1;

    /* renamed from: b  reason: collision with root package name */
    long f5731b = -1;
    private TimeInterpolator n = null;

    /* renamed from: c  reason: collision with root package name */
    ArrayList<Integer> f5732c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    ArrayList<View> f5733d = new ArrayList<>();
    ArrayList<String> e = null;
    ArrayList<Class<?>> f = null;
    private ArrayList<Integer> o = null;
    private ArrayList<View> p = null;
    private ArrayList<Class<?>> q = null;
    private ArrayList<String> r = null;
    private ArrayList<Integer> s = null;
    private ArrayList<View> t = null;
    private ArrayList<Class<?>> u = null;
    private y v = new y();
    private y w = new y();
    TransitionSet g = null;
    private int[] x = f5730a;
    boolean h = false;
    ArrayList<Animator> i = new ArrayList<>();
    private int B = 0;
    private boolean C = false;
    private boolean D = false;
    private ArrayList<c> E = null;
    private ArrayList<Animator> F = new ArrayList<>();
    private PathMotion I = k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        View f5737a;

        /* renamed from: b  reason: collision with root package name */
        String f5738b;

        /* renamed from: c  reason: collision with root package name */
        x f5739c;

        /* renamed from: d  reason: collision with root package name */
        as f5740d;
        Transition e;

        a(View view, String str, Transition transition, as asVar, x xVar) {
            this.f5737a = view;
            this.f5738b = str;
            this.f5739c = xVar;
            this.f5740d = asVar;
            this.e = transition;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public static abstract class b {
        public abstract Rect a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public interface c {
        void a();

        void a(Transition transition);

        void b();

        void b(Transition transition);

        void c();
    }

    public Transition() {
    }

    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, s.f5836c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long a2 = g.a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, VastIconXmlManager.DURATION, 1, -1);
        if (a2 >= 0) {
            a(a2);
        }
        long a3 = g.a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "startDelay", 2, -1);
        if (a3 > 0) {
            b(a3);
        }
        int b2 = g.b(obtainStyledAttributes, xmlResourceParser, "interpolator", 0);
        if (b2 > 0) {
            a(AnimationUtils.loadInterpolator(context, b2));
        }
        String c2 = g.c(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (c2 != null) {
            a(b(c2));
        }
        obtainStyledAttributes.recycle();
    }

    private static void a(y yVar, View view, x xVar) {
        yVar.f5855a.put(view, xVar);
        int id = view.getId();
        if (id >= 0) {
            if (yVar.f5856b.indexOfKey(id) >= 0) {
                yVar.f5856b.put(id, null);
            } else {
                yVar.f5856b.put(id, view);
            }
        }
        String p = v.p(view);
        if (p != null) {
            if (yVar.f5858d.containsKey(p)) {
                yVar.f5858d.put(p, null);
            } else {
                yVar.f5858d.put(p, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (yVar.f5857c.b(itemIdAtPosition) >= 0) {
                    View a2 = yVar.f5857c.a(itemIdAtPosition, null);
                    if (a2 != null) {
                        v.a(a2, false);
                        yVar.f5857c.b(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                v.a(view, true);
                yVar.f5857c.b(itemIdAtPosition, view);
            }
        }
    }

    private void a(y yVar, y yVar2) {
        x xVar;
        View view;
        View view2;
        View a2;
        androidx.b.a aVar = new androidx.b.a(yVar.f5855a);
        androidx.b.a aVar2 = new androidx.b.a(yVar2.f5855a);
        int i = 0;
        while (true) {
            int[] iArr = this.x;
            if (i >= iArr.length) {
                break;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                for (int size = aVar.size() - 1; size >= 0; size--) {
                    View view3 = (View) aVar.b(size);
                    if (view3 != null && b(view3) && (xVar = (x) aVar2.remove(view3)) != null && b(xVar.f5853b)) {
                        this.y.add((x) aVar.d(size));
                        this.z.add(xVar);
                    }
                }
            } else if (i2 == 2) {
                androidx.b.a<String, View> aVar3 = yVar.f5858d;
                androidx.b.a<String, View> aVar4 = yVar2.f5858d;
                int size2 = aVar3.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    View c2 = aVar3.c(i3);
                    if (c2 != null && b(c2) && (view = aVar4.get(aVar3.b(i3))) != null && b(view)) {
                        x xVar2 = (x) aVar.get(c2);
                        x xVar3 = (x) aVar2.get(view);
                        if (!(xVar2 == null || xVar3 == null)) {
                            this.y.add(xVar2);
                            this.z.add(xVar3);
                            aVar.remove(c2);
                            aVar2.remove(view);
                        }
                    }
                }
            } else if (i2 == 3) {
                SparseArray<View> sparseArray = yVar.f5856b;
                SparseArray<View> sparseArray2 = yVar2.f5856b;
                int size3 = sparseArray.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    View valueAt = sparseArray.valueAt(i4);
                    if (valueAt != null && b(valueAt) && (view2 = sparseArray2.get(sparseArray.keyAt(i4))) != null && b(view2)) {
                        x xVar4 = (x) aVar.get(valueAt);
                        x xVar5 = (x) aVar2.get(view2);
                        if (!(xVar4 == null || xVar5 == null)) {
                            this.y.add(xVar4);
                            this.z.add(xVar5);
                            aVar.remove(valueAt);
                            aVar2.remove(view2);
                        }
                    }
                }
            } else if (i2 == 4) {
                d<View> dVar = yVar.f5857c;
                d<View> dVar2 = yVar2.f5857c;
                int b2 = dVar.b();
                for (int i5 = 0; i5 < b2; i5++) {
                    View c3 = dVar.c(i5);
                    if (c3 != null && b(c3) && (a2 = dVar2.a(dVar.b(i5), null)) != null && b(a2)) {
                        x xVar6 = (x) aVar.get(c3);
                        x xVar7 = (x) aVar2.get(a2);
                        if (!(xVar6 == null || xVar7 == null)) {
                            this.y.add(xVar6);
                            this.z.add(xVar7);
                            aVar.remove(c3);
                            aVar2.remove(a2);
                        }
                    }
                }
            }
            i++;
        }
        for (int i6 = 0; i6 < aVar.size(); i6++) {
            x xVar8 = (x) aVar.c(i6);
            if (b(xVar8.f5853b)) {
                this.y.add(xVar8);
                this.z.add(null);
            }
        }
        for (int i7 = 0; i7 < aVar2.size(); i7++) {
            x xVar9 = (x) aVar2.c(i7);
            if (b(xVar9.f5853b)) {
                this.z.add(xVar9);
                this.y.add(null);
            }
        }
    }

    private void a(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.x = f5730a;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (!(i2 > 0 && i2 <= 4)) {
                throw new IllegalArgumentException("matches contains invalid value");
            } else if (a(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.x = (int[]) iArr.clone();
    }

    private static boolean a(x xVar, x xVar2, String str) {
        Object obj = xVar.f5852a.get(str);
        Object obj2 = xVar2.f5852a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        return obj == null || obj2 == null || !obj.equals(obj2);
    }

    private static boolean a(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    private static int[] b(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i] = 3;
            } else if ("instance".equalsIgnoreCase(trim)) {
                iArr[i] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
                iArr[i] = 2;
            } else if (VerizonSSPWaterfallProvider.METADATA_KEY_ITEM_ID.equalsIgnoreCase(trim)) {
                iArr[i] = 4;
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i++;
        }
        return iArr;
    }

    private void c(View view, boolean z) {
        if (view != null) {
            int id = view.getId();
            ArrayList<Integer> arrayList = this.o;
            if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
                ArrayList<View> arrayList2 = this.p;
                if (arrayList2 == null || !arrayList2.contains(view)) {
                    ArrayList<Class<?>> arrayList3 = this.q;
                    if (arrayList3 != null) {
                        int size = arrayList3.size();
                        for (int i = 0; i < size; i++) {
                            if (this.q.get(i).isInstance(view)) {
                                return;
                            }
                        }
                    }
                    if (view.getParent() instanceof ViewGroup) {
                        x xVar = new x(view);
                        if (z) {
                            a(xVar);
                        } else {
                            b(xVar);
                        }
                        xVar.f5854c.add(this);
                        c(xVar);
                        if (z) {
                            a(this.v, view, xVar);
                        } else {
                            a(this.w, view, xVar);
                        }
                    }
                    if (view instanceof ViewGroup) {
                        ArrayList<Integer> arrayList4 = this.s;
                        if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                            ArrayList<View> arrayList5 = this.t;
                            if (arrayList5 == null || !arrayList5.contains(view)) {
                                ArrayList<Class<?>> arrayList6 = this.u;
                                if (arrayList6 != null) {
                                    int size2 = arrayList6.size();
                                    for (int i2 = 0; i2 < size2; i2++) {
                                        if (this.u.get(i2).isInstance(view)) {
                                            return;
                                        }
                                    }
                                }
                                ViewGroup viewGroup = (ViewGroup) view;
                                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                    c(viewGroup.getChildAt(i3), z);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private static androidx.b.a<Animator, a> l() {
        androidx.b.a<Animator, a> aVar = A.get();
        androidx.b.a<Animator, a> aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new androidx.b.a<>();
            A.set(aVar2);
        }
        return aVar2;
    }

    public Animator a(ViewGroup viewGroup, x xVar, x xVar2) {
        return null;
    }

    public Transition a(long j) {
        this.f5731b = j;
        return this;
    }

    public Transition a(TimeInterpolator timeInterpolator) {
        this.n = timeInterpolator;
        return this;
    }

    public Transition a(c cVar) {
        if (this.E == null) {
            this.E = new ArrayList<>();
        }
        this.E.add(cVar);
        return this;
    }

    public final x a(View view, boolean z) {
        TransitionSet transitionSet = this;
        while (true) {
            TransitionSet transitionSet2 = transitionSet.g;
            if (transitionSet2 == null) {
                break;
            }
            transitionSet = transitionSet2;
        }
        return (z ? transitionSet.v : transitionSet.w).f5855a.get(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f5733d.size() > 0) goto L_0x00f8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.a(java.lang.String):java.lang.String");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ViewGroup viewGroup) {
        a aVar;
        this.y = new ArrayList<>();
        this.z = new ArrayList<>();
        a(this.v, this.w);
        androidx.b.a<Animator, a> l = l();
        int size = l.size();
        as b2 = ai.b(viewGroup);
        while (true) {
            size--;
            if (size >= 0) {
                Animator b3 = l.b(size);
                if (!(b3 == null || (aVar = l.get(b3)) == null || aVar.f5737a == null || !b2.equals(aVar.f5740d))) {
                    x xVar = aVar.f5739c;
                    View view = aVar.f5737a;
                    x a2 = a(view, true);
                    x b4 = b(view, true);
                    x xVar2 = b4;
                    if (a2 == null) {
                        xVar2 = b4;
                        if (b4 == null) {
                            xVar2 = this.w.f5855a.get(view);
                        }
                    }
                    if (!(a2 == null && xVar2 == null) && aVar.e.a(xVar, xVar2)) {
                        if (b3.isRunning() || b3.isStarted()) {
                            b3.cancel();
                        } else {
                            l.remove(b3);
                        }
                    }
                }
            } else {
                a(viewGroup, this.v, this.w, this.y, this.z);
                d();
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.view.ViewGroup r11, androidx.transition.y r12, androidx.transition.y r13, java.util.ArrayList<androidx.transition.x> r14, java.util.ArrayList<androidx.transition.x> r15) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.a(android.view.ViewGroup, androidx.transition.y, androidx.transition.y, java.util.ArrayList, java.util.ArrayList):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ViewGroup viewGroup, boolean z) {
        androidx.b.a<String, String> aVar;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        a(z);
        if ((this.f5732c.size() > 0 || this.f5733d.size() > 0) && (((arrayList = this.e) == null || arrayList.isEmpty()) && ((arrayList2 = this.f) == null || arrayList2.isEmpty()))) {
            for (int i = 0; i < this.f5732c.size(); i++) {
                View findViewById = viewGroup.findViewById(this.f5732c.get(i).intValue());
                if (findViewById != null) {
                    x xVar = new x(findViewById);
                    if (z) {
                        a(xVar);
                    } else {
                        b(xVar);
                    }
                    xVar.f5854c.add(this);
                    c(xVar);
                    if (z) {
                        a(this.v, findViewById, xVar);
                    } else {
                        a(this.w, findViewById, xVar);
                    }
                }
            }
            for (int i2 = 0; i2 < this.f5733d.size(); i2++) {
                View view = this.f5733d.get(i2);
                x xVar2 = new x(view);
                if (z) {
                    a(xVar2);
                } else {
                    b(xVar2);
                }
                xVar2.f5854c.add(this);
                c(xVar2);
                if (z) {
                    a(this.v, view, xVar2);
                } else {
                    a(this.w, view, xVar2);
                }
            }
        } else {
            c(viewGroup, z);
        }
        if (!(z || (aVar = this.H) == null)) {
            int size = aVar.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i3 = 0; i3 < size; i3++) {
                arrayList3.add(this.v.f5858d.remove(this.H.b(i3)));
            }
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = (View) arrayList3.get(i4);
                if (view2 != null) {
                    this.v.f5858d.put(this.H.c(i4), view2);
                }
            }
        }
    }

    public void a(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.I = k;
        } else {
            this.I = pathMotion;
        }
    }

    public void a(b bVar) {
        this.G = bVar;
    }

    public void a(v vVar) {
        this.j = vVar;
    }

    public abstract void a(x xVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        if (z) {
            this.v.f5855a.clear();
            this.v.f5856b.clear();
            this.v.f5857c.d();
            return;
        }
        this.w.f5855a.clear();
        this.w.f5856b.clear();
        this.w.f5857c.d();
    }

    public boolean a(x xVar, x xVar2) {
        boolean z = false;
        if (xVar != null) {
            z = false;
            if (xVar2 != null) {
                String[] a2 = a();
                if (a2 != null) {
                    int length = a2.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (a(xVar, xVar2, a2[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it2 = xVar.f5852a.keySet().iterator();
                    do {
                        z = false;
                        if (!it2.hasNext()) {
                            break;
                        }
                    } while (!a(xVar, xVar2, it2.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    public String[] a() {
        return null;
    }

    public final long b() {
        return this.m;
    }

    public Transition b(long j) {
        this.m = j;
        return this;
    }

    public Transition b(c cVar) {
        ArrayList<c> arrayList = this.E;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(cVar);
        if (this.E.size() == 0) {
            this.E = null;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        if (r12 < 0) goto L_0x0094;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        if (r5 == false) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
        r4 = r0.z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
        r4 = r0.y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        r4 = r4.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.transition.x b(android.view.View r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            r6 = r0
        L_0x0002:
            r0 = r6
            androidx.transition.TransitionSet r0 = r0.g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0013
            r0 = r7
            r6 = r0
            goto L_0x0002
        L_0x0013:
            r0 = r5
            if (r0 == 0) goto L_0x0020
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.y
            r7 = r0
            goto L_0x0026
        L_0x0020:
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.z
            r7 = r0
        L_0x0026:
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x0030
            r0 = 0
            return r0
        L_0x0030:
            r0 = r7
            int r0 = r0.size()
            r9 = r0
            r0 = -1
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x003d:
            r0 = r10
            r12 = r0
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L_0x0071
            r0 = r7
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.transition.x r0 = (androidx.transition.x) r0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x005b
            r0 = 0
            return r0
        L_0x005b:
            r0 = r13
            android.view.View r0 = r0.f5853b
            r1 = r4
            if (r0 != r1) goto L_0x006b
            r0 = r11
            r12 = r0
            goto L_0x0071
        L_0x006b:
            int r11 = r11 + 1
            goto L_0x003d
        L_0x0071:
            r0 = r8
            r4 = r0
            r0 = r12
            if (r0 < 0) goto L_0x0094
            r0 = r5
            if (r0 == 0) goto L_0x0085
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.z
            r4 = r0
            goto L_0x008a
        L_0x0085:
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.y
            r4 = r0
        L_0x008a:
            r0 = r4
            r1 = r12
            java.lang.Object r0 = r0.get(r1)
            androidx.transition.x r0 = (androidx.transition.x) r0
            r4 = r0
        L_0x0094:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.b(android.view.View, boolean):androidx.transition.x");
    }

    public abstract void b(x xVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.o;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.p;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.q;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.q.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (!(this.r == null || v.p(view) == null || !this.r.contains(v.p(view)))) {
            return false;
        }
        if ((this.f5732c.size() == 0 && this.f5733d.size() == 0 && (((arrayList = this.f) == null || arrayList.isEmpty()) && ((arrayList2 = this.e) == null || arrayList2.isEmpty()))) || this.f5732c.contains(Integer.valueOf(id)) || this.f5733d.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.e;
        if (arrayList6 != null && arrayList6.contains(v.p(view))) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            if (this.f.get(i2).isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    public final TimeInterpolator c() {
        return this.n;
    }

    public Transition c(View view) {
        this.f5733d.add(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(x xVar) {
        String[] a2;
        if (this.j != null && !xVar.f5852a.isEmpty() && (a2 = this.j.a()) != null) {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= a2.length) {
                    z = true;
                    break;
                } else if (!xVar.f5852a.containsKey(a2[i])) {
                    break;
                } else {
                    i++;
                }
            }
            if (!z) {
                this.j.a(xVar);
            }
        }
    }

    public Transition d(View view) {
        this.f5733d.remove(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
        e();
        final androidx.b.a<Animator, a> l = l();
        Iterator<Animator> it2 = this.F.iterator();
        while (it2.hasNext()) {
            Animator next = it2.next();
            if (l.containsKey(next)) {
                e();
                if (next != null) {
                    next.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            l.remove(animator);
                            Transition.this.i.remove(animator);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            Transition.this.i.add(animator);
                        }
                    });
                    if (next == null) {
                        f();
                    } else {
                        long j = this.f5731b;
                        if (j >= 0) {
                            next.setDuration(j);
                        }
                        long j2 = this.m;
                        if (j2 >= 0) {
                            next.setStartDelay(j2 + next.getStartDelay());
                        }
                        TimeInterpolator timeInterpolator = this.n;
                        if (timeInterpolator != null) {
                            next.setInterpolator(timeInterpolator);
                        }
                        next.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                Transition.this.f();
                                animator.removeListener(this);
                            }
                        });
                        next.start();
                    }
                }
            }
        }
        this.F.clear();
        f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        if (this.B == 0) {
            ArrayList<c> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((c) arrayList2.get(i)).b(this);
                }
            }
            this.D = false;
        }
        this.B++;
    }

    public void e(View view) {
        int i;
        if (!this.D) {
            int size = this.i.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Animator animator = this.i.get(size);
                if (Build.VERSION.SDK_INT >= 19) {
                    animator.pause();
                } else {
                    ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
                    if (listeners != null) {
                        int size2 = listeners.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            Animator.AnimatorListener animatorListener = listeners.get(i2);
                            if (animatorListener instanceof a.AbstractC0118a) {
                                ((a.AbstractC0118a) animatorListener).onAnimationPause(animator);
                            }
                        }
                    }
                }
                size--;
            }
            ArrayList<c> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size3 = arrayList2.size();
                for (i = 0; i < size3; i++) {
                    ((c) arrayList2.get(i)).b();
                }
            }
            this.C = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f() {
        int i = this.B - 1;
        this.B = i;
        if (i == 0) {
            ArrayList<c> arrayList = this.E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.E.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((c) arrayList2.get(i2)).a(this);
                }
            }
            for (int i3 = 0; i3 < this.v.f5857c.b(); i3++) {
                View c2 = this.v.f5857c.c(i3);
                if (c2 != null) {
                    v.a(c2, false);
                }
            }
            for (int i4 = 0; i4 < this.w.f5857c.b(); i4++) {
                View c3 = this.w.f5857c.c(i4);
                if (c3 != null) {
                    v.a(c3, false);
                }
            }
            this.D = true;
        }
    }

    public void f(View view) {
        if (this.C) {
            if (!this.D) {
                for (int size = this.i.size() - 1; size >= 0; size--) {
                    Animator animator = this.i.get(size);
                    if (Build.VERSION.SDK_INT >= 19) {
                        animator.resume();
                    } else {
                        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
                        if (listeners != null) {
                            int size2 = listeners.size();
                            for (int i = 0; i < size2; i++) {
                                Animator.AnimatorListener animatorListener = listeners.get(i);
                                if (animatorListener instanceof a.AbstractC0118a) {
                                    ((a.AbstractC0118a) animatorListener).onAnimationResume(animator);
                                }
                            }
                        }
                    }
                }
                ArrayList<c> arrayList = this.E;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.E.clone();
                    int size3 = arrayList2.size();
                    for (int i2 = 0; i2 < size3; i2++) {
                        ((c) arrayList2.get(i2)).c();
                    }
                }
            }
            this.C = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void g() {
        for (int size = this.i.size() - 1; size >= 0; size--) {
            this.i.get(size).cancel();
        }
        ArrayList<c> arrayList = this.E;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.E.clone();
            int size2 = arrayList2.size();
            for (int i = 0; i < size2; i++) {
                ((c) arrayList2.get(i)).a();
            }
        }
    }

    public final PathMotion h() {
        return this.I;
    }

    public final b i() {
        return this.G;
    }

    public final Rect j() {
        b bVar = this.G;
        if (bVar == null) {
            return null;
        }
        return bVar.a();
    }

    /* renamed from: k */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.F = new ArrayList<>();
            transition.v = new y();
            transition.w = new y();
            transition.y = null;
            transition.z = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public String toString() {
        return a("");
    }
}
