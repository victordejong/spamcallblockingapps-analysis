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
public class C0183h {

    /* renamed from: b */
    static HashMap<String, Constructor<? extends AbstractC0177c>> f864b;

    /* renamed from: a */
    private HashMap<Integer, ArrayList<AbstractC0177c>> f865a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends AbstractC0177c>> hashMap = new HashMap<>();
        f864b = hashMap;
        try {
            hashMap.put("KeyAttribute", d.class.getConstructor(new Class[0]));
            f864b.put("KeyPosition", i.class.getConstructor(new Class[0]));
            f864b.put("KeyCycle", f.class.getConstructor(new Class[0]));
            f864b.put("KeyTimeCycle", k.class.getConstructor(new Class[0]));
            f864b.put("KeyTrigger", l.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public C0183h(Context context, XmlPullParser xmlPullParser) {
        AbstractC0177c abstractC0177c;
        Exception e;
        AbstractC0177c newInstance;
        AbstractC0177c abstractC0177c2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f864b.containsKey(name)) {
                        try {
                            newInstance = f864b.get(name).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            newInstance.m14277c(context, Xml.asAttributeSet(xmlPullParser));
                            m14254b(newInstance);
                            abstractC0177c2 = newInstance;
                        } catch (Exception e3) {
                            e = e3;
                            abstractC0177c2 = newInstance;
                            Log.e("KeyFrames", "unable to create ", e);
                            abstractC0177c = abstractC0177c2;
                            eventType = xmlPullParser.next();
                            abstractC0177c2 = abstractC0177c;
                        }
                        abstractC0177c = abstractC0177c2;
                    } else {
                        abstractC0177c = abstractC0177c2;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            abstractC0177c = abstractC0177c2;
                            if (abstractC0177c2 != null) {
                                HashMap<String, ConstraintAttribute> hashMap = abstractC0177c2.f842d;
                                abstractC0177c = abstractC0177c2;
                                if (hashMap != null) {
                                    ConstraintAttribute.m13866g(context, xmlPullParser, hashMap);
                                    abstractC0177c = abstractC0177c2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    abstractC0177c = abstractC0177c2;
                } else {
                    abstractC0177c = abstractC0177c2;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                abstractC0177c2 = abstractC0177c;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m14254b(AbstractC0177c abstractC0177c) {
        if (!this.f865a.containsKey(Integer.valueOf(abstractC0177c.f840b))) {
            this.f865a.put(Integer.valueOf(abstractC0177c.f840b), new ArrayList<>());
        }
        this.f865a.get(Integer.valueOf(abstractC0177c.f840b)).add(abstractC0177c);
    }

    /* renamed from: a */
    public void m14255a(C0185n c0185n) {
        ArrayList<AbstractC0177c> arrayList = this.f865a.get(Integer.valueOf(c0185n.f889b));
        if (arrayList != null) {
            c0185n.m14239b(arrayList);
        }
        ArrayList<AbstractC0177c> arrayList2 = this.f865a.get(-1);
        if (arrayList2 != null) {
            Iterator<AbstractC0177c> it = arrayList2.iterator();
            while (it.hasNext()) {
                AbstractC0177c next = it.next();
                if (next.m14276d(((ConstraintLayout.LayoutParams) c0185n.f888a.getLayoutParams()).f1352U)) {
                    c0185n.m14240a(next);
                }
            }
        }
    }
}
