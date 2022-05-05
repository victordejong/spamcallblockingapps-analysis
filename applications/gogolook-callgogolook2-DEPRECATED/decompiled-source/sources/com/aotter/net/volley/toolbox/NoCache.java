package com.aotter.net.volley.toolbox;

import com.aotter.net.volley.Cache;
/* loaded from: classes-dex2jar.jar:com/aotter/net/volley/toolbox/NoCache.class */
public class NoCache implements Cache {
    @Override // com.aotter.net.volley.Cache
    public void clear() {
    }

    @Override // com.aotter.net.volley.Cache
    public Cache.Entry get(String str) {
        return null;
    }

    @Override // com.aotter.net.volley.Cache
    public void initialize() {
    }

    @Override // com.aotter.net.volley.Cache
    public void invalidate(String str, boolean z) {
    }

    @Override // com.aotter.net.volley.Cache
    public void put(String str, Cache.Entry entry) {
    }

    @Override // com.aotter.net.volley.Cache
    public void remove(String str) {
    }
}
