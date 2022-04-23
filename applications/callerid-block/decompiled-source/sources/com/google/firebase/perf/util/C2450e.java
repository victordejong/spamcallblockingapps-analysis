package com.google.firebase.perf.util;

import java.net.URL;
import java.net.URLConnection;
/* renamed from: com.google.firebase.perf.util.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/util/e.class */
public class C2450e {

    /* renamed from: a */
    private final URL f10709a;

    public C2450e(URL url) {
        this.f10709a = url;
    }

    /* renamed from: a */
    public URLConnection m3569a() {
        return this.f10709a.openConnection();
    }

    public String toString() {
        return this.f10709a.toString();
    }
}
