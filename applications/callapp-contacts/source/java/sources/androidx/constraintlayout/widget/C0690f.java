package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.C0687e;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f.class */
public final class C0690f {

    /* renamed from: a */
    int f3158a = -1;

    /* renamed from: b */
    int f3159b = -1;

    /* renamed from: c */
    int f3160c = -1;

    /* renamed from: d */
    public SparseArray<C0691a> f3161d = new SparseArray<>();

    /* renamed from: e */
    private SparseArray<C0680c> f3162e = new SparseArray<>();

    /* renamed from: f */
    private AbstractC0686d f3163f = null;

    /* renamed from: androidx.constraintlayout.widget.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$a.class */
    public static final class C0691a {

        /* renamed from: a */
        int f3164a;

        /* renamed from: b */
        public ArrayList<C0692b> f3165b = new ArrayList<>();

        /* renamed from: c */
        public int f3166c;

        /* renamed from: d */
        boolean f3167d;

        public C0691a(Context context, XmlPullParser xmlPullParser) {
            this.f3166c = -1;
            this.f3167d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.State_android_id) {
                    this.f3164a = obtainStyledAttributes.getResourceId(index, this.f3164a);
                } else if (index == C0687e.C0689b.State_constraints) {
                    this.f3166c = obtainStyledAttributes.getResourceId(index, this.f3166c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3166c);
                    context.getResources().getResourceName(this.f3166c);
                    if ("layout".equals(resourceTypeName)) {
                        this.f3167d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final int m44672a(float f, float f2) {
            for (int i = 0; i < this.f3165b.size(); i++) {
                if (this.f3165b.get(i).m44671a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$b.class */
    public static final class C0692b {

        /* renamed from: a */
        float f3168a;

        /* renamed from: b */
        float f3169b;

        /* renamed from: c */
        float f3170c;

        /* renamed from: d */
        float f3171d;

        /* renamed from: e */
        public int f3172e;

        /* renamed from: f */
        boolean f3173f;

        public C0692b(Context context, XmlPullParser xmlPullParser) {
            this.f3168a = Float.NaN;
            this.f3169b = Float.NaN;
            this.f3170c = Float.NaN;
            this.f3171d = Float.NaN;
            this.f3172e = -1;
            this.f3173f = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.Variant_constraints) {
                    this.f3172e = obtainStyledAttributes.getResourceId(index, this.f3172e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f3172e);
                    context.getResources().getResourceName(this.f3172e);
                    if ("layout".equals(resourceTypeName)) {
                        this.f3173f = true;
                    }
                } else if (index == C0687e.C0689b.Variant_region_heightLessThan) {
                    this.f3171d = obtainStyledAttributes.getDimension(index, this.f3171d);
                } else if (index == C0687e.C0689b.Variant_region_heightMoreThan) {
                    this.f3169b = obtainStyledAttributes.getDimension(index, this.f3169b);
                } else if (index == C0687e.C0689b.Variant_region_widthLessThan) {
                    this.f3170c = obtainStyledAttributes.getDimension(index, this.f3170c);
                } else if (index == C0687e.C0689b.Variant_region_widthMoreThan) {
                    this.f3168a = obtainStyledAttributes.getDimension(index, this.f3168a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public final boolean m44671a(float f, float f2) {
            if (Float.isNaN(this.f3168a) || f >= this.f3168a) {
                if (!Float.isNaN(this.f3169b) && f2 < this.f3169b) {
                    return false;
                }
                if (!Float.isNaN(this.f3170c) && f > this.f3170c) {
                    return false;
                }
                return Float.isNaN(this.f3171d) || f2 <= this.f3171d;
            }
            return false;
        }
    }

    public C0690f(Context context, XmlPullParser xmlPullParser) {
        m44673a(context, xmlPullParser);
    }

    /* renamed from: a */
    private int m44675a(int i, float f, float f2) {
        int m44672a;
        if (-1 != i) {
            C0691a c0691a = this.f3161d.get(i);
            if (c0691a == null) {
                return -1;
            }
            int m44672a2 = c0691a.m44672a(f, f2);
            return m44672a2 == -1 ? c0691a.f3166c : c0691a.f3165b.get(m44672a2).f3172e;
        }
        C0691a valueAt = i == -1 ? this.f3161d.valueAt(0) : this.f3161d.get(this.f3159b);
        if (valueAt == null) {
            return -1;
        }
        if ((this.f3160c != -1 && valueAt.f3165b.get(-1).m44671a(f, f2)) || -1 == (m44672a = valueAt.m44672a(f, f2))) {
            return -1;
        }
        return m44672a == -1 ? valueAt.f3166c : valueAt.f3165b.get(m44672a).f3172e;
    }

    /* renamed from: a */
    private void m44673a(Context context, XmlPullParser xmlPullParser) {
        C0691a c0691a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0687e.C0689b.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0687e.C0689b.StateSet_defaultState) {
                this.f3158a = obtainStyledAttributes.getResourceId(index, this.f3158a);
            }
        }
        obtainStyledAttributes.recycle();
        C0691a c0691a2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0691a = c0691a2;
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
                    c0691a = c0691a2;
                    if (z) {
                        c0691a = c0691a2;
                        if (!z) {
                            if (z) {
                                c0691a = new C0691a(context, xmlPullParser);
                                this.f3161d.put(c0691a.f3164a, c0691a);
                            } else if (!z) {
                                c0691a = c0691a2;
                            } else {
                                C0692b c0692b = new C0692b(context, xmlPullParser);
                                c0691a = c0691a2;
                                if (c0691a2 != null) {
                                    c0691a2.f3165b.add(c0692b);
                                    c0691a = c0691a2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    c0691a = c0691a2;
                } else {
                    c0691a = c0691a2;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                c0691a2 = c0691a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public final int m44674a(int i, int i2, int i3) {
        return m44675a(i, -1.0f, -1.0f);
    }
}
