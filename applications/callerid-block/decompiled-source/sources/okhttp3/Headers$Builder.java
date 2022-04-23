package okhttp3;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import okhttp3.internal.http.HttpDate;
/* loaded from: classes2-dex2jar.jar:okhttp3/Headers$Builder.class */
public final class Headers$Builder {
    final List<String> namesAndValues = new ArrayList(20);

    public Headers$Builder add(String str) {
        int indexOf = str.indexOf(":");
        if (indexOf != -1) {
            return add(str.substring(0, indexOf).trim(), str.substring(indexOf + 1));
        }
        throw new IllegalArgumentException("Unexpected header: " + str);
    }

    public Headers$Builder add(String str, String str2) {
        Headers.checkName(str);
        Headers.checkValue(str2, str);
        return addLenient(str, str2);
    }

    public Headers$Builder add(String str, Date date) {
        if (date != null) {
            add(str, HttpDate.format(date));
            return this;
        }
        throw new NullPointerException("value for name " + str + " == null");
    }

    public Headers$Builder addAll(Headers headers) {
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            addLenient(headers.name(i), headers.value(i));
        }
        return this;
    }

    Headers$Builder addLenient(String str) {
        int indexOf = str.indexOf(":", 1);
        return indexOf != -1 ? addLenient(str.substring(0, indexOf), str.substring(indexOf + 1)) : str.startsWith(":") ? addLenient("", str.substring(1)) : addLenient("", str);
    }

    Headers$Builder addLenient(String str, String str2) {
        this.namesAndValues.add(str);
        this.namesAndValues.add(str2.trim());
        return this;
    }

    public Headers$Builder addUnsafeNonAscii(String str, String str2) {
        Headers.checkName(str);
        return addLenient(str, str2);
    }

    public Headers build() {
        return new Headers(this);
    }

    public String get(String str) {
        for (int size = this.namesAndValues.size() - 2; size >= 0; size -= 2) {
            if (str.equalsIgnoreCase(this.namesAndValues.get(size))) {
                return this.namesAndValues.get(size + 1);
            }
        }
        return null;
    }

    public Headers$Builder removeAll(String str) {
        int i = 0;
        while (i < this.namesAndValues.size()) {
            int i2 = i;
            if (str.equalsIgnoreCase(this.namesAndValues.get(i))) {
                this.namesAndValues.remove(i);
                this.namesAndValues.remove(i);
                i2 = i - 2;
            }
            i = i2 + 2;
        }
        return this;
    }

    public Headers$Builder set(String str, String str2) {
        Headers.checkName(str);
        Headers.checkValue(str2, str);
        removeAll(str);
        addLenient(str, str2);
        return this;
    }

    public Headers$Builder set(String str, Date date) {
        if (date != null) {
            set(str, HttpDate.format(date));
            return this;
        }
        throw new NullPointerException("value for name " + str + " == null");
    }
}
