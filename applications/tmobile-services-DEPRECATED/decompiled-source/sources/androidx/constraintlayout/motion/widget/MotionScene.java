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
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.StateSet;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.proto.CodedOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionScene.class */
public class MotionScene {

    /* renamed from: a */
    private final MotionLayout f1942a;

    /* renamed from: n */
    private MotionEvent f1955n;

    /* renamed from: q */
    private MotionLayout.MotionTracker f1958q;

    /* renamed from: r */
    private boolean f1959r;

    /* renamed from: s */
    float f1960s;

    /* renamed from: t */
    float f1961t;

    /* renamed from: b */
    StateSet f1943b = null;

    /* renamed from: c */
    Transition f1944c = null;

    /* renamed from: d */
    private boolean f1945d = false;

    /* renamed from: e */
    private ArrayList<Transition> f1946e = new ArrayList<>();

    /* renamed from: f */
    private Transition f1947f = null;

    /* renamed from: g */
    private ArrayList<Transition> f1948g = new ArrayList<>();

    /* renamed from: h */
    private SparseArray<ConstraintSet> f1949h = new SparseArray<>();

    /* renamed from: i */
    private HashMap<String, Integer> f1950i = new HashMap<>();

    /* renamed from: j */
    private SparseIntArray f1951j = new SparseIntArray();

    /* renamed from: k */
    private boolean f1952k = false;

    /* renamed from: l */
    private int f1953l = 400;

    /* renamed from: m */
    private int f1954m = 0;

    /* renamed from: o */
    private boolean f1956o = false;

    /* renamed from: p */
    private boolean f1957p = false;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionScene$Transition.class */
    public static class Transition {

        /* renamed from: a */
        private int f1963a;

        /* renamed from: b */
        private boolean f1964b;

        /* renamed from: c */
        private int f1965c;

        /* renamed from: d */
        private int f1966d;

        /* renamed from: e */
        private int f1967e;

        /* renamed from: f */
        private String f1968f;

        /* renamed from: g */
        private int f1969g;

        /* renamed from: h */
        private int f1970h;

        /* renamed from: i */
        private float f1971i;

        /* renamed from: j */
        private final MotionScene f1972j;

        /* renamed from: k */
        private ArrayList<KeyFrames> f1973k;

        /* renamed from: l */
        private TouchResponse f1974l;

        /* renamed from: m */
        private ArrayList<TransitionOnClick> f1975m;

        /* renamed from: n */
        private int f1976n;

        /* renamed from: o */
        private boolean f1977o;

        /* renamed from: p */
        private int f1978p;

        /* renamed from: q */
        private int f1979q;

        /* renamed from: r */
        private int f1980r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick.class */
        public static class TransitionOnClick implements View.OnClickListener {

            /* renamed from: f */
            private final Transition f1981f;

            /* renamed from: g */
            int f1982g;

            /* renamed from: h */
            int f1983h;

            public TransitionOnClick(Context context, Transition transition, XmlPullParser xmlPullParser) {
                this.f1982g = -1;
                this.f1983h = 17;
                this.f1981f = transition;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == C0178R.styleable.OnClick_targetId) {
                        this.f1982g = obtainStyledAttributes.getResourceId(index, this.f1982g);
                    } else if (index == C0178R.styleable.OnClick_clickAction) {
                        this.f1983h = obtainStyledAttributes.getInt(index, this.f1983h);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v3, types: [android.view.View] */
            /* renamed from: a */
            public void m20582a(MotionLayout motionLayout, int i, Transition transition) {
                int i2 = this.f1982g;
                MotionLayout motionLayout2 = motionLayout;
                if (i2 != -1) {
                    motionLayout2 = motionLayout.findViewById(i2);
                }
                if (motionLayout2 == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f1982g);
                    return;
                }
                int i3 = transition.f1966d;
                int i4 = transition.f1965c;
                if (i3 == -1) {
                    motionLayout2.setOnClickListener(this);
                    return;
                }
                boolean z = true;
                boolean z2 = (this.f1983h & 1) != 0 && i == i3;
                boolean z3 = (this.f1983h & Indexable.MAX_URL_LENGTH) != 0 && i == i3;
                boolean z4 = (this.f1983h & 1) != 0 && i == i3;
                boolean z5 = (this.f1983h & 16) != 0 && i == i4;
                if ((this.f1983h & CodedOutputStream.DEFAULT_BUFFER_SIZE) == 0 || i != i4) {
                    z = false;
                }
                if ((z4 | z2 | z3 | z5) || z) {
                    motionLayout2.setOnClickListener(this);
                }
            }

            /* renamed from: b */
            boolean m20581b(Transition transition, MotionLayout motionLayout) {
                Transition transition2 = this.f1981f;
                boolean z = true;
                if (transition2 == transition) {
                    return true;
                }
                int i = transition2.f1965c;
                int i2 = this.f1981f.f1966d;
                if (i2 == -1) {
                    if (motionLayout.f1835C == i) {
                        z = false;
                    }
                    return z;
                }
                int i3 = motionLayout.f1835C;
                boolean z2 = true;
                if (i3 != i2) {
                    z2 = i3 == i;
                }
                return z2;
            }

            /* renamed from: c */
            public void m20580c(MotionLayout motionLayout) {
                int i = this.f1982g;
                if (i != -1) {
                    View findViewById = motionLayout.findViewById(i);
                    if (findViewById == null) {
                        Log.e("MotionScene", " (*)  could not find id " + this.f1982g);
                        return;
                    }
                    findViewById.setOnClickListener(null);
                }
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                boolean z;
                boolean z2;
                MotionLayout motionLayout = this.f1981f.f1972j.f1942a;
                if (motionLayout.m20724i0()) {
                    if (this.f1981f.f1966d == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.m20715r0(this.f1981f.f1965c);
                            return;
                        }
                        Transition transition = new Transition(this.f1981f.f1972j, this.f1981f);
                        transition.f1966d = currentState;
                        transition.f1965c = this.f1981f.f1965c;
                        motionLayout.setTransition(transition);
                        motionLayout.m20717p0();
                        return;
                    }
                    Transition transition2 = this.f1981f.f1972j.f1944c;
                    int i = this.f1983h;
                    boolean z3 = ((i & 1) == 0 && (i & Indexable.MAX_URL_LENGTH) == 0) ? false : true;
                    int i2 = this.f1983h;
                    boolean z4 = ((i2 & 16) == 0 && (i2 & CodedOutputStream.DEFAULT_BUFFER_SIZE) == 0) ? false : true;
                    if (z3 && z4) {
                        Transition transition3 = this.f1981f.f1972j.f1944c;
                        Transition transition4 = this.f1981f;
                        if (transition3 != transition4) {
                            motionLayout.setTransition(transition4);
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
                    if (!m20581b(transition2, motionLayout)) {
                        return;
                    }
                    if (z2 && (this.f1983h & 1) != 0) {
                        motionLayout.setTransition(this.f1981f);
                        motionLayout.m20717p0();
                    } else if (z && (this.f1983h & 16) != 0) {
                        motionLayout.setTransition(this.f1981f);
                        motionLayout.m20716q0();
                    } else if (z2 && (this.f1983h & Indexable.MAX_URL_LENGTH) != 0) {
                        motionLayout.setTransition(this.f1981f);
                        motionLayout.setProgress(1.0f);
                    } else if (z && (this.f1983h & CodedOutputStream.DEFAULT_BUFFER_SIZE) != 0) {
                        motionLayout.setTransition(this.f1981f);
                        motionLayout.setProgress(0.0f);
                    }
                }
            }
        }

        Transition(MotionScene motionScene, Context context, XmlPullParser xmlPullParser) {
            this.f1963a = -1;
            this.f1964b = false;
            this.f1965c = -1;
            this.f1966d = -1;
            this.f1967e = 0;
            this.f1968f = null;
            this.f1969g = -1;
            this.f1970h = 400;
            this.f1971i = 0.0f;
            this.f1973k = new ArrayList<>();
            this.f1974l = null;
            this.f1975m = new ArrayList<>();
            this.f1976n = 0;
            this.f1977o = false;
            this.f1978p = -1;
            this.f1979q = 0;
            this.f1980r = 0;
            this.f1970h = motionScene.f1953l;
            this.f1979q = motionScene.f1954m;
            this.f1972j = motionScene;
            m20586w(motionScene, context, Xml.asAttributeSet(xmlPullParser));
        }

        Transition(MotionScene motionScene, Transition transition) {
            this.f1963a = -1;
            this.f1964b = false;
            this.f1965c = -1;
            this.f1966d = -1;
            this.f1967e = 0;
            this.f1968f = null;
            this.f1969g = -1;
            this.f1970h = 400;
            this.f1971i = 0.0f;
            this.f1973k = new ArrayList<>();
            this.f1974l = null;
            this.f1975m = new ArrayList<>();
            this.f1976n = 0;
            this.f1977o = false;
            this.f1978p = -1;
            this.f1979q = 0;
            this.f1980r = 0;
            this.f1972j = motionScene;
            if (transition != null) {
                this.f1978p = transition.f1978p;
                this.f1967e = transition.f1967e;
                this.f1968f = transition.f1968f;
                this.f1969g = transition.f1969g;
                this.f1970h = transition.f1970h;
                this.f1973k = transition.f1973k;
                this.f1971i = transition.f1971i;
                this.f1979q = transition.f1979q;
            }
        }

        /* renamed from: v */
        private void m20587v(MotionScene motionScene, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == C0178R.styleable.Transition_constraintSetEnd) {
                    this.f1965c = typedArray.getResourceId(index, this.f1965c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f1965c))) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        constraintSet.m19991w(context, this.f1965c);
                        motionScene.f1949h.append(this.f1965c, constraintSet);
                    }
                } else if (index == C0178R.styleable.Transition_constraintSetStart) {
                    this.f1966d = typedArray.getResourceId(index, this.f1966d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f1966d))) {
                        ConstraintSet constraintSet2 = new ConstraintSet();
                        constraintSet2.m19991w(context, this.f1966d);
                        motionScene.f1949h.append(this.f1966d, constraintSet2);
                    }
                } else if (index == C0178R.styleable.Transition_motionInterpolator) {
                    int i2 = typedArray.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f1969g = resourceId;
                        if (resourceId != -1) {
                            this.f1967e = -2;
                        }
                    } else if (i2 == 3) {
                        String string = typedArray.getString(index);
                        this.f1968f = string;
                        if (string.indexOf("/") > 0) {
                            this.f1969g = typedArray.getResourceId(index, -1);
                            this.f1967e = -2;
                        } else {
                            this.f1967e = -1;
                        }
                    } else {
                        this.f1967e = typedArray.getInteger(index, this.f1967e);
                    }
                } else if (index == C0178R.styleable.Transition_duration) {
                    this.f1970h = typedArray.getInt(index, this.f1970h);
                } else if (index == C0178R.styleable.Transition_staggered) {
                    this.f1971i = typedArray.getFloat(index, this.f1971i);
                } else if (index == C0178R.styleable.Transition_autoTransition) {
                    this.f1976n = typedArray.getInteger(index, this.f1976n);
                } else if (index == C0178R.styleable.Transition_android_id) {
                    this.f1963a = typedArray.getResourceId(index, this.f1963a);
                } else if (index == C0178R.styleable.Transition_transitionDisable) {
                    this.f1977o = typedArray.getBoolean(index, this.f1977o);
                } else if (index == C0178R.styleable.Transition_pathMotionArc) {
                    this.f1978p = typedArray.getInteger(index, -1);
                } else if (index == C0178R.styleable.Transition_layoutDuringTransition) {
                    this.f1979q = typedArray.getInteger(index, 0);
                } else if (index == C0178R.styleable.Transition_transitionFlags) {
                    this.f1980r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f1966d == -1) {
                this.f1964b = true;
            }
        }

        /* renamed from: w */
        private void m20586w(MotionScene motionScene, Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0178R.styleable.Transition);
            m20587v(motionScene, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        /* renamed from: A */
        public int m20614A() {
            return this.f1979q;
        }

        /* renamed from: B */
        public int m20613B() {
            return this.f1966d;
        }

        /* renamed from: C */
        public TouchResponse m20612C() {
            return this.f1974l;
        }

        /* renamed from: D */
        public boolean m20611D() {
            return !this.f1977o;
        }

        /* renamed from: E */
        public boolean m20610E(int i) {
            return (i & this.f1980r) != 0;
        }

        /* renamed from: F */
        public void m20609F(int i) {
            this.f1970h = i;
        }

        /* renamed from: t */
        public void m20589t(Context context, XmlPullParser xmlPullParser) {
            this.f1975m.add(new TransitionOnClick(context, this, xmlPullParser));
        }

        /* renamed from: u */
        public String m20588u(Context context) {
            String str;
            String resourceEntryName = this.f1966d == -1 ? "null" : context.getResources().getResourceEntryName(this.f1966d);
            if (this.f1965c == -1) {
                str = resourceEntryName + " -> null";
            } else {
                str = resourceEntryName + " -> " + context.getResources().getResourceEntryName(this.f1965c);
            }
            return str;
        }

        /* renamed from: x */
        public int m20585x() {
            return this.f1976n;
        }

        /* renamed from: y */
        public int m20584y() {
            return this.f1970h;
        }

        /* renamed from: z */
        public int m20583z() {
            return this.f1965c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionScene(Context context, MotionLayout motionLayout, int i) {
        this.f1942a = motionLayout;
        m20655C(context, i);
        this.f1949h.put(C0178R.C0181id.motion_base, new ConstraintSet());
        this.f1950i.put("motion_base", Integer.valueOf(C0178R.C0181id.motion_base));
    }

    /* renamed from: A */
    private boolean m20657A(int i) {
        int i2 = this.f1951j.get(i);
        int size = this.f1951j.size();
        while (i2 > 0) {
            if (i2 == i || size < 0) {
                return true;
            }
            i2 = this.f1951j.get(i2);
            size--;
        }
        return false;
    }

    /* renamed from: B */
    private boolean m20656B() {
        return this.f1958q != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: C */
    private void m20655C(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        Transition transition = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c = 1;
                if (eventType != 1) {
                    if (eventType != 0) {
                        if (eventType == 2) {
                            String name = xml.getName();
                            if (this.f1952k) {
                                PrintStream printStream = System.out;
                                printStream.println("parsing = " + name);
                            }
                            switch (name.hashCode()) {
                                case -1349929691:
                                    if (name.equals("ConstraintSet")) {
                                        c = 5;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case -1239391468:
                                    if (name.equals("KeyFrameSet")) {
                                        c = 6;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 269306229:
                                    if (name.equals("Transition")) {
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 312750793:
                                    if (name.equals("OnClick")) {
                                        c = 3;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 327855227:
                                    if (name.equals("OnSwipe")) {
                                        c = 2;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 793277014:
                                    if (name.equals("MotionScene")) {
                                        c = 0;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                case 1382829617:
                                    if (name.equals("StateSet")) {
                                        c = 4;
                                        break;
                                    }
                                    c = 65535;
                                    break;
                                default:
                                    c = 65535;
                                    break;
                            }
                            switch (c) {
                                case 0:
                                    m20653E(context, xml);
                                    break;
                                case 1:
                                    ArrayList<Transition> arrayList = this.f1946e;
                                    transition = new Transition(this, context, xml);
                                    arrayList.add(transition);
                                    if (this.f1944c == null && !transition.f1964b) {
                                        this.f1944c = transition;
                                        if (!(transition == null || transition.f1974l == null)) {
                                            this.f1944c.f1974l.m20537p(this.f1959r);
                                        }
                                    }
                                    if (transition.f1964b) {
                                        if (transition.f1965c == -1) {
                                            this.f1947f = transition;
                                        } else {
                                            this.f1948g.add(transition);
                                        }
                                        this.f1946e.remove(transition);
                                    }
                                    break;
                                case 2:
                                    if (transition == null) {
                                        String resourceEntryName = context.getResources().getResourceEntryName(i);
                                        int lineNumber = xml.getLineNumber();
                                        Log.v("MotionScene", " OnSwipe (" + resourceEntryName + ".xml:" + lineNumber + ")");
                                    }
                                    transition.f1974l = new TouchResponse(context, this.f1942a, xml);
                                    break;
                                case 3:
                                    transition.m20589t(context, xml);
                                    break;
                                case 4:
                                    this.f1943b = new StateSet(context, xml);
                                    break;
                                case 5:
                                    m20654D(context, xml);
                                    break;
                                case 6:
                                    transition.f1973k.add(new KeyFrames(context, xml));
                                    break;
                                default:
                                    Log.v("MotionScene", "WARNING UNKNOWN ATTRIBUTE " + name);
                                    break;
                            }
                        }
                    } else {
                        xml.getName();
                    }
                    eventType = xml.next();
                } else {
                    return;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c2  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m20654D(android.content.Context r5, org.xmlpull.v1.XmlPullParser r6) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.m20654D(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    /* renamed from: E */
    private void m20653E(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0178R.styleable.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0178R.styleable.MotionScene_defaultDuration) {
                this.f1953l = obtainStyledAttributes.getInt(index, this.f1953l);
            } else if (index == C0178R.styleable.MotionScene_layoutDuringTransition) {
                this.f1954m = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: I */
    private void m20649I(int i) {
        int i2 = this.f1951j.get(i);
        if (i2 > 0) {
            m20649I(this.f1951j.get(i));
            ConstraintSet constraintSet = this.f1949h.get(i);
            ConstraintSet constraintSet2 = this.f1949h.get(i2);
            if (constraintSet2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + Debug.m20942b(this.f1942a.getContext(), i2));
                return;
            }
            constraintSet.m20017B(constraintSet2);
            this.f1951j.put(i, -1);
        }
    }

    /* renamed from: P */
    public static String m20642P(String str) {
        if (str == null) {
            return "";
        }
        int indexOf = str.indexOf(47);
        return indexOf < 0 ? str : str.substring(indexOf + 1);
    }

    /* renamed from: o */
    private int m20626o(Context context, String str) {
        int i;
        if (str.contains("/")) {
            int identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), Name.MARK, context.getPackageName());
            i = identifier;
            if (this.f1952k) {
                PrintStream printStream = System.out;
                printStream.println("id getMap res = " + identifier);
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
    private int m20619v(int i) {
        int c;
        StateSet stateSet = this.f1943b;
        return (stateSet == null || (c = stateSet.m19960c(i, -1, -1)) == -1) ? i : c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: F */
    public void m20652F(float f, float f2) {
        Transition transition = this.f1944c;
        if (transition != null && transition.f1974l != null) {
            this.f1944c.f1974l.m20540m(f, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G */
    public void m20651G(float f, float f2) {
        Transition transition = this.f1944c;
        if (transition != null && transition.f1974l != null) {
            this.f1944c.f1974l.m20539n(f, f2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public void m20650H(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout.MotionTracker motionTracker;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f1958q == null) {
            this.f1958q = this.f1942a.m20723j0();
        }
        this.f1958q.mo20686b(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f1960s = motionEvent.getRawX();
                this.f1961t = motionEvent.getRawY();
                this.f1955n = motionEvent;
                this.f1956o = false;
                if (this.f1944c.f1974l != null) {
                    RectF e = this.f1944c.f1974l.m20548e(this.f1942a, rectF);
                    if (e == null || e.contains(this.f1955n.getX(), this.f1955n.getY())) {
                        RectF j = this.f1944c.f1974l.m20543j(this.f1942a, rectF);
                        if (j == null || j.contains(this.f1955n.getX(), this.f1955n.getY())) {
                            this.f1957p = false;
                        } else {
                            this.f1957p = true;
                        }
                        this.f1944c.f1974l.m20538o(this.f1960s, this.f1961t);
                        return;
                    }
                    this.f1955n = null;
                    this.f1956o = true;
                    return;
                }
                return;
            } else if (action == 2 && !this.f1956o) {
                float rawY = motionEvent.getRawY() - this.f1961t;
                float rawX = motionEvent.getRawX() - this.f1960s;
                if ((rawX != 0.0d || rawY != 0.0d) && (motionEvent2 = this.f1955n) != null) {
                    Transition g = m20634g(i, rawX, rawY, motionEvent2);
                    if (g != null) {
                        motionLayout.setTransition(g);
                        RectF j2 = this.f1944c.f1974l.m20543j(this.f1942a, rectF);
                        boolean z = false;
                        if (j2 != null) {
                            z = false;
                            if (!j2.contains(this.f1955n.getX(), this.f1955n.getY())) {
                                z = true;
                            }
                        }
                        this.f1957p = z;
                        this.f1944c.f1974l.m20536q(this.f1960s, this.f1961t);
                    }
                } else {
                    return;
                }
            }
        }
        if (!this.f1956o) {
            Transition transition = this.f1944c;
            if (!(transition == null || transition.f1974l == null || this.f1957p)) {
                this.f1944c.f1974l.m20541l(motionEvent, this.f1958q, i, this);
            }
            this.f1960s = motionEvent.getRawX();
            this.f1961t = motionEvent.getRawY();
            if (motionEvent.getAction() == 1 && (motionTracker = this.f1958q) != null) {
                motionTracker.mo20687a();
                this.f1958q = null;
                int i2 = motionLayout.f1835C;
                if (i2 != -1) {
                    m20635f(motionLayout, i2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public void m20648J(MotionLayout motionLayout) {
        for (int i = 0; i < this.f1949h.size(); i++) {
            int keyAt = this.f1949h.keyAt(i);
            if (m20657A(keyAt)) {
                Log.e("MotionScene", "Cannot be derived from yourself");
                return;
            } else {
                m20649I(keyAt);
            }
        }
        for (int i2 = 0; i2 < this.f1949h.size(); i2++) {
            this.f1949h.valueAt(i2).m20018A(motionLayout);
        }
    }

    /* renamed from: K */
    public void m20647K(int i) {
        Transition transition = this.f1944c;
        if (transition != null) {
            transition.m20609F(i);
        } else {
            this.f1953l = i;
        }
    }

    /* renamed from: L */
    public void m20646L(boolean z) {
        this.f1959r = z;
        Transition transition = this.f1944c;
        if (transition != null && transition.f1974l != null) {
            this.f1944c.f1974l.m20537p(this.f1959r);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f5  */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20645M(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionScene.m20645M(int, int):void");
    }

    /* renamed from: N */
    public void m20644N(Transition transition) {
        this.f1944c = transition;
        if (transition != null && transition.f1974l != null) {
            this.f1944c.f1974l.m20537p(this.f1959r);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O */
    public void m20643O() {
        Transition transition = this.f1944c;
        if (transition != null && transition.f1974l != null) {
            this.f1944c.f1974l.m20535r();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Q */
    public boolean m20641Q() {
        Iterator<Transition> it = this.f1946e.iterator();
        do {
            boolean z = true;
            if (!it.hasNext()) {
                Transition transition = this.f1944c;
                if (transition == null || transition.f1974l == null) {
                    z = false;
                }
                return z;
            }
        } while (it.next().f1974l == null);
        return true;
    }

    /* renamed from: e */
    public void m20636e(MotionLayout motionLayout, int i) {
        Iterator<Transition> it = this.f1946e.iterator();
        while (it.hasNext()) {
            Transition next = it.next();
            if (next.f1975m.size() > 0) {
                Iterator it2 = next.f1975m.iterator();
                while (it2.hasNext()) {
                    ((Transition.TransitionOnClick) it2.next()).m20580c(motionLayout);
                }
            }
        }
        Iterator<Transition> it3 = this.f1948g.iterator();
        while (it3.hasNext()) {
            Transition next2 = it3.next();
            if (next2.f1975m.size() > 0) {
                Iterator it4 = next2.f1975m.iterator();
                while (it4.hasNext()) {
                    ((Transition.TransitionOnClick) it4.next()).m20580c(motionLayout);
                }
            }
        }
        Iterator<Transition> it5 = this.f1946e.iterator();
        while (it5.hasNext()) {
            Transition next3 = it5.next();
            if (next3.f1975m.size() > 0) {
                Iterator it6 = next3.f1975m.iterator();
                while (it6.hasNext()) {
                    ((Transition.TransitionOnClick) it6.next()).m20582a(motionLayout, i, next3);
                }
            }
        }
        Iterator<Transition> it7 = this.f1948g.iterator();
        while (it7.hasNext()) {
            Transition next4 = it7.next();
            if (next4.f1975m.size() > 0) {
                Iterator it8 = next4.f1975m.iterator();
                while (it8.hasNext()) {
                    ((Transition.TransitionOnClick) it8.next()).m20582a(motionLayout, i, next4);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m20635f(MotionLayout motionLayout, int i) {
        if (m20656B() || this.f1945d) {
            return false;
        }
        Iterator<Transition> it = this.f1946e.iterator();
        while (it.hasNext()) {
            Transition next = it.next();
            if (!(next.f1976n == 0 || this.f1944c == next)) {
                if (i == next.f1966d && (next.f1976n == 4 || next.f1976n == 2)) {
                    motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                    motionLayout.setTransition(next);
                    if (next.f1976n == 4) {
                        motionLayout.m20717p0();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        return true;
                    }
                    motionLayout.setProgress(1.0f);
                    motionLayout.m20734Y(true);
                    motionLayout.setState(MotionLayout.TransitionState.SETUP);
                    motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                    motionLayout.m20722k0();
                    return true;
                } else if (i == next.f1965c && (next.f1976n == 3 || next.f1976n == 1)) {
                    motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                    motionLayout.setTransition(next);
                    if (next.f1976n == 3) {
                        motionLayout.m20716q0();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        return true;
                    }
                    motionLayout.setProgress(0.0f);
                    motionLayout.m20734Y(true);
                    motionLayout.setState(MotionLayout.TransitionState.SETUP);
                    motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    motionLayout.setState(MotionLayout.TransitionState.FINISHED);
                    motionLayout.m20722k0();
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: g */
    public Transition m20634g(int i, float f, float f2, MotionEvent motionEvent) {
        if (i == -1) {
            return this.f1944c;
        }
        List<Transition> z = m20615z(i);
        float f3 = 0.0f;
        Transition transition = null;
        RectF rectF = new RectF();
        for (Transition transition2 : z) {
            if (!transition2.f1977o && transition2.f1974l != null) {
                transition2.f1974l.m20537p(this.f1959r);
                RectF j = transition2.f1974l.m20543j(this.f1942a, rectF);
                if (j == null || motionEvent == null || j.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF j2 = transition2.f1974l.m20543j(this.f1942a, rectF);
                    if (j2 == null || motionEvent == null || j2.contains(motionEvent.getX(), motionEvent.getY())) {
                        float a = transition2.f1974l.m20552a(f, f2) * (transition2.f1965c == i ? -1.0f : 1.1f);
                        if (a > f3) {
                            transition = transition2;
                            f3 = a;
                        }
                    }
                }
            }
        }
        return transition;
    }

    /* renamed from: h */
    public int m20633h() {
        Transition transition = this.f1944c;
        return transition != null ? transition.f1978p : -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public ConstraintSet m20632i(int i) {
        return m20631j(i, -1, -1);
    }

    /* renamed from: j */
    ConstraintSet m20631j(int i, int i2, int i3) {
        if (this.f1952k) {
            PrintStream printStream = System.out;
            printStream.println("id " + i);
            PrintStream printStream2 = System.out;
            printStream2.println("size " + this.f1949h.size());
        }
        StateSet stateSet = this.f1943b;
        int i4 = i;
        if (stateSet != null) {
            int c = stateSet.m19960c(i, i2, i3);
            i4 = i;
            if (c != -1) {
                i4 = c;
            }
        }
        if (this.f1949h.get(i4) != null) {
            return this.f1949h.get(i4);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + Debug.m20942b(this.f1942a.getContext(), i4) + " In MotionScene");
        SparseArray<ConstraintSet> sparseArray = this.f1949h;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    /* renamed from: k */
    public int[] m20630k() {
        int size = this.f1949h.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = this.f1949h.keyAt(i);
        }
        return iArr;
    }

    /* renamed from: l */
    public ArrayList<Transition> m20629l() {
        return this.f1946e;
    }

    /* renamed from: m */
    public int m20628m() {
        Transition transition = this.f1944c;
        return transition != null ? transition.f1970h : this.f1953l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m20627n() {
        Transition transition = this.f1944c;
        if (transition == null) {
            return -1;
        }
        return transition.f1965c;
    }

    /* renamed from: p */
    public Interpolator m20625p() {
        int i = this.f1944c.f1967e;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(this.f1942a.getContext(), this.f1944c.f1969g);
        }
        if (i == -1) {
            final Easing c = Easing.m20975c(this.f1944c.f1968f);
            return new Interpolator(this) { // from class: androidx.constraintlayout.motion.widget.MotionScene.1
                @Override // android.animation.TimeInterpolator
                public float getInterpolation(float f) {
                    return (float) c.mo20974a(f);
                }
            };
        } else if (i == 0) {
            return new AccelerateDecelerateInterpolator();
        } else {
            if (i == 1) {
                return new AccelerateInterpolator();
            }
            if (i == 2) {
                return new DecelerateInterpolator();
            }
            if (i == 4) {
                return new AnticipateInterpolator();
            }
            if (i != 5) {
                return null;
            }
            return new BounceInterpolator();
        }
    }

    /* renamed from: q */
    public void m20624q(MotionController motionController) {
        Transition transition = this.f1944c;
        if (transition == null) {
            Transition transition2 = this.f1947f;
            if (transition2 != null) {
                Iterator it = transition2.f1973k.iterator();
                while (it.hasNext()) {
                    ((KeyFrames) it.next()).m20849a(motionController);
                }
                return;
            }
            return;
        }
        Iterator it2 = transition.f1973k.iterator();
        while (it2.hasNext()) {
            ((KeyFrames) it2.next()).m20849a(motionController);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public float m20623r() {
        Transition transition = this.f1944c;
        if (transition == null || transition.f1974l == null) {
            return 0.0f;
        }
        return this.f1944c.f1974l.m20547f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public float m20622s() {
        Transition transition = this.f1944c;
        if (transition == null || transition.f1974l == null) {
            return 0.0f;
        }
        return this.f1944c.f1974l.m20546g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public boolean m20621t() {
        Transition transition = this.f1944c;
        if (transition == null || transition.f1974l == null) {
            return false;
        }
        return this.f1944c.f1974l.m20545h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public float m20620u(float f, float f2) {
        Transition transition = this.f1944c;
        if (transition == null || transition.f1974l == null) {
            return 0.0f;
        }
        return this.f1944c.f1974l.m20544i(f, f2);
    }

    /* renamed from: w */
    public float m20618w() {
        Transition transition = this.f1944c;
        if (transition != null) {
            return transition.f1971i;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public int m20617x() {
        Transition transition = this.f1944c;
        if (transition == null) {
            return -1;
        }
        return transition.f1966d;
    }

    /* renamed from: y */
    public Transition m20616y(int i) {
        Iterator<Transition> it = this.f1946e.iterator();
        while (it.hasNext()) {
            Transition next = it.next();
            if (next.f1963a == i) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: z */
    public List<Transition> m20615z(int i) {
        int v = m20619v(i);
        ArrayList arrayList = new ArrayList();
        Iterator<Transition> it = this.f1946e.iterator();
        while (it.hasNext()) {
            Transition next = it.next();
            if (next.f1966d == v || next.f1965c == v) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }
}
