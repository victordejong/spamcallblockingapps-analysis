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
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.core.content.res.C0810g;
import androidx.core.view.C0926v;
import androidx.p023b.C0428a;
import androidx.p023b.C0433d;
import androidx.transition.C2855a;
import com.mopub.mobileads.VastIconXmlManager;
import com.verizon.ads.verizonsspwaterfallprovider.VerizonSSPWaterfallProvider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.StringTokenizer;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Transition.class */
public abstract class Transition implements Cloneable {

    /* renamed from: G */
    private AbstractC2848b f10754G;

    /* renamed from: H */
    private C0428a<String, String> f10755H;

    /* renamed from: j */
    AbstractC2911v f10765j;

    /* renamed from: y */
    private ArrayList<C2914x> f10779y;

    /* renamed from: z */
    private ArrayList<C2914x> f10780z;

    /* renamed from: a */
    private static final int[] f10747a = {2, 1, 3, 4};

    /* renamed from: k */
    private static final PathMotion f10748k = new PathMotion() { // from class: androidx.transition.Transition.1
        @Override // androidx.transition.PathMotion
        /* renamed from: a */
        public final Path mo39793a(float f, float f2, float f3, float f4) {
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f3, f4);
            return path;
        }
    };

    /* renamed from: A */
    private static ThreadLocal<C0428a<Animator, C2847a>> f10746A = new ThreadLocal<>();

    /* renamed from: l */
    private String f10766l = getClass().getName();

    /* renamed from: m */
    private long f10767m = -1;

    /* renamed from: b */
    long f10757b = -1;

    /* renamed from: n */
    private TimeInterpolator f10768n = null;

    /* renamed from: c */
    ArrayList<Integer> f10758c = new ArrayList<>();

    /* renamed from: d */
    ArrayList<View> f10759d = new ArrayList<>();

    /* renamed from: e */
    ArrayList<String> f10760e = null;

    /* renamed from: f */
    ArrayList<Class<?>> f10761f = null;

    /* renamed from: o */
    private ArrayList<Integer> f10769o = null;

    /* renamed from: p */
    private ArrayList<View> f10770p = null;

    /* renamed from: q */
    private ArrayList<Class<?>> f10771q = null;

    /* renamed from: r */
    private ArrayList<String> f10772r = null;

    /* renamed from: s */
    private ArrayList<Integer> f10773s = null;

    /* renamed from: t */
    private ArrayList<View> f10774t = null;

    /* renamed from: u */
    private ArrayList<Class<?>> f10775u = null;

    /* renamed from: v */
    private C2915y f10776v = new C2915y();

    /* renamed from: w */
    private C2915y f10777w = new C2915y();

    /* renamed from: g */
    TransitionSet f10762g = null;

    /* renamed from: x */
    private int[] f10778x = f10747a;

    /* renamed from: h */
    boolean f10763h = false;

    /* renamed from: i */
    ArrayList<Animator> f10764i = new ArrayList<>();

    /* renamed from: B */
    private int f10749B = 0;

    /* renamed from: C */
    private boolean f10750C = false;

    /* renamed from: D */
    private boolean f10751D = false;

    /* renamed from: E */
    private ArrayList<AbstractC2849c> f10752E = null;

    /* renamed from: F */
    private ArrayList<Animator> f10753F = new ArrayList<>();

    /* renamed from: I */
    private PathMotion f10756I = f10748k;

    /* renamed from: androidx.transition.Transition$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$a.class */
    public static final class C2847a {

        /* renamed from: a */
        View f10784a;

        /* renamed from: b */
        String f10785b;

        /* renamed from: c */
        C2914x f10786c;

        /* renamed from: d */
        AbstractC2879as f10787d;

        /* renamed from: e */
        Transition f10788e;

        C2847a(View view, String str, Transition transition, AbstractC2879as abstractC2879as, C2914x c2914x) {
            this.f10784a = view;
            this.f10785b = str;
            this.f10786c = c2914x;
            this.f10787d = abstractC2879as;
            this.f10788e = transition;
        }
    }

    /* renamed from: androidx.transition.Transition$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$b.class */
    public static abstract class AbstractC2848b {
        /* renamed from: a */
        public abstract Rect mo39699a();
    }

    /* renamed from: androidx.transition.Transition$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Transition$c.class */
    public interface AbstractC2849c {
        /* renamed from: a */
        void mo39672a();

        /* renamed from: a */
        void mo39671a(Transition transition);

        /* renamed from: b */
        void mo39670b();

        /* renamed from: b */
        void mo39669b(Transition transition);

        /* renamed from: c */
        void mo39668c();
    }

    public Transition() {
    }

    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2906s.f10909c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long m44454a = C0810g.m44454a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, VastIconXmlManager.DURATION, 1, -1);
        if (m44454a >= 0) {
            mo39791a(m44454a);
        }
        long m44454a2 = C0810g.m44454a(obtainStyledAttributes, (XmlPullParser) xmlResourceParser, "startDelay", 2, -1);
        if (m44454a2 > 0) {
            mo39781b(m44454a2);
        }
        int m44451b = C0810g.m44451b(obtainStyledAttributes, xmlResourceParser, "interpolator", 0);
        if (m44451b > 0) {
            mo39790a(AnimationUtils.loadInterpolator(context, m44451b));
        }
        String m44450c = C0810g.m44450c(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (m44450c != null) {
            m39807a(m39802b(m44450c));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static void m39810a(C2915y c2915y, View view, C2914x c2914x) {
        c2915y.f10936a.put(view, c2914x);
        int id = view.getId();
        if (id >= 0) {
            if (c2915y.f10937b.indexOfKey(id) >= 0) {
                c2915y.f10937b.put(id, null);
            } else {
                c2915y.f10937b.put(id, view);
            }
        }
        String m44083p = C0926v.m44083p(view);
        if (m44083p != null) {
            if (c2915y.f10939d.containsKey(m44083p)) {
                c2915y.f10939d.put(m44083p, null);
            } else {
                c2915y.f10939d.put(m44083p, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (!listView.getAdapter().hasStableIds()) {
                return;
            }
            long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
            if (c2915y.f10938c.m45546b(itemIdAtPosition) < 0) {
                C0926v.m44114a(view, true);
                c2915y.f10938c.m45545b(itemIdAtPosition, view);
                return;
            }
            View m45549a = c2915y.f10938c.m45549a(itemIdAtPosition, null);
            if (m45549a == null) {
                return;
            }
            C0926v.m44114a(m45549a, false);
            c2915y.f10938c.m45545b(itemIdAtPosition, null);
        }
    }

    /* renamed from: a */
    private void m39809a(C2915y c2915y, C2915y c2915y2) {
        C2914x c2914x;
        View view;
        View view2;
        View m45549a;
        C0428a c0428a = new C0428a(c2915y.f10936a);
        C0428a c0428a2 = new C0428a(c2915y2.f10936a);
        int i = 0;
        while (true) {
            int[] iArr = this.f10778x;
            if (i >= iArr.length) {
                break;
            }
            int i2 = iArr[i];
            if (i2 == 1) {
                for (int size = c0428a.size() - 1; size >= 0; size--) {
                    View view3 = (View) c0428a.m45517b(size);
                    if (view3 != null && m39804b(view3) && (c2914x = (C2914x) c0428a2.remove(view3)) != null && m39804b(c2914x.f10934b)) {
                        this.f10779y.add((C2914x) c0428a.mo37600d(size));
                        this.f10780z.add(c2914x);
                    }
                }
            } else if (i2 == 2) {
                C0428a<String, View> c0428a3 = c2915y.f10939d;
                C0428a<String, View> c0428a4 = c2915y2.f10939d;
                int size2 = c0428a3.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    View c = c0428a3.m45515c(i3);
                    if (c != null && m39804b(c) && (view = c0428a4.get(c0428a3.m45517b(i3))) != null && m39804b(view)) {
                        C2914x c2914x2 = (C2914x) c0428a.get(c);
                        C2914x c2914x3 = (C2914x) c0428a2.get(view);
                        if (c2914x2 != null && c2914x3 != null) {
                            this.f10779y.add(c2914x2);
                            this.f10780z.add(c2914x3);
                            c0428a.remove(c);
                            c0428a2.remove(view);
                        }
                    }
                }
            } else if (i2 == 3) {
                SparseArray<View> sparseArray = c2915y.f10937b;
                SparseArray<View> sparseArray2 = c2915y2.f10937b;
                int size3 = sparseArray.size();
                for (int i4 = 0; i4 < size3; i4++) {
                    View valueAt = sparseArray.valueAt(i4);
                    if (valueAt != null && m39804b(valueAt) && (view2 = sparseArray2.get(sparseArray.keyAt(i4))) != null && m39804b(view2)) {
                        C2914x c2914x4 = (C2914x) c0428a.get(valueAt);
                        C2914x c2914x5 = (C2914x) c0428a2.get(view2);
                        if (c2914x4 != null && c2914x5 != null) {
                            this.f10779y.add(c2914x4);
                            this.f10780z.add(c2914x5);
                            c0428a.remove(valueAt);
                            c0428a2.remove(view2);
                        }
                    }
                }
            } else if (i2 == 4) {
                C0433d<View> c0433d = c2915y.f10938c;
                C0433d<View> c0433d2 = c2915y2.f10938c;
                int m45548b = c0433d.m45548b();
                for (int i5 = 0; i5 < m45548b; i5++) {
                    View m45543c = c0433d.m45543c(i5);
                    if (m45543c != null && m39804b(m45543c) && (m45549a = c0433d2.m45549a(c0433d.m45547b(i5), null)) != null && m39804b(m45549a)) {
                        C2914x c2914x6 = (C2914x) c0428a.get(m45543c);
                        C2914x c2914x7 = (C2914x) c0428a2.get(m45549a);
                        if (c2914x6 != null && c2914x7 != null) {
                            this.f10779y.add(c2914x6);
                            this.f10780z.add(c2914x7);
                            c0428a.remove(m45543c);
                            c0428a2.remove(m45549a);
                        }
                    }
                }
            }
            i++;
        }
        for (int i6 = 0; i6 < c0428a.size(); i6++) {
            C2914x c2914x8 = (C2914x) c0428a.m45515c(i6);
            if (m39804b(c2914x8.f10934b)) {
                this.f10779y.add(c2914x8);
                this.f10780z.add(null);
            }
        }
        for (int i7 = 0; i7 < c0428a2.size(); i7++) {
            C2914x c2914x9 = (C2914x) c0428a2.m45515c(i7);
            if (m39804b(c2914x9.f10934b)) {
                this.f10780z.add(c2914x9);
                this.f10779y.add(null);
            }
        }
    }

    /* renamed from: a */
    private void m39807a(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            this.f10778x = f10747a;
            return;
        }
        for (int i = 0; i < iArr.length; i++) {
            int i2 = iArr[i];
            if (!(i2 > 0 && i2 <= 4)) {
                throw new IllegalArgumentException("matches contains invalid value");
            }
            if (m39806a(iArr, i)) {
                throw new IllegalArgumentException("matches contains a duplicate value");
            }
        }
        this.f10778x = (int[]) iArr.clone();
    }

    /* renamed from: a */
    private static boolean m39811a(C2914x c2914x, C2914x c2914x2, String str) {
        Object obj = c2914x.f10933a.get(str);
        Object obj2 = c2914x2.f10933a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        return obj == null || obj2 == null || !obj.equals(obj2);
    }

    /* renamed from: a */
    private static boolean m39806a(int[] iArr, int i) {
        int i2 = iArr[i];
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] == i2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static int[] m39802b(String str) {
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
            } else if (!trim.isEmpty()) {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            } else {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                i--;
                iArr = iArr2;
            }
            i++;
        }
        return iArr;
    }

    /* renamed from: c */
    private void m39800c(View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f10769o;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList2 = this.f10770p;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList3 = this.f10771q;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                if (this.f10771q.get(i).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            C2914x c2914x = new C2914x(view);
            if (z) {
                mo10513a(c2914x);
            } else {
                mo10512b(c2914x);
            }
            c2914x.f10935c.add(this);
            mo39775c(c2914x);
            if (z) {
                m39810a(this.f10776v, view, c2914x);
            } else {
                m39810a(this.f10777w, view, c2914x);
            }
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ArrayList<Integer> arrayList4 = this.f10773s;
        if (arrayList4 != null && arrayList4.contains(Integer.valueOf(id))) {
            return;
        }
        ArrayList<View> arrayList5 = this.f10774t;
        if (arrayList5 != null && arrayList5.contains(view)) {
            return;
        }
        ArrayList<Class<?>> arrayList6 = this.f10775u;
        if (arrayList6 != null) {
            int size2 = arrayList6.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (this.f10775u.get(i2).isInstance(view)) {
                    return;
                }
            }
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
            m39800c(viewGroup.getChildAt(i3), z);
        }
    }

    /* renamed from: l */
    private static C0428a<Animator, C2847a> m39794l() {
        C0428a<Animator, C2847a> c0428a = f10746A.get();
        C0428a<Animator, C2847a> c0428a2 = c0428a;
        if (c0428a == null) {
            c0428a2 = new C0428a<>();
            f10746A.set(c0428a2);
        }
        return c0428a2;
    }

    /* renamed from: a */
    public Animator mo10514a(ViewGroup viewGroup, C2914x c2914x, C2914x c2914x2) {
        return null;
    }

    /* renamed from: a */
    public Transition mo39791a(long j) {
        this.f10757b = j;
        return this;
    }

    /* renamed from: a */
    public Transition mo39790a(TimeInterpolator timeInterpolator) {
        this.f10768n = timeInterpolator;
        return this;
    }

    /* renamed from: a */
    public Transition mo39786a(AbstractC2849c abstractC2849c) {
        if (this.f10752E == null) {
            this.f10752E = new ArrayList<>();
        }
        this.f10752E.add(abstractC2849c);
        return this;
    }

    /* renamed from: a */
    public final C2914x m39814a(View view, boolean z) {
        Transition transition;
        TransitionSet transitionSet = this;
        while (true) {
            transition = transitionSet;
            TransitionSet transitionSet2 = transition.f10762g;
            if (transitionSet2 == null) {
                break;
            }
            transitionSet = transitionSet2;
        }
        return (z ? transition.f10776v : transition.f10777w).f10936a.get(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00f5, code lost:
        if (r5.f10759d.size() > 0) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo39783a(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.mo39783a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public final void m39813a(ViewGroup viewGroup) {
        C2847a c2847a;
        this.f10779y = new ArrayList<>();
        this.f10780z = new ArrayList<>();
        m39809a(this.f10776v, this.f10777w);
        C0428a<Animator, C2847a> m39794l = m39794l();
        int size = m39794l.size();
        AbstractC2879as m39739b = C2867ai.m39739b(viewGroup);
        while (true) {
            size--;
            if (size < 0) {
                mo39789a(viewGroup, this.f10776v, this.f10777w, this.f10779y, this.f10780z);
                mo39774d();
                return;
            }
            Animator b = m39794l.m45517b(size);
            if (b != null && (c2847a = m39794l.get(b)) != null && c2847a.f10784a != null && m39739b.equals(c2847a.f10787d)) {
                C2914x c2914x = c2847a.f10786c;
                View view = c2847a.f10784a;
                C2914x m39814a = m39814a(view, true);
                C2914x m39803b = m39803b(view, true);
                C2914x c2914x2 = m39803b;
                if (m39814a == null) {
                    c2914x2 = m39803b;
                    if (m39803b == null) {
                        c2914x2 = this.f10777w.f10936a.get(view);
                    }
                }
                if (!(m39814a == null && c2914x2 == null) && c2847a.f10788e.mo39764a(c2914x, c2914x2)) {
                    if (b.isRunning() || b.isStarted()) {
                        b.cancel();
                    } else {
                        m39794l.remove(b);
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* renamed from: a */
    public void mo39789a(ViewGroup viewGroup, C2915y c2915y, C2915y c2915y2, ArrayList<C2914x> arrayList, ArrayList<C2914x> arrayList2) {
        int i;
        char c;
        View view;
        C2914x c2914x;
        C0428a<Animator, C2847a> m39794l = m39794l();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        char c2 = 65535;
        int i2 = 0;
        while (i2 < size) {
            C2914x c2914x2 = arrayList.get(i2);
            C2914x c2914x3 = arrayList2.get(i2);
            C2914x c2914x4 = c2914x2;
            if (c2914x2 != null) {
                c2914x4 = c2914x2;
                if (!c2914x2.f10935c.contains(this)) {
                    c2914x4 = null;
                }
            }
            C2914x c2914x5 = c2914x3;
            if (c2914x3 != null) {
                c2914x5 = c2914x3;
                if (!c2914x3.f10935c.contains(this)) {
                    c2914x5 = null;
                }
            }
            if (c2914x4 != null || c2914x5 != null) {
                if (c2914x4 == null || c2914x5 == null || mo39764a(c2914x4, c2914x5)) {
                    Animator mo10514a = mo10514a(viewGroup, c2914x4, c2914x5);
                    if (mo10514a != null) {
                        if (c2914x5 != null) {
                            View view2 = c2914x5.f10934b;
                            String[] mo39768a = mo39768a();
                            if (mo39768a != null && mo39768a.length > 0) {
                                c2914x = new C2914x(view2);
                                C2914x c2914x6 = c2915y2.f10936a.get(view2);
                                int i3 = i2;
                                if (c2914x6 != null) {
                                    int i4 = 0;
                                    while (true) {
                                        i3 = i2;
                                        if (i4 >= mo39768a.length) {
                                            break;
                                        }
                                        c2914x.f10933a.put(mo39768a[i4], c2914x6.f10933a.get(mo39768a[i4]));
                                        i4++;
                                    }
                                }
                                i2 = i3;
                                int size2 = m39794l.size();
                                for (int i5 = 0; i5 < size2; i5++) {
                                    C2847a c2847a = m39794l.get(m39794l.m45517b(i5));
                                    if (c2847a.f10786c != null && c2847a.f10784a == view2 && c2847a.f10785b.equals(this.f10766l) && c2847a.f10786c.equals(c2914x)) {
                                        mo10514a = null;
                                        view = view2;
                                        break;
                                    }
                                }
                            } else {
                                c2914x = null;
                            }
                            view = view2;
                        } else {
                            view = c2914x4.f10934b;
                            c2914x = null;
                        }
                        c = c2;
                        i = i2;
                        if (mo10514a != null) {
                            AbstractC2911v abstractC2911v = this.f10765j;
                            c = c2;
                            if (abstractC2911v != null) {
                                long mo39677a = abstractC2911v.mo39677a(viewGroup, this, c2914x4, c2914x5);
                                sparseIntArray.put(this.f10753F.size(), (int) mo39677a);
                                c = Math.min(mo39677a, (long) c2);
                            }
                            m39794l.put(mo10514a, new C2847a(view, this.f10766l, this, C2867ai.m39739b(viewGroup), c2914x));
                            this.f10753F.add(mo10514a);
                            i = i2;
                        }
                        i2 = i + 1;
                        c2 = c;
                    }
                }
            }
            c = c2;
            i = i2;
            i2 = i + 1;
            c2 = c;
        }
        if (sparseIntArray.size() != 0) {
            for (int i6 = 0; i6 < sparseIntArray.size(); i6++) {
                Animator animator = this.f10753F.get(sparseIntArray.keyAt(i6));
                animator.setStartDelay((sparseIntArray.valueAt(i6) - c2) + animator.getStartDelay());
            }
        }
    }

    /* renamed from: a */
    public final void m39812a(ViewGroup viewGroup, boolean z) {
        C0428a<String, String> c0428a;
        int i;
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        m39808a(z);
        if ((this.f10758c.size() > 0 || this.f10759d.size() > 0) && (((arrayList = this.f10760e) == null || arrayList.isEmpty()) && ((arrayList2 = this.f10761f) == null || arrayList2.isEmpty()))) {
            for (int i2 = 0; i2 < this.f10758c.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f10758c.get(i2).intValue());
                if (findViewById != null) {
                    C2914x c2914x = new C2914x(findViewById);
                    if (z) {
                        mo10513a(c2914x);
                    } else {
                        mo10512b(c2914x);
                    }
                    c2914x.f10935c.add(this);
                    mo39775c(c2914x);
                    if (z) {
                        m39810a(this.f10776v, findViewById, c2914x);
                    } else {
                        m39810a(this.f10777w, findViewById, c2914x);
                    }
                }
            }
            for (int i3 = 0; i3 < this.f10759d.size(); i3++) {
                View view = this.f10759d.get(i3);
                C2914x c2914x2 = new C2914x(view);
                if (z) {
                    mo10513a(c2914x2);
                } else {
                    mo10512b(c2914x2);
                }
                c2914x2.f10935c.add(this);
                mo39775c(c2914x2);
                if (z) {
                    m39810a(this.f10776v, view, c2914x2);
                } else {
                    m39810a(this.f10777w, view, c2914x2);
                }
            }
        } else {
            m39800c(viewGroup, z);
        }
        if (z || (c0428a = this.f10755H) == null) {
            return;
        }
        int size = c0428a.size();
        ArrayList arrayList3 = new ArrayList(size);
        int i4 = 0;
        while (true) {
            if (i4 < size) {
                arrayList3.add(this.f10776v.f10939d.remove(this.f10755H.m45517b(i4)));
                i4++;
            }
        }
        for (i = 0; i < size; i++) {
            View view2 = (View) arrayList3.get(i);
            if (view2 != null) {
                this.f10776v.f10939d.put(this.f10755H.m45515c(i), view2);
            }
        }
    }

    /* renamed from: a */
    public void mo39788a(PathMotion pathMotion) {
        if (pathMotion == null) {
            this.f10756I = f10748k;
        } else {
            this.f10756I = pathMotion;
        }
    }

    /* renamed from: a */
    public void mo39787a(AbstractC2848b abstractC2848b) {
        this.f10754G = abstractC2848b;
    }

    /* renamed from: a */
    public void mo39784a(AbstractC2911v abstractC2911v) {
        this.f10765j = abstractC2911v;
    }

    /* renamed from: a */
    public abstract void mo10513a(C2914x c2914x);

    /* renamed from: a */
    public final void m39808a(boolean z) {
        if (z) {
            this.f10776v.f10936a.clear();
            this.f10776v.f10937b.clear();
            this.f10776v.f10938c.m45540d();
            return;
        }
        this.f10777w.f10936a.clear();
        this.f10777w.f10937b.clear();
        this.f10777w.f10938c.m45540d();
    }

    /* renamed from: a */
    public boolean mo39764a(C2914x c2914x, C2914x c2914x2) {
        boolean z = false;
        if (c2914x != null) {
            z = false;
            if (c2914x2 != null) {
                String[] mo39768a = mo39768a();
                if (mo39768a != null) {
                    int length = mo39768a.length;
                    int i = 0;
                    while (true) {
                        z = false;
                        if (i >= length) {
                            break;
                        } else if (m39811a(c2914x, c2914x2, mo39768a[i])) {
                            break;
                        } else {
                            i++;
                        }
                    }
                } else {
                    Iterator<String> it2 = c2914x.f10933a.keySet().iterator();
                    do {
                        z = false;
                        if (!it2.hasNext()) {
                            break;
                        }
                    } while (!m39811a(c2914x, c2914x2, it2.next()));
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public String[] mo39768a() {
        return null;
    }

    /* renamed from: b */
    public final long m39805b() {
        return this.f10767m;
    }

    /* renamed from: b */
    public Transition mo39781b(long j) {
        this.f10767m = j;
        return this;
    }

    /* renamed from: b */
    public Transition mo39779b(AbstractC2849c abstractC2849c) {
        ArrayList<AbstractC2849c> arrayList = this.f10752E;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(abstractC2849c);
        if (this.f10752E.size() == 0) {
            this.f10752E = null;
        }
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        if (r12 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        if (r5 == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
        r4 = r6.f10780z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0085, code lost:
        r4 = r6.f10779y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008a, code lost:
        r4 = r4.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
        return r4;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.transition.C2914x m39803b(android.view.View r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            r6 = r0
        L2:
            r0 = r6
            androidx.transition.TransitionSet r0 = r0.f10762g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L13
            r0 = r7
            r6 = r0
            goto L2
        L13:
            r0 = r5
            if (r0 == 0) goto L20
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.f10779y
            r7 = r0
            goto L26
        L20:
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.f10780z
            r7 = r0
        L26:
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L30
            r0 = 0
            return r0
        L30:
            r0 = r7
            int r0 = r0.size()
            r9 = r0
            r0 = -1
            r10 = r0
            r0 = 0
            r11 = r0
        L3d:
            r0 = r10
            r12 = r0
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto L71
            r0 = r7
            r1 = r11
            java.lang.Object r0 = r0.get(r1)
            androidx.transition.x r0 = (androidx.transition.C2914x) r0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L5b
            r0 = 0
            return r0
        L5b:
            r0 = r13
            android.view.View r0 = r0.f10934b
            r1 = r4
            if (r0 != r1) goto L6b
            r0 = r11
            r12 = r0
            goto L71
        L6b:
            int r11 = r11 + 1
            goto L3d
        L71:
            r0 = r8
            r4 = r0
            r0 = r12
            if (r0 < 0) goto L94
            r0 = r5
            if (r0 == 0) goto L85
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.f10780z
            r4 = r0
            goto L8a
        L85:
            r0 = r6
            java.util.ArrayList<androidx.transition.x> r0 = r0.f10779y
            r4 = r0
        L8a:
            r0 = r4
            r1 = r12
            java.lang.Object r0 = r0.get(r1)
            androidx.transition.x r0 = (androidx.transition.C2914x) r0
            r4 = r0
        L94:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.Transition.m39803b(android.view.View, boolean):androidx.transition.x");
    }

    /* renamed from: b */
    public abstract void mo10512b(C2914x c2914x);

    /* renamed from: b */
    public final boolean m39804b(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f10769o;
        if (arrayList3 == null || !arrayList3.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList4 = this.f10770p;
            if (arrayList4 != null && arrayList4.contains(view)) {
                return false;
            }
            ArrayList<Class<?>> arrayList5 = this.f10771q;
            if (arrayList5 != null) {
                int size = arrayList5.size();
                for (int i = 0; i < size; i++) {
                    if (this.f10771q.get(i).isInstance(view)) {
                        return false;
                    }
                }
            }
            if (this.f10772r != null && C0926v.m44083p(view) != null && this.f10772r.contains(C0926v.m44083p(view))) {
                return false;
            }
            if ((this.f10758c.size() == 0 && this.f10759d.size() == 0 && (((arrayList = this.f10761f) == null || arrayList.isEmpty()) && ((arrayList2 = this.f10760e) == null || arrayList2.isEmpty()))) || this.f10758c.contains(Integer.valueOf(id)) || this.f10759d.contains(view)) {
                return true;
            }
            ArrayList<String> arrayList6 = this.f10760e;
            if (arrayList6 != null && arrayList6.contains(C0926v.m44083p(view))) {
                return true;
            }
            if (this.f10761f == null) {
                return false;
            }
            for (int i2 = 0; i2 < this.f10761f.size(); i2++) {
                if (this.f10761f.get(i2).isInstance(view)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public final TimeInterpolator m39801c() {
        return this.f10768n;
    }

    /* renamed from: c */
    public Transition mo39776c(View view) {
        this.f10759d.add(view);
        return this;
    }

    /* renamed from: c */
    public void mo39775c(C2914x c2914x) {
        String[] mo39678a;
        boolean z;
        if (this.f10765j == null || c2914x.f10933a.isEmpty() || (mo39678a = this.f10765j.mo39678a()) == null) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= mo39678a.length) {
                z = true;
                break;
            } else if (!c2914x.f10933a.containsKey(mo39678a[i])) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return;
        }
        this.f10765j.mo39676a(c2914x);
    }

    /* renamed from: d */
    public Transition mo39773d(View view) {
        this.f10759d.remove(view);
        return this;
    }

    /* renamed from: d */
    public void mo39774d() {
        m39799e();
        final C0428a<Animator, C2847a> m39794l = m39794l();
        Iterator<Animator> it2 = this.f10753F.iterator();
        while (it2.hasNext()) {
            Animator next = it2.next();
            if (m39794l.containsKey(next)) {
                m39799e();
                if (next != null) {
                    next.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            m39794l.remove(animator);
                            Transition.this.f10764i.remove(animator);
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationStart(Animator animator) {
                            Transition.this.f10764i.add(animator);
                        }
                    });
                    if (next == null) {
                        m39798f();
                    } else {
                        long j = this.f10757b;
                        if (j >= 0) {
                            next.setDuration(j);
                        }
                        long j2 = this.f10767m;
                        if (j2 >= 0) {
                            next.setStartDelay(j2 + next.getStartDelay());
                        }
                        TimeInterpolator timeInterpolator = this.f10768n;
                        if (timeInterpolator != null) {
                            next.setInterpolator(timeInterpolator);
                        }
                        next.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                Transition.this.m39798f();
                                animator.removeListener(this);
                            }
                        });
                        next.start();
                    }
                }
            }
        }
        this.f10753F.clear();
        m39798f();
    }

    /* renamed from: e */
    public final void m39799e() {
        if (this.f10749B == 0) {
            ArrayList<AbstractC2849c> arrayList = this.f10752E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f10752E.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((AbstractC2849c) arrayList2.get(i)).mo39669b(this);
                }
            }
            this.f10751D = false;
        }
        this.f10749B++;
    }

    /* renamed from: e */
    public void mo39772e(View view) {
        if (!this.f10751D) {
            int size = this.f10764i.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Animator animator = this.f10764i.get(size);
                if (Build.VERSION.SDK_INT >= 19) {
                    animator.pause();
                } else {
                    ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
                    if (listeners != null) {
                        int size2 = listeners.size();
                        for (int i = 0; i < size2; i++) {
                            Animator.AnimatorListener animatorListener = listeners.get(i);
                            if (animatorListener instanceof C2855a.AbstractC2856a) {
                                ((C2855a.AbstractC2856a) animatorListener).onAnimationPause(animator);
                            }
                        }
                    }
                }
                size--;
            }
            ArrayList<AbstractC2849c> arrayList = this.f10752E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f10752E.clone();
                int size3 = arrayList2.size();
                for (int i2 = 0; i2 < size3; i2++) {
                    ((AbstractC2849c) arrayList2.get(i2)).mo39670b();
                }
            }
            this.f10750C = true;
        }
    }

    /* renamed from: f */
    public final void m39798f() {
        int i = this.f10749B - 1;
        this.f10749B = i;
        if (i == 0) {
            ArrayList<AbstractC2849c> arrayList = this.f10752E;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.f10752E.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((AbstractC2849c) arrayList2.get(i2)).mo39671a(this);
                }
            }
            for (int i3 = 0; i3 < this.f10776v.f10938c.m45548b(); i3++) {
                View m45543c = this.f10776v.f10938c.m45543c(i3);
                if (m45543c != null) {
                    C0926v.m44114a(m45543c, false);
                }
            }
            for (int i4 = 0; i4 < this.f10777w.f10938c.m45548b(); i4++) {
                View m45543c2 = this.f10777w.f10938c.m45543c(i4);
                if (m45543c2 != null) {
                    C0926v.m44114a(m45543c2, false);
                }
            }
            this.f10751D = true;
        }
    }

    /* renamed from: f */
    public void mo39771f(View view) {
        if (this.f10750C) {
            if (!this.f10751D) {
                for (int size = this.f10764i.size() - 1; size >= 0; size--) {
                    Animator animator = this.f10764i.get(size);
                    if (Build.VERSION.SDK_INT >= 19) {
                        animator.resume();
                    } else {
                        ArrayList<Animator.AnimatorListener> listeners = animator.getListeners();
                        if (listeners != null) {
                            int size2 = listeners.size();
                            for (int i = 0; i < size2; i++) {
                                Animator.AnimatorListener animatorListener = listeners.get(i);
                                if (animatorListener instanceof C2855a.AbstractC2856a) {
                                    ((C2855a.AbstractC2856a) animatorListener).onAnimationResume(animator);
                                }
                            }
                        }
                    }
                }
                ArrayList<AbstractC2849c> arrayList = this.f10752E;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.f10752E.clone();
                    int size3 = arrayList2.size();
                    for (int i2 = 0; i2 < size3; i2++) {
                        ((AbstractC2849c) arrayList2.get(i2)).mo39668c();
                    }
                }
            }
            this.f10750C = false;
        }
    }

    /* renamed from: g */
    public void mo39770g() {
        for (int size = this.f10764i.size() - 1; size >= 0; size--) {
            this.f10764i.get(size).cancel();
        }
        ArrayList<AbstractC2849c> arrayList = this.f10752E;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.f10752E.clone();
        int size2 = arrayList2.size();
        for (int i = 0; i < size2; i++) {
            ((AbstractC2849c) arrayList2.get(i)).mo39672a();
        }
    }

    /* renamed from: h */
    public final PathMotion m39797h() {
        return this.f10756I;
    }

    /* renamed from: i */
    public final AbstractC2848b m39796i() {
        return this.f10754G;
    }

    /* renamed from: j */
    public final Rect m39795j() {
        AbstractC2848b abstractC2848b = this.f10754G;
        if (abstractC2848b == null) {
            return null;
        }
        return abstractC2848b.mo39699a();
    }

    /* renamed from: k */
    public Transition clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.f10753F = new ArrayList<>();
            transition.f10776v = new C2915y();
            transition.f10777w = new C2915y();
            transition.f10779y = null;
            transition.f10780z = null;
            return transition;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public String toString() {
        return mo39783a("");
    }
}
