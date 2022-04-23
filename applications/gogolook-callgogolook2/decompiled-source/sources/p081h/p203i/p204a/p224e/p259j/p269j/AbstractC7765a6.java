package p081h.p203i.p204a.p224e.p259j.p269j;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.AbstractMap;
import java.util.Locale;
/* renamed from: h.i.a.e.j.j.a6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/a6.class */
public abstract class AbstractC7765a6 {
    /* renamed from: a */
    public static String m19522a(@Nullable String str, int i) {
        if (str == null) {
            int i2 = C7773b6.f18203a[i - 1];
            if (i2 == 1) {
                return "Counter name must not be null";
            }
            if (i2 != 2) {
                return null;
            }
            return "Metric name must not be null";
        }
        if (str.length() > 100) {
            int i3 = C7773b6.f18203a[i - 1];
            if (i3 == 1) {
                return String.format(Locale.US, "Counter name must not exceed %d characters", 100);
            }
            if (i3 != 2) {
                return null;
            }
            return String.format(Locale.US, "Metric name must not exceed %d characters", 100);
        } else if (!str.startsWith("_")) {
            return null;
        } else {
            for (EnumC7844j6 j6Var : EnumC7844j6.values()) {
                if (j6Var.toString().equals(str)) {
                    return null;
                }
            }
            int i4 = C7773b6.f18203a[i - 1];
            if (i4 == 1) {
                return "Counter name must not start with '_'";
            }
            if (i4 != 2) {
                return null;
            }
            return "Metric name must not start with '_'";
        }
    }

    /* renamed from: a */
    public static String m19521a(@NonNull AbstractMap.SimpleEntry<String, String> simpleEntry) {
        String key = simpleEntry.getKey();
        String value = simpleEntry.getValue();
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
        if (!key.matches("^(?!(firebase_|google_|ga_))[A-Za-z][A-Za-z_0-9]*")) {
            return "Attribute key must start with letter, must only contain alphanumeric characters and underscore and must not start with \"firebase_\", \"google_\" and \"ga_";
        }
        return null;
    }

    /* renamed from: a */
    public abstract boolean mo18716a();
}
