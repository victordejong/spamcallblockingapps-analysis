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

    /* JADX INFO: Access modifiers changed from: package-private */
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
                        C0221b bVar = new C0221b();
                        this.f1414d = bVar;
                        bVar.m13800i(context, this.f1413c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m13815a(C0220b bVar) {
            this.f1412b.add(bVar);
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

    /* JADX INFO: Access modifiers changed from: package-private */
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
                        C0221b bVar = new C0221b();
                        this.f1420f = bVar;
                        bVar.m13800i(context, this.f1419e);
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
            if (!Float.isNaN(this.f1415a) && f < this.f1415a) {
                return false;
            }
            if (!Float.isNaN(this.f1416b) && f2 < this.f1416b) {
                return false;
            }
            if (Float.isNaN(this.f1417c) || f <= this.f1417c) {
                return Float.isNaN(this.f1418d) || f2 <= this.f1418d;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0218a(Context context, ConstraintLayout constraintLayout, int i) {
        this.f1404a = constraintLayout;
        m13819a(context, i);
    }

    /* renamed from: a */
    private void m13819a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        C0219a aVar = null;
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
                    char c = 65535;
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                c = 3;
                                break;
                            }
                            break;
                    }
                    aVar = aVar;
                    if (c != 0) {
                        aVar = aVar;
                        if (c != 1) {
                            if (c == 2) {
                                aVar = new C0219a(context, xml);
                                this.f1408e.put(aVar.f1411a, aVar);
                            } else if (c == 3) {
                                C0220b bVar = new C0220b(context, xml);
                                aVar = aVar;
                                if (aVar != null) {
                                    aVar.m13815a(bVar);
                                    aVar = aVar;
                                }
                            } else if (c != 4) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                aVar = aVar;
                            } else {
                                m13818b(context, xml);
                                aVar = aVar;
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

    /* renamed from: b */
    private void m13818b(Context context, XmlPullParser xmlPullParser) {
        C0221b bVar = new C0221b();
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
                bVar.m13785x(context, xmlPullParser);
                this.f1409f.put(i2, bVar);
                return;
            }
        }
    }

    /* renamed from: c */
    public void m13817c(AbstractC0227c cVar) {
    }

    /* renamed from: d */
    public void m13816d(int i, float f, float f2) {
        int b;
        int i2 = this.f1406c;
        if (i2 == i) {
            C0219a valueAt = i == -1 ? this.f1408e.valueAt(0) : this.f1408e.get(i2);
            int i3 = this.f1407d;
            if ((i3 == -1 || !valueAt.f1412b.get(i3).m13813a(f, f2)) && this.f1407d != (b = valueAt.m13814b(f, f2))) {
                C0221b bVar = b == -1 ? this.f1405b : valueAt.f1412b.get(b).f1420f;
                int i4 = b == -1 ? valueAt.f1413c : valueAt.f1412b.get(b).f1419e;
                if (bVar != null) {
                    this.f1407d = b;
                    AbstractC0227c cVar = this.f1410g;
                    if (cVar != null) {
                        cVar.m13765b(-1, i4);
                    }
                    bVar.m13805d(this.f1404a);
                    AbstractC0227c cVar2 = this.f1410g;
                    if (cVar2 != null) {
                        cVar2.m13766a(-1, i4);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        this.f1406c = i;
        C0219a aVar = this.f1408e.get(i);
        int b2 = aVar.m13814b(f, f2);
        C0221b bVar2 = b2 == -1 ? aVar.f1414d : aVar.f1412b.get(b2).f1420f;
        int i5 = b2 == -1 ? aVar.f1413c : aVar.f1412b.get(b2).f1419e;
        if (bVar2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
            return;
        }
        this.f1407d = b2;
        AbstractC0227c cVar3 = this.f1410g;
        if (cVar3 != null) {
            cVar3.m13765b(i, i5);
        }
        bVar2.m13805d(this.f1404a);
        AbstractC0227c cVar4 = this.f1410g;
        if (cVar4 != null) {
            cVar4.m13766a(i, i5);
        }
    }
}
