package p126i6;

import java.util.Locale;
import java.util.Map;
import p007a6.C0028d;
/* renamed from: i6.e */
/* loaded from: classes-dex2jar.jar:i6/e.class */
public abstract class AbstractC3125e {
    /* renamed from: b */
    public static String m2593b(Map.Entry<String, String> entry) {
        String key = entry.getKey();
        String value = entry.getValue();
        if (key == null) {
            return "Attribute key must not be null";
        }
        if (value == null) {
            return "Attribute value must not be null";
        }
        if (key.length() > 40) {
            return String.format(Locale.US, "Attribute key length must not exceed %d characters", 40);
        }
        if (value.length() > 100) {
            return String.format(Locale.US, "Attribute value length must not exceed %d characters", 100);
        }
        if (key.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            return null;
        }
        return "Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_";
    }

    /* renamed from: c */
    public static String m2592c(String str) {
        if (str == null) {
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        }
        if (!str.startsWith("_")) {
            return null;
        }
        for (int i : C0028d.m8918a()) {
            if (C0028d.m8917c(i).equals(str)) {
                return null;
            }
        }
        return "Metric name must not start with '_'";
    }

    /* renamed from: a */
    public abstract boolean mo2594a();
}
