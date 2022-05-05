package com.tmobile.tmoid.agent.appversioning;

import com.tmobile.tmoid.helperlib.util.Log;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/appversioning/Version.class */
public class Version implements Comparable<Version> {

    /* renamed from: f */
    private String f14690f;

    public Version(String str) {
        this.f14690f = str;
        if (str == null) {
            Log.m4646w("TMO-Agent", "version is null");
        } else if (!str.matches("[0-9]+(\\.[0-9]+)*")) {
            Log.m4646w("TMO-Agent", "Invalid version format: " + str);
            this.f14690f = null;
        }
    }

    /* renamed from: a */
    public int compareTo(Version version) {
        if (version == null) {
            return 1;
        }
        if (m5094b() == null || version.m5094b() == null) {
            return -1;
        }
        String[] split = m5094b().split("\\.");
        String[] split2 = version.m5094b().split("\\.");
        int max = Math.max(split.length, split2.length);
        int i = 0;
        while (i < max) {
            int parseInt = i < split.length ? Integer.parseInt(split[i]) : 0;
            int parseInt2 = i < split2.length ? Integer.parseInt(split2[i]) : 0;
            if (parseInt < parseInt2) {
                return -1;
            }
            if (parseInt > parseInt2) {
                return 1;
            }
            i++;
        }
        return 0;
    }

    /* renamed from: b */
    public final String m5094b() {
        return this.f14690f;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || Version.class != obj.getClass()) {
            return false;
        }
        if (compareTo((Version) obj) != 0) {
            z = false;
        }
        return z;
    }
}
