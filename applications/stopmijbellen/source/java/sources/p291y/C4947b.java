package p291y;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0309b;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p015b0.C0713a;
/* renamed from: y.b */
/* loaded from: classes-dex2jar.jar:y/b.class */
public class C4947b {

    /* renamed from: a */
    public final ConstraintLayout f15088a;

    /* renamed from: b */
    public int f15089b = -1;

    /* renamed from: c */
    public int f15090c = -1;

    /* renamed from: d */
    public SparseArray<C4948a> f15091d = new SparseArray<>();

    /* renamed from: e */
    public SparseArray<C0309b> f15092e = new SparseArray<>();

    /* renamed from: y.b$a */
    /* loaded from: classes-dex2jar.jar:y/b$a.class */
    public static class C4948a {

        /* renamed from: a */
        public int f15093a;

        /* renamed from: b */
        public ArrayList<C4949b> f15094b = new ArrayList<>();

        /* renamed from: c */
        public int f15095c;

        /* renamed from: d */
        public C0309b f15096d;

        public C4948a(Context context, XmlPullParser xmlPullParser) {
            this.f15095c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0713a.f2762n);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f15093a = obtainStyledAttributes.getResourceId(index, this.f15093a);
                } else if (index == 1) {
                    this.f15095c = obtainStyledAttributes.getResourceId(index, this.f15095c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f15095c);
                    context.getResources().getResourceName(this.f15095c);
                    if ("layout".equals(resourceTypeName)) {
                        C0309b c0309b = new C0309b();
                        this.f15096d = c0309b;
                        c0309b.m8357c((ConstraintLayout) LayoutInflater.from(context).inflate(this.f15095c, (ViewGroup) null));
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public int m204a(float f, float f2) {
            for (int i = 0; i < this.f15094b.size(); i++) {
                if (this.f15094b.get(i).m203a(f, f2)) {
                    return i;
                }
            }
            return -1;
        }
    }

    /* renamed from: y.b$b */
    /* loaded from: classes-dex2jar.jar:y/b$b.class */
    public static class C4949b {

        /* renamed from: a */
        public float f15097a;

        /* renamed from: b */
        public float f15098b;

        /* renamed from: c */
        public float f15099c;

        /* renamed from: d */
        public float f15100d;

        /* renamed from: e */
        public int f15101e;

        /* renamed from: f */
        public C0309b f15102f;

        public C4949b(Context context, XmlPullParser xmlPullParser) {
            this.f15097a = Float.NaN;
            this.f15098b = Float.NaN;
            this.f15099c = Float.NaN;
            this.f15100d = Float.NaN;
            this.f15101e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0713a.f2764p);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f15101e = obtainStyledAttributes.getResourceId(index, this.f15101e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f15101e);
                    context.getResources().getResourceName(this.f15101e);
                    if ("layout".equals(resourceTypeName)) {
                        C0309b c0309b = new C0309b();
                        this.f15102f = c0309b;
                        c0309b.m8357c((ConstraintLayout) LayoutInflater.from(context).inflate(this.f15101e, (ViewGroup) null));
                    }
                } else if (index == 1) {
                    this.f15100d = obtainStyledAttributes.getDimension(index, this.f15100d);
                } else if (index == 2) {
                    this.f15098b = obtainStyledAttributes.getDimension(index, this.f15098b);
                } else if (index == 3) {
                    this.f15099c = obtainStyledAttributes.getDimension(index, this.f15099c);
                } else if (index == 4) {
                    this.f15097a = obtainStyledAttributes.getDimension(index, this.f15097a);
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        public boolean m203a(float f, float f2) {
            if (Float.isNaN(this.f15097a) || f >= this.f15097a) {
                if (!Float.isNaN(this.f15098b) && f2 < this.f15098b) {
                    return false;
                }
                if (!Float.isNaN(this.f15099c) && f > this.f15099c) {
                    return false;
                }
                return Float.isNaN(this.f15100d) || f2 <= this.f15100d;
            }
            return false;
        }
    }

    public C4947b(Context context, ConstraintLayout constraintLayout, int i) {
        C4948a c4948a;
        boolean z;
        this.f15088a = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            int eventType = xml.getEventType();
            C4948a c4948a2 = null;
            while (true) {
                C4948a c4948a3 = c4948a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                    c4948a = c4948a3;
                } else if (eventType != 2) {
                    c4948a = c4948a3;
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
                        c4948a = new C4948a(context, xml);
                        this.f15091d.put(c4948a.f15093a, c4948a);
                    } else if (z) {
                        C4949b c4949b = new C4949b(context, xml);
                        c4948a = c4948a3;
                        if (c4948a3 != null) {
                            c4948a3.f15094b.add(c4949b);
                            c4948a = c4948a3;
                        }
                    } else if (!z) {
                        c4948a = c4948a3;
                    } else {
                        m205a(context, xml);
                        c4948a = c4948a3;
                    }
                }
                eventType = xml.next();
                c4948a2 = c4948a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m205a(Context context, XmlPullParser xmlPullParser) {
        int eventType;
        C0309b.C0310a c0310a;
        boolean z;
        boolean z2;
        C0309b c0309b = new C0309b();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (attributeName != null && attributeValue != null && FacebookAdapter.KEY_ID.equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), FacebookAdapter.KEY_ID, context.getPackageName()) : -1;
                int i2 = identifier;
                if (identifier == -1) {
                    i2 = identifier;
                    if (attributeValue.length() > 1) {
                        i2 = Integer.parseInt(attributeValue.substring(1));
                    }
                }
                try {
                    eventType = xmlPullParser.getEventType();
                    c0310a = null;
                } catch (IOException e) {
                    e.printStackTrace();
                } catch (XmlPullParserException e2) {
                    e2.printStackTrace();
                }
                while (eventType != 1) {
                    if (eventType == 0) {
                        xmlPullParser.getName();
                    } else if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        switch (name.hashCode()) {
                            case -2025855158:
                                if (name.equals("Layout")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -1984451626:
                                if (name.equals("Motion")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -1962203927:
                                if (name.equals("ConstraintOverride")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -1269513683:
                                if (name.equals("PropertySet")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -1238332596:
                                if (name.equals("Transform")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case -71750448:
                                if (name.equals("Guideline")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 366511058:
                                if (name.equals("CustomMethod")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 1331510167:
                                if (name.equals("Barrier")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 1791837707:
                                if (name.equals("CustomAttribute")) {
                                    z = true;
                                    break;
                                }
                                z = true;
                                break;
                            case 1803088381:
                                if (name.equals("Constraint")) {
                                    z = false;
                                    break;
                                }
                                z = true;
                                break;
                            default:
                                z = true;
                                break;
                        }
                        switch (z) {
                            case false:
                                c0310a = c0309b.m8355e(context, Xml.asAttributeSet(xmlPullParser), false);
                                break;
                            case true:
                                c0310a = c0309b.m8355e(context, Xml.asAttributeSet(xmlPullParser), true);
                                break;
                            case true:
                                c0310a = c0309b.m8355e(context, Xml.asAttributeSet(xmlPullParser), false);
                                C0309b.C0312b c0312b = c0310a.f1295d;
                                c0312b.f1338a = true;
                                c0312b.f1340b = true;
                                break;
                            case true:
                                c0310a = c0309b.m8355e(context, Xml.asAttributeSet(xmlPullParser), false);
                                c0310a.f1295d.f1355i0 = 1;
                                break;
                            case true:
                                if (c0310a == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                c0310a.f1293b.m8342a(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case true:
                                if (c0310a == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                c0310a.f1296e.m8341a(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case true:
                                if (c0310a == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                c0310a.f1295d.m8344a(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case true:
                                if (c0310a == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                c0310a.f1294c.m8343a(context, Xml.asAttributeSet(xmlPullParser));
                                break;
                            case true:
                            case true:
                                if (c0310a == null) {
                                    throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                                }
                                C4946a.m208a(context, xmlPullParser, c0310a.f1297f);
                                break;
                        }
                    } else if (eventType == 3) {
                        String lowerCase = xmlPullParser.getName().toLowerCase(Locale.ROOT);
                        switch (lowerCase.hashCode()) {
                            case -2075718416:
                                if (lowerCase.equals("guideline")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case -190376483:
                                if (lowerCase.equals("constraint")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 426575017:
                                if (lowerCase.equals("constraintoverride")) {
                                    z2 = true;
                                    break;
                                }
                                z2 = true;
                                break;
                            case 2146106725:
                                if (lowerCase.equals("constraintset")) {
                                    z2 = false;
                                    break;
                                }
                                z2 = true;
                                break;
                            default:
                                z2 = true;
                                break;
                        }
                        if (!z2) {
                            this.f15092e.put(i2, c0309b);
                            return;
                        } else if (z2 || z2 || z2) {
                            c0309b.f1291c.put(Integer.valueOf(c0310a.f1292a), c0310a);
                            c0310a = null;
                        }
                    }
                    eventType = xmlPullParser.next();
                }
                this.f15092e.put(i2, c0309b);
                return;
            }
        }
    }
}
