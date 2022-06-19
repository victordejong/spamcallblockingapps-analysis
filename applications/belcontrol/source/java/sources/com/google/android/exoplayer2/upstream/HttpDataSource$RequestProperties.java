package com.google.android.exoplayer2.upstream;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties.class */
public final class HttpDataSource$RequestProperties {
    private final Map<String, String> requestProperties = new HashMap();
    private Map<String, String> requestPropertiesSnapshot;

    public void clear() {
        synchronized (this) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.clear();
        }
    }

    public void clearAndSet(Map<String, String> map) {
        synchronized (this) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.clear();
            this.requestProperties.putAll(map);
        }
    }

    public Map<String, String> getSnapshot() {
        Map<String, String> map;
        synchronized (this) {
            if (this.requestPropertiesSnapshot == null) {
                this.requestPropertiesSnapshot = Collections.unmodifiableMap(new HashMap(this.requestProperties));
            }
            map = this.requestPropertiesSnapshot;
        }
        return map;
    }

    public void remove(String str) {
        synchronized (this) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.remove(str);
        }
    }

    public void set(String str, String str2) {
        synchronized (this) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.put(str, str2);
        }
    }

    public void set(Map<String, String> map) {
        synchronized (this) {
            this.requestPropertiesSnapshot = null;
            this.requestProperties.putAll(map);
        }
    }
}
