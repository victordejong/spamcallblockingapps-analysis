package p1727n3.p1795i.p1802c;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.C0114R;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: n3.i.c.h */
/* loaded from: classes-dex2jar.jar:n3/i/c/h.class */
public class C26399h {

    /* renamed from: a */
    public int f74001a;

    /* renamed from: b */
    public SparseArray<C26400a> f74002b = new SparseArray<>();

    /* renamed from: n3.i.c.h$a */
    /* loaded from: classes-dex2jar.jar:n3/i/c/h$a.class */
    public static class C26400a {

        /* renamed from: a */
        public int f74003a;

        /* renamed from: b */
        public ArrayList<C26401b> f74004b = new ArrayList<>();

        /* renamed from: c */
        public int f74005c;

        public C26400a(Context context, XmlPullParser xmlPullParser) {
            this.f74005c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.State_android_id) {
                    this.f74003a = obtainStyledAttributes.getResourceId(index, this.f74003a);
                } else if (index == C0114R.styleable.State_constraints) {
                    this.f74005c = obtainStyledAttributes.getResourceId(index, this.f74005c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f74005c);
                    context.getResources().getResourceName(this.f74005c);
                    "layout".equals(resourceTypeName);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public int m1943a(float f, float f2) {
            for (int i = 0; i < this.f74004b.size(); i++) {
                if (this.f74004b.get(i).m1942a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: n3.i.c.h$b */
    /* loaded from: classes-dex2jar.jar:n3/i/c/h$b.class */
    public static class C26401b {

        /* renamed from: a */
        public float f74006a;

        /* renamed from: b */
        public float f74007b;

        /* renamed from: c */
        public float f74008c;

        /* renamed from: d */
        public float f74009d;

        /* renamed from: e */
        public int f74010e;

        public C26401b(Context context, XmlPullParser xmlPullParser) {
            this.f74006a = Float.NaN;
            this.f74007b = Float.NaN;
            this.f74008c = Float.NaN;
            this.f74009d = Float.NaN;
            this.f74010e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0114R.styleable.Variant_constraints) {
                    this.f74010e = obtainStyledAttributes.getResourceId(index, this.f74010e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f74010e);
                    context.getResources().getResourceName(this.f74010e);
                    "layout".equals(resourceTypeName);
                } else if (index == C0114R.styleable.Variant_region_heightLessThan) {
                    this.f74009d = obtainStyledAttributes.getDimension(index, this.f74009d);
                } else if (index == C0114R.styleable.Variant_region_heightMoreThan) {
                    this.f74007b = obtainStyledAttributes.getDimension(index, this.f74007b);
                } else if (index == C0114R.styleable.Variant_region_widthLessThan) {
                    this.f74008c = obtainStyledAttributes.getDimension(index, this.f74008c);
                } else if (index == C0114R.styleable.Variant_region_widthMoreThan) {
                    this.f74006a = obtainStyledAttributes.getDimension(index, this.f74006a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public boolean m1942a(float f, float f2) {
            if (Float.isNaN(this.f74006a) || f >= this.f74006a) {
                if (!Float.isNaN(this.f74007b) && f2 < this.f74007b) {
                    return false;
                }
                if (!Float.isNaN(this.f74008c) && f > this.f74008c) {
                    return false;
                }
                return Float.isNaN(this.f74009d) || f2 <= this.f74009d;
            }
            return false;
        }
    }

    public C26399h(Context context, XmlPullParser xmlPullParser) {
        C26400a c26400a;
        boolean z;
        this.f74001a = -1;
        new SparseArray();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0114R.styleable.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0114R.styleable.StateSet_defaultState) {
                this.f74001a = obtainStyledAttributes.getResourceId(index, this.f74001a);
            }
        }
        obtainStyledAttributes.recycle();
        C26400a c26400a2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c26400a = c26400a2;
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
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
                    c26400a = c26400a2;
                    if (z) {
                        c26400a = c26400a2;
                        if (!z) {
                            if (z) {
                                c26400a = new C26400a(context, xmlPullParser);
                                this.f74002b.put(c26400a.f74003a, c26400a);
                            } else if (!z) {
                                c26400a = c26400a2;
                            } else {
                                C26401b c26401b = new C26401b(context, xmlPullParser);
                                c26400a = c26400a2;
                                if (c26400a2 != null) {
                                    c26400a2.f74004b.add(c26401b);
                                    c26400a = c26400a2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    c26400a = c26400a2;
                } else {
                    c26400a = c26400a2;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                c26400a2 = c26400a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public int m1944a(int i, int i2, int i3) {
        int i4;
        float f = i2;
        float f2 = i3;
        if (-1 == i) {
            C26400a valueAt = i == -1 ? this.f74002b.valueAt(0) : this.f74002b.get(-1);
            if (valueAt == null) {
                i4 = -1;
            } else {
                int m1943a = valueAt.m1943a(f, f2);
                i4 = -1 == m1943a ? -1 : m1943a == -1 ? valueAt.f74005c : valueAt.f74004b.get(m1943a).f74010e;
            }
        } else {
            C26400a c26400a = this.f74002b.get(i);
            if (c26400a == null) {
                i4 = -1;
            } else {
                int m1943a2 = c26400a.m1943a(f, f2);
                i4 = m1943a2 == -1 ? c26400a.f74005c : c26400a.f74004b.get(m1943a2).f74010e;
            }
        }
        return i4;
    }
}
