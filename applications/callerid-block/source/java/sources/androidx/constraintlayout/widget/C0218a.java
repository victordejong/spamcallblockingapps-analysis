package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a.class */
public class C0218a {

    /* renamed from: a */
    private final ConstraintLayout f1404a;

    /* renamed from: b */
    C0221b f1405b;

    /* renamed from: c */
    int f1406c = -1;

    /* renamed from: d */
    int f1407d = -1;

    /* renamed from: e */
    private SparseArray<C0219a> f1408e = new SparseArray<>();

    /* renamed from: f */
    private SparseArray<C0221b> f1409f = new SparseArray<>();

    /* renamed from: g */
    private AbstractC0227c f1410g;

    /* renamed from: androidx.constraintlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$a.class */
    public static class C0219a {

        /* renamed from: a */
        int f1411a;

        /* renamed from: b */
        ArrayList<C0220b> f1412b = new ArrayList<>();

        /* renamed from: c */
        int f1413c;

        /* renamed from: d */
        C0221b f1414d;

        public C0219a(Context context, XmlPullParser xmlPullParser) {
            this.f1413c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.State_android_id) {
                    this.f1411a = obtainStyledAttributes.getResourceId(index, this.f1411a);
                } else if (index == C0229e.State_constraints) {
                    this.f1413c = obtainStyledAttributes.getResourceId(index, this.f1413c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1413c);
                    context.getResources().getResourceName(this.f1413c);
                    if ("layout".equals(resourceTypeName)) {
                        C0221b c0221b = new C0221b();
                        this.f1414d = c0221b;
                        c0221b.m13800i(context, this.f1413c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m13815a(C0220b c0220b) {
            this.f1412b.add(c0220b);
        }

        /* renamed from: b */
        public int m13814b(float f, float f2) {
            for (int i = 0; i < this.f1412b.size(); i++) {
                if (this.f1412b.get(i).m13813a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$b.class */
    public static class C0220b {

        /* renamed from: a */
        float f1415a;

        /* renamed from: b */
        float f1416b;

        /* renamed from: c */
        float f1417c;

        /* renamed from: d */
        float f1418d;

        /* renamed from: e */
        int f1419e;

        /* renamed from: f */
        C0221b f1420f;

        public C0220b(Context context, XmlPullParser xmlPullParser) {
            this.f1415a = Float.NaN;
            this.f1416b = Float.NaN;
            this.f1417c = Float.NaN;
            this.f1418d = Float.NaN;
            this.f1419e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0229e.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0229e.Variant_constraints) {
                    this.f1419e = obtainStyledAttributes.getResourceId(index, this.f1419e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1419e);
                    context.getResources().getResourceName(this.f1419e);
                    if ("layout".equals(resourceTypeName)) {
                        C0221b c0221b = new C0221b();
                        this.f1420f = c0221b;
                        c0221b.m13800i(context, this.f1419e);
                    }
                } else if (index == C0229e.Variant_region_heightLessThan) {
                    this.f1418d = obtainStyledAttributes.getDimension(index, this.f1418d);
                } else if (index == C0229e.Variant_region_heightMoreThan) {
                    this.f1416b = obtainStyledAttributes.getDimension(index, this.f1416b);
                } else if (index == C0229e.Variant_region_widthLessThan) {
                    this.f1417c = obtainStyledAttributes.getDimension(index, this.f1417c);
                } else if (index == C0229e.Variant_region_widthMoreThan) {
                    this.f1415a = obtainStyledAttributes.getDimension(index, this.f1415a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        boolean m13813a(float f, float f2) {
            if (Float.isNaN(this.f1415a) || f >= this.f1415a) {
                if (!Float.isNaN(this.f1416b) && f2 < this.f1416b) {
                    return false;
                }
                if (!Float.isNaN(this.f1417c) && f > this.f1417c) {
                    return false;
                }
                return Float.isNaN(this.f1418d) || f2 <= this.f1418d;
            }
            return false;
        }
    }

    public C0218a(Context context, ConstraintLayout constraintLayout, int i) {
        this.f1404a = constraintLayout;
        m13819a(context, i);
    }

    /* renamed from: a */
    private void m13819a(Context context, int i) {
        C0219a c0219a;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0219a c0219a2 = null;
        try {
            int eventType = xml.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xml.getName();
                    c0219a = c0219a2;
                } else if (eventType != 2) {
                    c0219a = c0219a2;
                } else {
                    String name = xml.getName();
                    boolean z = true;
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                z = true;
                                break;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                z = false;
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
                    c0219a = c0219a2;
                    if (z) {
                        c0219a = c0219a2;
                        if (!z) {
                            if (z) {
                                c0219a = new C0219a(context, xml);
                                this.f1408e.put(c0219a.f1411a, c0219a);
                            } else if (z) {
                                C0220b c0220b = new C0220b(context, xml);
                                c0219a = c0219a2;
                                if (c0219a2 != null) {
                                    c0219a2.m13815a(c0220b);
                                    c0219a = c0219a2;
                                }
                            } else if (!z) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                c0219a = c0219a2;
                            } else {
                                m13818b(context, xml);
                                c0219a = c0219a2;
                            }
                        }
                    }
                }
                eventType = xml.next();
                c0219a2 = c0219a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m13818b(Context context, XmlPullParser xmlPullParser) {
        C0221b c0221b = new C0221b();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                int i2 = identifier;
                if (identifier == -1) {
                    if (attributeValue == null || attributeValue.length() <= 1) {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                        i2 = identifier;
                    } else {
                        i2 = Integer.parseInt(attributeValue.substring(1));
                    }
                }
                c0221b.m13785x(context, xmlPullParser);
                this.f1409f.put(i2, c0221b);
                return;
            }
        }
    }

    /* renamed from: c */
    public void m13817c(AbstractC0227c abstractC0227c) {
    }

    /* renamed from: d */
    public void m13816d(int i, float f, float f2) {
        int m13814b;
        int i2 = this.f1406c;
        if (i2 == i) {
            C0219a valueAt = i == -1 ? this.f1408e.valueAt(0) : this.f1408e.get(i2);
            int i3 = this.f1407d;
            if ((i3 != -1 && valueAt.f1412b.get(i3).m13813a(f, f2)) || this.f1407d == (m13814b = valueAt.m13814b(f, f2))) {
                return;
            }
            C0221b c0221b = m13814b == -1 ? this.f1405b : valueAt.f1412b.get(m13814b).f1420f;
            int i4 = m13814b == -1 ? valueAt.f1413c : valueAt.f1412b.get(m13814b).f1419e;
            if (c0221b == null) {
                return;
            }
            this.f1407d = m13814b;
            AbstractC0227c abstractC0227c = this.f1410g;
            if (abstractC0227c != null) {
                abstractC0227c.m13765b(-1, i4);
            }
            c0221b.m13805d(this.f1404a);
            AbstractC0227c abstractC0227c2 = this.f1410g;
            if (abstractC0227c2 == null) {
                return;
            }
            abstractC0227c2.m13766a(-1, i4);
            return;
        }
        this.f1406c = i;
        C0219a c0219a = this.f1408e.get(i);
        int m13814b2 = c0219a.m13814b(f, f2);
        C0221b c0221b2 = m13814b2 == -1 ? c0219a.f1414d : c0219a.f1412b.get(m13814b2).f1420f;
        int i5 = m13814b2 == -1 ? c0219a.f1413c : c0219a.f1412b.get(m13814b2).f1419e;
        if (c0221b2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
            return;
        }
        this.f1407d = m13814b2;
        AbstractC0227c abstractC0227c3 = this.f1410g;
        if (abstractC0227c3 != null) {
            abstractC0227c3.m13765b(i, i5);
        }
        c0221b2.m13805d(this.f1404a);
        AbstractC0227c abstractC0227c4 = this.f1410g;
        if (abstractC0227c4 == null) {
            return;
        }
        abstractC0227c4.m13766a(i, i5);
    }
}
