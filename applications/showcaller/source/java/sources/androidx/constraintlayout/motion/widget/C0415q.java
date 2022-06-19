package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.C0522d;
import androidx.constraintlayout.widget.C0523e;
import androidx.constraintlayout.widget.C0524f;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p037f.p038a.p039a.C1508c;
/* renamed from: androidx.constraintlayout.motion.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q.class */
public class C0415q {

    /* renamed from: a */
    private final MotionLayout f1874a;

    /* renamed from: n */
    private MotionEvent f1887n;

    /* renamed from: q */
    private MotionLayout.AbstractC0374f f1890q;

    /* renamed from: r */
    private boolean f1891r;

    /* renamed from: s */
    float f1892s;

    /* renamed from: t */
    float f1893t;

    /* renamed from: b */
    C0524f f1875b = null;

    /* renamed from: c */
    C0417b f1876c = null;

    /* renamed from: d */
    private boolean f1877d = false;

    /* renamed from: e */
    private ArrayList<C0417b> f1878e = new ArrayList<>();

    /* renamed from: f */
    private C0417b f1879f = null;

    /* renamed from: g */
    private ArrayList<C0417b> f1880g = new ArrayList<>();

    /* renamed from: h */
    private SparseArray<C0515b> f1881h = new SparseArray<>();

    /* renamed from: i */
    private HashMap<String, Integer> f1882i = new HashMap<>();

    /* renamed from: j */
    private SparseIntArray f1883j = new SparseIntArray();

    /* renamed from: k */
    private boolean f1884k = false;

    /* renamed from: l */
    private int f1885l = 400;

    /* renamed from: m */
    private int f1886m = 0;

    /* renamed from: o */
    private boolean f1888o = false;

    /* renamed from: p */
    private boolean f1889p = false;

    /* renamed from: androidx.constraintlayout.motion.widget.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$a.class */
    public class animationInterpolatorC0416a implements Interpolator {

        /* renamed from: a */
        final /* synthetic */ C1508c f1894a;

        animationInterpolatorC0416a(C1508c c1508c) {
            C0415q.this = r4;
            this.f1894a = c1508c;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) this.f1894a.mo29883a(f);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$b.class */
    public static class C0417b {

        /* renamed from: a */
        private int f1896a;

        /* renamed from: b */
        private boolean f1897b;

        /* renamed from: c */
        private int f1898c;

        /* renamed from: d */
        private int f1899d;

        /* renamed from: e */
        private int f1900e;

        /* renamed from: f */
        private String f1901f;

        /* renamed from: g */
        private int f1902g;

        /* renamed from: h */
        private int f1903h;

        /* renamed from: i */
        private float f1904i;

        /* renamed from: j */
        private final C0415q f1905j;

        /* renamed from: k */
        private ArrayList<C0403h> f1906k;

        /* renamed from: l */
        private C0451t f1907l;

        /* renamed from: m */
        private ArrayList<View$OnClickListenerC0418a> f1908m;

        /* renamed from: n */
        private int f1909n;

        /* renamed from: o */
        private boolean f1910o;

        /* renamed from: p */
        private int f1911p;

        /* renamed from: q */
        private int f1912q;

        /* renamed from: r */
        private int f1913r;

        /* renamed from: androidx.constraintlayout.motion.widget.q$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$b$a.class */
        public static class View$OnClickListenerC0418a implements View.OnClickListener {

            /* renamed from: d */
            private final C0417b f1914d;

            /* renamed from: e */
            int f1915e;

            /* renamed from: f */
            int f1916f;

            public View$OnClickListenerC0418a(Context context, C0417b c0417b, XmlPullParser xmlPullParser) {
                this.f1915e = -1;
                this.f1916f = 17;
                this.f1914d = c0417b;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == C0523e.OnClick_targetId) {
                        this.f1915e = obtainStyledAttributes.getResourceId(index, this.f1915e);
                    } else if (index == C0523e.OnClick_clickAction) {
                        this.f1916f = obtainStyledAttributes.getInt(index, this.f1916f);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v52, types: [android.view.View] */
            /* renamed from: a */
            public void m34219a(MotionLayout motionLayout, int i, C0417b c0417b) {
                int i2 = this.f1915e;
                if (i2 != -1) {
                    motionLayout = motionLayout.findViewById(i2);
                }
                if (motionLayout == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f1915e);
                    return;
                }
                int i3 = c0417b.f1899d;
                int i4 = c0417b.f1898c;
                if (i3 == -1) {
                    motionLayout.setOnClickListener(this);
                    return;
                }
                int i5 = this.f1916f;
                boolean z = (i5 & 1) != 0 && i == i3;
                boolean z2 = (i5 & 256) != 0 && i == i3;
                boolean z3 = (i5 & 1) != 0 && i == i3;
                boolean z4 = (i5 & 16) != 0 && i == i4;
                boolean z5 = false;
                if ((i5 & 4096) != 0) {
                    z5 = false;
                    if (i == i4) {
                        z5 = true;
                    }
                }
                if (!(z3 | z | z2 | z4) && !z5) {
                    return;
                }
                motionLayout.setOnClickListener(this);
            }

            /* renamed from: b */
            boolean m34218b(C0417b c0417b, MotionLayout motionLayout) {
                C0417b c0417b2 = this.f1914d;
                boolean z = true;
                if (c0417b2 == c0417b) {
                    return true;
                }
                int i = c0417b2.f1898c;
                int i2 = this.f1914d.f1899d;
                if (i2 == -1) {
                    if (motionLayout.f1561F == i) {
                        z = false;
                    }
                    return z;
                }
                int i3 = motionLayout.f1561F;
                boolean z2 = true;
                if (i3 != i2) {
                    z2 = i3 == i;
                }
                return z2;
            }

            /* renamed from: c */
            public void m34217c(MotionLayout motionLayout) {
                int i = this.f1915e;
                if (i == -1) {
                    return;
                }
                View findViewById = motionLayout.findViewById(i);
                if (findViewById != null) {
                    findViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f1915e);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z;
                boolean z2;
                MotionLayout motionLayout = this.f1914d.f1905j.f1874a;
                if (!motionLayout.m34546j0()) {
                    return;
                }
                if (this.f1914d.f1899d == -1) {
                    int currentState = motionLayout.getCurrentState();
                    if (currentState == -1) {
                        motionLayout.m34537s0(this.f1914d.f1898c);
                        return;
                    }
                    C0417b c0417b = new C0417b(this.f1914d.f1905j, this.f1914d);
                    c0417b.f1899d = currentState;
                    c0417b.f1898c = this.f1914d.f1898c;
                    motionLayout.setTransition(c0417b);
                    motionLayout.m34539q0();
                    return;
                }
                C0417b c0417b2 = this.f1914d.f1905j.f1876c;
                int i = this.f1916f;
                boolean z3 = ((i & 1) == 0 && (i & 256) == 0) ? false : true;
                boolean z4 = ((i & 16) == 0 && (i & 4096) == 0) ? false : true;
                if (z3 && z4) {
                    C0417b c0417b3 = this.f1914d.f1905j.f1876c;
                    C0417b c0417b4 = this.f1914d;
                    if (c0417b3 != c0417b4) {
                        motionLayout.setTransition(c0417b4);
                    }
                    z = z4;
                    z2 = false;
                    if (motionLayout.getCurrentState() != motionLayout.getEndState()) {
                        if (motionLayout.getProgress() > 0.5f) {
                            z = z4;
                            z2 = false;
                        } else {
                            z = false;
                            z2 = z3;
                        }
                    }
                } else {
                    z2 = z3;
                    z = z4;
                }
                if (!m34218b(c0417b2, motionLayout)) {
                    return;
                }
                if (z2 && (this.f1916f & 1) != 0) {
                    motionLayout.setTransition(this.f1914d);
                    motionLayout.m34539q0();
                } else if (z && (this.f1916f & 16) != 0) {
                    motionLayout.setTransition(this.f1914d);
                    motionLayout.m34538r0();
                } else if (z2 && (this.f1916f & 256) != 0) {
                    motionLayout.setTransition(this.f1914d);
                    motionLayout.setProgress(1.0f);
                } else if (!z || (this.f1916f & 4096) == 0) {
                } else {
                    motionLayout.setTransition(this.f1914d);
                    motionLayout.setProgress(0.0f);
                }
            }
        }

        C0417b(C0415q c0415q, Context context, XmlPullParser xmlPullParser) {
            this.f1896a = -1;
            this.f1897b = false;
            this.f1898c = -1;
            this.f1899d = -1;
            this.f1900e = 0;
            this.f1901f = null;
            this.f1902g = -1;
            this.f1903h = 400;
            this.f1904i = 0.0f;
            this.f1906k = new ArrayList<>();
            this.f1907l = null;
            this.f1908m = new ArrayList<>();
            this.f1909n = 0;
            this.f1910o = false;
            this.f1911p = -1;
            this.f1912q = 0;
            this.f1913r = 0;
            this.f1903h = c0415q.f1885l;
            this.f1912q = c0415q.f1886m;
            this.f1905j = c0415q;
            m34223w(c0415q, context, Xml.asAttributeSet(xmlPullParser));
        }

        C0417b(C0415q c0415q, C0417b c0417b) {
            this.f1896a = -1;
            this.f1897b = false;
            this.f1898c = -1;
            this.f1899d = -1;
            this.f1900e = 0;
            this.f1901f = null;
            this.f1902g = -1;
            this.f1903h = 400;
            this.f1904i = 0.0f;
            this.f1906k = new ArrayList<>();
            this.f1907l = null;
            this.f1908m = new ArrayList<>();
            this.f1909n = 0;
            this.f1910o = false;
            this.f1911p = -1;
            this.f1912q = 0;
            this.f1913r = 0;
            this.f1905j = c0415q;
            if (c0417b != null) {
                this.f1911p = c0417b.f1911p;
                this.f1900e = c0417b.f1900e;
                this.f1901f = c0417b.f1901f;
                this.f1902g = c0417b.f1902g;
                this.f1903h = c0417b.f1903h;
                this.f1906k = c0417b.f1906k;
                this.f1904i = c0417b.f1904i;
                this.f1912q = c0417b.f1912q;
            }
        }

        /* renamed from: v */
        private void m34224v(C0415q c0415q, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == C0523e.Transition_constraintSetEnd) {
                    this.f1898c = typedArray.getResourceId(index, this.f1898c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f1898c))) {
                        C0515b c0515b = new C0515b();
                        c0515b.m33625w(context, this.f1898c);
                        c0415q.f1881h.append(this.f1898c, c0515b);
                    }
                } else if (index == C0523e.Transition_constraintSetStart) {
                    this.f1899d = typedArray.getResourceId(index, this.f1899d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f1899d))) {
                        C0515b c0515b2 = new C0515b();
                        c0515b2.m33625w(context, this.f1899d);
                        c0415q.f1881h.append(this.f1899d, c0515b2);
                    }
                } else if (index == C0523e.Transition_motionInterpolator) {
                    int i2 = typedArray.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f1902g = resourceId;
                        if (resourceId != -1) {
                            this.f1900e = -2;
                        }
                    } else if (i2 == 3) {
                        String string = typedArray.getString(index);
                        this.f1901f = string;
                        if (string.indexOf("/") > 0) {
                            this.f1902g = typedArray.getResourceId(index, -1);
                            this.f1900e = -2;
                        } else {
                            this.f1900e = -1;
                        }
                    } else {
                        this.f1900e = typedArray.getInteger(index, this.f1900e);
                    }
                } else if (index == C0523e.Transition_duration) {
                    this.f1903h = typedArray.getInt(index, this.f1903h);
                } else if (index == C0523e.Transition_staggered) {
                    this.f1904i = typedArray.getFloat(index, this.f1904i);
                } else if (index == C0523e.Transition_autoTransition) {
                    this.f1909n = typedArray.getInteger(index, this.f1909n);
                } else if (index == C0523e.Transition_android_id) {
                    this.f1896a = typedArray.getResourceId(index, this.f1896a);
                } else if (index == C0523e.Transition_transitionDisable) {
                    this.f1910o = typedArray.getBoolean(index, this.f1910o);
                } else if (index == C0523e.Transition_pathMotionArc) {
                    this.f1911p = typedArray.getInteger(index, -1);
                } else if (index == C0523e.Transition_layoutDuringTransition) {
                    this.f1912q = typedArray.getInteger(index, 0);
                } else if (index == C0523e.Transition_transitionFlags) {
                    this.f1913r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f1899d == -1) {
                this.f1897b = true;
            }
        }

        /* renamed from: w */
        private void m34223w(C0415q c0415q, Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0523e.Transition);
            m34224v(c0415q, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: A */
        public int m34251A() {
            return this.f1912q;
        }

        /* renamed from: B */
        public int m34250B() {
            return this.f1899d;
        }

        /* renamed from: C */
        public C0451t m34249C() {
            return this.f1907l;
        }

        /* renamed from: D */
        public boolean m34248D() {
            return !this.f1910o;
        }

        /* renamed from: E */
        public boolean m34247E(int i) {
            return (i & this.f1913r) != 0;
        }

        /* renamed from: F */
        public void m34246F(int i) {
            this.f1903h = i;
        }

        /* renamed from: t */
        public void m34226t(Context context, XmlPullParser xmlPullParser) {
            this.f1908m.add(new View$OnClickListenerC0418a(context, this, xmlPullParser));
        }

        /* renamed from: u */
        public String m34225u(Context context) {
            String str;
            String resourceEntryName = this.f1899d == -1 ? "null" : context.getResources().getResourceEntryName(this.f1899d);
            if (this.f1898c == -1) {
                str = resourceEntryName + " -> null";
            } else {
                str = resourceEntryName + " -> " + context.getResources().getResourceEntryName(this.f1898c);
            }
            return str;
        }

        /* renamed from: x */
        public int m34222x() {
            return this.f1909n;
        }

        /* renamed from: y */
        public int m34221y() {
            return this.f1903h;
        }

        /* renamed from: z */
        public int m34220z() {
            return this.f1898c;
        }
    }

    public C0415q(Context context, MotionLayout motionLayout, int i) {
        this.f1874a = motionLayout;
        m34292C(context, i);
        SparseArray<C0515b> sparseArray = this.f1881h;
        int i2 = C0522d.motion_base;
        sparseArray.put(i2, new C0515b());
        this.f1882i.put("motion_base", Integer.valueOf(i2));
    }

    /* renamed from: A */
    private boolean m34294A(int i) {
        int i2 = this.f1883j.get(i);
        int size = this.f1883j.size();
        while (i2 > 0) {
            if (i2 == i || size < 0) {
                return true;
            }
            i2 = this.f1883j.get(i2);
            size--;
        }
        return false;
    }

    /* renamed from: B */
    private boolean m34293B() {
        return this.f1890q != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: C */
    private void m34292C(Context context, int i) {
        boolean z;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0417b c0417b = null;
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        if (this.f1884k) {
                            System.out.println("parsing = " + name);
                        }
                        switch (name.hashCode()) {
                            case -1349929691:
                                if (name.equals("ConstraintSet")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -1239391468:
                                if (name.equals("KeyFrameSet")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 269306229:
                                if (name.equals("Transition")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 312750793:
                                if (name.equals("OnClick")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 327855227:
                                if (name.equals("OnSwipe")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 793277014:
                                if (name.equals("MotionScene")) {
                                    z = false;
                                    break;
                                }
                                z = true;
                                break;
                            case 1382829617:
                                if (name.equals("StateSet")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            default:
                                z = true;
                                break;
                        }
                        switch (z) {
                            case false:
                                m34290E(context, xml);
                                break;
                            case true:
                                ArrayList<C0417b> arrayList = this.f1878e;
                                c0417b = new C0417b(this, context, xml);
                                arrayList.add(c0417b);
                                if (this.f1876c == null && !c0417b.f1897b) {
                                    this.f1876c = c0417b;
                                    if (c0417b.f1907l != null) {
                                        this.f1876c.f1907l.m34174p(this.f1891r);
                                    }
                                }
                                if (c0417b.f1897b) {
                                    if (c0417b.f1898c == -1) {
                                        this.f1879f = c0417b;
                                    } else {
                                        this.f1880g.add(c0417b);
                                    }
                                    this.f1878e.remove(c0417b);
                                }
                                break;
                            case true:
                                if (c0417b == null) {
                                    Log.v("MotionScene", " OnSwipe (" + context.getResources().getResourceEntryName(i) + ".xml:" + xml.getLineNumber() + ")");
                                }
                                c0417b.f1907l = new C0451t(context, this.f1874a, xml);
                                break;
                            case true:
                                c0417b.m34226t(context, xml);
                                break;
                            case true:
                                this.f1875b = new C0524f(context, xml);
                                break;
                            case true:
                                m34291D(context, xml);
                                break;
                            case true:
                                c0417b.f1906k.add(new C0403h(context, xml));
                                break;
                            default:
                                Log.v("MotionScene", "WARNING UNKNOWN ATTRIBUTE " + name);
                                break;
                        }
                    }
                } else {
                    xml.getName();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: D */
    private void m34291D(Context context, XmlPullParser xmlPullParser) {
        C0515b c0515b = new C0515b();
        c0515b.m33649C(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = xmlPullParser.getAttributeName(i3);
            String attributeValue = xmlPullParser.getAttributeValue(i3);
            if (this.f1884k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            if (attributeName.equals("deriveConstraintsFrom")) {
                i2 = m34263o(context, attributeValue);
            } else if (attributeName.equals("id")) {
                i = m34263o(context, attributeValue);
                this.f1882i.put(m34279P(attributeValue), Integer.valueOf(i));
            }
        }
        if (i != -1) {
            if (this.f1874a.f1591a0 != 0) {
                c0515b.m33648D(true);
            }
            c0515b.m33624x(context, xmlPullParser);
            if (i2 != -1) {
                this.f1883j.put(i, i2);
            }
            this.f1881h.put(i, c0515b);
        }
    }

    /* renamed from: E */
    private void m34290E(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0523e.MotionScene_defaultDuration) {
                this.f1885l = obtainStyledAttributes.getInt(index, this.f1885l);
            } else if (index == C0523e.MotionScene_layoutDuringTransition) {
                this.f1886m = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: I */
    private void m34286I(int i) {
        int i2 = this.f1883j.get(i);
        if (i2 > 0) {
            m34286I(this.f1883j.get(i));
            C0515b c0515b = this.f1881h.get(i);
            C0515b c0515b2 = this.f1881h.get(i2);
            if (c0515b2 != null) {
                c0515b.m33650B(c0515b2);
                this.f1883j.put(i, -1);
                return;
            }
            Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + C0378a.m34492b(this.f1874a.getContext(), i2));
        }
    }

    /* renamed from: P */
    public static String m34279P(String str) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(47);
        return indexOf < 0 ? str : str.substring(indexOf + 1);
    }

    /* renamed from: o */
    private int m34263o(Context context, String str) {
        int i;
        if (str.contains("/")) {
            int identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            i = identifier;
            if (this.f1884k) {
                System.out.println("id getMap res = " + identifier);
                i = identifier;
            }
        } else {
            i = -1;
        }
        int i2 = i;
        if (i == -1) {
            if (str.length() > 1) {
                i2 = Integer.parseInt(str.substring(1));
            } else {
                Log.e("MotionScene", "error in parsing id");
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: v */
    private int m34256v(int i) {
        int m33603c;
        C0524f c0524f = this.f1875b;
        return (c0524f == null || (m33603c = c0524f.m33603c(i, -1, -1)) == -1) ? i : m33603c;
    }

    /* renamed from: F */
    public void m34289F(float f, float f2) {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return;
        }
        this.f1876c.f1907l.m34177m(f, f2);
    }

    /* renamed from: G */
    public void m34288G(float f, float f2) {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return;
        }
        this.f1876c.f1907l.m34176n(f, f2);
    }

    /* renamed from: H */
    public void m34287H(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout.AbstractC0374f abstractC0374f;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f1890q == null) {
            this.f1890q = this.f1874a.m34545k0();
        }
        this.f1890q.mo34510b(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f1892s = motionEvent.getRawX();
                this.f1893t = motionEvent.getRawY();
                this.f1887n = motionEvent;
                this.f1888o = false;
                if (this.f1876c.f1907l == null) {
                    return;
                }
                RectF m34185e = this.f1876c.f1907l.m34185e(this.f1874a, rectF);
                if (m34185e != null && !m34185e.contains(this.f1887n.getX(), this.f1887n.getY())) {
                    this.f1887n = null;
                    this.f1888o = true;
                    return;
                }
                RectF m34180j = this.f1876c.f1907l.m34180j(this.f1874a, rectF);
                if (m34180j == null || m34180j.contains(this.f1887n.getX(), this.f1887n.getY())) {
                    this.f1889p = false;
                } else {
                    this.f1889p = true;
                }
                this.f1876c.f1907l.m34175o(this.f1892s, this.f1893t);
                return;
            } else if (action == 2 && !this.f1888o) {
                float rawY = motionEvent.getRawY() - this.f1893t;
                float rawX = motionEvent.getRawX() - this.f1892s;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.f1887n) == null) {
                    return;
                }
                C0417b m34271g = m34271g(i, rawX, rawY, motionEvent2);
                if (m34271g != null) {
                    motionLayout.setTransition(m34271g);
                    RectF m34180j2 = this.f1876c.f1907l.m34180j(this.f1874a, rectF);
                    boolean z = false;
                    if (m34180j2 != null) {
                        z = false;
                        if (!m34180j2.contains(this.f1887n.getX(), this.f1887n.getY())) {
                            z = true;
                        }
                    }
                    this.f1889p = z;
                    this.f1876c.f1907l.m34173q(this.f1892s, this.f1893t);
                }
            }
        }
        if (this.f1888o) {
            return;
        }
        C0417b c0417b = this.f1876c;
        if (c0417b != null && c0417b.f1907l != null && !this.f1889p) {
            this.f1876c.f1907l.m34178l(motionEvent, this.f1890q, i, this);
        }
        this.f1892s = motionEvent.getRawX();
        this.f1893t = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (abstractC0374f = this.f1890q) == null) {
            return;
        }
        abstractC0374f.mo34511a();
        this.f1890q = null;
        int i2 = motionLayout.f1561F;
        if (i2 == -1) {
            return;
        }
        m34272f(motionLayout, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0044, code lost:
        if (r7 >= r3.f1881h.size()) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        r3.f1881h.valueAt(r7).m33651A(r4);
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x005d, code lost:
        return;
     */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34285J(androidx.constraintlayout.motion.widget.MotionLayout r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = 0
            r6 = r0
        L4:
            r0 = r5
            r7 = r0
            r0 = r6
            r1 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r1 = r1.f1881h
            int r1 = r1.size()
            if (r0 >= r1) goto L3b
            r0 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r0 = r0.f1881h
            r1 = r6
            int r0 = r0.keyAt(r1)
            r7 = r0
            r0 = r3
            r1 = r7
            boolean r0 = r0.m34294A(r1)
            if (r0 == 0) goto L2f
            java.lang.String r0 = "MotionScene"
            java.lang.String r1 = "Cannot be derived from yourself"
            int r0 = android.util.Log.e(r0, r1)
            return
        L2f:
            r0 = r3
            r1 = r7
            r0.m34286I(r1)
            int r6 = r6 + 1
            goto L4
        L3b:
            r0 = r7
            r1 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r1 = r1.f1881h
            int r1 = r1.size()
            if (r0 >= r1) goto L5d
            r0 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r0 = r0.f1881h
            r1 = r7
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.constraintlayout.widget.b r0 = (androidx.constraintlayout.widget.C0515b) r0
            r1 = r4
            r0.m33651A(r1)
            int r7 = r7 + 1
            goto L3b
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0415q.m34285J(androidx.constraintlayout.motion.widget.MotionLayout):void");
    }

    /* renamed from: K */
    public void m34284K(int i) {
        C0417b c0417b = this.f1876c;
        if (c0417b != null) {
            c0417b.m34246F(i);
        } else {
            this.f1885l = i;
        }
    }

    /* renamed from: L */
    public void m34283L(boolean z) {
        this.f1891r = z;
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return;
        }
        this.f1876c.f1907l.m34174p(this.f1891r);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0031, code lost:
        if (r10 != (-1)) goto L11;
     */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m34282M(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0415q.m34282M(int, int):void");
    }

    /* renamed from: N */
    public void m34281N(C0417b c0417b) {
        this.f1876c = c0417b;
        if (c0417b == null || c0417b.f1907l == null) {
            return;
        }
        this.f1876c.f1907l.m34174p(this.f1891r);
    }

    /* renamed from: O */
    public void m34280O() {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return;
        }
        this.f1876c.f1907l.m34172r();
    }

    /* renamed from: Q */
    public boolean m34278Q() {
        Iterator<C0417b> it = this.f1878e.iterator();
        do {
            boolean z = true;
            if (!it.hasNext()) {
                C0417b c0417b = this.f1876c;
                if (c0417b == null || c0417b.f1907l == null) {
                    z = false;
                }
                return z;
            }
        } while (it.next().f1907l == null);
        return true;
    }

    /* renamed from: e */
    public void m34273e(MotionLayout motionLayout, int i) {
        Iterator<C0417b> it = this.f1878e.iterator();
        while (it.hasNext()) {
            C0417b next = it.next();
            if (next.f1908m.size() > 0) {
                Iterator it2 = next.f1908m.iterator();
                while (it2.hasNext()) {
                    ((C0417b.View$OnClickListenerC0418a) it2.next()).m34217c(motionLayout);
                }
            }
        }
        Iterator<C0417b> it3 = this.f1880g.iterator();
        while (it3.hasNext()) {
            C0417b next2 = it3.next();
            if (next2.f1908m.size() > 0) {
                Iterator it4 = next2.f1908m.iterator();
                while (it4.hasNext()) {
                    ((C0417b.View$OnClickListenerC0418a) it4.next()).m34217c(motionLayout);
                }
            }
        }
        Iterator<C0417b> it5 = this.f1878e.iterator();
        while (it5.hasNext()) {
            C0417b next3 = it5.next();
            if (next3.f1908m.size() > 0) {
                Iterator it6 = next3.f1908m.iterator();
                while (it6.hasNext()) {
                    ((C0417b.View$OnClickListenerC0418a) it6.next()).m34219a(motionLayout, i, next3);
                }
            }
        }
        Iterator<C0417b> it7 = this.f1880g.iterator();
        while (it7.hasNext()) {
            C0417b next4 = it7.next();
            if (next4.f1908m.size() > 0) {
                Iterator it8 = next4.f1908m.iterator();
                while (it8.hasNext()) {
                    ((C0417b.View$OnClickListenerC0418a) it8.next()).m34219a(motionLayout, i, next4);
                }
            }
        }
    }

    /* renamed from: f */
    public boolean m34272f(MotionLayout motionLayout, int i) {
        if (!m34293B() && !this.f1877d) {
            Iterator<C0417b> it = this.f1878e.iterator();
            while (it.hasNext()) {
                C0417b next = it.next();
                if (next.f1909n != 0 && this.f1876c != next) {
                    if (i == next.f1899d && (next.f1909n == 4 || next.f1909n == 2)) {
                        MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                        motionLayout.setState(transitionState);
                        motionLayout.setTransition(next);
                        if (next.f1909n == 4) {
                            motionLayout.m34539q0();
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                            return true;
                        }
                        motionLayout.setProgress(1.0f);
                        motionLayout.m34556Z(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState);
                        motionLayout.m34544l0();
                        return true;
                    } else if (i == next.f1898c && (next.f1909n == 3 || next.f1909n == 1)) {
                        MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                        motionLayout.setState(transitionState2);
                        motionLayout.setTransition(next);
                        if (next.f1909n == 3) {
                            motionLayout.m34538r0();
                            motionLayout.setState(MotionLayout.TransitionState.SETUP);
                            motionLayout.setState(MotionLayout.TransitionState.MOVING);
                            return true;
                        }
                        motionLayout.setProgress(0.0f);
                        motionLayout.m34556Z(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.m34544l0();
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: g */
    public C0417b m34271g(int i, float f, float f2, MotionEvent motionEvent) {
        if (i != -1) {
            List<C0417b> m34252z = m34252z(i);
            float f3 = 0.0f;
            C0417b c0417b = null;
            RectF rectF = new RectF();
            for (C0417b c0417b2 : m34252z) {
                if (!c0417b2.f1910o && c0417b2.f1907l != null) {
                    c0417b2.f1907l.m34174p(this.f1891r);
                    RectF m34180j = c0417b2.f1907l.m34180j(this.f1874a, rectF);
                    if (m34180j == null || motionEvent == null || m34180j.contains(motionEvent.getX(), motionEvent.getY())) {
                        RectF m34180j2 = c0417b2.f1907l.m34180j(this.f1874a, rectF);
                        if (m34180j2 == null || motionEvent == null || m34180j2.contains(motionEvent.getX(), motionEvent.getY())) {
                            float m34189a = c0417b2.f1907l.m34189a(f, f2) * (c0417b2.f1898c == i ? -1.0f : 1.1f);
                            if (m34189a > f3) {
                                c0417b = c0417b2;
                                f3 = m34189a;
                            }
                        }
                    }
                }
            }
            return c0417b;
        }
        return this.f1876c;
    }

    /* renamed from: h */
    public int m34270h() {
        C0417b c0417b = this.f1876c;
        return c0417b != null ? c0417b.f1911p : -1;
    }

    /* renamed from: i */
    public C0515b m34269i(int i) {
        return m34268j(i, -1, -1);
    }

    /* renamed from: j */
    C0515b m34268j(int i, int i2, int i3) {
        if (this.f1884k) {
            PrintStream printStream = System.out;
            printStream.println("id " + i);
            PrintStream printStream2 = System.out;
            printStream2.println("size " + this.f1881h.size());
        }
        C0524f c0524f = this.f1875b;
        int i4 = i;
        if (c0524f != null) {
            int m33603c = c0524f.m33603c(i, i2, i3);
            i4 = i;
            if (m33603c != -1) {
                i4 = m33603c;
            }
        }
        if (this.f1881h.get(i4) == null) {
            Log.e("MotionScene", "Warning could not find ConstraintSet id/" + C0378a.m34492b(this.f1874a.getContext(), i4) + " In MotionScene");
            SparseArray<C0515b> sparseArray = this.f1881h;
            return sparseArray.get(sparseArray.keyAt(0));
        }
        return this.f1881h.get(i4);
    }

    /* renamed from: k */
    public int[] m34267k() {
        int size = this.f1881h.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.f1881h.keyAt(i);
        }
        return iArr;
    }

    /* renamed from: l */
    public ArrayList<C0417b> m34266l() {
        return this.f1878e;
    }

    /* renamed from: m */
    public int m34265m() {
        C0417b c0417b = this.f1876c;
        return c0417b != null ? c0417b.f1903h : this.f1885l;
    }

    /* renamed from: n */
    public int m34264n() {
        C0417b c0417b = this.f1876c;
        if (c0417b == null) {
            return -1;
        }
        return c0417b.f1898c;
    }

    /* renamed from: p */
    public Interpolator m34262p() {
        int i = this.f1876c.f1900e;
        if (i != -2) {
            if (i == -1) {
                return new animationInterpolatorC0416a(C1508c.m29884c(this.f1876c.f1901f));
            }
            if (i == 0) {
                return new AccelerateDecelerateInterpolator();
            }
            if (i == 1) {
                return new AccelerateInterpolator();
            }
            if (i == 2) {
                return new DecelerateInterpolator();
            }
            if (i == 4) {
                return new AnticipateInterpolator();
            }
            if (i == 5) {
                return new BounceInterpolator();
            }
            return null;
        }
        return AnimationUtils.loadInterpolator(this.f1874a.getContext(), this.f1876c.f1902g);
    }

    /* renamed from: q */
    public void m34261q(C0412n c0412n) {
        C0417b c0417b = this.f1876c;
        if (c0417b != null) {
            Iterator it = c0417b.f1906k.iterator();
            while (it.hasNext()) {
                ((C0403h) it.next()).m34399a(c0412n);
            }
            return;
        }
        C0417b c0417b2 = this.f1879f;
        if (c0417b2 == null) {
            return;
        }
        Iterator it2 = c0417b2.f1906k.iterator();
        while (it2.hasNext()) {
            ((C0403h) it2.next()).m34399a(c0412n);
        }
    }

    /* renamed from: r */
    public float m34260r() {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return 0.0f;
        }
        return this.f1876c.f1907l.m34184f();
    }

    /* renamed from: s */
    public float m34259s() {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return 0.0f;
        }
        return this.f1876c.f1907l.m34183g();
    }

    /* renamed from: t */
    public boolean m34258t() {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return false;
        }
        return this.f1876c.f1907l.m34182h();
    }

    /* renamed from: u */
    public float m34257u(float f, float f2) {
        C0417b c0417b = this.f1876c;
        if (c0417b == null || c0417b.f1907l == null) {
            return 0.0f;
        }
        return this.f1876c.f1907l.m34181i(f, f2);
    }

    /* renamed from: w */
    public float m34255w() {
        C0417b c0417b = this.f1876c;
        if (c0417b != null) {
            return c0417b.f1904i;
        }
        return 0.0f;
    }

    /* renamed from: x */
    public int m34254x() {
        C0417b c0417b = this.f1876c;
        if (c0417b == null) {
            return -1;
        }
        return c0417b.f1899d;
    }

    /* renamed from: y */
    public C0417b m34253y(int i) {
        Iterator<C0417b> it = this.f1878e.iterator();
        while (it.hasNext()) {
            C0417b next = it.next();
            if (next.f1896a == i) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: z */
    public List<C0417b> m34252z(int i) {
        int m34256v = m34256v(i);
        ArrayList arrayList = new ArrayList();
        Iterator<C0417b> it = this.f1878e.iterator();
        while (it.hasNext()) {
            C0417b next = it.next();
            if (next.f1899d == m34256v || next.f1898c == m34256v) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
