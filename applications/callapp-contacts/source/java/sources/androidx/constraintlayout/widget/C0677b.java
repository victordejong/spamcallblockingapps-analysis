package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.C0687e;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b.class */
public final class C0677b {

    /* renamed from: a */
    C0680c f3037a;

    /* renamed from: e */
    private final ConstraintLayout f3041e;

    /* renamed from: b */
    int f3038b = -1;

    /* renamed from: c */
    int f3039c = -1;

    /* renamed from: f */
    private SparseArray<C0678a> f3042f = new SparseArray<>();

    /* renamed from: g */
    private SparseArray<C0680c> f3043g = new SparseArray<>();

    /* renamed from: d */
    AbstractC0686d f3040d = null;

    /* renamed from: androidx.constraintlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$a.class */
    public static final class C0678a {

        /* renamed from: a */
        int f3044a;

        /* renamed from: b */
        ArrayList<C0679b> f3045b = new ArrayList<>();

        /* renamed from: c */
        int f3046c;

        /* renamed from: d */
        C0680c f3047d;

        public C0678a(Context context, XmlPullParser xmlPullParser) {
            this.f3046c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.State_android_id) {
                    this.f3044a = obtainStyledAttributes.getResourceId(index, this.f3044a);
                } else if (index == C0687e.C0689b.State_constraints) {
                    this.f3046c = obtainStyledAttributes.getResourceId(index, this.f3046c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3046c);
                    context.getResources().getResourceName(this.f3046c);
                    if ("layout".equals(resourceTypeName)) {
                        C0680c c0680c = new C0680c();
                        this.f3047d = c0680c;
                        c0680c.m44707a(context, this.f3046c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final int m44716a(float f, float f2) {
            for (int i = 0; i < this.f3045b.size(); i++) {
                if (this.f3045b.get(i).m44715a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$b.class */
    public static final class C0679b {

        /* renamed from: a */
        float f3048a;

        /* renamed from: b */
        float f3049b;

        /* renamed from: c */
        float f3050c;

        /* renamed from: d */
        float f3051d;

        /* renamed from: e */
        int f3052e;

        /* renamed from: f */
        C0680c f3053f;

        public C0679b(Context context, XmlPullParser xmlPullParser) {
            this.f3048a = Float.NaN;
            this.f3049b = Float.NaN;
            this.f3050c = Float.NaN;
            this.f3051d = Float.NaN;
            this.f3052e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.Variant_constraints) {
                    this.f3052e = obtainStyledAttributes.getResourceId(index, this.f3052e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3052e);
                    context.getResources().getResourceName(this.f3052e);
                    if ("layout".equals(resourceTypeName)) {
                        C0680c c0680c = new C0680c();
                        this.f3053f = c0680c;
                        c0680c.m44707a(context, this.f3052e);
                    }
                } else if (index == C0687e.C0689b.Variant_region_heightLessThan) {
                    this.f3051d = obtainStyledAttributes.getDimension(index, this.f3051d);
                } else if (index == C0687e.C0689b.Variant_region_heightMoreThan) {
                    this.f3049b = obtainStyledAttributes.getDimension(index, this.f3049b);
                } else if (index == C0687e.C0689b.Variant_region_widthLessThan) {
                    this.f3050c = obtainStyledAttributes.getDimension(index, this.f3050c);
                } else if (index == C0687e.C0689b.Variant_region_widthMoreThan) {
                    this.f3048a = obtainStyledAttributes.getDimension(index, this.f3048a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        final boolean m44715a(float f, float f2) {
            if (Float.isNaN(this.f3048a) || f >= this.f3048a) {
                if (!Float.isNaN(this.f3049b) && f2 < this.f3049b) {
                    return false;
                }
                if (!Float.isNaN(this.f3050c) && f > this.f3050c) {
                    return false;
                }
                return Float.isNaN(this.f3051d) || f2 <= this.f3051d;
            }
            return false;
        }
    }

    public C0677b(Context context, ConstraintLayout constraintLayout, int i) {
        this.f3041e = constraintLayout;
        m44717a(context, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private void m44717a(Context context, int i) {
        C0678a c0678a;
        boolean z;
        int i2;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0678a c0678a2 = null;
        try {
            int eventType = xml.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xml.getName();
                    c0678a = c0678a2;
                } else if (eventType != 2) {
                    c0678a = c0678a2;
                } else {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                z = true;
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
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    if (z) {
                        c0678a = new C0678a(context, xml);
                        this.f3042f.put(c0678a.f3044a, c0678a);
                    } else if (z) {
                        C0679b c0679b = new C0679b(context, xml);
                        c0678a = c0678a2;
                        if (c0678a2 != null) {
                            c0678a2.f3045b.add(c0679b);
                            c0678a = c0678a2;
                        }
                    } else if (!z) {
                        c0678a = c0678a2;
                    } else {
                        C0680c c0680c = new C0680c();
                        int attributeCount = xml.getAttributeCount();
                        int i3 = 0;
                        while (true) {
                            c0678a = c0678a2;
                            if (i3 < attributeCount) {
                                if ("id".equals(xml.getAttributeName(i3))) {
                                    String attributeValue = xml.getAttributeValue(i3);
                                    if (attributeValue.contains("/")) {
                                        i2 = context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName());
                                    } else {
                                        i2 = -1;
                                    }
                                    int i4 = i2;
                                    if (i2 == -1) {
                                        if (attributeValue == null || attributeValue.length() <= 1) {
                                            Log.e("ConstraintLayoutStates", "error in parsing id");
                                            i4 = i2;
                                        } else {
                                            i4 = Integer.parseInt(attributeValue.substring(1));
                                        }
                                    }
                                    c0680c.m44705a(context, (XmlPullParser) xml);
                                    this.f3043g.put(i4, c0680c);
                                    c0678a = c0678a2;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                }
                eventType = xml.next();
                c0678a2 = c0678a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m44718a(int i, float f, float f2) {
        int m44716a;
        int i2 = this.f3038b;
        if (i2 == i) {
            C0678a valueAt = i == -1 ? this.f3042f.valueAt(0) : this.f3042f.get(i2);
            if ((this.f3039c != -1 && valueAt.f3045b.get(this.f3039c).m44715a(f, f2)) || this.f3039c == (m44716a = valueAt.m44716a(f, f2))) {
                return;
            }
            C0680c c0680c = m44716a == -1 ? this.f3037a : valueAt.f3045b.get(m44716a).f3053f;
            if (m44716a != -1) {
                valueAt.f3045b.get(m44716a);
            }
            if (c0680c == null) {
                return;
            }
            this.f3039c = m44716a;
            c0680c.m44693b(this.f3041e);
            return;
        }
        this.f3038b = i;
        C0678a c0678a = this.f3042f.get(i);
        int m44716a2 = c0678a.m44716a(f, f2);
        C0680c c0680c2 = m44716a2 == -1 ? c0678a.f3047d : c0678a.f3045b.get(m44716a2).f3053f;
        if (m44716a2 != -1) {
            c0678a.f3045b.get(m44716a2);
        }
        if (c0680c2 != null) {
            this.f3039c = m44716a2;
            c0680c2.m44693b(this.f3041e);
            return;
        }
        StringBuilder sb = new StringBuilder("NO Constraint set found ! id=");
        sb.append(i);
        sb.append(", dim =");
        sb.append(f);
        sb.append(", ");
        sb.append(f2);
    }
}
