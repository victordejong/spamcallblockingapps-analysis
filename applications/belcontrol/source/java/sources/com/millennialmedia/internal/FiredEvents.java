package com.millennialmedia.internal;

import android.net.Uri;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/FiredEvents.class */
public class FiredEvents {
    private Map<Uri, Set<String>> uriToEvents = new HashMap();

    public boolean isEventFiredForUri(Uri uri, String str) {
        Set<String> set = this.uriToEvents.get(uri);
        return set != null && set.contains(str);
    }

    public void recordForUri(Uri uri, String str) {
        Set<String> set = this.uriToEvents.get(uri);
        HashSet hashSet = set;
        if (set == null) {
            hashSet = new HashSet();
            this.uriToEvents.put(uri, hashSet);
        }
        hashSet.add(str);
    }
}
