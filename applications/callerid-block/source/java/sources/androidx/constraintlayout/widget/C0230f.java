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
public class C0230f {

    /* renamed from: a */
    int f1524a = -1;

    /* renamed from: b */
    int f1525b = -1;

    /* renamed from: c */
    int f1526c = -1;

    /* renamed from: d */
    private SparseArray<C0231a> f1527d = new SparseArray<>();

    /* renamed from: androidx.constraintlayout.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$a.class */
    public static class C0231a {

        /* renamed from: a */
        int f1528a;

        /* renamed from: b */
        ArrayList<C0232b> f1529b = new ArrayList<>();

        /* renamed from: c */
        int f1530c;

        public C0231a(Context context, XmlPullParser xmlPullParser) {
            this.f1530c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.State_android_id) {
                    this.f1528a = obtainStyledAttributes.getResourceId(index, this.f1528a);
                } else if (index == C0229e.State_constraints) {
                    this.f1530c = obtainStyledAttributes.getResourceId(index, this.f1530c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1530c);
                    context.getResources().getResourceName(this.f1530c);
                    "layout".equals(resourceTypeName);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m13760a(C0232b c0232b) {
            this.f1529b.add(c0232b);
        }

        /* renamed from: b */
        public int m13759b(float f, float f2) {
            for (int i = 0; i < this.f1529b.size(); i++) {
                if (this.f1529b.get(i).m13758a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$b.class */
    public static class C0232b {

        /* renamed from: a */
        float f1531a;

        /* renamed from: b */
        float f1532b;

        /* renamed from: c */
        float f1533c;

        /* renamed from: d */
        float f1534d;

        /* renamed from: e */
        int f1535e;

        public C0232b(Context context, XmlPullParser xmlPullParser) {
            this.f1531a = Float.NaN;
            this.f1532b = Float.NaN;
            this.f1533c = Float.NaN;
            this.f1534d = Float.NaN;
            this.f1535e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.Variant_constraints) {
                    this.f1535e = obtainStyledAttributes.getResourceId(index, this.f1535e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1535e);
                    context.getResources().getResourceName(this.f1535e);
                    "layout".equals(resourceTypeName);
                } else if (index == C0229e.Variant_region_heightLessThan) {
                    this.f1534d = obtainStyledAttributes.getDimension(index, this.f1534d);
                } else if (index == C0229e.Variant_region_heightMoreThan) {
                    this.f1532b = obtainStyledAttributes.getDimension(index, this.f1532b);
                } else if (index == C0229e.Variant_region_widthLessThan) {
                    this.f1533c = obtainStyledAttributes.getDimension(index, this.f1533c);
                } else if (index == C0229e.Variant_region_widthMoreThan) {
                    this.f1531a = obtainStyledAttributes.getDimension(index, this.f1531a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        boolean m13758a(float f, float f2) {
            if (Float.isNaN(this.f1531a) || f >= this.f1531a) {
                if (!Float.isNaN(this.f1532b) && f2 < this.f1532b) {
                    return false;
                }
                if (!Float.isNaN(this.f1533c) && f > this.f1533c) {
                    return false;
                }
                return Float.isNaN(this.f1534d) || f2 <= this.f1534d;
            }
            return false;
        }
    }

    public C0230f(Context context, XmlPullParser xmlPullParser) {
        new SparseArray();
        m13763b(context, xmlPullParser);
    }

    /* renamed from: b */
    private void m13763b(Context context, XmlPullParser xmlPullParser) {
        C0231a c0231a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0229e.StateSet_defaultState) {
                this.f1524a = obtainStyledAttributes.getResourceId(index, this.f1524a);
            }
        }
        C0231a c0231a2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0231a = c0231a2;
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
                    c0231a = c0231a2;
                    if (z) {
                        c0231a = c0231a2;
                        if (!z) {
                            if (z) {
                                c0231a = new C0231a(context, xmlPullParser);
                                this.f1527d.put(c0231a.f1528a, c0231a);
                            } else if (!z) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                c0231a = c0231a2;
                            } else {
                                C0232b c0232b = new C0232b(context, xmlPullParser);
                                c0231a = c0231a2;
                                if (c0231a2 != null) {
                                    c0231a2.m13760a(c0232b);
                                    c0231a = c0231a2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    c0231a = c0231a2;
                } else {
                    c0231a = c0231a2;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                c0231a2 = c0231a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public int m13764a(int i, int i2, float f, float f2) {
        C0231a c0231a = this.f1527d.get(i2);
        if (c0231a == null) {
            return i2;
        }
        if (f == -1.0f || f2 == -1.0f) {
            if (c0231a.f1530c == i) {
                return i;
            }
            Iterator<C0232b> it = c0231a.f1529b.iterator();
            while (it.hasNext()) {
                if (i == it.next().f1535e) {
                    return i;
                }
            }
            return c0231a.f1530c;
        }
        C0232b c0232b = null;
        Iterator<C0232b> it2 = c0231a.f1529b.iterator();
        while (it2.hasNext()) {
            C0232b next = it2.next();
            if (next.m13758a(f, f2)) {
                if (i == next.f1535e) {
                    return i;
                }
                c0232b = next;
            }
        }
        return c0232b != null ? c0232b.f1535e : c0231a.f1530c;
    }

    /* renamed from: c */
    public int m13762c(int i, int i2, int i3) {
        return m13761d(-1, i, i2, i3);
    }

    /* renamed from: d */
    public int m13761d(int i, int i2, float f, float f2) {
        int m13759b;
        if (i != i2) {
            C0231a c0231a = this.f1527d.get(i2);
            if (c0231a == null) {
                return -1;
            }
            int m13759b2 = c0231a.m13759b(f, f2);
            return m13759b2 == -1 ? c0231a.f1530c : c0231a.f1529b.get(m13759b2).f1535e;
        }
        C0231a valueAt = i2 == -1 ? this.f1527d.valueAt(0) : this.f1527d.get(this.f1525b);
        if (valueAt == null) {
            return -1;
        }
        if ((this.f1526c == -1 || !valueAt.f1529b.get(i).m13758a(f, f2)) && i != (m13759b = valueAt.m13759b(f, f2))) {
            return m13759b == -1 ? valueAt.f1530c : valueAt.f1529b.get(m13759b).f1535e;
        }
        return i;
    }
}
