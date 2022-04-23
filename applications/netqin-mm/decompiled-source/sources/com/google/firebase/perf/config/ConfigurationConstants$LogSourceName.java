package com.google.firebase.perf.config;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p282e.p340u.C5924a;
import p131c.p161d.p282e.p340u.p341d.AbstractC5946t;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/config/ConfigurationConstants$LogSourceName.class */
public final class ConfigurationConstants$LogSourceName extends AbstractC5946t<String> {

    /* renamed from: a */
    public static ConfigurationConstants$LogSourceName f31001a;

    /* renamed from: b */
    public static final Map<Long, String> f31002b = Collections.unmodifiableMap(new HashMap<Long, String>() { // from class: com.google.firebase.perf.config.ConfigurationConstants$LogSourceName.1
        {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    });

    /* renamed from: a */
    public static String m7271a(long j) {
        return f31002b.get(Long.valueOf(j));
    }

    /* renamed from: b */
    public static boolean m7270b(long j) {
        return f31002b.containsKey(Long.valueOf(j));
    }

    /* renamed from: e */
    public static ConfigurationConstants$LogSourceName m7267e() {
        ConfigurationConstants$LogSourceName configurationConstants$LogSourceName;
        synchronized (ConfigurationConstants$LogSourceName.class) {
            try {
                if (f31001a == null) {
                    f31001a = new ConfigurationConstants$LogSourceName();
                }
                configurationConstants$LogSourceName = f31001a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return configurationConstants$LogSourceName;
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: a */
    public String mo7272a() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override // p131c.p161d.p282e.p340u.p341d.AbstractC5946t
    /* renamed from: c */
    public String mo7269c() {
        return "fpr_log_source";
    }

    /* renamed from: d */
    public String m7268d() {
        return C5924a.f19278c;
    }
}
