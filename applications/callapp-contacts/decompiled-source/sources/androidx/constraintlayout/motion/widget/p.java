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
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.c;
import androidx.constraintlayout.widget.e;
import androidx.constraintlayout.widget.f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    final MotionLayout f1529a;
    float i;
    float j;
    private MotionEvent p;
    private MotionLayout.d s;
    private boolean t;

    /* renamed from: b  reason: collision with root package name */
    f f1530b = null;

    /* renamed from: c  reason: collision with root package name */
    a f1531c = null;
    private boolean k = false;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<a> f1532d = new ArrayList<>();
    private a l = null;
    private ArrayList<a> m = new ArrayList<>();
    SparseArray<c> e = new SparseArray<>();
    private HashMap<String, Integer> n = new HashMap<>();
    SparseIntArray f = new SparseIntArray();
    private boolean o = false;
    int g = 400;
    int h = 0;
    private boolean q = false;
    private boolean r = false;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f1535a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1536b;

        /* renamed from: c  reason: collision with root package name */
        int f1537c;

        /* renamed from: d  reason: collision with root package name */
        int f1538d;
        int e;
        String f;
        int g;
        int h;
        float i;
        final p j;
        ArrayList<g> k;
        s l;
        ArrayList<View$OnClickListenerC0035a> m;
        int n;
        boolean o;
        int p;
        int q;
        int r;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.constraintlayout.motion.widget.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/p$a$a.class */
        public static final class View$OnClickListenerC0035a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            int f1539a;

            /* renamed from: b  reason: collision with root package name */
            int f1540b;

            /* renamed from: c  reason: collision with root package name */
            private final a f1541c;

            public View$OnClickListenerC0035a(Context context, a aVar, XmlPullParser xmlPullParser) {
                this.f1539a = -1;
                this.f1540b = 17;
                this.f1541c = aVar;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == e.b.OnClick_targetId) {
                        this.f1539a = obtainStyledAttributes.getResourceId(index, this.f1539a);
                    } else if (index == e.b.OnClick_clickAction) {
                        this.f1540b = obtainStyledAttributes.getInt(index, this.f1540b);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            public final void a(MotionLayout motionLayout) {
                int i = this.f1539a;
                if (i != -1) {
                    View findViewById = motionLayout.findViewById(i);
                    if (findViewById == null) {
                        Log.e("MotionScene", " (*)  could not find id " + this.f1539a);
                        return;
                    }
                    findViewById.setOnClickListener(null);
                }
            }

            public final void a(MotionLayout motionLayout, int i, a aVar) {
                int i2 = this.f1539a;
                View view = motionLayout;
                if (i2 != -1) {
                    view = motionLayout.findViewById(i2);
                }
                if (view == null) {
                    Log.e("MotionScene", "OnClick could not find id " + this.f1539a);
                    return;
                }
                int i3 = aVar.f1538d;
                int i4 = aVar.f1537c;
                if (i3 == -1) {
                    view.setOnClickListener(this);
                    return;
                }
                int i5 = this.f1540b;
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
                if ((z3 | z | z2 | z4) || z5) {
                    view.setOnClickListener(this);
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:48:0x0140, code lost:
                if (r0.f != r0) goto L_0x011e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:52:0x0157, code lost:
                if (r0.f == r0) goto L_0x011e;
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
                throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.p.a.View$OnClickListenerC0035a.onClick(android.view.View):void");
            }
        }

        public a(int i, p pVar, int i2, int i3) {
            this.f1535a = -1;
            this.f1536b = false;
            this.f1537c = -1;
            this.f1538d = -1;
            this.e = 0;
            this.f = null;
            this.g = -1;
            this.h = 400;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.f1535a = i;
            this.j = pVar;
            this.f1538d = i2;
            this.f1537c = i3;
            this.h = pVar.g;
            this.q = pVar.h;
        }

        a(p pVar, Context context, XmlPullParser xmlPullParser) {
            this.f1535a = -1;
            this.f1536b = false;
            this.f1537c = -1;
            this.f1538d = -1;
            this.e = 0;
            this.f = null;
            this.g = -1;
            this.h = 400;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.h = pVar.g;
            this.q = pVar.h;
            this.j = pVar;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.Transition);
            a(pVar, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        a(p pVar, a aVar) {
            this.f1535a = -1;
            this.f1536b = false;
            this.f1537c = -1;
            this.f1538d = -1;
            this.e = 0;
            this.f = null;
            this.g = -1;
            this.h = 400;
            this.i = BitmapDescriptorFactory.HUE_RED;
            this.k = new ArrayList<>();
            this.l = null;
            this.m = new ArrayList<>();
            this.n = 0;
            this.o = false;
            this.p = -1;
            this.q = 0;
            this.r = 0;
            this.j = pVar;
            if (aVar != null) {
                this.p = aVar.p;
                this.e = aVar.e;
                this.f = aVar.f;
                this.g = aVar.g;
                this.h = aVar.h;
                this.k = aVar.k;
                this.i = aVar.i;
                this.q = aVar.q;
            }
        }

        private void a(p pVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == e.b.Transition_constraintSetEnd) {
                    this.f1537c = typedArray.getResourceId(index, this.f1537c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f1537c))) {
                        c cVar = new c();
                        cVar.b(context, this.f1537c);
                        pVar.e.append(this.f1537c, cVar);
                    }
                } else if (index == e.b.Transition_constraintSetStart) {
                    this.f1538d = typedArray.getResourceId(index, this.f1538d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f1538d))) {
                        c cVar2 = new c();
                        cVar2.b(context, this.f1538d);
                        pVar.e.append(this.f1538d, cVar2);
                    }
                } else if (index == e.b.Transition_motionInterpolator) {
                    TypedValue peekValue = typedArray.peekValue(index);
                    if (peekValue.type == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.g = resourceId;
                        if (resourceId != -1) {
                            this.e = -2;
                        }
                    } else if (peekValue.type == 3) {
                        String string = typedArray.getString(index);
                        this.f = string;
                        if (string.indexOf("/") > 0) {
                            this.g = typedArray.getResourceId(index, -1);
                            this.e = -2;
                        } else {
                            this.e = -1;
                        }
                    } else {
                        this.e = typedArray.getInteger(index, this.e);
                    }
                } else if (index == e.b.Transition_duration) {
                    this.h = typedArray.getInt(index, this.h);
                } else if (index == e.b.Transition_staggered) {
                    this.i = typedArray.getFloat(index, this.i);
                } else if (index == e.b.Transition_autoTransition) {
                    this.n = typedArray.getInteger(index, this.n);
                } else if (index == e.b.Transition_android_id) {
                    this.f1535a = typedArray.getResourceId(index, this.f1535a);
                } else if (index == e.b.Transition_transitionDisable) {
                    this.o = typedArray.getBoolean(index, this.o);
                } else if (index == e.b.Transition_pathMotionArc) {
                    this.p = typedArray.getInteger(index, -1);
                } else if (index == e.b.Transition_layoutDuringTransition) {
                    this.q = typedArray.getInteger(index, 0);
                } else if (index == e.b.Transition_transitionFlags) {
                    this.r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f1538d == -1) {
                this.f1536b = true;
            }
        }

        public final boolean a() {
            return !this.o;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Context context, MotionLayout motionLayout, int i) {
        this.f1529a = motionLayout;
        a(context, i);
        this.e.put(e.a.motion_base, new c());
        this.n.put("motion_base", Integer.valueOf(e.a.motion_base));
    }

    public p(MotionLayout motionLayout) {
        this.f1529a = motionLayout;
    }

    private int a(Context context, String str) {
        int i;
        if (str.contains("/")) {
            int identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            i = identifier;
            if (this.o) {
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
        if (r11 != (-1)) goto L_0x0026;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.constraintlayout.motion.widget.p.a a(int r6, float r7, float r8, android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.p.a(int, float, float, android.view.MotionEvent):androidx.constraintlayout.motion.widget.p$a");
    }

    private void a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        a aVar = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c2 = 1;
                if (eventType != 1) {
                    if (eventType != 0) {
                        if (eventType == 2) {
                            String name = xml.getName();
                            if (this.o) {
                                System.out.println("parsing = ".concat(String.valueOf(name)));
                            }
                            switch (name.hashCode()) {
                                case -1349929691:
                                    if (name.equals("ConstraintSet")) {
                                        c2 = 5;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case -1239391468:
                                    if (name.equals("KeyFrameSet")) {
                                        c2 = 6;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 269306229:
                                    if (name.equals("Transition")) {
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 312750793:
                                    if (name.equals("OnClick")) {
                                        c2 = 3;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 327855227:
                                    if (name.equals("OnSwipe")) {
                                        c2 = 2;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 793277014:
                                    if (name.equals("MotionScene")) {
                                        c2 = 0;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                case 1382829617:
                                    if (name.equals("StateSet")) {
                                        c2 = 4;
                                        break;
                                    }
                                    c2 = 65535;
                                    break;
                                default:
                                    c2 = 65535;
                                    break;
                            }
                            switch (c2) {
                                case 0:
                                    a(context, xml);
                                    break;
                                case 1:
                                    ArrayList<a> arrayList = this.f1532d;
                                    aVar = new a(this, context, xml);
                                    arrayList.add(aVar);
                                    if (this.f1531c == null && !aVar.f1536b) {
                                        this.f1531c = aVar;
                                        if (aVar.l != null) {
                                            this.f1531c.l.a(this.t);
                                        }
                                    }
                                    if (aVar.f1536b) {
                                        if (aVar.f1537c == -1) {
                                            this.l = aVar;
                                        } else {
                                            this.m.add(aVar);
                                        }
                                        this.f1532d.remove(aVar);
                                    }
                                    break;
                                case 2:
                                    if (aVar == null) {
                                        String resourceEntryName = context.getResources().getResourceEntryName(i);
                                        int lineNumber = xml.getLineNumber();
                                        StringBuilder sb = new StringBuilder(" OnSwipe (");
                                        sb.append(resourceEntryName);
                                        sb.append(".xml:");
                                        sb.append(lineNumber);
                                        sb.append(")");
                                    }
                                    aVar.l = new s(context, this.f1529a, xml);
                                    break;
                                case 3:
                                    aVar.m.add(new a.View$OnClickListenerC0035a(context, aVar, xml));
                                    break;
                                case 4:
                                    this.f1530b = new f(context, xml);
                                    break;
                                case 5:
                                    b(context, xml);
                                    break;
                                case 6:
                                    aVar.k.add(new g(context, xml));
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

    private void a(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == e.b.MotionScene_defaultDuration) {
                this.g = obtainStyledAttributes.getInt(index, this.g);
            } else if (index == e.b.MotionScene_layoutDuringTransition) {
                this.h = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private void b(Context context, XmlPullParser xmlPullParser) {
        c cVar = new c();
        cVar.f1622b = false;
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = xmlPullParser.getAttributeName(i3);
            String attributeValue = xmlPullParser.getAttributeValue(i3);
            if (this.o) {
                System.out.println("id string = ".concat(String.valueOf(attributeValue)));
            }
            attributeName.hashCode();
            if (attributeName.equals("deriveConstraintsFrom")) {
                i2 = a(context, attributeValue);
            } else if (attributeName.equals("id")) {
                i = a(context, attributeValue);
                HashMap<String, Integer> hashMap = this.n;
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
            if (this.f1529a.p != 0) {
                cVar.f1621a = true;
            }
            cVar.a(context, xmlPullParser);
            if (i2 != -1) {
                this.f.put(i, i2);
            }
            this.e.put(i, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c a(int i) {
        if (this.o) {
            System.out.println("id ".concat(String.valueOf(i)));
            PrintStream printStream = System.out;
            printStream.println("size " + this.e.size());
        }
        f fVar = this.f1530b;
        int i2 = i;
        if (fVar != null) {
            int a2 = fVar.a(i, -1, -1);
            i2 = i;
            if (a2 != -1) {
                i2 = a2;
            }
        }
        if (this.e.get(i2) != null) {
            return this.e.get(i2);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + androidx.constraintlayout.motion.widget.a.a(this.f1529a.getContext(), i2) + " In MotionScene");
        SparseArray<c> sparseArray = this.e;
        return sparseArray.get(sparseArray.keyAt(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.p.a(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(MotionEvent motionEvent, int i, MotionLayout motionLayout) {
        MotionLayout.d dVar;
        RectF rectF;
        View findViewById;
        MotionEvent motionEvent2;
        RectF rectF2 = new RectF();
        if (this.s == null) {
            this.s = MotionLayout.a();
        }
        this.s.a(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.i = motionEvent.getRawX();
                this.j = motionEvent.getRawY();
                this.p = motionEvent;
                this.q = false;
                if (this.f1531c.l != null) {
                    s sVar = this.f1531c.l;
                    MotionLayout motionLayout2 = this.f1529a;
                    if (sVar.f1553d == -1 || (findViewById = motionLayout2.findViewById(sVar.f1553d)) == null) {
                        rectF = null;
                    } else {
                        rectF2.set(findViewById.getLeft(), findViewById.getTop(), findViewById.getRight(), findViewById.getBottom());
                        rectF = rectF2;
                    }
                    if (rectF == null || rectF.contains(this.p.getX(), this.p.getY())) {
                        RectF a2 = this.f1531c.l.a(this.f1529a, rectF2);
                        if (a2 == null || a2.contains(this.p.getX(), this.p.getY())) {
                            this.r = false;
                        } else {
                            this.r = true;
                        }
                        s sVar2 = this.f1531c.l;
                        float f = this.i;
                        float f2 = this.j;
                        sVar2.k = f;
                        sVar2.l = f2;
                        return;
                    }
                    this.p = null;
                    this.q = true;
                    return;
                }
                return;
            } else if (action == 2 && !this.q) {
                float rawY = motionEvent.getRawY() - this.j;
                float rawX = motionEvent.getRawX() - this.i;
                if ((rawX != 0.0d || rawY != 0.0d) && (motionEvent2 = this.p) != null) {
                    a a3 = a(i, rawX, rawY, motionEvent2);
                    if (a3 != null) {
                        motionLayout.a(a3);
                        RectF a4 = this.f1531c.l.a(this.f1529a, rectF2);
                        this.r = a4 != null && !a4.contains(this.p.getX(), this.p.getY());
                        s sVar3 = this.f1531c.l;
                        float f3 = this.i;
                        float f4 = this.j;
                        sVar3.k = f3;
                        sVar3.l = f4;
                        sVar3.i = false;
                    }
                } else {
                    return;
                }
            }
        }
        if (!this.q) {
            a aVar = this.f1531c;
            if (!(aVar == null || aVar.l == null || this.r)) {
                s sVar4 = this.f1531c.l;
                MotionLayout.d dVar2 = this.s;
                dVar2.a(motionEvent);
                int action2 = motionEvent.getAction();
                if (action2 == 0) {
                    sVar4.k = motionEvent.getRawX();
                    sVar4.l = motionEvent.getRawY();
                    sVar4.i = false;
                } else if (action2 == 1) {
                    sVar4.i = false;
                    dVar2.b();
                    float c2 = dVar2.c();
                    float d2 = dVar2.d();
                    float f5 = sVar4.m.l;
                    if (sVar4.f1551b != -1) {
                        sVar4.m.a(sVar4.f1551b, f5, sVar4.f, sVar4.e, sVar4.j);
                    } else {
                        float min = Math.min(sVar4.m.getWidth(), sVar4.m.getHeight());
                        sVar4.j[1] = sVar4.h * min;
                        sVar4.j[0] = min * sVar4.g;
                    }
                    float f6 = sVar4.g != BitmapDescriptorFactory.HUE_RED ? c2 / sVar4.j[0] : d2 / sVar4.j[1];
                    float f7 = !Float.isNaN(f6) ? (f6 / 3.0f) + f5 : f5;
                    if (f7 != BitmapDescriptorFactory.HUE_RED && f7 != 1.0f && sVar4.f1550a != 3) {
                        sVar4.m.a(sVar4.f1550a, ((double) f7) < 0.5d ? BitmapDescriptorFactory.HUE_RED : 1.0f, f6);
                        if (BitmapDescriptorFactory.HUE_RED >= f5 || 1.0f <= f5) {
                            sVar4.m.a(MotionLayout.h.f1491d);
                        }
                    } else if (BitmapDescriptorFactory.HUE_RED >= f7 || 1.0f <= f7) {
                        sVar4.m.a(MotionLayout.h.f1491d);
                    }
                } else if (action2 == 2) {
                    float rawY2 = motionEvent.getRawY() - sVar4.l;
                    float rawX2 = motionEvent.getRawX() - sVar4.k;
                    if (Math.abs((sVar4.g * rawX2) + (sVar4.h * rawY2)) > sVar4.s || sVar4.i) {
                        float f8 = sVar4.m.l;
                        if (!sVar4.i) {
                            sVar4.i = true;
                            sVar4.m.setProgress(f8);
                        }
                        if (sVar4.f1551b != -1) {
                            sVar4.m.a(sVar4.f1551b, f8, sVar4.f, sVar4.e, sVar4.j);
                        } else {
                            float min2 = Math.min(sVar4.m.getWidth(), sVar4.m.getHeight());
                            sVar4.j[1] = sVar4.h * min2;
                            sVar4.j[0] = min2 * sVar4.g;
                        }
                        if (Math.abs(((sVar4.g * sVar4.j[0]) + (sVar4.h * sVar4.j[1])) * sVar4.q) < 0.01d) {
                            sVar4.j[0] = 0.01f;
                            sVar4.j[1] = 0.01f;
                        }
                        float max = Math.max(Math.min(f8 + (sVar4.g != BitmapDescriptorFactory.HUE_RED ? rawX2 / sVar4.j[0] : rawY2 / sVar4.j[1]), 1.0f), (float) BitmapDescriptorFactory.HUE_RED);
                        if (max != sVar4.m.l) {
                            sVar4.m.setProgress(max);
                            dVar2.b();
                            sVar4.m.f1466d = sVar4.g != BitmapDescriptorFactory.HUE_RED ? dVar2.c() / sVar4.j[0] : dVar2.d() / sVar4.j[1];
                        } else {
                            sVar4.m.f1466d = BitmapDescriptorFactory.HUE_RED;
                        }
                        sVar4.k = motionEvent.getRawX();
                        sVar4.l = motionEvent.getRawY();
                    }
                }
            }
            this.i = motionEvent.getRawX();
            this.j = motionEvent.getRawY();
            if (motionEvent.getAction() == 1 && (dVar = this.s) != null) {
                dVar.a();
                this.s = null;
                if (motionLayout.f != -1) {
                    b(motionLayout, motionLayout.f);
                }
            }
        }
    }

    public final void a(MotionLayout motionLayout, int i) {
        Iterator<a> it2 = this.f1532d.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (next.m.size() > 0) {
                Iterator<a.View$OnClickListenerC0035a> it3 = next.m.iterator();
                while (it3.hasNext()) {
                    it3.next().a(motionLayout);
                }
            }
        }
        Iterator<a> it4 = this.m.iterator();
        while (it4.hasNext()) {
            a next2 = it4.next();
            if (next2.m.size() > 0) {
                Iterator<a.View$OnClickListenerC0035a> it5 = next2.m.iterator();
                while (it5.hasNext()) {
                    it5.next().a(motionLayout);
                }
            }
        }
        Iterator<a> it6 = this.f1532d.iterator();
        while (it6.hasNext()) {
            a next3 = it6.next();
            if (next3.m.size() > 0) {
                Iterator<a.View$OnClickListenerC0035a> it7 = next3.m.iterator();
                while (it7.hasNext()) {
                    it7.next().a(motionLayout, i, next3);
                }
            }
        }
        Iterator<a> it8 = this.m.iterator();
        while (it8.hasNext()) {
            a next4 = it8.next();
            if (next4.m.size() > 0) {
                Iterator<a.View$OnClickListenerC0035a> it9 = next4.m.iterator();
                while (it9.hasNext()) {
                    it9.next().a(motionLayout, i, next4);
                }
            }
        }
    }

    public final void a(m mVar) {
        a aVar = this.f1531c;
        if (aVar == null) {
            a aVar2 = this.l;
            if (aVar2 != null) {
                Iterator<g> it2 = aVar2.k.iterator();
                while (it2.hasNext()) {
                    it2.next().a(mVar);
                }
                return;
            }
            return;
        }
        Iterator<g> it3 = aVar.k.iterator();
        while (it3.hasNext()) {
            it3.next().a(mVar);
        }
    }

    public final void a(a aVar) {
        this.f1531c = aVar;
        if (aVar != null && aVar.l != null) {
            this.f1531c.l.a(this.t);
        }
    }

    public final void a(boolean z) {
        this.t = z;
        a aVar = this.f1531c;
        if (aVar != null && aVar.l != null) {
            this.f1531c.l.a(this.t);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        Iterator<a> it2 = this.f1532d.iterator();
        while (it2.hasNext()) {
            if (it2.next().l != null) {
                return true;
            }
        }
        a aVar = this.f1531c;
        return (aVar == null || aVar.l == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        a aVar = this.f1531c;
        if (aVar == null) {
            return -1;
        }
        return aVar.f1538d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i) {
        int i2 = this.f.get(i);
        if (i2 > 0) {
            b(this.f.get(i));
            c cVar = this.e.get(i);
            c cVar2 = this.e.get(i2);
            if (cVar2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + androidx.constraintlayout.motion.widget.a.a(this.f1529a.getContext(), i2));
                return;
            }
            cVar.a(cVar2);
            this.f.put(i, -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(MotionLayout motionLayout, int i) {
        if ((this.s != null) || this.k) {
            return false;
        }
        Iterator<a> it2 = this.f1532d.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            if (!(next.n == 0 || this.f1531c == next)) {
                if (i == next.f1538d && (next.n == 4 || next.n == 2)) {
                    motionLayout.a(MotionLayout.h.f1491d);
                    motionLayout.a(next);
                    if (next.n == 4) {
                        motionLayout.a(1.0f);
                        motionLayout.a(MotionLayout.h.f1489b);
                        motionLayout.a(MotionLayout.h.f1490c);
                        return true;
                    }
                    motionLayout.setProgress(1.0f);
                    motionLayout.a(true);
                    motionLayout.a(MotionLayout.h.f1489b);
                    motionLayout.a(MotionLayout.h.f1490c);
                    motionLayout.a(MotionLayout.h.f1491d);
                    motionLayout.b();
                    return true;
                } else if (i == next.f1537c && (next.n == 3 || next.n == 1)) {
                    motionLayout.a(MotionLayout.h.f1491d);
                    motionLayout.a(next);
                    if (next.n == 3) {
                        motionLayout.a(BitmapDescriptorFactory.HUE_RED);
                        motionLayout.a(MotionLayout.h.f1489b);
                        motionLayout.a(MotionLayout.h.f1490c);
                        return true;
                    }
                    motionLayout.setProgress(BitmapDescriptorFactory.HUE_RED);
                    motionLayout.a(true);
                    motionLayout.a(MotionLayout.h.f1489b);
                    motionLayout.a(MotionLayout.h.f1490c);
                    motionLayout.a(MotionLayout.h.f1491d);
                    motionLayout.b();
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int c() {
        a aVar = this.f1531c;
        if (aVar == null) {
            return -1;
        }
        return aVar.f1537c;
    }

    public final Interpolator d() {
        int i = this.f1531c.e;
        if (i == -2) {
            return AnimationUtils.loadInterpolator(this.f1529a.getContext(), this.f1531c.g);
        }
        if (i == -1) {
            final androidx.constraintlayout.motion.a.c a2 = androidx.constraintlayout.motion.a.c.a(this.f1531c.f);
            return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.p.1
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f) {
                    return (float) a2.a(f);
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

    public final int e() {
        a aVar = this.f1531c;
        return aVar != null ? aVar.h : this.g;
    }

    public final float f() {
        a aVar = this.f1531c;
        return aVar != null ? aVar.i : BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float g() {
        a aVar = this.f1531c;
        return (aVar == null || aVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.f1531c.l.o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final float h() {
        a aVar = this.f1531c;
        return (aVar == null || aVar.l == null) ? BitmapDescriptorFactory.HUE_RED : this.f1531c.l.n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        a aVar = this.f1531c;
        if (aVar != null && aVar.l != null) {
            this.f1531c.l.a();
        }
    }
}
