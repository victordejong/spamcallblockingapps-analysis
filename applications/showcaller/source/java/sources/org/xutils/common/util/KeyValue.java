package org.xutils.common.util;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/KeyValue.class */
public class KeyValue {
    public final String key;
    public final Object value;

    public KeyValue(String str, Object obj) {
        this.key = str;
        this.value = obj;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        String str = this.key;
        String str2 = ((KeyValue) obj).key;
        if (str != null) {
            z = str.equals(str2);
        } else if (str2 != null) {
            z = false;
        }
        return z;
    }

    public String getValueStrOrEmpty() {
        Object obj = this.value;
        return obj == null ? "" : obj.toString();
    }

    public String getValueStrOrNull() {
        Object obj = this.value;
        return obj == null ? null : obj.toString();
    }

    public int hashCode() {
        String str = this.key;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return "KeyValue{key='" + this.key + "', value=" + this.value + '}';
    }
}
