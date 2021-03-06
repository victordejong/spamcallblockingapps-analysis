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
import androidx.constraintlayout.widget.C0221b;
import androidx.constraintlayout.widget.C0228d;
import androidx.constraintlayout.widget.C0229e;
import androidx.constraintlayout.widget.C0230f;
import d.f.a.a.c;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.motion.widget.q */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q.class */
public class C0188q {

    /* renamed from: a */
    private final MotionLayout f929a;

    /* renamed from: n */
    private MotionEvent f942n;

    /* renamed from: p */
    private MotionLayout$f f944p;

    /* renamed from: q */
    private boolean f945q;

    /* renamed from: r */
    float f946r;

    /* renamed from: s */
    float f947s;

    /* renamed from: b */
    C0230f f930b = null;

    /* renamed from: c */
    C0190b f931c = null;

    /* renamed from: d */
    private boolean f932d = false;

    /* renamed from: e */
    private ArrayList<C0190b> f933e = new ArrayList<>();

    /* renamed from: f */
    private C0190b f934f = null;

    /* renamed from: g */
    private ArrayList<C0190b> f935g = new ArrayList<>();

    /* renamed from: h */
    private SparseArray<C0221b> f936h = new SparseArray<>();

    /* renamed from: i */
    private HashMap<String, Integer> f937i = new HashMap<>();

    /* renamed from: j */
    private SparseIntArray f938j = new SparseIntArray();

    /* renamed from: k */
    private boolean f939k = false;

    /* renamed from: l */
    private int f940l = 400;

    /* renamed from: m */
    private int f941m = 0;

    /* renamed from: o */
    private boolean f943o = false;

    /* renamed from: androidx.constraintlayout.motion.widget.q$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$a.class */
    class animationInterpolatorC0189a implements Interpolator {

        /* renamed from: a */
        final /* synthetic */ c f948a;

        animationInterpolatorC0189a(C0188q c0188q, c cVar) {
            this.f948a = cVar;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) this.f948a.a(f);
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.q$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$b.class */
    public static class C0190b {

        /* renamed from: a */
        private int f949a;

        /* renamed from: b */
        private boolean f950b;

        /* renamed from: c */
        private int f951c;

        /* renamed from: d */
        private int f952d;

        /* renamed from: e */
        private int f953e;

        /* renamed from: f */
        private String f954f;

        /* renamed from: g */
        private int f955g;

        /* renamed from: h */
        private int f956h;

        /* renamed from: i */
        private float f957i;

        /* renamed from: j */
        private final C0188q f958j;

        /* renamed from: k */
        private ArrayList<C0183h> f959k;

        /* renamed from: l */
        private C0196t f960l;

        /* renamed from: m */
        private ArrayList<View$OnClickListenerC0191a> f961m;

        /* renamed from: n */
        private int f962n;

        /* renamed from: o */
        private boolean f963o;

        /* renamed from: p */
        private int f964p;

        /* renamed from: q */
        private int f965q;

        /* renamed from: r */
        private int f966r;

        /* renamed from: androidx.constraintlayout.motion.widget.q$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/q$b$a.class */
        public static class View$OnClickListenerC0191a implements View.OnClickListener {

            /* renamed from: b */
            private final C0190b f967b;

            /* renamed from: c */
            int f968c;

            /* renamed from: d */
            int f969d;

            public View$OnClickListenerC0191a(Context context, C0190b c0190b, XmlPullParser xmlPullParser) {
                this.f968c = -1;
                this.f969d = 17;
                this.f967b = c0190b;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == C0229e.OnClick_targetId) {
                        this.f968c = obtainStyledAttributes.getResourceId(index, this.f968c);
                    } else if (index == C0229e.OnClick_clickAction) {
                        this.f969d = obtainStyledAttributes.getInt(index, this.f969d);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* renamed from: a */
            public void m14127a(MotionLayout motionLayout, int i, C0190b c0190b) {
                int i2 = this.f968c;
                if (i2 != -1) {
                    motionLayout = motionLayout.findViewById(i2);
                }
                if (motionLayout == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f968c);
                    return;
                }
                int i3 = c0190b.f952d;
                int i4 = c0190b.f951c;
                if (i3 == -1) {
                    motionLayout.setOnClickListener(this);
                    return;
                }
                int i5 = this.f969d;
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
            boolean m14126b(C0190b c0190b, MotionLayout motionLayout) {
                C0190b c0190b2 = this.f967b;
                boolean z = true;
                if (c0190b2 == c0190b) {
                    return true;
                }
                int i = c0190b2.f951c;
                int i2 = this.f967b.f952d;
                int i3 = motionLayout.w;
                if (i2 == -1) {
                    if (i3 == i) {
                        z = false;
                    }
                    return z;
                }
                boolean z2 = true;
                if (i3 != i2) {
                    z2 = i3 == i;
                }
                return z2;
            }

            /* renamed from: c */
            public void m14125c(MotionLayout motionLayout) {
                int i = this.f968c;
                if (i == -1) {
                    return;
                }
                View findViewById = motionLayout.findViewById(i);
                if (findViewById != null) {
                    findViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f968c);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z;
                boolean z2;
                float f;
                MotionLayout motionLayout = this.f967b.f958j.f929a;
                if (!motionLayout.i0()) {
                    return;
                }
                if (this.f967b.f952d == -1) {
                    int currentState = motionLayout.getCurrentState();
                    if (currentState == -1) {
                        motionLayout.r0(this.f967b.f951c);
                        return;
                    }
                    C0190b c0190b = new C0190b(this.f967b.f958j, this.f967b);
                    c0190b.f952d = currentState;
                    c0190b.f951c = this.f967b.f951c;
                    motionLayout.setTransition(c0190b);
                    motionLayout.p0();
                    return;
                }
                C0190b c0190b2 = this.f967b.f958j.f931c;
                int i = this.f969d;
                boolean z3 = ((i & 1) == 0 && (i & 256) == 0) ? false : true;
                boolean z4 = ((i & 16) == 0 && (i & 4096) == 0) ? false : true;
                if (z3 && z4) {
                    C0190b c0190b3 = this.f967b.f958j.f931c;
                    C0190b c0190b4 = this.f967b;
                    if (c0190b3 != c0190b4) {
                        motionLayout.setTransition(c0190b4);
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
                if (!m14126b(c0190b2, motionLayout)) {
                    return;
                }
                if (z2 && (this.f969d & 1) != 0) {
                    motionLayout.setTransition(this.f967b);
                    motionLayout.p0();
                } else if (z && (this.f969d & 16) != 0) {
                    motionLayout.setTransition(this.f967b);
                    motionLayout.q0();
                } else {
                    if (z2 && (this.f969d & 256) != 0) {
                        motionLayout.setTransition(this.f967b);
                        f = 1.0f;
                    } else if (!z || (this.f969d & 4096) == 0) {
                        return;
                    } else {
                        motionLayout.setTransition(this.f967b);
                        f = 0.0f;
                    }
                    motionLayout.setProgress(f);
                }
            }
        }

        C0190b(C0188q c0188q, Context context, XmlPullParser xmlPullParser) {
            this.f949a = -1;
            this.f950b = false;
            this.f951c = -1;
            this.f952d = -1;
            this.f953e = 0;
            this.f954f = null;
            this.f955g = -1;
            this.f956h = 400;
            this.f957i = 0.0f;
            this.f959k = new ArrayList<>();
            this.f960l = null;
            this.f961m = new ArrayList<>();
            this.f962n = 0;
            this.f963o = false;
            this.f964p = -1;
            this.f965q = 0;
            this.f966r = 0;
            this.f956h = c0188q.f940l;
            this.f965q = c0188q.f941m;
            this.f958j = c0188q;
            m14131w(c0188q, context, Xml.asAttributeSet(xmlPullParser));
        }

        C0190b(C0188q c0188q, C0190b c0190b) {
            this.f949a = -1;
            this.f950b = false;
            this.f951c = -1;
            this.f952d = -1;
            this.f953e = 0;
            this.f954f = null;
            this.f955g = -1;
            this.f956h = 400;
            this.f957i = 0.0f;
            this.f959k = new ArrayList<>();
            this.f960l = null;
            this.f961m = new ArrayList<>();
            this.f962n = 0;
            this.f963o = false;
            this.f964p = -1;
            this.f965q = 0;
            this.f966r = 0;
            this.f958j = c0188q;
            if (c0190b != null) {
                this.f964p = c0190b.f964p;
                this.f953e = c0190b.f953e;
                this.f954f = c0190b.f954f;
                this.f955g = c0190b.f955g;
                this.f956h = c0190b.f956h;
                this.f959k = c0190b.f959k;
                this.f957i = c0190b.f957i;
                this.f965q = c0190b.f965q;
            }
        }

        /* renamed from: v */
        private void m14132v(C0188q c0188q, Context context, TypedArray typedArray) {
            C0221b c0221b;
            SparseArray sparseArray;
            int i;
            int indexCount = typedArray.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArray.getIndex(i2);
                if (index == C0229e.Transition_constraintSetEnd) {
                    this.f951c = typedArray.getResourceId(index, this.f951c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f951c))) {
                        c0221b = new C0221b();
                        c0221b.m13786w(context, this.f951c);
                        sparseArray = c0188q.f936h;
                        i = this.f951c;
                        sparseArray.append(i, c0221b);
                    }
                } else {
                    if (index == C0229e.Transition_constraintSetStart) {
                        this.f952d = typedArray.getResourceId(index, this.f952d);
                        if ("layout".equals(context.getResources().getResourceTypeName(this.f952d))) {
                            c0221b = new C0221b();
                            c0221b.m13786w(context, this.f952d);
                            sparseArray = c0188q.f936h;
                            i = this.f952d;
                            sparseArray.append(i, c0221b);
                        }
                    } else if (index == C0229e.Transition_motionInterpolator) {
                        int i3 = typedArray.peekValue(index).type;
                        if (i3 == 1) {
                            int resourceId = typedArray.getResourceId(index, -1);
                            this.f955g = resourceId;
                            if (resourceId == -1) {
                            }
                            this.f953e = -2;
                        } else if (i3 == 3) {
                            String string = typedArray.getString(index);
                            this.f954f = string;
                            if (string.indexOf("/") > 0) {
                                this.f955g = typedArray.getResourceId(index, -1);
                                this.f953e = -2;
                            } else {
                                this.f953e = -1;
                            }
                        } else {
                            this.f953e = typedArray.getInteger(index, this.f953e);
                        }
                    } else if (index == C0229e.Transition_duration) {
                        this.f956h = typedArray.getInt(index, this.f956h);
                    } else if (index == C0229e.Transition_staggered) {
                        this.f957i = typedArray.getFloat(index, this.f957i);
                    } else if (index == C0229e.Transition_autoTransition) {
                        this.f962n = typedArray.getInteger(index, this.f962n);
                    } else if (index == C0229e.Transition_android_id) {
                        this.f949a = typedArray.getResourceId(index, this.f949a);
                    } else if (index == C0229e.Transition_transitionDisable) {
                        this.f963o = typedArray.getBoolean(index, this.f963o);
                    } else if (index == C0229e.Transition_pathMotionArc) {
                        this.f964p = typedArray.getInteger(index, -1);
                    } else if (index == C0229e.Transition_layoutDuringTransition) {
                        this.f965q = typedArray.getInteger(index, 0);
                    } else if (index == C0229e.Transition_transitionFlags) {
                        this.f966r = typedArray.getInteger(index, 0);
                    }
                }
            }
            if (this.f952d == -1) {
                this.f950b = true;
            }
        }

        /* renamed from: w */
        private void m14131w(C0188q c0188q, Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0229e.Transition);
            m14132v(c0188q, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: A */
        public int m14158A() {
            return this.f952d;
        }

        /* renamed from: B */
        public C0196t m14157B() {
            return this.f960l;
        }

        /* renamed from: C */
        public boolean m14156C() {
            return !this.f963o;
        }

        /* renamed from: D */
        public boolean m14155D(int i) {
            return (i & this.f966r) != 0;
        }

        /* renamed from: E */
        public void m14154E(int i) {
            this.f956h = i;
        }

        /* renamed from: t */
        public void m14134t(Context context, XmlPullParser xmlPullParser) {
            this.f961m.add(new View$OnClickListenerC0191a(context, this, xmlPullParser));
        }

        /* renamed from: u */
        public String m14133u(Context context) {
            String str;
            String resourceEntryName = this.f952d == -1 ? "null" : context.getResources().getResourceEntryName(this.f952d);
            if (this.f951c == -1) {
                str = resourceEntryName + " -> null";
            } else {
                str = resourceEntryName + " -> " + context.getResources().getResourceEntryName(this.f951c);
            }
            return str;
        }

        /* renamed from: x */
        public int m14130x() {
            return this.f956h;
        }

        /* renamed from: y */
        public int m14129y() {
            return this.f951c;
        }

        /* renamed from: z */
        public int m14128z() {
            return this.f965q;
        }
    }

    C0188q(Context context, MotionLayout motionLayout, int i) {
        this.f929a = motionLayout;
        m14199C(context, i);
        SparseArray<C0221b> sparseArray = this.f936h;
        int i2 = C0228d.motion_base;
        sparseArray.put(i2, new C0221b());
        this.f937i.put("motion_base", Integer.valueOf(i2));
    }

    /* renamed from: A */
    private boolean m14201A(int i) {
        int i2 = this.f938j.get(i);
        int size = this.f938j.size();
        while (i2 > 0) {
            if (i2 == i || size < 0) {
                return true;
            }
            i2 = this.f938j.get(i2);
            size--;
        }
        return false;
    }

    /* renamed from: B */
    private boolean m14200B() {
        return this.f944p != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: C */
    private void m14199C(Context context, int i) {
        boolean z;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0190b c0190b = null;
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        if (this.f939k) {
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
                                m14197E(context, xml);
                                break;
                            case true:
                                ArrayList<C0190b> arrayList = this.f933e;
                                c0190b = new C0190b(this, context, xml);
                                arrayList.add(c0190b);
                                if (this.f931c == null && !c0190b.f950b) {
                                    this.f931c = c0190b;
                                    if (c0190b.f960l != null) {
                                        this.f931c.f960l.m14086p(this.f945q);
                                    }
                                }
                                if (c0190b.f950b) {
                                    if (c0190b.f951c == -1) {
                                        this.f934f = c0190b;
                                    } else {
                                        this.f935g.add(c0190b);
                                    }
                                    this.f933e.remove(c0190b);
                                }
                                break;
                            case true:
                                if (c0190b == null) {
                                    Log.v("MotionScene", " OnSwipe (" + context.getResources().getResourceEntryName(i) + ".xml:" + xml.getLineNumber() + ")");
                                }
                                c0190b.f960l = new C0196t(context, this.f929a, xml);
                                break;
                            case true:
                                c0190b.m14134t(context, xml);
                                break;
                            case true:
                                this.f930b = new C0230f(context, xml);
                                break;
                            case true:
                                m14198D(context, xml);
                                break;
                            case true:
                                c0190b.f959k.add(new C0183h(context, xml));
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
    private void m14198D(Context context, XmlPullParser xmlPullParser) {
        C0221b c0221b = new C0221b();
        c0221b.m13810C(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = xmlPullParser.getAttributeName(i3);
            String attributeValue = xmlPullParser.getAttributeValue(i3);
            if (this.f939k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            if (attributeName.equals("deriveConstraintsFrom")) {
                i2 = m14170o(context, attributeValue);
            } else if (attributeName.equals("id")) {
                i = m14170o(context, attributeValue);
                this.f937i.put(m14186P(attributeValue), Integer.valueOf(i));
            }
        }
        if (i != -1) {
            if (this.f929a.N != 0) {
                c0221b.m13809D(true);
            }
            c0221b.m13785x(context, xmlPullParser);
            if (i2 != -1) {
                this.f938j.put(i, i2);
            }
            this.f936h.put(i, c0221b);
        }
    }

    /* renamed from: E */
    private void m14197E(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0229e.MotionScene_defaultDuration) {
                this.f940l = obtainStyledAttributes.getInt(index, this.f940l);
            } else if (index == C0229e.MotionScene_layoutDuringTransition) {
                this.f941m = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: I */
    private void m14193I(int i) {
        int i2 = this.f938j.get(i);
        if (i2 > 0) {
            m14193I(this.f938j.get(i));
            C0221b c0221b = this.f936h.get(i);
            C0221b c0221b2 = this.f936h.get(i2);
            if (c0221b2 != null) {
                c0221b.m13811B(c0221b2);
                this.f938j.put(i, -1);
                return;
            }
            Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + C0175a.m14283b(this.f929a.getContext(), i2));
        }
    }

    /* renamed from: P */
    public static String m14186P(String str) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(47);
        return indexOf < 0 ? str : str.substring(indexOf + 1);
    }

    /* renamed from: o */
    private int m14170o(Context context, String str) {
        int i;
        if (str.contains("/")) {
            int identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            i = identifier;
            if (this.f939k) {
                System.out.println("id getMap res = " + identifier);
                i = identifier;
            }
        } else {
            i = -1;
        }
        int i2 = i;
        if (i == -1) {
            if (str == null || str.length() <= 1) {
                Log.e("MotionScene", "error in parsing id");
                i2 = i;
            } else {
                i2 = Integer.parseInt(str.substring(1));
            }
        }
        return i2;
    }

    /* renamed from: v */
    private int m14163v(int i) {
        int m13762c;
        C0230f c0230f = this.f930b;
        return (c0230f == null || (m13762c = c0230f.m13762c(i, -1, -1)) == -1) ? i : m13762c;
    }

    /* renamed from: F */
    void m14196F(float f, float f2) {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return;
        }
        this.f931c.f960l.m14089m(f, f2);
    }

    /* renamed from: G */
    void m14195G(float f, float f2) {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return;
        }
        this.f931c.f960l.m14088n(f, f2);
    }

    /* renamed from: H */
    void m14194H(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout$f motionLayout$f;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f944p == null) {
            this.f944p = this.f929a.j0();
        }
        this.f944p.m14300b(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f946r = motionEvent.getRawX();
                this.f947s = motionEvent.getRawY();
                this.f942n = motionEvent;
                if (this.f931c.f960l == null) {
                    return;
                }
                RectF m14097e = this.f931c.f960l.m14097e(this.f929a, rectF);
                if (m14097e != null && !m14097e.contains(this.f942n.getX(), this.f942n.getY())) {
                    this.f942n = null;
                    return;
                }
                RectF m14092j = this.f931c.f960l.m14092j(this.f929a, rectF);
                if (m14092j == null || m14092j.contains(this.f942n.getX(), this.f942n.getY())) {
                    this.f943o = false;
                } else {
                    this.f943o = true;
                }
                this.f931c.f960l.m14087o(this.f946r, this.f947s);
                return;
            } else if (action == 2) {
                float rawY = motionEvent.getRawY() - this.f947s;
                float rawX = motionEvent.getRawX() - this.f946r;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.f942n) == null) {
                    return;
                }
                C0190b m14178g = m14178g(i, rawX, rawY, motionEvent2);
                if (m14178g != null) {
                    motionLayout.setTransition(m14178g);
                    RectF m14092j2 = this.f931c.f960l.m14092j(this.f929a, rectF);
                    boolean z = false;
                    if (m14092j2 != null) {
                        z = false;
                        if (!m14092j2.contains(this.f942n.getX(), this.f942n.getY())) {
                            z = true;
                        }
                    }
                    this.f943o = z;
                    this.f931c.f960l.m14085q(this.f946r, this.f947s);
                }
            }
        }
        C0190b c0190b = this.f931c;
        if (c0190b != null && c0190b.f960l != null && !this.f943o) {
            this.f931c.f960l.m14090l(motionEvent, this.f944p, i, this);
        }
        this.f946r = motionEvent.getRawX();
        this.f947s = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (motionLayout$f = this.f944p) == null) {
            return;
        }
        motionLayout$f.m14301a();
        this.f944p = null;
        int i2 = motionLayout.w;
        if (i2 == -1) {
            return;
        }
        m14179f(motionLayout, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0044, code lost:
        if (r7 >= r3.f936h.size()) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0047, code lost:
        r3.f936h.valueAt(r7).m13812A(r4);
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
    void m14192J(androidx.constraintlayout.motion.widget.MotionLayout r4) {
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
            android.util.SparseArray<androidx.constraintlayout.widget.b> r1 = r1.f936h
            int r1 = r1.size()
            if (r0 >= r1) goto L3b
            r0 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r0 = r0.f936h
            r1 = r6
            int r0 = r0.keyAt(r1)
            r7 = r0
            r0 = r3
            r1 = r7
            boolean r0 = r0.m14201A(r1)
            if (r0 == 0) goto L2f
            java.lang.String r0 = "MotionScene"
            java.lang.String r1 = "Cannot be derived from yourself"
            int r0 = android.util.Log.e(r0, r1)
            return
        L2f:
            r0 = r3
            r1 = r7
            r0.m14193I(r1)
            int r6 = r6 + 1
            goto L4
        L3b:
            r0 = r7
            r1 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r1 = r1.f936h
            int r1 = r1.size()
            if (r0 >= r1) goto L5d
            r0 = r3
            android.util.SparseArray<androidx.constraintlayout.widget.b> r0 = r0.f936h
            r1 = r7
            java.lang.Object r0 = r0.valueAt(r1)
            androidx.constraintlayout.widget.b r0 = (androidx.constraintlayout.widget.C0221b) r0
            r1 = r4
            r0.m13812A(r1)
            int r7 = r7 + 1
            goto L3b
        L5d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0188q.m14192J(androidx.constraintlayout.motion.widget.MotionLayout):void");
    }

    /* renamed from: K */
    public void m14191K(int i) {
        C0190b c0190b = this.f931c;
        if (c0190b != null) {
            c0190b.m14154E(i);
        } else {
            this.f940l = i;
        }
    }

    /* renamed from: L */
    public void m14190L(boolean z) {
        this.f945q = z;
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return;
        }
        this.f931c.f960l.m14086p(this.f945q);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fa  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m14189M(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0188q.m14189M(int, int):void");
    }

    /* renamed from: N */
    public void m14188N(C0190b c0190b) {
        this.f931c = c0190b;
        if (c0190b == null || c0190b.f960l == null) {
            return;
        }
        this.f931c.f960l.m14086p(this.f945q);
    }

    /* renamed from: O */
    void m14187O() {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return;
        }
        this.f931c.f960l.m14084r();
    }

    /* renamed from: Q */
    boolean m14185Q() {
        Iterator<C0190b> it = this.f933e.iterator();
        do {
            boolean z = true;
            if (!it.hasNext()) {
                C0190b c0190b = this.f931c;
                if (c0190b == null || c0190b.f960l == null) {
                    z = false;
                }
                return z;
            }
        } while (it.next().f960l == null);
        return true;
    }

    /* renamed from: e */
    public void m14180e(MotionLayout motionLayout, int i) {
        Iterator<C0190b> it = this.f933e.iterator();
        while (it.hasNext()) {
            C0190b next = it.next();
            if (next.f961m.size() > 0) {
                Iterator it2 = next.f961m.iterator();
                while (it2.hasNext()) {
                    ((C0190b.View$OnClickListenerC0191a) it2.next()).m14125c(motionLayout);
                }
            }
        }
        Iterator<C0190b> it3 = this.f935g.iterator();
        while (it3.hasNext()) {
            C0190b next2 = it3.next();
            if (next2.f961m.size() > 0) {
                Iterator it4 = next2.f961m.iterator();
                while (it4.hasNext()) {
                    ((C0190b.View$OnClickListenerC0191a) it4.next()).m14125c(motionLayout);
                }
            }
        }
        Iterator<C0190b> it5 = this.f933e.iterator();
        while (it5.hasNext()) {
            C0190b next3 = it5.next();
            if (next3.f961m.size() > 0) {
                Iterator it6 = next3.f961m.iterator();
                while (it6.hasNext()) {
                    ((C0190b.View$OnClickListenerC0191a) it6.next()).m14127a(motionLayout, i, next3);
                }
            }
        }
        Iterator<C0190b> it7 = this.f935g.iterator();
        while (it7.hasNext()) {
            C0190b next4 = it7.next();
            if (next4.f961m.size() > 0) {
                Iterator it8 = next4.f961m.iterator();
                while (it8.hasNext()) {
                    ((C0190b.View$OnClickListenerC0191a) it8.next()).m14127a(motionLayout, i, next4);
                }
            }
        }
    }

    /* renamed from: f */
    boolean m14179f(MotionLayout motionLayout, int i) {
        if (!m14200B() && !this.f932d) {
            Iterator<C0190b> it = this.f933e.iterator();
            while (it.hasNext()) {
                C0190b next = it.next();
                if (next.f962n != 0) {
                    if (i == next.f952d && (next.f962n == 4 || next.f962n == 2)) {
                        MotionLayout$TransitionState motionLayout$TransitionState = MotionLayout$TransitionState.FINISHED;
                        motionLayout.setState(motionLayout$TransitionState);
                        motionLayout.setTransition(next);
                        if (next.f962n == 4) {
                            motionLayout.p0();
                            motionLayout.setState(MotionLayout$TransitionState.SETUP);
                            motionLayout$TransitionState = MotionLayout$TransitionState.MOVING;
                        } else {
                            motionLayout.setProgress(1.0f);
                            motionLayout.Y(true);
                            motionLayout.setState(MotionLayout$TransitionState.SETUP);
                            motionLayout.setState(MotionLayout$TransitionState.MOVING);
                        }
                        motionLayout.setState(motionLayout$TransitionState);
                        return true;
                    } else if (i == next.f951c && (next.f962n == 3 || next.f962n == 1)) {
                        MotionLayout$TransitionState motionLayout$TransitionState2 = MotionLayout$TransitionState.FINISHED;
                        motionLayout.setState(motionLayout$TransitionState2);
                        motionLayout.setTransition(next);
                        if (next.f962n == 3) {
                            motionLayout.q0();
                            motionLayout.setState(MotionLayout$TransitionState.SETUP);
                            motionLayout$TransitionState2 = MotionLayout$TransitionState.MOVING;
                        } else {
                            motionLayout.setProgress(0.0f);
                            motionLayout.Y(true);
                            motionLayout.setState(MotionLayout$TransitionState.SETUP);
                            motionLayout.setState(MotionLayout$TransitionState.MOVING);
                        }
                        motionLayout.setState(motionLayout$TransitionState2);
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: g */
    public C0190b m14178g(int i, float f, float f2, MotionEvent motionEvent) {
        if (i != -1) {
            List<C0190b> m14159z = m14159z(i);
            float f3 = 0.0f;
            C0190b c0190b = null;
            RectF rectF = new RectF();
            for (C0190b c0190b2 : m14159z) {
                if (!c0190b2.f963o && c0190b2.f960l != null) {
                    c0190b2.f960l.m14086p(this.f945q);
                    RectF m14092j = c0190b2.f960l.m14092j(this.f929a, rectF);
                    if (m14092j == null || motionEvent == null || m14092j.contains(motionEvent.getX(), motionEvent.getY())) {
                        RectF m14092j2 = c0190b2.f960l.m14092j(this.f929a, rectF);
                        if (m14092j2 == null || motionEvent == null || m14092j2.contains(motionEvent.getX(), motionEvent.getY())) {
                            float m14101a = c0190b2.f960l.m14101a(f, f2) * (c0190b2.f951c == i ? -1.0f : 1.1f);
                            if (m14101a > f3) {
                                c0190b = c0190b2;
                                f3 = m14101a;
                            }
                        }
                    }
                }
            }
            return c0190b;
        }
        return this.f931c;
    }

    /* renamed from: h */
    public int m14177h() {
        C0190b c0190b = this.f931c;
        return c0190b != null ? c0190b.f964p : -1;
    }

    /* renamed from: i */
    C0221b m14176i(int i) {
        return m14175j(i, -1, -1);
    }

    /* renamed from: j */
    C0221b m14175j(int i, int i2, int i3) {
        C0221b c0221b;
        if (this.f939k) {
            PrintStream printStream = System.out;
            printStream.println("id " + i);
            PrintStream printStream2 = System.out;
            printStream2.println("size " + this.f936h.size());
        }
        C0230f c0230f = this.f930b;
        int i4 = i;
        if (c0230f != null) {
            int m13762c = c0230f.m13762c(i, i2, i3);
            i4 = i;
            if (m13762c != -1) {
                i4 = m13762c;
            }
        }
        if (this.f936h.get(i4) == null) {
            Log.e("MotionScene", "Warning could not find ConstraintSet id/" + C0175a.m14283b(this.f929a.getContext(), i4) + " In MotionScene");
            SparseArray<C0221b> sparseArray = this.f936h;
            c0221b = sparseArray.get(sparseArray.keyAt(0));
        } else {
            c0221b = this.f936h.get(i4);
        }
        return c0221b;
    }

    /* renamed from: k */
    public int[] m14174k() {
        int size = this.f936h.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.f936h.keyAt(i);
        }
        return iArr;
    }

    /* renamed from: l */
    public ArrayList<C0190b> m14173l() {
        return this.f933e;
    }

    /* renamed from: m */
    public int m14172m() {
        C0190b c0190b = this.f931c;
        return c0190b != null ? c0190b.f956h : this.f940l;
    }

    /* renamed from: n */
    int m14171n() {
        C0190b c0190b = this.f931c;
        if (c0190b == null) {
            return -1;
        }
        return c0190b.f951c;
    }

    /* renamed from: p */
    public Interpolator m14169p() {
        int i = this.f931c.f953e;
        if (i != -2) {
            if (i == -1) {
                return new animationInterpolatorC0189a(this, c.c(this.f931c.f954f));
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
        return AnimationUtils.loadInterpolator(this.f929a.getContext(), this.f931c.f955g);
    }

    /* renamed from: q */
    public void m14168q(C0185n c0185n) {
        C0190b c0190b = this.f931c;
        if (c0190b != null) {
            Iterator it = c0190b.f959k.iterator();
            while (it.hasNext()) {
                ((C0183h) it.next()).m14255a(c0185n);
            }
            return;
        }
        C0190b c0190b2 = this.f934f;
        if (c0190b2 == null) {
            return;
        }
        Iterator it2 = c0190b2.f959k.iterator();
        while (it2.hasNext()) {
            ((C0183h) it2.next()).m14255a(c0185n);
        }
    }

    /* renamed from: r */
    float m14167r() {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return 0.0f;
        }
        return this.f931c.f960l.m14096f();
    }

    /* renamed from: s */
    float m14166s() {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return 0.0f;
        }
        return this.f931c.f960l.m14095g();
    }

    /* renamed from: t */
    boolean m14165t() {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return false;
        }
        return this.f931c.f960l.m14094h();
    }

    /* renamed from: u */
    float m14164u(float f, float f2) {
        C0190b c0190b = this.f931c;
        if (c0190b == null || c0190b.f960l == null) {
            return 0.0f;
        }
        return this.f931c.f960l.m14093i(f, f2);
    }

    /* renamed from: w */
    public float m14162w() {
        C0190b c0190b = this.f931c;
        if (c0190b != null) {
            return c0190b.f957i;
        }
        return 0.0f;
    }

    /* renamed from: x */
    int m14161x() {
        C0190b c0190b = this.f931c;
        if (c0190b == null) {
            return -1;
        }
        return c0190b.f952d;
    }

    /* renamed from: y */
    public C0190b m14160y(int i) {
        Iterator<C0190b> it = this.f933e.iterator();
        while (it.hasNext()) {
            C0190b next = it.next();
            if (next.f949a == i) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: z */
    public List<C0190b> m14159z(int i) {
        int m14163v = m14163v(i);
        ArrayList arrayList = new ArrayList();
        Iterator<C0190b> it = this.f933e.iterator();
        while (it.hasNext()) {
            C0190b next = it.next();
            if (next.f952d == m14163v || next.f951c == m14163v) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
