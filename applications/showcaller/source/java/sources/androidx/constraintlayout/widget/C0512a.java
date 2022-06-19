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
public class C0512a {

    /* renamed from: a */
    private final ConstraintLayout f2598a;

    /* renamed from: b */
    C0515b f2599b;

    /* renamed from: c */
    int f2600c = -1;

    /* renamed from: d */
    int f2601d = -1;

    /* renamed from: e */
    private SparseArray<C0513a> f2602e = new SparseArray<>();

    /* renamed from: f */
    private SparseArray<C0515b> f2603f = new SparseArray<>();

    /* renamed from: g */
    private AbstractC0521c f2604g;

    /* renamed from: androidx.constraintlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$a.class */
    public static class C0513a {

        /* renamed from: a */
        int f2605a;

        /* renamed from: b */
        ArrayList<C0514b> f2606b = new ArrayList<>();

        /* renamed from: c */
        int f2607c;

        /* renamed from: d */
        C0515b f2608d;

        public C0513a(Context context, XmlPullParser xmlPullParser) {
            this.f2607c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.State_android_id) {
                    this.f2605a = obtainStyledAttributes.getResourceId(index, this.f2605a);
                } else if (index == C0523e.State_constraints) {
                    this.f2607c = obtainStyledAttributes.getResourceId(index, this.f2607c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2607c);
                    context.getResources().getResourceName(this.f2607c);
                    if ("layout".equals(resourceTypeName)) {
                        C0515b c0515b = new C0515b();
                        this.f2608d = c0515b;
                        c0515b.m33639i(context, this.f2607c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m33654a(C0514b c0514b) {
            this.f2606b.add(c0514b);
        }

        /* renamed from: b */
        public int m33653b(float f, float f2) {
            for (int i = 0; i < this.f2606b.size(); i++) {
                if (this.f2606b.get(i).m33652a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$b.class */
    public static class C0514b {

        /* renamed from: a */
        float f2609a;

        /* renamed from: b */
        float f2610b;

        /* renamed from: c */
        float f2611c;

        /* renamed from: d */
        float f2612d;

        /* renamed from: e */
        int f2613e;

        /* renamed from: f */
        C0515b f2614f;

        public C0514b(Context context, XmlPullParser xmlPullParser) {
            this.f2609a = Float.NaN;
            this.f2610b = Float.NaN;
            this.f2611c = Float.NaN;
            this.f2612d = Float.NaN;
            this.f2613e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0523e.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.Variant_constraints) {
                    this.f2613e = obtainStyledAttributes.getResourceId(index, this.f2613e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f2613e);
                    context.getResources().getResourceName(this.f2613e);
                    if ("layout".equals(resourceTypeName)) {
                        C0515b c0515b = new C0515b();
                        this.f2614f = c0515b;
                        c0515b.m33639i(context, this.f2613e);
                    }
                } else if (index == C0523e.Variant_region_heightLessThan) {
                    this.f2612d = obtainStyledAttributes.getDimension(index, this.f2612d);
                } else if (index == C0523e.Variant_region_heightMoreThan) {
                    this.f2610b = obtainStyledAttributes.getDimension(index, this.f2610b);
                } else if (index == C0523e.Variant_region_widthLessThan) {
                    this.f2611c = obtainStyledAttributes.getDimension(index, this.f2611c);
                } else if (index == C0523e.Variant_region_widthMoreThan) {
                    this.f2609a = obtainStyledAttributes.getDimension(index, this.f2609a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        boolean m33652a(float f, float f2) {
            if (Float.isNaN(this.f2609a) || f >= this.f2609a) {
                if (!Float.isNaN(this.f2610b) && f2 < this.f2610b) {
                    return false;
                }
                if (!Float.isNaN(this.f2611c) && f > this.f2611c) {
                    return false;
                }
                return Float.isNaN(this.f2612d) || f2 <= this.f2612d;
            }
            return false;
        }
    }

    public C0512a(Context context, ConstraintLayout constraintLayout, int i) {
        this.f2598a = constraintLayout;
        m33658a(context, i);
    }

    /* renamed from: a */
    private void m33658a(Context context, int i) {
        C0513a c0513a;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0513a c0513a2 = null;
        try {
            int eventType = xml.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xml.getName();
                    c0513a = c0513a2;
                } else if (eventType != 2) {
                    c0513a = c0513a2;
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
                    c0513a = c0513a2;
                    if (z) {
                        c0513a = c0513a2;
                        if (!z) {
                            if (z) {
                                c0513a = new C0513a(context, xml);
                                this.f2602e.put(c0513a.f2605a, c0513a);
                            } else if (z) {
                                C0514b c0514b = new C0514b(context, xml);
                                c0513a = c0513a2;
                                if (c0513a2 != null) {
                                    c0513a2.m33654a(c0514b);
                                    c0513a = c0513a2;
                                }
                            } else if (!z) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                c0513a = c0513a2;
                            } else {
                                m33657b(context, xml);
                                c0513a = c0513a2;
                            }
                        }
                    }
                }
                eventType = xml.next();
                c0513a2 = c0513a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m33657b(Context context, XmlPullParser xmlPullParser) {
        C0515b c0515b = new C0515b();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                int i2 = identifier;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        i2 = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                        i2 = identifier;
                    }
                }
                c0515b.m33624x(context, xmlPullParser);
                this.f2603f.put(i2, c0515b);
                return;
            }
        }
    }

    /* renamed from: c */
    public void m33656c(AbstractC0521c abstractC0521c) {
    }

    /* renamed from: d */
    public void m33655d(int i, float f, float f2) {
        int m33653b;
        int i2 = this.f2600c;
        if (i2 == i) {
            C0513a valueAt = i == -1 ? this.f2602e.valueAt(0) : this.f2602e.get(i2);
            int i3 = this.f2601d;
            if ((i3 != -1 && valueAt.f2606b.get(i3).m33652a(f, f2)) || this.f2601d == (m33653b = valueAt.m33653b(f, f2))) {
                return;
            }
            C0515b c0515b = m33653b == -1 ? this.f2599b : valueAt.f2606b.get(m33653b).f2614f;
            if (m33653b != -1) {
                int i4 = valueAt.f2606b.get(m33653b).f2613e;
            }
            if (c0515b == null) {
                return;
            }
            this.f2601d = m33653b;
            if (this.f2604g != null) {
                throw null;
            }
            c0515b.m33644d(this.f2598a);
            if (this.f2604g != null) {
                throw null;
            }
            return;
        }
        this.f2600c = i;
        C0513a c0513a = this.f2602e.get(i);
        int m33653b2 = c0513a.m33653b(f, f2);
        C0515b c0515b2 = m33653b2 == -1 ? c0513a.f2608d : c0513a.f2606b.get(m33653b2).f2614f;
        if (m33653b2 != -1) {
            int i5 = c0513a.f2606b.get(m33653b2).f2613e;
        }
        if (c0515b2 != null) {
            this.f2601d = m33653b2;
            if (this.f2604g != null) {
                throw null;
            }
            c0515b2.m33644d(this.f2598a);
            if (this.f2604g != null) {
                throw null;
            }
            return;
        }
        Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
    }
}
