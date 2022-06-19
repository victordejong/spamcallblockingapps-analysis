package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzak.class */
public enum zzak {
    PLUS('+', "", ",", false, true),
    HASH('#', "#", ",", false, true),
    DOT('.', ".", ".", false, false),
    FORWARD_SLASH('/', "/", "/", false, false),
    SEMI_COLON(';', ";", ";", true, false),
    QUERY('?', "?", "&", true, false),
    AMP('&', "&", "&", true, false),
    SIMPLE(null, "", ",", false, false);
    
    private final Character zzcl;
    private final String zzcm;
    private final String zzcn;
    private final boolean zzco;
    private final boolean zzcp;

    zzak(Character ch, String str, String str2, boolean z, boolean z2) {
        this.zzcl = ch;
        this.zzcm = (String) zzdt.checkNotNull(str);
        this.zzcn = (String) zzdt.checkNotNull(str2);
        this.zzco = z;
        this.zzcp = z2;
        if (ch != null) {
            zzal.zzcr.put(ch, this);
        }
    }

    public final String zzaa(String str) {
        return this.zzcp ? zzcs.zzaj(str) : zzcs.zzah(str);
    }

    public final String zzak() {
        return this.zzcm;
    }

    public final String zzal() {
        return this.zzcn;
    }

    public final boolean zzam() {
        return this.zzco;
    }

    public final int zzan() {
        return this.zzcl == null ? 0 : 1;
    }

    public final boolean zzao() {
        return this.zzcp;
    }
}
