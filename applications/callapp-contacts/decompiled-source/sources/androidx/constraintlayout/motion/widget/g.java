package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.a;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    static HashMap<String, Constructor<? extends b>> f1512a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<Integer, ArrayList<b>> f1513b = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends b>> hashMap = new HashMap<>();
        f1512a = hashMap;
        try {
            hashMap.put("KeyAttribute", c.class.getConstructor(new Class[0]));
            f1512a.put("KeyPosition", h.class.getConstructor(new Class[0]));
            f1512a.put("KeyCycle", e.class.getConstructor(new Class[0]));
            f1512a.put("KeyTimeCycle", j.class.getConstructor(new Class[0]));
            f1512a.put("KeyTrigger", k.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public g(Context context, XmlPullParser xmlPullParser) {
        Exception e;
        b bVar = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f1512a.containsKey(name)) {
                        try {
                            b bVar2 = (b) f1512a.get(name).newInstance(new Object[0]);
                            try {
                                bVar2.a(context, Xml.asAttributeSet(xmlPullParser));
                                if (!this.f1513b.containsKey(Integer.valueOf(bVar2.f1494c))) {
                                    HashMap<Integer, ArrayList<b>> hashMap = this.f1513b;
                                    int i = bVar2.f1494c;
                                    hashMap.put(Integer.valueOf(i), new ArrayList<>());
                                }
                                this.f1513b.get(Integer.valueOf(bVar2.f1494c)).add(bVar2);
                                bVar = bVar2;
                            } catch (Exception e2) {
                                e = e2;
                                bVar = bVar2;
                                Log.e("KeyFrames", "unable to create ", e);
                                eventType = xmlPullParser.next();
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                    } else {
                        bVar = bVar;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            bVar = bVar;
                            if (bVar != null) {
                                bVar = bVar;
                                if (bVar.f != null) {
                                    a.a(context, xmlPullParser, bVar.f);
                                    bVar = bVar;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    bVar = bVar;
                } else {
                    bVar = bVar;
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

    public final void a(m mVar) {
        ArrayList<b> arrayList = this.f1513b.get(Integer.valueOf(mVar.f1522b));
        if (arrayList != null) {
            mVar.p.addAll(arrayList);
        }
        ArrayList<b> arrayList2 = this.f1513b.get(-1);
        if (arrayList2 != null) {
            Iterator<b> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                b next = it2.next();
                String str = ((ConstraintLayout.LayoutParams) mVar.f1521a.getLayoutParams()).V;
                if ((next.f1495d == null || str == null) ? false : str.matches(next.f1495d)) {
                    mVar.p.add(next);
                }
            }
        }
    }
}
