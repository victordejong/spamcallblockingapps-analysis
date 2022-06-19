package com.criteo.publisher.context;

import androidx.annotation.Keep;
import com.criteo.publisher.context.AbstractContextData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/context/AbstractContextData.class */
public abstract class AbstractContextData<T extends AbstractContextData<T>> {
    private final T myself = this;
    private final Map<String, Object> data = new LinkedHashMap();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractContextData) {
            return this.data.equals(((ContextData) obj).data);
        }
        return false;
    }

    public Map<String, Object> getData() {
        return Collections.unmodifiableMap(this.data);
    }

    public int hashCode() {
        return this.data.hashCode();
    }

    @Keep
    public T set(String str, double d) {
        this.data.put(str, Double.valueOf(d));
        return this.myself;
    }

    @Keep
    public T set(String str, long j) {
        this.data.put(str, Long.valueOf(j));
        return this.myself;
    }

    @Keep
    public T set(String str, Iterable<String> iterable) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : iterable) {
            arrayList.add(str2);
        }
        this.data.put(str, Collections.unmodifiableList(arrayList));
        return this.myself;
    }

    @Keep
    public T set(String str, String str2) {
        this.data.put(str, str2);
        return this.myself;
    }
}
