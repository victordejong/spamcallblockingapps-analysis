package p000;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: e7 */
/* loaded from: classes-dex2jar.jar:e7.class */
public class C1346e7 {

    /* renamed from: a */
    public int f6296a = -1;

    /* renamed from: b */
    public int f6297b = -1;

    /* renamed from: c */
    public int f6298c = -1;

    /* renamed from: d */
    public SparseArray<C1347a> f6299d = new SparseArray<>();

    /* renamed from: e7$a */
    /* loaded from: classes-dex2jar.jar:e7$a.class */
    public static class C1347a {

        /* renamed from: a */
        public int f6300a;

        /* renamed from: b */
        public ArrayList<C1348b> f6301b = new ArrayList<>();

        /* renamed from: c */
        public int f6302c;

        public C1347a(Context context, XmlPullParser xmlPullParser) {
            this.f6302c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C1278d7.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C1278d7.State_android_id) {
                    this.f6300a = obtainStyledAttributes.getResourceId(index, this.f6300a);
                } else if (index == C1278d7.State_constraints) {
                    this.f6302c = obtainStyledAttributes.getResourceId(index, this.f6302c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f6302c);
                    context.getResources().getResourceName(this.f6302c);
                    TtmlNode.TAG_LAYOUT.equals(resourceTypeName);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public void m2209a(C1348b c1348b) {
            this.f6301b.add(c1348b);
        }

        /* renamed from: b */
        public int m2208b(float f, float f2) {
            for (int i = 0; i < this.f6301b.size(); i++) {
                if (this.f6301b.get(i).m2207a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: e7$b */
    /* loaded from: classes-dex2jar.jar:e7$b.class */
    public static class C1348b {

        /* renamed from: a */
        public float f6303a;

        /* renamed from: b */
        public float f6304b;

        /* renamed from: c */
        public float f6305c;

        /* renamed from: d */
        public float f6306d;

        /* renamed from: e */
        public int f6307e;

        public C1348b(Context context, XmlPullParser xmlPullParser) {
            this.f6303a = Float.NaN;
            this.f6304b = Float.NaN;
            this.f6305c = Float.NaN;
            this.f6306d = Float.NaN;
            this.f6307e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C1278d7.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C1278d7.Variant_constraints) {
                    this.f6307e = obtainStyledAttributes.getResourceId(index, this.f6307e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f6307e);
                    context.getResources().getResourceName(this.f6307e);
                    TtmlNode.TAG_LAYOUT.equals(resourceTypeName);
                } else if (index == C1278d7.Variant_region_heightLessThan) {
                    this.f6306d = obtainStyledAttributes.getDimension(index, this.f6306d);
                } else if (index == C1278d7.Variant_region_heightMoreThan) {
                    this.f6304b = obtainStyledAttributes.getDimension(index, this.f6304b);
                } else if (index == C1278d7.Variant_region_widthLessThan) {
                    this.f6305c = obtainStyledAttributes.getDimension(index, this.f6305c);
                } else if (index == C1278d7.Variant_region_widthMoreThan) {
                    this.f6303a = obtainStyledAttributes.getDimension(index, this.f6303a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public boolean m2207a(float f, float f2) {
            if (Float.isNaN(this.f6303a) || f >= this.f6303a) {
                if (!Float.isNaN(this.f6304b) && f2 < this.f6304b) {
                    return false;
                }
                if (!Float.isNaN(this.f6305c) && f > this.f6305c) {
                    return false;
                }
                return Float.isNaN(this.f6306d) || f2 <= this.f6306d;
            }
            return false;
        }
    }

    public C1346e7(Context context, XmlPullParser xmlPullParser) {
        new SparseArray();
        m2212b(context, xmlPullParser);
    }

    /* renamed from: a */
    public int m2213a(int i, int i2, float f, float f2) {
        C1347a c1347a = this.f6299d.get(i2);
        if (c1347a == null) {
            return i2;
        }
        if (f == -1.0f || f2 == -1.0f) {
            if (c1347a.f6302c == i) {
                return i;
            }
            Iterator<C1348b> it = c1347a.f6301b.iterator();
            while (it.hasNext()) {
                if (i == it.next().f6307e) {
                    return i;
                }
            }
            return c1347a.f6302c;
        }
        C1348b c1348b = null;
        Iterator<C1348b> it2 = c1347a.f6301b.iterator();
        while (it2.hasNext()) {
            C1348b next = it2.next();
            if (next.m2207a(f, f2)) {
                if (i == next.f6307e) {
                    return i;
                }
                c1348b = next;
            }
        }
        return c1348b != null ? c1348b.f6307e : c1347a.f6302c;
    }

    /* renamed from: b */
    public final void m2212b(Context context, XmlPullParser xmlPullParser) {
        C1347a c1347a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C1278d7.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C1278d7.StateSet_defaultState) {
                this.f6296a = obtainStyledAttributes.getResourceId(index, this.f6296a);
            }
        }
        obtainStyledAttributes.recycle();
        C1347a c1347a2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c1347a = c1347a2;
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
                    c1347a = c1347a2;
                    if (z) {
                        c1347a = c1347a2;
                        if (!z) {
                            if (z) {
                                c1347a = new C1347a(context, xmlPullParser);
                                this.f6299d.put(c1347a.f6300a, c1347a);
                            } else if (!z) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                c1347a = c1347a2;
                            } else {
                                C1348b c1348b = new C1348b(context, xmlPullParser);
                                c1347a = c1347a2;
                                if (c1347a2 != null) {
                                    c1347a2.m2209a(c1348b);
                                    c1347a = c1347a2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    c1347a = c1347a2;
                } else {
                    c1347a = c1347a2;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                c1347a2 = c1347a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: c */
    public int m2211c(int i, int i2, int i3) {
        return m2210d(-1, i, i2, i3);
    }

    /* renamed from: d */
    public int m2210d(int i, int i2, float f, float f2) {
        int m2208b;
        if (i != i2) {
            C1347a c1347a = this.f6299d.get(i2);
            if (c1347a == null) {
                return -1;
            }
            int m2208b2 = c1347a.m2208b(f, f2);
            return m2208b2 == -1 ? c1347a.f6302c : c1347a.f6301b.get(m2208b2).f6307e;
        }
        C1347a valueAt = i2 == -1 ? this.f6299d.valueAt(0) : this.f6299d.get(this.f6297b);
        if (valueAt == null) {
            return -1;
        }
        if ((this.f6298c == -1 || !valueAt.f6301b.get(i).m2207a(f, f2)) && i != (m2208b = valueAt.m2208b(f, f2))) {
            return m2208b == -1 ? valueAt.f6302c : valueAt.f6301b.get(m2208b).f6307e;
        }
        return i;
    }
}
