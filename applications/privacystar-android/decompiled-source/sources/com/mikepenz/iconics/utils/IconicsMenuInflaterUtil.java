package com.mikepenz.iconics.utils;

import android.content.Context;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.Menu;
import android.view.MenuInflater;
import com.mikepenz.iconics.IconicsDrawable;
import com.mikepenz.iconics.context.IconicsAttrsApplier;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:com/mikepenz/iconics/utils/IconicsMenuInflaterUtil.class */
public class IconicsMenuInflaterUtil {
    private static final String XML_ITEM = "item";
    private static final String XML_MENU = "menu";

    public static void inflate(MenuInflater menuInflater, Context context, int i, Menu menu) {
        inflate(menuInflater, context, i, menu, false);
    }

    public static void inflate(MenuInflater menuInflater, Context context, int i, Menu menu, boolean z) {
        menuInflater.inflate(i, menu);
        try {
            XmlResourceParser xml = context.getResources().getXml(i);
            parseMenu(context, Xml.asAttributeSet(xml), xml, menu, z);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    private static void parseMenu(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser, Menu menu, boolean z) throws XmlPullParserException, IOException {
        int next;
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                int next2 = xmlPullParser.next();
                eventType = next2;
                if (next2 == 1) {
                    next = next2;
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (XML_MENU.equals(name)) {
                    next = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got " + name);
                }
            }
        }
        Object obj = null;
        boolean z2 = false;
        boolean z3 = false;
        while (!z2) {
            switch (next) {
                case 1:
                    throw new RuntimeException("Unexpected end of document");
                case 2:
                    if (z3) {
                        z3 = z3;
                        obj = obj;
                        break;
                    } else {
                        String name2 = xmlPullParser.getName();
                        char c = 65535;
                        int hashCode = name2.hashCode();
                        if (hashCode != 3242771) {
                            if (hashCode == 3347807 && name2.equals(XML_MENU)) {
                                c = 1;
                            }
                        } else if (name2.equals(XML_ITEM)) {
                            c = 0;
                        }
                        switch (c) {
                            case 0:
                                HashMap hashMap = new HashMap();
                                for (int i = 0; i < xmlPullParser.getAttributeCount(); i++) {
                                    hashMap.put(xmlPullParser.getAttributeName(i), xmlPullParser.getAttributeValue(i));
                                }
                                IconicsDrawable iconicsDrawable = IconicsAttrsApplier.getIconicsDrawable(context, attributeSet);
                                if (iconicsDrawable != null) {
                                    menu.findItem(Integer.parseInt(((String) hashMap.get("id")).replace("@", ""))).setIcon(iconicsDrawable);
                                    break;
                                }
                                break;
                            case 1:
                                if (z) {
                                    parseMenu(context, attributeSet, xmlPullParser, menu, z);
                                    break;
                                }
                                break;
                            default:
                                z3 = true;
                                obj = name2;
                                break;
                        }
                        break;
                    }
                    break;
                case 3:
                    String name3 = xmlPullParser.getName();
                    if (!z3 || !name3.equals(obj)) {
                        z3 = z3;
                        obj = obj;
                        if (XML_MENU.equals(name3)) {
                            z2 = true;
                            z3 = z3;
                            obj = obj;
                            break;
                        } else {
                            break;
                        }
                    } else {
                        obj = null;
                        z3 = false;
                        break;
                    }
                    break;
                default:
                    z3 = z3;
                    obj = obj;
                    break;
            }
            next = xmlPullParser.next();
        }
    }
}
