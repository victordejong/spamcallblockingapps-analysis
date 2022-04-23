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
        Exception e;
        AbstractC0177c cVar;
        AbstractC0177c cVar2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f864b.containsKey(name)) {
                        try {
                            cVar = (AbstractC0177c) f864b.get(name).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            cVar.m14277c(context, Xml.asAttributeSet(xmlPullParser));
                            m14254b(cVar);
                            cVar2 = cVar;
                        } catch (Exception e3) {
                            e = e3;
                            cVar2 = cVar;
                            Log.e("KeyFrames", "unable to create ", e);
                            eventType = xmlPullParser.next();
                        }
                    } else {
                        cVar2 = cVar2;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            cVar2 = cVar2;
                            if (cVar2 != null) {
                                HashMap<String, ConstraintAttribute> hashMap = cVar2.f842d;
                                cVar2 = cVar2;
                                if (hashMap != null) {
                                    ConstraintAttribute.m13866g(context, xmlPullParser, hashMap);
                                    cVar2 = cVar2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    cVar2 = cVar2;
                } else {
                    cVar2 = cVar2;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m14254b(AbstractC0177c cVar) {
        if (!this.f865a.containsKey(Integer.valueOf(cVar.f840b))) {
            this.f865a.put(Integer.valueOf(cVar.f840b), new ArrayList<>());
        }
        this.f865a.get(Integer.valueOf(cVar.f840b)).add(cVar);
    }

    /* renamed from: a */
    public void m14255a(C0185n nVar) {
        ArrayList<AbstractC0177c> arrayList = this.f865a.get(Integer.valueOf(nVar.f889b));
        if (arrayList != null) {
            nVar.m14239b(arrayList);
        }
        ArrayList<AbstractC0177c> arrayList2 = this.f865a.get(-1);
        if (arrayList2 != null) {
            Iterator<AbstractC0177c> it = arrayList2.iterator();
            while (it.hasNext()) {
                AbstractC0177c next = it.next();
                if (next.m14276d(((ConstraintLayout.LayoutParams) nVar.f888a.getLayoutParams()).f1352U)) {
                    nVar.m14240a(next);
                }
            }
        }
    }
}
