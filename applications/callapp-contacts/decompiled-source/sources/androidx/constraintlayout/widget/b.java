package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import androidx.constraintlayout.widget.e;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    c f1609a;
    private final ConstraintLayout e;

    /* renamed from: b  reason: collision with root package name */
    int f1610b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f1611c = -1;
    private SparseArray<a> f = new SparseArray<>();
    private SparseArray<c> g = new SparseArray<>();

    /* renamed from: d  reason: collision with root package name */
    d f1612d = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f1613a;

        /* renamed from: b  reason: collision with root package name */
        ArrayList<C0037b> f1614b = new ArrayList<>();

        /* renamed from: c  reason: collision with root package name */
        int f1615c;

        /* renamed from: d  reason: collision with root package name */
        c f1616d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f1615c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.State_android_id) {
                    this.f1613a = obtainStyledAttributes.getResourceId(index, this.f1613a);
                } else if (index == e.b.State_constraints) {
                    this.f1615c = obtainStyledAttributes.getResourceId(index, this.f1615c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1615c);
                    context.getResources().getResourceName(this.f1615c);
                    if ("layout".equals(resourceTypeName)) {
                        c cVar = new c();
                        this.f1616d = cVar;
                        cVar.a(context, this.f1615c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final int a(float f, float f2) {
            for (int i = 0; i < this.f1614b.size(); i++) {
                if (this.f1614b.get(i).a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$b.class */
    public static final class C0037b {

        /* renamed from: a  reason: collision with root package name */
        float f1617a;

        /* renamed from: b  reason: collision with root package name */
        float f1618b;

        /* renamed from: c  reason: collision with root package name */
        float f1619c;

        /* renamed from: d  reason: collision with root package name */
        float f1620d;
        int e;
        c f;

        public C0037b(Context context, XmlPullParser xmlPullParser) {
            this.f1617a = Float.NaN;
            this.f1618b = Float.NaN;
            this.f1619c = Float.NaN;
            this.f1620d = Float.NaN;
            this.e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), e.b.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.Variant_constraints) {
                    this.e = obtainStyledAttributes.getResourceId(index, this.e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.e);
                    context.getResources().getResourceName(this.e);
                    if ("layout".equals(resourceTypeName)) {
                        c cVar = new c();
                        this.f = cVar;
                        cVar.a(context, this.e);
                    }
                } else if (index == e.b.Variant_region_heightLessThan) {
                    this.f1620d = obtainStyledAttributes.getDimension(index, this.f1620d);
                } else if (index == e.b.Variant_region_heightMoreThan) {
                    this.f1618b = obtainStyledAttributes.getDimension(index, this.f1618b);
                } else if (index == e.b.Variant_region_widthLessThan) {
                    this.f1619c = obtainStyledAttributes.getDimension(index, this.f1619c);
                } else if (index == e.b.Variant_region_widthMoreThan) {
                    this.f1617a = obtainStyledAttributes.getDimension(index, this.f1617a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        final boolean a(float f, float f2) {
            if (!Float.isNaN(this.f1617a) && f < this.f1617a) {
                return false;
            }
            if (!Float.isNaN(this.f1618b) && f2 < this.f1618b) {
                return false;
            }
            if (Float.isNaN(this.f1619c) || f <= this.f1619c) {
                return Float.isNaN(this.f1620d) || f2 <= this.f1620d;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, ConstraintLayout constraintLayout, int i) {
        this.e = constraintLayout;
        a(context, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void a(Context context, int i) {
        char c2;
        int i2;
        XmlResourceParser xml = context.getResources().getXml(i);
        a aVar = null;
        try {
            int eventType = xml.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xml.getName();
                    aVar = aVar;
                } else if (eventType != 2) {
                    aVar = aVar;
                } else {
                    String name = xml.getName();
                    int i3 = 0;
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    if (c2 == 2) {
                        aVar = new a(context, xml);
                        this.f.put(aVar.f1613a, aVar);
                    } else if (c2 == 3) {
                        C0037b bVar = new C0037b(context, xml);
                        aVar = aVar;
                        if (aVar != null) {
                            aVar.f1614b.add(bVar);
                            aVar = aVar;
                        }
                    } else if (c2 != 4) {
                        aVar = aVar;
                    } else {
                        c cVar = new c();
                        int attributeCount = xml.getAttributeCount();
                        while (true) {
                            aVar = aVar;
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
                                    cVar.a(context, (XmlPullParser) xml);
                                    this.g.put(i4, cVar);
                                    aVar = aVar;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    public final void a(int i, float f, float f2) {
        int a2;
        int i2 = this.f1610b;
        if (i2 == i) {
            a valueAt = i == -1 ? this.f.valueAt(0) : this.f.get(i2);
            if ((this.f1611c == -1 || !valueAt.f1614b.get(this.f1611c).a(f, f2)) && this.f1611c != (a2 = valueAt.a(f, f2))) {
                c cVar = a2 == -1 ? this.f1609a : valueAt.f1614b.get(a2).f;
                if (a2 != -1) {
                    valueAt.f1614b.get(a2);
                }
                if (cVar != null) {
                    this.f1611c = a2;
                    cVar.b(this.e);
                    return;
                }
                return;
            }
            return;
        }
        this.f1610b = i;
        a aVar = this.f.get(i);
        int a3 = aVar.a(f, f2);
        c cVar2 = a3 == -1 ? aVar.f1616d : aVar.f1614b.get(a3).f;
        if (a3 != -1) {
            aVar.f1614b.get(a3);
        }
        if (cVar2 == null) {
            StringBuilder sb = new StringBuilder("NO Constraint set found ! id=");
            sb.append(i);
            sb.append(", dim =");
            sb.append(f);
            sb.append(", ");
            sb.append(f2);
            return;
        }
        this.f1611c = a3;
        cVar2.b(this.e);
    }
}
