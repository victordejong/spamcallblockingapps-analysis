package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
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
import androidx.constraintlayout.motion.p029a.C0574c;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.C0687e;
import androidx.constraintlayout.widget.C0690f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.motion.widget.p */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p.class */
public final class C0627p {

    /* renamed from: a */
    final MotionLayout f2754a;

    /* renamed from: i */
    float f2762i;

    /* renamed from: j */
    float f2763j;

    /* renamed from: p */
    private MotionEvent f2769p;

    /* renamed from: s */
    private MotionLayout.AbstractC0586d f2772s;

    /* renamed from: t */
    private boolean f2773t;

    /* renamed from: b */
    C0690f f2755b = null;

    /* renamed from: c */
    C0629a f2756c = null;

    /* renamed from: k */
    private boolean f2764k = false;

    /* renamed from: d */
    ArrayList<C0629a> f2757d = new ArrayList<>();

    /* renamed from: l */
    private C0629a f2765l = null;

    /* renamed from: m */
    private ArrayList<C0629a> f2766m = new ArrayList<>();

    /* renamed from: e */
    SparseArray<C0680c> f2758e = new SparseArray<>();

    /* renamed from: n */
    private HashMap<String, Integer> f2767n = new HashMap<>();

    /* renamed from: f */
    SparseIntArray f2759f = new SparseIntArray();

    /* renamed from: o */
    private boolean f2768o = false;

    /* renamed from: g */
    int f2760g = 400;

    /* renamed from: h */
    int f2761h = 0;

    /* renamed from: q */
    private boolean f2770q = false;

    /* renamed from: r */
    private boolean f2771r = false;

    /* renamed from: androidx.constraintlayout.motion.widget.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p$a.class */
    public static final class C0629a {

        /* renamed from: a */
        int f2776a;

        /* renamed from: b */
        boolean f2777b;

        /* renamed from: c */
        int f2778c;

        /* renamed from: d */
        int f2779d;

        /* renamed from: e */
        int f2780e;

        /* renamed from: f */
        String f2781f;

        /* renamed from: g */
        int f2782g;

        /* renamed from: h */
        int f2783h;

        /* renamed from: i */
        float f2784i;

        /* renamed from: j */
        final C0627p f2785j;

        /* renamed from: k */
        ArrayList<C0615g> f2786k;

        /* renamed from: l */
        C0663s f2787l;

        /* renamed from: m */
        ArrayList<View$OnClickListenerC0630a> f2788m;

        /* renamed from: n */
        int f2789n;

        /* renamed from: o */
        boolean f2790o;

        /* renamed from: p */
        int f2791p;

        /* renamed from: q */
        int f2792q;

        /* renamed from: r */
        int f2793r;

        /* renamed from: androidx.constraintlayout.motion.widget.p$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p$a$a.class */
        public static final class View$OnClickListenerC0630a implements View.OnClickListener {

            /* renamed from: a */
            int f2794a;

            /* renamed from: b */
            int f2795b;

            /* renamed from: c */
            private final C0629a f2796c;

            public View$OnClickListenerC0630a(Context context, C0629a c0629a, XmlPullParser xmlPullParser) {
                this.f2794a = -1;
                this.f2795b = 17;
                this.f2796c = c0629a;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == C0687e.C0689b.OnClick_targetId) {
                        this.f2794a = obtainStyledAttributes.getResourceId(index, this.f2794a);
                    } else if (index == C0687e.C0689b.OnClick_clickAction) {
                        this.f2795b = obtainStyledAttributes.getInt(index, this.f2795b);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* renamed from: a */
            public final void m44800a(MotionLayout motionLayout) {
                int i = this.f2794a;
                if (i == -1) {
                    return;
                }
                View findViewById = motionLayout.findViewById(i);
                if (findViewById != null) {
                    findViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f2794a);
            }

            /* renamed from: a */
            public final void m44799a(MotionLayout motionLayout, int i, C0629a c0629a) {
                int i2 = this.f2794a;
                if (i2 != -1) {
                    motionLayout = motionLayout.findViewById(i2);
                }
                if (motionLayout == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f2794a);
                    return;
                }
                int i3 = c0629a.f2779d;
                int i4 = c0629a.f2778c;
                if (i3 == -1) {
                    motionLayout.setOnClickListener(this);
                    return;
                }
                int i5 = this.f2795b;
                boolean z = (i5 & 1) != 0 && i == i3;
                boolean z2 = (i5 & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 && i == i3;
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

            /* JADX WARN: Code restructure failed: missing block: B:48:0x0140, code lost:
                if (r0.f2483f != r0) goto L44;
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x0157, code lost:
                if (r0.f2483f == r0) goto L44;
             */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onClick(android.view.View r6) {
                /*
                    Method dump skipped, instructions count: 470
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0627p.C0629a.View$OnClickListenerC0630a.onClick(android.view.View):void");
            }
        }

        public C0629a(int i, C0627p c0627p, int i2, int i3) {
            this.f2776a = -1;
            this.f2777b = false;
            this.f2778c = -1;
            this.f2779d = -1;
            this.f2780e = 0;
            this.f2781f = null;
            this.f2782g = -1;
            this.f2783h = 400;
            this.f2784i = BitmapDescriptorFactory.HUE_RED;
            this.f2786k = new ArrayList<>();
            this.f2787l = null;
            this.f2788m = new ArrayList<>();
            this.f2789n = 0;
            this.f2790o = false;
            this.f2791p = -1;
            this.f2792q = 0;
            this.f2793r = 0;
            this.f2776a = i;
            this.f2785j = c0627p;
            this.f2779d = i2;
            this.f2778c = i3;
            this.f2783h = c0627p.f2760g;
            this.f2792q = c0627p.f2761h;
        }

        C0629a(C0627p c0627p, Context context, XmlPullParser xmlPullParser) {
            this.f2776a = -1;
            this.f2777b = false;
            this.f2778c = -1;
            this.f2779d = -1;
            this.f2780e = 0;
            this.f2781f = null;
            this.f2782g = -1;
            this.f2783h = 400;
            this.f2784i = BitmapDescriptorFactory.HUE_RED;
            this.f2786k = new ArrayList<>();
            this.f2787l = null;
            this.f2788m = new ArrayList<>();
            this.f2789n = 0;
            this.f2790o = false;
            this.f2791p = -1;
            this.f2792q = 0;
            this.f2793r = 0;
            this.f2783h = c0627p.f2760g;
            this.f2792q = c0627p.f2761h;
            this.f2785j = c0627p;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.Transition);
            m44801a(c0627p, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        C0629a(C0627p c0627p, C0629a c0629a) {
            this.f2776a = -1;
            this.f2777b = false;
            this.f2778c = -1;
            this.f2779d = -1;
            this.f2780e = 0;
            this.f2781f = null;
            this.f2782g = -1;
            this.f2783h = 400;
            this.f2784i = BitmapDescriptorFactory.HUE_RED;
            this.f2786k = new ArrayList<>();
            this.f2787l = null;
            this.f2788m = new ArrayList<>();
            this.f2789n = 0;
            this.f2790o = false;
            this.f2791p = -1;
            this.f2792q = 0;
            this.f2793r = 0;
            this.f2785j = c0627p;
            if (c0629a != null) {
                this.f2791p = c0629a.f2791p;
                this.f2780e = c0629a.f2780e;
                this.f2781f = c0629a.f2781f;
                this.f2782g = c0629a.f2782g;
                this.f2783h = c0629a.f2783h;
                this.f2786k = c0629a.f2786k;
                this.f2784i = c0629a.f2784i;
                this.f2792q = c0629a.f2792q;
            }
        }

        /* renamed from: a */
        private void m44801a(C0627p c0627p, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == C0687e.C0689b.Transition_constraintSetEnd) {
                    this.f2778c = typedArray.getResourceId(index, this.f2778c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f2778c))) {
                        C0680c c0680c = new C0680c();
                        c0680c.m44695b(context, this.f2778c);
                        c0627p.f2758e.append(this.f2778c, c0680c);
                    }
                } else if (index == C0687e.C0689b.Transition_constraintSetStart) {
                    this.f2779d = typedArray.getResourceId(index, this.f2779d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f2779d))) {
                        C0680c c0680c2 = new C0680c();
                        c0680c2.m44695b(context, this.f2779d);
                        c0627p.f2758e.append(this.f2779d, c0680c2);
                    }
                } else if (index == C0687e.C0689b.Transition_motionInterpolator) {
                    TypedValue peekValue = typedArray.peekValue(index);
                    if (peekValue.type == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f2782g = resourceId;
                        if (resourceId != -1) {
                            this.f2780e = -2;
                        }
                    } else if (peekValue.type == 3) {
                        String string = typedArray.getString(index);
                        this.f2781f = string;
                        if (string.indexOf("/") > 0) {
                            this.f2782g = typedArray.getResourceId(index, -1);
                            this.f2780e = -2;
                        } else {
                            this.f2780e = -1;
                        }
                    } else {
                        this.f2780e = typedArray.getInteger(index, this.f2780e);
                    }
                } else if (index == C0687e.C0689b.Transition_duration) {
                    this.f2783h = typedArray.getInt(index, this.f2783h);
                } else if (index == C0687e.C0689b.Transition_staggered) {
                    this.f2784i = typedArray.getFloat(index, this.f2784i);
                } else if (index == C0687e.C0689b.Transition_autoTransition) {
                    this.f2789n = typedArray.getInteger(index, this.f2789n);
                } else if (index == C0687e.C0689b.Transition_android_id) {
                    this.f2776a = typedArray.getResourceId(index, this.f2776a);
                } else if (index == C0687e.C0689b.Transition_transitionDisable) {
                    this.f2790o = typedArray.getBoolean(index, this.f2790o);
                } else if (index == C0687e.C0689b.Transition_pathMotionArc) {
                    this.f2791p = typedArray.getInteger(index, -1);
                } else if (index == C0687e.C0689b.Transition_layoutDuringTransition) {
                    this.f2792q = typedArray.getInteger(index, 0);
                } else if (index == C0687e.C0689b.Transition_transitionFlags) {
                    this.f2793r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f2779d == -1) {
                this.f2777b = true;
            }
        }

        /* renamed from: a */
        public final boolean m44802a() {
            return !this.f2790o;
        }
    }

    public C0627p(Context context, MotionLayout motionLayout, int i) {
        this.f2754a = motionLayout;
        m44821a(context, i);
        this.f2758e.put(C0687e.C0688a.motion_base, new C0680c());
        this.f2767n.put("motion_base", Integer.valueOf(C0687e.C0688a.motion_base));
    }

    public C0627p(MotionLayout motionLayout) {
        this.f2754a = motionLayout;
    }

    /* renamed from: a */
    private int m44820a(Context context, String str) {
        int i;
        if (str.contains("/")) {
            int identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            i = identifier;
            if (this.f2768o) {
                System.out.println("id getMap res = ".concat(String.valueOf(identifier)));
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

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
        if (r11 != (-1)) goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.constraintlayout.motion.widget.C0627p.C0629a m44823a(int r6, float r7, float r8, android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0627p.m44823a(int, float, float, android.view.MotionEvent):androidx.constraintlayout.motion.widget.p$a");
    }

    /* renamed from: a */
    private void m44821a(Context context, int i) {
        boolean z;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0629a c0629a = null;
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        if (this.f2768o) {
                            System.out.println("parsing = ".concat(String.valueOf(name)));
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
                                m44819a(context, xml);
                                break;
                            case true:
                                ArrayList<C0629a> arrayList = this.f2757d;
                                c0629a = new C0629a(this, context, xml);
                                arrayList.add(c0629a);
                                if (this.f2756c == null && !c0629a.f2777b) {
                                    this.f2756c = c0629a;
                                    if (c0629a.f2787l != null) {
                                        this.f2756c.f2787l.m44777a(this.f2773t);
                                    }
                                }
                                if (c0629a.f2777b) {
                                    if (c0629a.f2778c == -1) {
                                        this.f2765l = c0629a;
                                    } else {
                                        this.f2766m.add(c0629a);
                                    }
                                    this.f2757d.remove(c0629a);
                                }
                                break;
                            case true:
                                if (c0629a == null) {
                                    String resourceEntryName = context.getResources().getResourceEntryName(i);
                                    int lineNumber = xml.getLineNumber();
                                    StringBuilder sb = new StringBuilder(" OnSwipe (");
                                    sb.append(resourceEntryName);
                                    sb.append(".xml:");
                                    sb.append(lineNumber);
                                    sb.append(")");
                                }
                                c0629a.f2787l = new C0663s(context, this.f2754a, xml);
                                break;
                            case true:
                                c0629a.f2788m.add(new C0629a.View$OnClickListenerC0630a(context, c0629a, xml));
                                break;
                            case true:
                                this.f2755b = new C0690f(context, xml);
                                break;
                            case true:
                                m44811b(context, xml);
                                break;
                            case true:
                                c0629a.f2786k.add(new C0615g(context, xml));
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

    /* renamed from: a */
    private void m44819a(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0687e.C0689b.MotionScene_defaultDuration) {
                this.f2760g = obtainStyledAttributes.getInt(index, this.f2760g);
            } else if (index == C0687e.C0689b.MotionScene_layoutDuringTransition) {
                this.f2761h = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: b */
    private void m44811b(Context context, XmlPullParser xmlPullParser) {
        C0680c c0680c = new C0680c();
        c0680c.f3057b = false;
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = xmlPullParser.getAttributeName(i3);
            String attributeValue = xmlPullParser.getAttributeValue(i3);
            if (this.f2768o) {
                System.out.println("id string = ".concat(String.valueOf(attributeValue)));
            }
            attributeName.hashCode();
            if (attributeName.equals("deriveConstraintsFrom")) {
                i2 = m44820a(context, attributeValue);
            } else if (attributeName.equals("id")) {
                i = m44820a(context, attributeValue);
                HashMap<String, Integer> hashMap = this.f2767n;
                if (attributeValue == null) {
                    attributeValue = "";
                } else {
                    int indexOf = attributeValue.indexOf(47);
                    if (indexOf >= 0) {
                        attributeValue = attributeValue.substring(indexOf + 1);
                    }
                }
                hashMap.put(attributeValue, Integer.valueOf(i));
            }
        }
        if (i != -1) {
            if (this.f2754a.f2493p != 0) {
                c0680c.f3056a = true;
            }
            c0680c.m44705a(context, xmlPullParser);
            if (i2 != -1) {
                this.f2759f.put(i, i2);
            }
            this.f2758e.put(i, c0680c);
        }
    }

    /* renamed from: a */
    public final C0680c m44824a(int i) {
        if (this.f2768o) {
            System.out.println("id ".concat(String.valueOf(i)));
            PrintStream printStream = System.out;
            printStream.println("size " + this.f2758e.size());
        }
        C0690f c0690f = this.f2755b;
        int i2 = i;
        if (c0690f != null) {
            int m44674a = c0690f.m44674a(i, -1, -1);
            i2 = i;
            if (m44674a != -1) {
                i2 = m44674a;
            }
        }
        if (this.f2758e.get(i2) == null) {
            Log.e("MotionScene", "Warning could not find ConstraintSet id/" + C0591a.m44984a(this.f2754a.getContext(), i2) + " In MotionScene");
            SparseArray<C0680c> sparseArray = this.f2758e;
            return sparseArray.get(sparseArray.keyAt(0));
        }
        return this.f2758e.get(i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m44822a(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0627p.m44822a(int, int):void");
    }

    /* renamed from: a */
    public final void m44818a(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout.AbstractC0586d abstractC0586d;
        RectF rectF;
        View findViewById;
        MotionEvent motionEvent2;
        RectF rectF2 = new RectF();
        if (this.f2772s == null) {
            this.f2772s = MotionLayout.m45049a();
        }
        this.f2772s.mo44992a(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f2762i = motionEvent.getRawX();
                this.f2763j = motionEvent.getRawY();
                this.f2769p = motionEvent;
                this.f2770q = false;
                if (this.f2756c.f2787l == null) {
                    return;
                }
                C0663s c0663s = this.f2756c.f2787l;
                MotionLayout motionLayout2 = this.f2754a;
                if (c0663s.f2828d == -1 || (findViewById = motionLayout2.findViewById(c0663s.f2828d)) == null) {
                    rectF = null;
                } else {
                    rectF2.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
                    rectF = rectF2;
                }
                if (rectF != null && !rectF.contains(this.f2769p.getX(), this.f2769p.getY())) {
                    this.f2769p = null;
                    this.f2770q = true;
                    return;
                }
                RectF m44778a = this.f2756c.f2787l.m44778a(this.f2754a, rectF2);
                if (m44778a == null || m44778a.contains(this.f2769p.getX(), this.f2769p.getY())) {
                    this.f2771r = false;
                } else {
                    this.f2771r = true;
                }
                C0663s c0663s2 = this.f2756c.f2787l;
                float f = this.f2762i;
                float f2 = this.f2763j;
                c0663s2.f2835k = f;
                c0663s2.f2836l = f2;
                return;
            } else if (action == 2 && !this.f2770q) {
                float rawY = motionEvent.getRawY() - this.f2763j;
                float rawX = motionEvent.getRawX() - this.f2762i;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.f2769p) == null) {
                    return;
                }
                C0629a m44823a = m44823a(i, rawX, rawY, motionEvent2);
                if (m44823a != null) {
                    motionLayout.m45038a(m44823a);
                    RectF m44778a2 = this.f2756c.f2787l.m44778a(this.f2754a, rectF2);
                    this.f2771r = m44778a2 != null && !m44778a2.contains(this.f2769p.getX(), this.f2769p.getY());
                    C0663s c0663s3 = this.f2756c.f2787l;
                    float f3 = this.f2762i;
                    float f4 = this.f2763j;
                    c0663s3.f2835k = f3;
                    c0663s3.f2836l = f4;
                    c0663s3.f2833i = false;
                }
            }
        }
        if (this.f2770q) {
            return;
        }
        C0629a c0629a = this.f2756c;
        if (c0629a != null && c0629a.f2787l != null && !this.f2771r) {
            C0663s c0663s4 = this.f2756c.f2787l;
            MotionLayout.AbstractC0586d abstractC0586d2 = this.f2772s;
            abstractC0586d2.mo44992a(motionEvent);
            int action2 = motionEvent.getAction();
            if (action2 == 0) {
                c0663s4.f2835k = motionEvent.getRawX();
                c0663s4.f2836l = motionEvent.getRawY();
                c0663s4.f2833i = false;
            } else if (action2 == 1) {
                c0663s4.f2833i = false;
                abstractC0586d2.mo44991b();
                float mo44990c = abstractC0586d2.mo44990c();
                float mo44989d = abstractC0586d2.mo44989d();
                float f5 = c0663s4.f2837m.f2489l;
                if (c0663s4.f2826b != -1) {
                    c0663s4.f2837m.m45044a(c0663s4.f2826b, f5, c0663s4.f2830f, c0663s4.f2829e, c0663s4.f2834j);
                } else {
                    float min = Math.min(c0663s4.f2837m.getWidth(), c0663s4.f2837m.getHeight());
                    c0663s4.f2834j[1] = c0663s4.f2832h * min;
                    c0663s4.f2834j[0] = min * c0663s4.f2831g;
                }
                float f6 = c0663s4.f2831g != BitmapDescriptorFactory.HUE_RED ? mo44990c / c0663s4.f2834j[0] : mo44989d / c0663s4.f2834j[1];
                float f7 = !Float.isNaN(f6) ? (f6 / 3.0f) + f5 : f5;
                if (f7 != BitmapDescriptorFactory.HUE_RED && f7 != 1.0f && c0663s4.f2825a != 3) {
                    c0663s4.f2837m.m45045a(c0663s4.f2825a, ((double) f7) < 0.5d ? 0.0f : 1.0f, f6);
                    if (BitmapDescriptorFactory.HUE_RED >= f5 || 1.0f <= f5) {
                        c0663s4.f2837m.m45046a(MotionLayout.EnumC0590h.f2553d);
                    }
                } else if (BitmapDescriptorFactory.HUE_RED >= f7 || 1.0f <= f7) {
                    c0663s4.f2837m.m45046a(MotionLayout.EnumC0590h.f2553d);
                }
            } else if (action2 == 2) {
                float rawY2 = motionEvent.getRawY() - c0663s4.f2836l;
                float rawX2 = motionEvent.getRawX() - c0663s4.f2835k;
                if (Math.abs((c0663s4.f2831g * rawX2) + (c0663s4.f2832h * rawY2)) > c0663s4.f2843s || c0663s4.f2833i) {
                    float f8 = c0663s4.f2837m.f2489l;
                    if (!c0663s4.f2833i) {
                        c0663s4.f2833i = true;
                        c0663s4.f2837m.setProgress(f8);
                    }
                    if (c0663s4.f2826b != -1) {
                        c0663s4.f2837m.m45044a(c0663s4.f2826b, f8, c0663s4.f2830f, c0663s4.f2829e, c0663s4.f2834j);
                    } else {
                        float min2 = Math.min(c0663s4.f2837m.getWidth(), c0663s4.f2837m.getHeight());
                        c0663s4.f2834j[1] = c0663s4.f2832h * min2;
                        c0663s4.f2834j[0] = min2 * c0663s4.f2831g;
                    }
                    if (Math.abs(((c0663s4.f2831g * c0663s4.f2834j[0]) + (c0663s4.f2832h * c0663s4.f2834j[1])) * c0663s4.f2841q) < 0.01d) {
                        c0663s4.f2834j[0] = 0.01f;
                        c0663s4.f2834j[1] = 0.01f;
                    }
                    float max = Math.max(Math.min(f8 + (c0663s4.f2831g != BitmapDescriptorFactory.HUE_RED ? rawX2 / c0663s4.f2834j[0] : rawY2 / c0663s4.f2834j[1]), 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
                    if (max != c0663s4.f2837m.f2489l) {
                        c0663s4.f2837m.setProgress(max);
                        abstractC0586d2.mo44991b();
                        c0663s4.f2837m.f2481d = c0663s4.f2831g != BitmapDescriptorFactory.HUE_RED ? abstractC0586d2.mo44990c() / c0663s4.f2834j[0] : abstractC0586d2.mo44989d() / c0663s4.f2834j[1];
                    } else {
                        c0663s4.f2837m.f2481d = BitmapDescriptorFactory.HUE_RED;
                    }
                    c0663s4.f2835k = motionEvent.getRawX();
                    c0663s4.f2836l = motionEvent.getRawY();
                }
            }
        }
        this.f2762i = motionEvent.getRawX();
        this.f2763j = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (abstractC0586d = this.f2772s) == null) {
            return;
        }
        abstractC0586d.mo44993a();
        this.f2772s = null;
        if (motionLayout.f2483f == -1) {
            return;
        }
        m44810b(motionLayout, motionLayout.f2483f);
    }

    /* renamed from: a */
    public final void m44817a(MotionLayout motionLayout, int i) {
        Iterator<C0629a> it2 = this.f2757d.iterator();
        while (it2.hasNext()) {
            C0629a next = it2.next();
            if (next.f2788m.size() > 0) {
                Iterator<C0629a.View$OnClickListenerC0630a> it3 = next.f2788m.iterator();
                while (it3.hasNext()) {
                    it3.next().m44800a(motionLayout);
                }
            }
        }
        Iterator<C0629a> it4 = this.f2766m.iterator();
        while (it4.hasNext()) {
            C0629a next2 = it4.next();
            if (next2.f2788m.size() > 0) {
                Iterator<C0629a.View$OnClickListenerC0630a> it5 = next2.f2788m.iterator();
                while (it5.hasNext()) {
                    it5.next().m44800a(motionLayout);
                }
            }
        }
        Iterator<C0629a> it6 = this.f2757d.iterator();
        while (it6.hasNext()) {
            C0629a next3 = it6.next();
            if (next3.f2788m.size() > 0) {
                Iterator<C0629a.View$OnClickListenerC0630a> it7 = next3.f2788m.iterator();
                while (it7.hasNext()) {
                    it7.next().m44799a(motionLayout, i, next3);
                }
            }
        }
        Iterator<C0629a> it8 = this.f2766m.iterator();
        while (it8.hasNext()) {
            C0629a next4 = it8.next();
            if (next4.f2788m.size() > 0) {
                Iterator<C0629a.View$OnClickListenerC0630a> it9 = next4.f2788m.iterator();
                while (it9.hasNext()) {
                    it9.next().m44799a(motionLayout, i, next4);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m44816a(C0624m c0624m) {
        C0629a c0629a = this.f2756c;
        if (c0629a != null) {
            Iterator<C0615g> it2 = c0629a.f2786k.iterator();
            while (it2.hasNext()) {
                it2.next().m44904a(c0624m);
            }
            return;
        }
        C0629a c0629a2 = this.f2765l;
        if (c0629a2 == null) {
            return;
        }
        Iterator<C0615g> it3 = c0629a2.f2786k.iterator();
        while (it3.hasNext()) {
            it3.next().m44904a(c0624m);
        }
    }

    /* renamed from: a */
    public final void m44815a(C0629a c0629a) {
        this.f2756c = c0629a;
        if (c0629a == null || c0629a.f2787l == null) {
            return;
        }
        this.f2756c.f2787l.m44777a(this.f2773t);
    }

    /* renamed from: a */
    public final void m44814a(boolean z) {
        this.f2773t = z;
        C0629a c0629a = this.f2756c;
        if (c0629a == null || c0629a.f2787l == null) {
            return;
        }
        this.f2756c.f2787l.m44777a(this.f2773t);
    }

    /* renamed from: a */
    public final boolean m44825a() {
        Iterator<C0629a> it2 = this.f2757d.iterator();
        while (it2.hasNext()) {
            if (it2.next().f2787l != null) {
                return true;
            }
        }
        C0629a c0629a = this.f2756c;
        return (c0629a == null || c0629a.f2787l == null) ? false : true;
    }

    /* renamed from: b */
    public final int m44813b() {
        C0629a c0629a = this.f2756c;
        if (c0629a == null) {
            return -1;
        }
        return c0629a.f2779d;
    }

    /* renamed from: b */
    public final void m44812b(int i) {
        int i2 = this.f2759f.get(i);
        if (i2 > 0) {
            m44812b(this.f2759f.get(i));
            C0680c c0680c = this.f2758e.get(i);
            C0680c c0680c2 = this.f2758e.get(i2);
            if (c0680c2 != null) {
                c0680c.m44699a(c0680c2);
                this.f2759f.put(i, -1);
                return;
            }
            Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + C0591a.m44984a(this.f2754a.getContext(), i2));
        }
    }

    /* renamed from: b */
    public final boolean m44810b(MotionLayout motionLayout, int i) {
        if (!(this.f2772s != null) && !this.f2764k) {
            Iterator<C0629a> it2 = this.f2757d.iterator();
            while (it2.hasNext()) {
                C0629a next = it2.next();
                if (next.f2789n != 0 && this.f2756c != next) {
                    if (i == next.f2779d && (next.f2789n == 4 || next.f2789n == 2)) {
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2553d);
                        motionLayout.m45038a(next);
                        if (next.f2789n == 4) {
                            motionLayout.m45048a(1.0f);
                            motionLayout.m45046a(MotionLayout.EnumC0590h.f2551b);
                            motionLayout.m45046a(MotionLayout.EnumC0590h.f2552c);
                            return true;
                        }
                        motionLayout.setProgress(1.0f);
                        motionLayout.m45037a(true);
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2551b);
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2552c);
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2553d);
                        motionLayout.m45036b();
                        return true;
                    } else if (i == next.f2778c && (next.f2789n == 3 || next.f2789n == 1)) {
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2553d);
                        motionLayout.m45038a(next);
                        if (next.f2789n == 3) {
                            motionLayout.m45048a(BitmapDescriptorFactory.HUE_RED);
                            motionLayout.m45046a(MotionLayout.EnumC0590h.f2551b);
                            motionLayout.m45046a(MotionLayout.EnumC0590h.f2552c);
                            return true;
                        }
                        motionLayout.setProgress(BitmapDescriptorFactory.HUE_RED);
                        motionLayout.m45037a(true);
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2551b);
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2552c);
                        motionLayout.m45046a(MotionLayout.EnumC0590h.f2553d);
                        motionLayout.m45036b();
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: c */
    public final int m44809c() {
        C0629a c0629a = this.f2756c;
        if (c0629a == null) {
            return -1;
        }
        return c0629a.f2778c;
    }

    /* renamed from: d */
    public final Interpolator m44808d() {
        int i = this.f2756c.f2780e;
        if (i != -2) {
            if (i == -1) {
                final C0574c m45078a = C0574c.m45078a(this.f2756c.f2781f);
                return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.p.1
                    @Override // android.animation.TimeInterpolator
                    public final float getInterpolation(float f) {
                        return (float) m45078a.mo45077a(f);
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
                if (i == 5) {
                    return new BounceInterpolator();
                }
                return null;
            }
        }
        return AnimationUtils.loadInterpolator(this.f2754a.getContext(), this.f2756c.f2782g);
    }

    /* renamed from: e */
    public final int m44807e() {
        C0629a c0629a = this.f2756c;
        return c0629a != null ? c0629a.f2783h : this.f2760g;
    }

    /* renamed from: f */
    public final float m44806f() {
        C0629a c0629a = this.f2756c;
        return c0629a != null ? c0629a.f2784i : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: g */
    public final float m44805g() {
        C0629a c0629a = this.f2756c;
        return (c0629a == null || c0629a.f2787l == null) ? BitmapDescriptorFactory.HUE_RED : this.f2756c.f2787l.f2839o;
    }

    /* renamed from: h */
    public final float m44804h() {
        C0629a c0629a = this.f2756c;
        return (c0629a == null || c0629a.f2787l == null) ? BitmapDescriptorFactory.HUE_RED : this.f2756c.f2787l.f2838n;
    }

    /* renamed from: i */
    public final void m44803i() {
        C0629a c0629a = this.f2756c;
        if (c0629a == null || c0629a.f2787l == null) {
            return;
        }
        this.f2756c.f2787l.m44780a();
    }
}
