package p1727n3.p1795i.p1796a.p1798b;

import android.content.Context;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p1727n3.p1795i.p1802c.C26383a;
/* renamed from: n3.i.a.b.g */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/g.class */
public class C26303g {

    /* renamed from: b */
    public static HashMap<String, Constructor<? extends AbstractC26280b>> f73369b;

    /* renamed from: a */
    public HashMap<Integer, ArrayList<AbstractC26280b>> f73370a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends AbstractC26280b>> hashMap = new HashMap<>();
        f73369b = hashMap;
        try {
            hashMap.put("KeyAttribute", C26281c.class.getConstructor(new Class[0]));
            f73369b.put("KeyPosition", h.class.getConstructor(new Class[0]));
            f73369b.put("KeyCycle", C26284e.class.getConstructor(new Class[0]));
            f73369b.put("KeyTimeCycle", C26305j.class.getConstructor(new Class[0]));
            f73369b.put("KeyTrigger", C26307k.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
        }
    }

    public C26303g(Context context, XmlPullParser xmlPullParser) {
        AbstractC26280b abstractC26280b;
        try {
            int eventType = xmlPullParser.getEventType();
            AbstractC26280b abstractC26280b2 = null;
            while (true) {
                AbstractC26280b abstractC26280b3 = abstractC26280b2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f73369b.containsKey(name)) {
                        try {
                            abstractC26280b = f73369b.get(name).newInstance(new Object[0]);
                            try {
                                abstractC26280b.mo2208c(context, Xml.asAttributeSet(xmlPullParser));
                                m2212b(abstractC26280b);
                            } catch (Exception e) {
                            }
                        } catch (Exception e2) {
                            abstractC26280b = abstractC26280b3;
                        }
                    } else {
                        abstractC26280b = abstractC26280b3;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            abstractC26280b = abstractC26280b3;
                            if (abstractC26280b3 != null) {
                                HashMap<String, C26383a> hashMap = abstractC26280b3.f73314d;
                                abstractC26280b = abstractC26280b3;
                                if (hashMap != null) {
                                    C26383a.m1993e(context, xmlPullParser, hashMap);
                                    abstractC26280b = abstractC26280b3;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    abstractC26280b = abstractC26280b3;
                } else {
                    abstractC26280b = abstractC26280b3;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                abstractC26280b2 = abstractC26280b;
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m2213a(C26310m c26310m) {
        ArrayList<AbstractC26280b> arrayList = this.f73370a.get(Integer.valueOf(c26310m.f73429b));
        if (arrayList != null) {
            c26310m.f73449v.addAll(arrayList);
        }
        ArrayList<AbstractC26280b> arrayList2 = this.f73370a.get(-1);
        if (arrayList2 != null) {
            Iterator<AbstractC26280b> it = arrayList2.iterator();
            while (it.hasNext()) {
                AbstractC26280b next = it.next();
                String str = ((ConstraintLayout.C0111a) c26310m.f73428a.getLayoutParams()).f617U;
                String str2 = next.f73313c;
                if ((str2 == null || str == null) ? false : str.matches(str2)) {
                    c26310m.f73449v.add(next);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m2212b(AbstractC26280b abstractC26280b) {
        if (!this.f73370a.containsKey(Integer.valueOf(abstractC26280b.f73312b))) {
            this.f73370a.put(Integer.valueOf(abstractC26280b.f73312b), new ArrayList<>());
        }
        this.f73370a.get(Integer.valueOf(abstractC26280b.f73312b)).add(abstractC26280b);
    }
}
