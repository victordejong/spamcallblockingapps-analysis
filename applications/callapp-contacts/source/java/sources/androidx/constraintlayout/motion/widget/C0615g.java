package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.C0674a;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.motion.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g.class */
public final class C0615g {

    /* renamed from: a */
    static HashMap<String, Constructor<? extends AbstractC0592b>> f2626a;

    /* renamed from: b */
    private HashMap<Integer, ArrayList<AbstractC0592b>> f2627b = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends AbstractC0592b>> hashMap = new HashMap<>();
        f2626a = hashMap;
        try {
            hashMap.put("KeyAttribute", C0593c.class.getConstructor(new Class[0]));
            f2626a.put("KeyPosition", C0616h.class.getConstructor(new Class[0]));
            f2626a.put("KeyCycle", C0596e.class.getConstructor(new Class[0]));
            f2626a.put("KeyTimeCycle", C0619j.class.getConstructor(new Class[0]));
            f2626a.put("KeyTrigger", C0621k.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public C0615g(Context context, XmlPullParser xmlPullParser) {
        AbstractC0592b abstractC0592b;
        Exception e;
        AbstractC0592b abstractC0592b2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f2626a.containsKey(name)) {
                        try {
                            AbstractC0592b newInstance = f2626a.get(name).newInstance(new Object[0]);
                            try {
                                newInstance.mo44866a(context, Xml.asAttributeSet(xmlPullParser));
                                if (!this.f2627b.containsKey(Integer.valueOf(newInstance.f2557c))) {
                                    this.f2627b.put(Integer.valueOf(newInstance.f2557c), new ArrayList<>());
                                }
                                this.f2627b.get(Integer.valueOf(newInstance.f2557c)).add(newInstance);
                                abstractC0592b2 = newInstance;
                            } catch (Exception e2) {
                                e = e2;
                                abstractC0592b2 = newInstance;
                                Log.e("KeyFrames", "unable to create ", e);
                                abstractC0592b = abstractC0592b2;
                                eventType = xmlPullParser.next();
                                abstractC0592b2 = abstractC0592b;
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                        abstractC0592b = abstractC0592b2;
                    } else {
                        abstractC0592b = abstractC0592b2;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            abstractC0592b = abstractC0592b2;
                            if (abstractC0592b2 != null) {
                                abstractC0592b = abstractC0592b2;
                                if (abstractC0592b2.f2560f != null) {
                                    C0674a.m44725a(context, xmlPullParser, abstractC0592b2.f2560f);
                                    abstractC0592b = abstractC0592b2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    abstractC0592b = abstractC0592b2;
                } else {
                    abstractC0592b = abstractC0592b2;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                abstractC0592b2 = abstractC0592b;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m44904a(C0624m c0624m) {
        ArrayList<AbstractC0592b> arrayList = this.f2627b.get(Integer.valueOf(c0624m.f2713b));
        if (arrayList != null) {
            c0624m.f2727p.addAll(arrayList);
        }
        ArrayList<AbstractC0592b> arrayList2 = this.f2627b.get(-1);
        if (arrayList2 != null) {
            Iterator<AbstractC0592b> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                AbstractC0592b next = it2.next();
                String str = ((ConstraintLayout.LayoutParams) c0624m.f2712a.getLayoutParams()).f2955V;
                if ((next.f2558d == null || str == null) ? false : str.matches(next.f2558d)) {
                    c0624m.f2727p.add(next);
                }
            }
        }
    }
}
