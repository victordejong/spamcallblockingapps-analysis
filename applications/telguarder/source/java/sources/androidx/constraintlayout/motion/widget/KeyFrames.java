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
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyFrames.class */
public class KeyFrames {
    private static final String TAG = "KeyFrames";
    public static final int UNSET = -1;
    static HashMap<String, Constructor<? extends Key>> sKeyMakers;
    private HashMap<Integer, ArrayList<Key>> mFramesMap = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends Key>> hashMap = new HashMap<>();
        sKeyMakers = hashMap;
        try {
            hashMap.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyPosition", KeyPosition.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyCycle", KeyCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put("KeyTrigger", KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "unable to load", e);
        }
    }

    public KeyFrames(Context context, XmlPullParser xmlPullParser) {
        Key key;
        Exception e;
        Key newInstance;
        Key key2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (sKeyMakers.containsKey(name)) {
                        try {
                            newInstance = sKeyMakers.get(name).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            newInstance.load(context, Xml.asAttributeSet(xmlPullParser));
                            addKey(newInstance);
                            key2 = newInstance;
                        } catch (Exception e3) {
                            e = e3;
                            key2 = newInstance;
                            Log.e(TAG, "unable to create ", e);
                            key = key2;
                            eventType = xmlPullParser.next();
                            key2 = key;
                        }
                        key = key2;
                    } else {
                        key = key2;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            key = key2;
                            if (key2 != null) {
                                key = key2;
                                if (key2.mCustomConstraints != null) {
                                    ConstraintAttribute.parse(context, xmlPullParser, key2.mCustomConstraints);
                                    key = key2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    key = key2;
                } else {
                    key = key2;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
                key2 = key;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    private void addKey(Key key) {
        if (!this.mFramesMap.containsKey(Integer.valueOf(key.mTargetId))) {
            this.mFramesMap.put(Integer.valueOf(key.mTargetId), new ArrayList<>());
        }
        this.mFramesMap.get(Integer.valueOf(key.mTargetId)).add(key);
    }

    static String name(int i, Context context) {
        return context.getResources().getResourceEntryName(i);
    }

    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(motionController.mId));
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
        ArrayList<Key> arrayList2 = this.mFramesMap.get(-1);
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            while (it.hasNext()) {
                Key next = it.next();
                if (next.matches(((ConstraintLayout.LayoutParams) motionController.mView.getLayoutParams()).constraintTag)) {
                    motionController.addKey(next);
                }
            }
        }
    }

    public ArrayList<Key> getKeyFramesForView(int i) {
        return this.mFramesMap.get(Integer.valueOf(i));
    }

    public Set<Integer> getKeys() {
        return this.mFramesMap.keySet();
    }
}
