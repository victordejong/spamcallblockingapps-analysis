package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.e;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    int f1645a = -1;

    /* renamed from: b  reason: collision with root package name */
    int f1646b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f1647c = -1;

    /* renamed from: d  reason: collision with root package name */
    public SparseArray<a> f1648d = new SparseArray<>();
    private SparseArray<c> e = new SparseArray<>();
    private d f = null;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f1649a;

        /* renamed from: b  reason: collision with root package name */
        public ArrayList<b> f1650b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        public int f1651c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1652d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f1651c = -1;
            this.f1652d = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.State_android_id) {
                    this.f1649a = obtainStyledAttributes.getResourceId(index, this.f1649a);
                } else if (index == e.b.State_constraints) {
                    this.f1651c = obtainStyledAttributes.getResourceId(index, this.f1651c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1651c);
                    context.getResources().getResourceName(this.f1651c);
                    if ("layout".equals(resourceTypeName)) {
                        this.f1652d = true;
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final int a(float f, float f2) {
            for (int i = 0; i < this.f1650b.size(); i++) {
                if (this.f1650b.get(i).a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/f$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        float f1653a;

        /* renamed from: b  reason: collision with root package name */
        float f1654b;

        /* renamed from: c  reason: collision with root package name */
        float f1655c;

        /* renamed from: d  reason: collision with root package name */
        float f1656d;
        public int e;
        boolean f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f1653a = Float.NaN;
            this.f1654b = Float.NaN;
            this.f1655c = Float.NaN;
            this.f1656d = Float.NaN;
            this.e = -1;
            this.f = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.Variant_constraints) {
                    this.e = obtainStyledAttributes.getResourceId(index, this.e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.e);
                    context.getResources().getResourceName(this.e);
                    if ("layout".equals(resourceTypeName)) {
                        this.f = true;
                    }
                } else if (index == e.b.Variant_region_heightLessThan) {
                    this.f1656d = obtainStyledAttributes.getDimension(index, this.f1656d);
                } else if (index == e.b.Variant_region_heightMoreThan) {
                    this.f1654b = obtainStyledAttributes.getDimension(index, this.f1654b);
                } else if (index == e.b.Variant_region_widthLessThan) {
                    this.f1655c = obtainStyledAttributes.getDimension(index, this.f1655c);
                } else if (index == e.b.Variant_region_widthMoreThan) {
                    this.f1653a = obtainStyledAttributes.getDimension(index, this.f1653a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final boolean a(float f, float f2) {
            if (!Float.isNaN(this.f1653a) && f < this.f1653a) {
                return false;
            }
            if (!Float.isNaN(this.f1654b) && f2 < this.f1654b) {
                return false;
            }
            if (Float.isNaN(this.f1655c) || f <= this.f1655c) {
                return Float.isNaN(this.f1656d) || f2 <= this.f1656d;
            }
            return false;
        }
    }

    public f(Context context, XmlPullParser xmlPullParser) {
        a(context, xmlPullParser);
    }

    private int a(int i, float f, float f2) {
        int a2;
        if (-1 == i) {
            a valueAt = i == -1 ? this.f1648d.valueAt(0) : this.f1648d.get(this.f1646b);
            if (valueAt == null) {
                return -1;
            }
            if ((this.f1647c == -1 || !valueAt.f1650b.get(-1).a(f, f2)) && -1 != (a2 = valueAt.a(f, f2))) {
                return a2 == -1 ? valueAt.f1651c : valueAt.f1650b.get(a2).e;
            }
            return -1;
        }
        a aVar = this.f1648d.get(i);
        if (aVar == null) {
            return -1;
        }
        int a3 = aVar.a(f, f2);
        return a3 == -1 ? aVar.f1651c : aVar.f1650b.get(a3).e;
    }

    private void a(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.StateSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == e.b.StateSet_defaultState) {
                this.f1645a = obtainStyledAttributes.getResourceId(index, this.f1645a);
            }
        }
        obtainStyledAttributes.recycle();
        a aVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xmlPullParser.getName();
                    aVar = aVar;
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    char c2 = 65535;
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    aVar = aVar;
                    if (c2 != 0) {
                        aVar = aVar;
                        if (c2 != 1) {
                            if (c2 == 2) {
                                aVar = new a(context, xmlPullParser);
                                this.f1648d.put(aVar.f1649a, aVar);
                            } else if (c2 != 3) {
                                aVar = aVar;
                            } else {
                                b bVar = new b(context, xmlPullParser);
                                aVar = aVar;
                                if (aVar != null) {
                                    aVar.f1650b.add(bVar);
                                    aVar = aVar;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    aVar = aVar;
                } else {
                    aVar = aVar;
                    if ("StateSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    public final int a(int i, int i2, int i3) {
        return a(i, -1.0f, -1.0f);
    }
}
