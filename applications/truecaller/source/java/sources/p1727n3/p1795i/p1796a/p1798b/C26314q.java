package p1727n3.p1795i.p1796a.p1798b;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.p001v4.media.session.MediaSessionCompat;
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
import androidx.constraintlayout.motion.widget.MotionLayout$e;
import androidx.constraintlayout.motion.widget.MotionLayout$i;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1795i.p1796a.p1797a.C26273c;
import p1727n3.p1795i.p1802c.AbstractC26385b;
import p1727n3.p1795i.p1802c.C26389d;
import p1727n3.p1795i.p1802c.C26399h;
/* renamed from: n3.i.a.b.q */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/q.class */
public class C26314q {

    /* renamed from: a */
    public final MotionLayout f73473a;

    /* renamed from: b */
    public C26399h f73474b;

    /* renamed from: c */
    public C26316b f73475c;

    /* renamed from: e */
    public C26316b f73477e;

    /* renamed from: l */
    public MotionEvent f73484l;

    /* renamed from: o */
    public MotionLayout$e f73487o;

    /* renamed from: p */
    public boolean f73488p;

    /* renamed from: q */
    public float f73489q;

    /* renamed from: r */
    public float f73490r;

    /* renamed from: d */
    public ArrayList<C26316b> f73476d = new ArrayList<>();

    /* renamed from: f */
    public ArrayList<C26316b> f73478f = new ArrayList<>();

    /* renamed from: g */
    public SparseArray<C26389d> f73479g = new SparseArray<>();

    /* renamed from: h */
    public HashMap<String, Integer> f73480h = new HashMap<>();

    /* renamed from: i */
    public SparseIntArray f73481i = new SparseIntArray();

    /* renamed from: j */
    public int f73482j = 400;

    /* renamed from: k */
    public int f73483k = 0;

    /* renamed from: m */
    public boolean f73485m = false;

    /* renamed from: n */
    public boolean f73486n = false;

    /* renamed from: n3.i.a.b.q$a */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/q$a.class */
    public class animationInterpolatorC26315a implements Interpolator {

        /* renamed from: a */
        public final /* synthetic */ C26273c f73491a;

        public animationInterpolatorC26315a(C26314q c26314q, C26273c c26273c) {
            this.f73491a = c26273c;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) this.f73491a.mo2232a(f);
        }
    }

    /* renamed from: n3.i.a.b.q$b */
    /* loaded from: classes-dex2jar.jar:n3/i/a/b/q$b.class */
    public static class C26316b {

        /* renamed from: a */
        public int f73492a;

        /* renamed from: b */
        public boolean f73493b;

        /* renamed from: c */
        public int f73494c;

        /* renamed from: d */
        public int f73495d;

        /* renamed from: e */
        public int f73496e;

        /* renamed from: f */
        public String f73497f;

        /* renamed from: g */
        public int f73498g;

        /* renamed from: h */
        public int f73499h;

        /* renamed from: i */
        public float f73500i;

        /* renamed from: j */
        public final C26314q f73501j;

        /* renamed from: k */
        public ArrayList<C26303g> f73502k;

        /* renamed from: l */
        public C26350v f73503l;

        /* renamed from: m */
        public ArrayList<View$OnClickListenerC26317a> f73504m;

        /* renamed from: n */
        public int f73505n;

        /* renamed from: o */
        public boolean f73506o;

        /* renamed from: p */
        public int f73507p;

        /* renamed from: q */
        public int f73508q;

        /* renamed from: r */
        public int f73509r;

        /* renamed from: n3.i.a.b.q$b$a */
        /* loaded from: classes-dex2jar.jar:n3/i/a/b/q$b$a.class */
        public static class View$OnClickListenerC26317a implements View.OnClickListener {

            /* renamed from: a */
            public final C26316b f73510a;

            /* renamed from: b */
            public int f73511b;

            /* renamed from: c */
            public int f73512c;

            public View$OnClickListenerC26317a(Context context, C26316b c26316b, XmlPullParser xmlPullParser) {
                this.f73511b = -1;
                this.f73512c = 17;
                this.f73510a = c26316b;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == C0114R.styleable.OnClick_targetId) {
                        this.f73511b = obtainStyledAttributes.getResourceId(index, this.f73511b);
                    } else if (index == C0114R.styleable.OnClick_clickAction) {
                        this.f73512c = obtainStyledAttributes.getInt(index, this.f73512c);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            /* renamed from: a */
            public void m2172a(MotionLayout motionLayout, int i, C26316b c26316b) {
                int i2 = this.f73511b;
                if (i2 != -1) {
                    motionLayout = motionLayout.findViewById(i2);
                }
                if (motionLayout == null) {
                    return;
                }
                int i3 = c26316b.f73495d;
                int i4 = c26316b.f73494c;
                if (i3 == -1) {
                    motionLayout.setOnClickListener(this);
                    return;
                }
                int i5 = this.f73512c;
                int i6 = i5 & 1;
                boolean z = i6 != 0 && i == i3;
                boolean z2 = (i5 & 256) != 0 && i == i3;
                boolean z3 = i6 != 0 && i == i3;
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
            public void m2171b(MotionLayout motionLayout) {
                View findViewById;
                int i = this.f73511b;
                if (i == -1 || (findViewById = motionLayout.findViewById(i)) == null) {
                    return;
                }
                findViewById.setOnClickListener(null);
            }

            /* JADX WARN: Code restructure failed: missing block: B:47:0x0128, code lost:
                if (r0.x != r0) goto L52;
             */
            /* JADX WARN: Code restructure failed: missing block: B:51:0x0143, code lost:
                if (r0 == r0) goto L52;
             */
            @Override // android.view.View.OnClickListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onClick(android.view.View r6) {
                /*
                    Method dump skipped, instructions count: 445
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1796a.p1798b.C26314q.C26316b.View$OnClickListenerC26317a.onClick(android.view.View):void");
            }
        }

        public C26316b(C26314q c26314q, Context context, XmlPullParser xmlPullParser) {
            this.f73492a = -1;
            this.f73493b = false;
            this.f73494c = -1;
            this.f73495d = -1;
            this.f73496e = 0;
            this.f73497f = null;
            this.f73498g = -1;
            this.f73499h = 400;
            this.f73500i = 0.0f;
            this.f73502k = new ArrayList<>();
            this.f73503l = null;
            this.f73504m = new ArrayList<>();
            this.f73505n = 0;
            this.f73506o = false;
            this.f73507p = -1;
            this.f73508q = 0;
            this.f73509r = 0;
            this.f73499h = c26314q.f73482j;
            this.f73508q = c26314q.f73483k;
            this.f73501j = c26314q;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.Transition);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.Transition_constraintSetEnd) {
                    this.f73494c = obtainStyledAttributes.getResourceId(index, this.f73494c);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f73494c))) {
                        C26389d c26389d = new C26389d();
                        c26389d.m1960k(context, this.f73494c);
                        c26314q.f73479g.append(this.f73494c, c26389d);
                    }
                } else if (index == C0114R.styleable.Transition_constraintSetStart) {
                    this.f73495d = obtainStyledAttributes.getResourceId(index, this.f73495d);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.f73495d))) {
                        C26389d c26389d2 = new C26389d();
                        c26389d2.m1960k(context, this.f73495d);
                        c26314q.f73479g.append(this.f73495d, c26389d2);
                    }
                } else if (index == C0114R.styleable.Transition_motionInterpolator) {
                    int i2 = obtainStyledAttributes.peekValue(index).type;
                    if (i2 == 1) {
                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                        this.f73498g = resourceId;
                        if (resourceId != -1) {
                            this.f73496e = -2;
                        }
                    } else if (i2 == 3) {
                        String string = obtainStyledAttributes.getString(index);
                        this.f73497f = string;
                        if (string.indexOf(StringConstant.SLASH) > 0) {
                            this.f73498g = obtainStyledAttributes.getResourceId(index, -1);
                            this.f73496e = -2;
                        } else {
                            this.f73496e = -1;
                        }
                    } else {
                        this.f73496e = obtainStyledAttributes.getInteger(index, this.f73496e);
                    }
                } else if (index == C0114R.styleable.Transition_duration) {
                    this.f73499h = obtainStyledAttributes.getInt(index, this.f73499h);
                } else if (index == C0114R.styleable.Transition_staggered) {
                    this.f73500i = obtainStyledAttributes.getFloat(index, this.f73500i);
                } else if (index == C0114R.styleable.Transition_autoTransition) {
                    this.f73505n = obtainStyledAttributes.getInteger(index, this.f73505n);
                } else if (index == C0114R.styleable.Transition_android_id) {
                    this.f73492a = obtainStyledAttributes.getResourceId(index, this.f73492a);
                } else if (index == C0114R.styleable.Transition_transitionDisable) {
                    this.f73506o = obtainStyledAttributes.getBoolean(index, this.f73506o);
                } else if (index == C0114R.styleable.Transition_pathMotionArc) {
                    this.f73507p = obtainStyledAttributes.getInteger(index, -1);
                } else if (index == C0114R.styleable.Transition_layoutDuringTransition) {
                    this.f73508q = obtainStyledAttributes.getInteger(index, 0);
                } else if (index == C0114R.styleable.Transition_transitionFlags) {
                    this.f73509r = obtainStyledAttributes.getInteger(index, 0);
                }
            }
            if (this.f73495d == -1) {
                this.f73493b = true;
            }
            obtainStyledAttributes.recycle();
        }

        public C26316b(C26314q c26314q, C26316b c26316b) {
            this.f73492a = -1;
            this.f73493b = false;
            this.f73494c = -1;
            this.f73495d = -1;
            this.f73496e = 0;
            this.f73497f = null;
            this.f73498g = -1;
            this.f73499h = 400;
            this.f73500i = 0.0f;
            this.f73502k = new ArrayList<>();
            this.f73503l = null;
            this.f73504m = new ArrayList<>();
            this.f73505n = 0;
            this.f73506o = false;
            this.f73507p = -1;
            this.f73508q = 0;
            this.f73509r = 0;
            this.f73501j = c26314q;
            if (c26316b != null) {
                this.f73507p = c26316b.f73507p;
                this.f73496e = c26316b.f73496e;
                this.f73497f = c26316b.f73497f;
                this.f73498g = c26316b.f73498g;
                this.f73499h = c26316b.f73499h;
                this.f73502k = c26316b.f73502k;
                this.f73500i = c26316b.f73500i;
                this.f73508q = c26316b.f73508q;
            }
        }
    }

    public C26314q(Context context, MotionLayout motionLayout, int i) {
        boolean z;
        this.f73474b = null;
        this.f73475c = null;
        this.f73477e = null;
        this.f73473a = motionLayout;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            C26316b c26316b = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
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
                                m2178k(context, xml);
                                break;
                            case true:
                                ArrayList<C26316b> arrayList = this.f73476d;
                                c26316b = new C26316b(this, context, xml);
                                arrayList.add(c26316b);
                                if (this.f73475c == null && !c26316b.f73493b) {
                                    this.f73475c = c26316b;
                                    C26350v c26350v = c26316b.f73503l;
                                    if (c26350v != null) {
                                        c26350v.m2159b(this.f73488p);
                                    }
                                }
                                if (c26316b.f73493b) {
                                    if (c26316b.f73494c == -1) {
                                        this.f73477e = c26316b;
                                    } else {
                                        this.f73478f.add(c26316b);
                                    }
                                    this.f73476d.remove(c26316b);
                                }
                                break;
                            case true:
                                if (c26316b == null) {
                                    context.getResources().getResourceEntryName(i);
                                    xml.getLineNumber();
                                }
                                c26316b.f73503l = new C26350v(context, this.f73473a, xml);
                                break;
                            case true:
                                c26316b.f73504m.add(new C26316b.View$OnClickListenerC26317a(context, c26316b, xml));
                                break;
                            case true:
                                this.f73474b = new C26399h(context, xml);
                                break;
                            case true:
                                m2179j(context, xml);
                                break;
                            case true:
                                c26316b.f73502k.add(new C26303g(context, xml));
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
        SparseArray<C26389d> sparseArray = this.f73479g;
        int i2 = C0114R.C0116id.motion_base;
        sparseArray.put(i2, new C26389d());
        this.f73480h.put("motion_base", Integer.valueOf(i2));
    }

    /* renamed from: a */
    public boolean m2188a(MotionLayout motionLayout, int i) {
        MotionLayout$i motionLayout$i = MotionLayout$i.FINISHED;
        MotionLayout$i motionLayout$i2 = MotionLayout$i.MOVING;
        MotionLayout$i motionLayout$i3 = MotionLayout$i.SETUP;
        if (this.f73487o != null) {
            return false;
        }
        Iterator<C26316b> it = this.f73476d.iterator();
        while (it.hasNext()) {
            C26316b next = it.next();
            int i2 = next.f73505n;
            if (i2 != 0 && this.f73475c != next) {
                if (i == next.f73495d && (i2 == 4 || i2 == 2)) {
                    motionLayout.setState(motionLayout$i);
                    motionLayout.setTransition(next);
                    if (next.f73505n == 4) {
                        motionLayout.f1(1.0f);
                        motionLayout.setState(motionLayout$i3);
                        motionLayout.setState(motionLayout$i2);
                        return true;
                    }
                    motionLayout.setProgress(1.0f);
                    motionLayout.g1(true);
                    motionLayout.setState(motionLayout$i3);
                    motionLayout.setState(motionLayout$i2);
                    motionLayout.setState(motionLayout$i);
                    motionLayout.m1();
                    return true;
                } else if (i == next.f73494c && (i2 == 3 || i2 == 1)) {
                    motionLayout.setState(motionLayout$i);
                    motionLayout.setTransition(next);
                    if (next.f73505n == 3) {
                        motionLayout.f1(0.0f);
                        motionLayout.setState(motionLayout$i3);
                        motionLayout.setState(motionLayout$i2);
                        return true;
                    }
                    motionLayout.setProgress(0.0f);
                    motionLayout.g1(true);
                    motionLayout.setState(motionLayout$i3);
                    motionLayout.setState(motionLayout$i2);
                    motionLayout.setState(motionLayout$i);
                    motionLayout.m1();
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    public C26389d m2187b(int i) {
        C26389d c26389d;
        C26399h c26399h = this.f73474b;
        int i2 = i;
        if (c26399h != null) {
            int m1944a = c26399h.m1944a(i, -1, -1);
            i2 = i;
            if (m1944a != -1) {
                i2 = m1944a;
            }
        }
        if (this.f73479g.get(i2) == null) {
            MediaSessionCompat.m43219m0(this.f73473a.getContext(), i2);
            SparseArray<C26389d> sparseArray = this.f73479g;
            c26389d = sparseArray.get(sparseArray.keyAt(0));
        } else {
            c26389d = this.f73479g.get(i2);
        }
        return c26389d;
    }

    /* renamed from: c */
    public int m2186c() {
        C26316b c26316b = this.f73475c;
        return c26316b != null ? c26316b.f73499h : this.f73482j;
    }

    /* renamed from: d */
    public int m2185d() {
        C26316b c26316b = this.f73475c;
        if (c26316b == null) {
            return -1;
        }
        return c26316b.f73494c;
    }

    /* renamed from: e */
    public final int m2184e(Context context, String str) {
        int i;
        if (str.contains(StringConstant.SLASH)) {
            i = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
        } else {
            i = -1;
        }
        int i2 = i;
        if (i == -1) {
            i2 = i;
            if (str.length() > 1) {
                i2 = Integer.parseInt(str.substring(1));
            }
        }
        return i2;
    }

    /* renamed from: f */
    public Interpolator m2183f() {
        C26316b c26316b = this.f73475c;
        int i = c26316b.f73496e;
        if (i != -2) {
            if (i == -1) {
                return new animationInterpolatorC26315a(this, C26273c.m2233c(c26316b.f73497f));
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
        return AnimationUtils.loadInterpolator(this.f73473a.getContext(), this.f73475c.f73498g);
    }

    /* renamed from: g */
    public void m2182g(C26310m c26310m) {
        C26316b c26316b = this.f73475c;
        if (c26316b != null) {
            Iterator<C26303g> it = c26316b.f73502k.iterator();
            while (it.hasNext()) {
                it.next().m2213a(c26310m);
            }
            return;
        }
        C26316b c26316b2 = this.f73477e;
        if (c26316b2 == null) {
            return;
        }
        Iterator<C26303g> it2 = c26316b2.f73502k.iterator();
        while (it2.hasNext()) {
            it2.next().m2213a(c26310m);
        }
    }

    /* renamed from: h */
    public float m2181h() {
        C26350v c26350v;
        C26316b c26316b = this.f73475c;
        if (c26316b == null || (c26350v = c26316b.f73503l) == null) {
            return 0.0f;
        }
        return c26350v.f73555q;
    }

    /* renamed from: i */
    public int m2180i() {
        C26316b c26316b = this.f73475c;
        if (c26316b == null) {
            return -1;
        }
        return c26316b.f73495d;
    }

    /* renamed from: j */
    public final void m2179j(Context context, XmlPullParser xmlPullParser) {
        C26389d c26389d = new C26389d();
        c26389d.f73886b = false;
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < attributeCount; i3++) {
            String attributeName = xmlPullParser.getAttributeName(i3);
            String attributeValue = xmlPullParser.getAttributeValue(i3);
            attributeName.hashCode();
            if (attributeName.equals("deriveConstraintsFrom")) {
                i2 = m2184e(context, attributeValue);
            } else if (attributeName.equals("id")) {
                i = m2184e(context, attributeValue);
                HashMap<String, Integer> hashMap = this.f73480h;
                int indexOf = attributeValue.indexOf(47);
                if (indexOf >= 0) {
                    attributeValue = attributeValue.substring(indexOf + 1);
                }
                hashMap.put(attributeValue, Integer.valueOf(i));
            }
        }
        if (i != -1) {
            int i4 = this.f73473a.S;
            c26389d.m1959l(context, xmlPullParser);
            if (i2 != -1) {
                this.f73481i.put(i, i2);
            }
            this.f73479g.put(i, c26389d);
        }
    }

    /* renamed from: k */
    public final void m2178k(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0114R.styleable.MotionScene_defaultDuration) {
                this.f73482j = obtainStyledAttributes.getInt(index, this.f73482j);
            } else if (index == C0114R.styleable.MotionScene_layoutDuringTransition) {
                this.f73483k = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: l */
    public final void m2177l(int i) {
        int i2 = this.f73481i.get(i);
        if (i2 > 0) {
            m2177l(this.f73481i.get(i));
            C26389d c26389d = this.f73479g.get(i);
            C26389d c26389d2 = this.f73479g.get(i2);
            if (c26389d2 == null) {
                MediaSessionCompat.m43219m0(this.f73473a.getContext(), i2);
                return;
            }
            Objects.requireNonNull(c26389d);
            for (Integer num : c26389d2.f73887c.keySet()) {
                int intValue = num.intValue();
                C26389d.C26390a c26390a = c26389d2.f73887c.get(num);
                if (!c26389d.f73887c.containsKey(Integer.valueOf(intValue))) {
                    c26389d.f73887c.put(Integer.valueOf(intValue), new C26389d.C26390a());
                }
                C26389d.C26390a c26390a2 = c26389d.f73887c.get(Integer.valueOf(intValue));
                C26389d.C26391b c26391b = c26390a2.f73891d;
                if (!c26391b.f73923b) {
                    c26391b.m1953a(c26390a.f73891d);
                }
                C26389d.C26393d c26393d = c26390a2.f73889b;
                if (!c26393d.f73965a) {
                    c26393d.m1949a(c26390a.f73889b);
                }
                C26389d.C26394e c26394e = c26390a2.f73892e;
                if (!c26394e.f73971a) {
                    c26394e.m1947a(c26390a.f73892e);
                }
                C26389d.C26392c c26392c = c26390a2.f73890c;
                if (!c26392c.f73958a) {
                    c26392c.m1951a(c26390a.f73890c);
                }
                for (String str : c26390a.f73893f.keySet()) {
                    if (!c26390a2.f73893f.containsKey(str)) {
                        c26390a2.f73893f.put(str, c26390a.f73893f.get(str));
                    }
                }
            }
            this.f73481i.put(i, -1);
        }
    }

    /* renamed from: m */
    public void m2176m(MotionLayout motionLayout) {
        boolean z;
        for (int i = 0; i < this.f73479g.size(); i++) {
            int keyAt = this.f73479g.keyAt(i);
            int i2 = this.f73481i.get(keyAt);
            int size = this.f73481i.size();
            while (true) {
                if (i2 <= 0) {
                    z = false;
                    break;
                } else if (i2 == keyAt) {
                    z = true;
                    break;
                } else if (size < 0) {
                    z = true;
                    break;
                } else {
                    i2 = this.f73481i.get(i2);
                    size--;
                }
            }
            if (z) {
                return;
            }
            m2177l(keyAt);
        }
        for (int i3 = 0; i3 < this.f73479g.size(); i3++) {
            C26389d valueAt = this.f73479g.valueAt(i3);
            Objects.requireNonNull(valueAt);
            int childCount = motionLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = motionLayout.getChildAt(i4);
                ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) childAt.getLayoutParams();
                int id = childAt.getId();
                if (valueAt.f73886b && id == -1) {
                    throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
                }
                if (!valueAt.f73887c.containsKey(Integer.valueOf(id))) {
                    valueAt.f73887c.put(Integer.valueOf(id), new C26389d.C26390a());
                }
                C26389d.C26390a c26390a = valueAt.f73887c.get(Integer.valueOf(id));
                if (!c26390a.f73891d.f73923b) {
                    c26390a.m1955b(id, c0111a);
                    if (childAt instanceof AbstractC26385b) {
                        c26390a.f73891d.f73930e0 = ((AbstractC26385b) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            C26389d.C26391b c26391b = c26390a.f73891d;
                            c26391b.f73940j0 = barrier.f577k.K0;
                            c26391b.f73924b0 = barrier.getType();
                            c26390a.f73891d.f73926c0 = barrier.getMargin();
                        }
                    }
                    c26390a.f73891d.f73923b = true;
                }
                C26389d.C26393d c26393d = c26390a.f73889b;
                if (!c26393d.f73965a) {
                    c26393d.f73966b = childAt.getVisibility();
                    c26390a.f73889b.f73968d = childAt.getAlpha();
                    c26390a.f73889b.f73965a = true;
                }
                C26389d.C26394e c26394e = c26390a.f73892e;
                if (!c26394e.f73971a) {
                    c26394e.f73971a = true;
                    c26394e.f73972b = childAt.getRotation();
                    c26390a.f73892e.f73973c = childAt.getRotationX();
                    c26390a.f73892e.f73974d = childAt.getRotationY();
                    c26390a.f73892e.f73975e = childAt.getScaleX();
                    c26390a.f73892e.f73976f = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != PlaceLikelihood.LIKELIHOOD_MIN_VALUE || pivotY != PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                        C26389d.C26394e c26394e2 = c26390a.f73892e;
                        c26394e2.f73977g = pivotX;
                        c26394e2.f73978h = pivotY;
                    }
                    c26390a.f73892e.f73979i = childAt.getTranslationX();
                    c26390a.f73892e.f73980j = childAt.getTranslationY();
                    c26390a.f73892e.f73981k = childAt.getTranslationZ();
                    C26389d.C26394e c26394e3 = c26390a.f73892e;
                    if (c26394e3.f73982l) {
                        c26394e3.f73983m = childAt.getElevation();
                    }
                }
            }
        }
    }

    /* renamed from: n */
    public void m2175n(boolean z) {
        C26350v c26350v;
        this.f73488p = z;
        C26316b c26316b = this.f73475c;
        if (c26316b == null || (c26350v = c26316b.f73503l) == null) {
            return;
        }
        c26350v.m2159b(z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0031, code lost:
        if (r10 != (-1)) goto L11;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m2174o(int r6, int r7) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1796a.p1798b.C26314q.m2174o(int, int):void");
    }

    /* renamed from: p */
    public boolean m2173p() {
        Iterator<C26316b> it = this.f73476d.iterator();
        do {
            boolean z = true;
            if (!it.hasNext()) {
                C26316b c26316b = this.f73475c;
                if (c26316b == null || c26316b.f73503l == null) {
                    z = false;
                }
                return z;
            }
        } while (it.next().f73503l == null);
        return true;
    }
}
