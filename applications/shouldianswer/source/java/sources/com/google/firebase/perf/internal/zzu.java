package com.google.firebase.perf.internal;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/zzu.class */
enum zzu {
    NETWORK("network", 10, 700, 10, 70),
    TRACE("trace", 10, 300, 10, 30);
    
    private final String zzdy;
    private final long zzea;
    private final long zzec;
    private final long zzdz = 10;
    private final long zzeb = 10;

    zzu(String str, long j, long j2, long j3, long j4) {
        this.zzdy = str;
        this.zzea = j2;
        this.zzec = j4;
    }

    private final boolean zzbh() {
        return TRACE.zzdy.equalsIgnoreCase(this.zzdy);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return name();
    }

    public final long zzaz() {
        return this.zzdz;
    }

    public final long zzba() {
        return this.zzea;
    }

    public final long zzbb() {
        return this.zzeb;
    }

    public final long zzbc() {
        return this.zzec;
    }

    public final String zzbd() {
        return zzbh() ? "trace_flimit_time" : "network_flimit_time";
    }

    public final String zzbe() {
        return zzbh() ? "trace_flimit_events" : "network_flimit_events";
    }

    public final String zzbf() {
        return zzbh() ? "trace_blimit_time" : "network_blimit_time";
    }

    public final String zzbg() {
        return zzbh() ? "trace_blimit_events" : "network_blimit_events";
    }
}
