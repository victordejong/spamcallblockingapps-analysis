package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0114R;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: n3.i.c.c */
/* loaded from: classes-dex2jar.jar:n3/i/c/c.class */
public class C26386c {

    /* renamed from: a */
    public final ConstraintLayout f73868a;

    /* renamed from: b */
    public int f73869b = -1;

    /* renamed from: c */
    public int f73870c = -1;

    /* renamed from: d */
    public SparseArray<C26387a> f73871d = new SparseArray<>();

    /* renamed from: e */
    public SparseArray<C26389d> f73872e = new SparseArray<>();

    /* renamed from: n3.i.c.c$a */
    /* loaded from: classes-dex2jar.jar:n3/i/c/c$a.class */
    public static class C26387a {

        /* renamed from: a */
        public int f73873a;

        /* renamed from: b */
        public ArrayList<C26388b> f73874b = new ArrayList<>();

        /* renamed from: c */
        public int f73875c;

        /* renamed from: d */
        public C26389d f73876d;

        public C26387a(Context context, XmlPullParser xmlPullParser) {
            this.f73875c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.State_android_id) {
                    this.f73873a = obtainStyledAttributes.getResourceId(index, this.f73873a);
                } else if (index == C0114R.styleable.State_constraints) {
                    this.f73875c = obtainStyledAttributes.getResourceId(index, this.f73875c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f73875c);
                    context.getResources().getResourceName(this.f73875c);
                    if ("layout".equals(resourceTypeName)) {
                        C26389d c26389d = new C26389d();
                        this.f73876d = c26389d;
                        c26389d.m1966e((ConstraintLayout) LayoutInflater.from(context).inflate(this.f73875c, (ViewGroup) null));
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public int m1972a(float f, float f2) {
            for (int i = 0; i < this.f73874b.size(); i++) {
                if (this.f73874b.get(i).m1971a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: n3.i.c.c$b */
    /* loaded from: classes-dex2jar.jar:n3/i/c/c$b.class */
    public static class C26388b {

        /* renamed from: a */
        public float f73877a;

        /* renamed from: b */
        public float f73878b;

        /* renamed from: c */
        public float f73879c;

        /* renamed from: d */
        public float f73880d;

        /* renamed from: e */
        public int f73881e;

        /* renamed from: f */
        public C26389d f73882f;

        public C26388b(Context context, XmlPullParser xmlPullParser) {
            this.f73877a = Float.NaN;
            this.f73878b = Float.NaN;
            this.f73879c = Float.NaN;
            this.f73880d = Float.NaN;
            this.f73881e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.Variant_constraints) {
                    this.f73881e = obtainStyledAttributes.getResourceId(index, this.f73881e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f73881e);
                    context.getResources().getResourceName(this.f73881e);
                    if ("layout".equals(resourceTypeName)) {
                        C26389d c26389d = new C26389d();
                        this.f73882f = c26389d;
                        c26389d.m1966e((ConstraintLayout) LayoutInflater.from(context).inflate(this.f73881e, (ViewGroup) null));
                    }
                } else if (index == C0114R.styleable.Variant_region_heightLessThan) {
                    this.f73880d = obtainStyledAttributes.getDimension(index, this.f73880d);
                } else if (index == C0114R.styleable.Variant_region_heightMoreThan) {
                    this.f73878b = obtainStyledAttributes.getDimension(index, this.f73878b);
                } else if (index == C0114R.styleable.Variant_region_widthLessThan) {
                    this.f73879c = obtainStyledAttributes.getDimension(index, this.f73879c);
                } else if (index == C0114R.styleable.Variant_region_widthMoreThan) {
                    this.f73877a = obtainStyledAttributes.getDimension(index, this.f73877a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public boolean m1971a(float f, float f2) {
            if (Float.isNaN(this.f73877a) || f >= this.f73877a) {
                if (!Float.isNaN(this.f73878b) && f2 < this.f73878b) {
                    return false;
                }
                if (!Float.isNaN(this.f73879c) && f > this.f73879c) {
                    return false;
                }
                return Float.isNaN(this.f73880d) || f2 <= this.f73880d;
            }
            return false;
        }
    }

    public C26386c(Context context, ConstraintLayout constraintLayout, int i) {
        C26387a c26387a;
        boolean z;
        this.f73868a = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            int eventType = xml.getEventType();
            C26387a c26387a2 = null;
            while (true) {
                C26387a c26387a3 = c26387a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                    c26387a = c26387a3;
                } else if (eventType != 2) {
                    c26387a = c26387a3;
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
                    c26387a = c26387a3;
                    if (z) {
                        c26387a = c26387a3;
                        if (!z) {
                            if (z) {
                                c26387a = new C26387a(context, xml);
                                this.f73871d.put(c26387a.f73873a, c26387a);
                            } else if (z) {
                                C26388b c26388b = new C26388b(context, xml);
                                c26387a = c26387a3;
                                if (c26387a3 != null) {
                                    c26387a3.f73874b.add(c26388b);
                                    c26387a = c26387a3;
                                }
                            } else if (!z) {
                                c26387a = c26387a3;
                            } else {
                                m1974a(context, xml);
                                c26387a = c26387a3;
                            }
                        }
                    }
                }
                eventType = xml.next();
                c26387a2 = c26387a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m1974a(Context context, XmlPullParser xmlPullParser) {
        C26389d c26389d = new C26389d();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains(StringConstant.SLASH) ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                int i2 = identifier;
                if (identifier == -1) {
                    i2 = identifier;
                    if (attributeValue.length() > 1) {
                        i2 = Integer.parseInt(attributeValue.substring(1));
                    }
                }
                c26389d.m1959l(context, xmlPullParser);
                this.f73872e.put(i2, c26389d);
                return;
            }
        }
    }

    /* renamed from: b */
    public void m1973b(int i, float f, float f2) {
        int m1972a;
        int i2 = this.f73869b;
        if (i2 != i) {
            this.f73869b = i;
            C26387a c26387a = this.f73871d.get(i);
            int m1972a2 = c26387a.m1972a(f, f2);
            C26389d c26389d = m1972a2 == -1 ? c26387a.f73876d : c26387a.f73874b.get(m1972a2).f73882f;
            if (m1972a2 != -1) {
                int i3 = c26387a.f73874b.get(m1972a2).f73881e;
            }
            if (c26389d == null) {
                return;
            }
            this.f73870c = m1972a2;
            c26389d.m1969b(this.f73868a);
            return;
        }
        C26387a valueAt = i == -1 ? this.f73871d.valueAt(0) : this.f73871d.get(i2);
        int i4 = this.f73870c;
        if ((i4 != -1 && valueAt.f73874b.get(i4).m1971a(f, f2)) || this.f73870c == (m1972a = valueAt.m1972a(f, f2))) {
            return;
        }
        C26389d c26389d2 = m1972a == -1 ? null : valueAt.f73874b.get(m1972a).f73882f;
        if (m1972a != -1) {
            int i5 = valueAt.f73874b.get(m1972a).f73881e;
        }
        if (c26389d2 == null) {
            return;
        }
        this.f73870c = m1972a;
        c26389d2.m1969b(this.f73868a);
    }
}
