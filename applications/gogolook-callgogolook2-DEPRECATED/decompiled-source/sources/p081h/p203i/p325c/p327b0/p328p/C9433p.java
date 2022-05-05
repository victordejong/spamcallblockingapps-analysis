package p081h.p203i.p325c.p327b0.p328p;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.Log;
import androidx.core.app.Person;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.xmlpull.v1.XmlPullParserException;
import p459j.p460a.p541n0.C13032a;
/* renamed from: h.i.c.b0.p.p */
/* loaded from: classes2-dex2jar.jar:h/i/c/b0/p/p.class */
public class C9433p {
    /* renamed from: a */
    public static Map<String, String> m15185a(Context context, int i) {
        Resources resources;
        HashMap hashMap = new HashMap();
        try {
            resources = context.getResources();
        } catch (IOException | XmlPullParserException e) {
            Log.e("FirebaseRemoteConfig", "Encountered an error while parsing the defaults XML file.", e);
        }
        if (resources == null) {
            Log.e("FirebaseRemoteConfig", "Could not find the resources of the current context while trying to set defaults from an XML.");
            return hashMap;
        }
        XmlResourceParser xml = resources.getXml(i);
        int eventType = xml.getEventType();
        String str = null;
        String str2 = null;
        String str3 = null;
        while (eventType != 1) {
            if (eventType == 2) {
                str = xml.getName();
                str2 = str2;
                str3 = str3;
            } else if (eventType == 3) {
                str2 = str2;
                str3 = str3;
                if (xml.getName().equals("entry")) {
                    if (!(str2 == null || str3 == null)) {
                        hashMap.put(str2, str3);
                    }
                    str2 = null;
                    str3 = null;
                }
                str = null;
            } else {
                str = str;
                str2 = str2;
                str3 = str3;
                if (eventType == 4) {
                    str = str;
                    str2 = str2;
                    str3 = str3;
                    if (str != null) {
                        char c = 65535;
                        int hashCode = str.hashCode();
                        if (hashCode != 106079) {
                            if (hashCode == 111972721 && str.equals(C13032a.f29462d)) {
                                c = 1;
                            }
                        } else if (str.equals(Person.KEY_KEY)) {
                            c = 0;
                        }
                        if (c == 0) {
                            str2 = xml.getText();
                            str3 = str3;
                            str = str;
                        } else if (c != 1) {
                            str = str;
                            str2 = str2;
                            str3 = str3;
                        } else {
                            str3 = xml.getText();
                            str = str;
                            str2 = str2;
                        }
                    }
                }
            }
            eventType = xml.next();
        }
        return hashMap;
    }
}
