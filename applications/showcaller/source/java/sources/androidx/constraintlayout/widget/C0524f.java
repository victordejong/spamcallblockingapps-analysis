package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f.class */
public class C0524f {

    /* renamed from: a */
    int f2719a = -1;

    /* renamed from: b */
    int f2720b = -1;

    /* renamed from: c */
    int f2721c = -1;

    /* renamed from: d */
    private SparseArray<C0525a> f2722d = new SparseArray<>();

    /* renamed from: e */
    private SparseArray<C0515b> f2723e = new SparseArray<>();

    /* renamed from: androidx.constraintlayout.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$a.class */
    public static class C0525a {

        /* renamed from: a */
        int f2724a;

        /* renamed from: b */
        ArrayList<C0526b> f2725b = new ArrayList<>();

        /* renamed from: c */
        int f2726c;

        /* renamed from: d */
        boolean f2727d;

        public C0525a(Context context, XmlPullParser xmlPullParser) {
            this.f2726c = -1;
            this.f2727d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.State_android_id) {
                    this.f2724a = obtainStyledAttributes.getResourceId(index, this.f2724a);
                } else if (index == C0523e.State_constraints) {
                    this.f2726c = obtainStyledAttributes.getResourceId(index, this.f2726c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2726c);
                    context.getResources().getResourceName(this.f2726c);
                    if ("layout".equals(resourceTypeName)) {
                        this.f2727d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m33601a(C0526b c0526b) {
            this.f2725b.add(c0526b);
        }

        /* renamed from: b */
        public int m33600b(float f, float f2) {
            for (int i = 0; i < this.f2725b.size(); i++) {
                if (this.f2725b.get(i).m33599a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$b.class */
    public static class C0526b {

        /* renamed from: a */
        float f2728a;

        /* renamed from: b */
        float f2729b;

        /* renamed from: c */
        float f2730c;

        /* renamed from: d */
        float f2731d;

        /* renamed from: e */
        int f2732e;

        /* renamed from: f */
        boolean f2733f;

        public C0526b(Context context, XmlPullParser xmlPullParser) {
            this.f2728a = Float.NaN;
            this.f2729b = Float.NaN;
            this.f2730c = Float.NaN;
            this.f2731d = Float.NaN;
            this.f2732e = -1;
            this.f2733f = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.Variant_constraints) {
                    this.f2732e = obtainStyledAttributes.getResourceId(index, this.f2732e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2732e);
                    context.getResources().getResourceName(this.f2732e);
                    if ("layout".equals(resourceTypeName)) {
                        this.f2733f = true;
                    }
                } else if (index == C0523e.Variant_region_heightLessThan) {
                    this.f2731d = obtainStyledAttributes.getDimension(index, this.f2731d);
                } else if (index == C0523e.Variant_region_heightMoreThan) {
                    this.f2729b = obtainStyledAttributes.getDimension(index, this.f2729b);
                } else if (index == C0523e.Variant_region_widthLessThan) {
                    this.f2730c = obtainStyledAttributes.getDimension(index, this.f2730c);
                } else if (index == C0523e.Variant_region_widthMoreThan) {
                    this.f2728a = obtainStyledAttributes.getDimension(index, this.f2728a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        boolean m33599a(float f, float f2) {
            if (Float.isNaN(this.f2728a) || f >= this.f2728a) {
                if (!Float.isNaN(this.f2729b) && f2 < this.f2729b) {
                    return false;
                }
                if (!Float.isNaN(this.f2730c) && f > this.f2730c) {
                    return false;
                }
                return Float.isNaN(this.f2731d) || f2 <= this.f2731d;
            }
            return false;
        }
    }

    public C0524f(Context context, XmlPullParser xmlPullParser) {
        m33604b(context, xmlPullParser);
    }

    /* renamed from: b */
    private void m33604b(Context context, XmlPullParser xmlPullParser) {
        C0525a c0525a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0523e.StateSet_defaultState) {
                this.f2719a = obtainStyledAttributes.getResourceId(index, this.f2719a);
            }
        }
        obtainStyledAttributes.recycle();
        C0525a c0525a2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0525a = c0525a2;
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    boolean z = true;
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                z = false;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    c0525a = c0525a2;
                    if (z) {
                        c0525a = c0525a2;
                        if (!z) {
                            if (z) {
                                c0525a = new C0525a(context, xmlPullParser);
                                this.f2722d.put(c0525a.f2724a, c0525a);
                            } else if (!z) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                c0525a = c0525a2;
                            } else {
                                C0526b c0526b = new C0526b(context, xmlPullParser);
                                c0525a = c0525a2;
                                if (c0525a2 != null) {
                                    c0525a2.m33601a(c0526b);
                                    c0525a = c0525a2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    c0525a = c0525a2;
                } else {
                    c0525a = c0525a2;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                c0525a2 = c0525a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public int m33605a(int i, int i2, float f, float f2) {
        C0525a c0525a = this.f2722d.get(i2);
        if (c0525a == null) {
            return i2;
        }
        if (f == -1.0f || f2 == -1.0f) {
            if (c0525a.f2726c == i) {
                return i;
            }
            Iterator<C0526b> it = c0525a.f2725b.iterator();
            while (it.hasNext()) {
                if (i == it.next().f2732e) {
                    return i;
                }
            }
            return c0525a.f2726c;
        }
        C0526b c0526b = null;
        Iterator<C0526b> it2 = c0525a.f2725b.iterator();
        while (it2.hasNext()) {
            C0526b next = it2.next();
            if (next.m33599a(f, f2)) {
                if (i == next.f2732e) {
                    return i;
                }
                c0526b = next;
            }
        }
        return c0526b != null ? c0526b.f2732e : c0525a.f2726c;
    }

    /* renamed from: c */
    public int m33603c(int i, int i2, int i3) {
        return m33602d(-1, i, i2, i3);
    }

    /* renamed from: d */
    public int m33602d(int i, int i2, float f, float f2) {
        int m33600b;
        if (i != i2) {
            C0525a c0525a = this.f2722d.get(i2);
            if (c0525a == null) {
                return -1;
            }
            int m33600b2 = c0525a.m33600b(f, f2);
            return m33600b2 == -1 ? c0525a.f2726c : c0525a.f2725b.get(m33600b2).f2732e;
        }
        C0525a valueAt = i2 == -1 ? this.f2722d.valueAt(0) : this.f2722d.get(this.f2720b);
        if (valueAt == null) {
            return -1;
        }
        if ((this.f2721c == -1 || !valueAt.f2725b.get(i).m33599a(f, f2)) && i != (m33600b = valueAt.m33600b(f, f2))) {
            return m33600b == -1 ? valueAt.f2726c : valueAt.f2725b.get(m33600b).f2732e;
        }
        return i;
    }
}
