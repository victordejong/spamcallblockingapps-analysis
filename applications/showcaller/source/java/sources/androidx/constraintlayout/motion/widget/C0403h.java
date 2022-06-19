package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.motion.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/h.class */
public class C0403h {

    /* renamed from: a */
    static HashMap<String, Constructor<? extends AbstractC0380c>> f1746a;

    /* renamed from: b */
    private HashMap<Integer, ArrayList<AbstractC0380c>> f1747b = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends AbstractC0380c>> hashMap = new HashMap<>();
        f1746a = hashMap;
        try {
            hashMap.put("KeyAttribute", C0381d.class.getConstructor(new Class[0]));
            f1746a.put("KeyPosition", C0404i.class.getConstructor(new Class[0]));
            f1746a.put("KeyCycle", C0384f.class.getConstructor(new Class[0]));
            f1746a.put("KeyTimeCycle", C0407k.class.getConstructor(new Class[0]));
            f1746a.put("KeyTrigger", C0409l.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public C0403h(Context context, XmlPullParser xmlPullParser) {
        AbstractC0380c abstractC0380c;
        Exception e;
        AbstractC0380c newInstance;
        AbstractC0380c abstractC0380c2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f1746a.containsKey(name)) {
                        try {
                            newInstance = f1746a.get(name).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            newInstance.mo34357c(context, Xml.asAttributeSet(xmlPullParser));
                            m34398b(newInstance);
                            abstractC0380c2 = newInstance;
                        } catch (Exception e3) {
                            e = e3;
                            abstractC0380c2 = newInstance;
                            Log.e("KeyFrames", "unable to create ", e);
                            abstractC0380c = abstractC0380c2;
                            eventType = xmlPullParser.next();
                            abstractC0380c2 = abstractC0380c;
                        }
                        abstractC0380c = abstractC0380c2;
                    } else {
                        abstractC0380c = abstractC0380c2;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            abstractC0380c = abstractC0380c2;
                            if (abstractC0380c2 != null) {
                                HashMap<String, ConstraintAttribute> hashMap = abstractC0380c2.f1680f;
                                abstractC0380c = abstractC0380c2;
                                if (hashMap != null) {
                                    ConstraintAttribute.m33712g(context, xmlPullParser, hashMap);
                                    abstractC0380c = abstractC0380c2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    abstractC0380c = abstractC0380c2;
                } else {
                    abstractC0380c = abstractC0380c2;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                abstractC0380c2 = abstractC0380c;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m34398b(AbstractC0380c abstractC0380c) {
        if (!this.f1747b.containsKey(Integer.valueOf(abstractC0380c.f1677c))) {
            this.f1747b.put(Integer.valueOf(abstractC0380c.f1677c), new ArrayList<>());
        }
        this.f1747b.get(Integer.valueOf(abstractC0380c.f1677c)).add(abstractC0380c);
    }

    /* renamed from: a */
    public void m34399a(C0412n c0412n) {
        ArrayList<AbstractC0380c> arrayList = this.f1747b.get(Integer.valueOf(c0412n.f1833b));
        if (arrayList != null) {
            c0412n.m34331b(arrayList);
        }
        ArrayList<AbstractC0380c> arrayList2 = this.f1747b.get(-1);
        if (arrayList2 != null) {
            Iterator<AbstractC0380c> it = arrayList2.iterator();
            while (it.hasNext()) {
                AbstractC0380c next = it.next();
                if (next.m34488d(((ConstraintLayout.LayoutParams) c0412n.f1832a.getLayoutParams()).f2523V)) {
                    c0412n.m34332a(next);
                }
            }
        }
    }
}
