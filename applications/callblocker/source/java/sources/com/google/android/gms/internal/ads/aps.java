package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aps.class */
public enum aps implements dcy {
    ENUM_SIGNAL_SOURCE_UNKNOWN(0),
    ENUM_SIGNAL_SOURCE_DISABLE(1),
    ENUM_SIGNAL_SOURCE_ADSHIELD(2),
    ENUM_SIGNAL_SOURCE_GASS(3),
    ENUM_SIGNAL_SOURCE_CALLER_PROVIDED(4);
    

    /* renamed from: f */
    private static final ddb<aps> f10202f = new ddb<aps>() { // from class: com.google.android.gms.internal.ads.aru
    };

    /* renamed from: g */
    private final int f10204g;

    aps(int i) {
        this.f10204g = i;
    }

    /* renamed from: a */
    public static aps m12815a(int i) {
        aps apsVar;
        switch (i) {
            case 0:
                apsVar = ENUM_SIGNAL_SOURCE_UNKNOWN;
                break;
            case 1:
                apsVar = ENUM_SIGNAL_SOURCE_DISABLE;
                break;
            case 2:
                apsVar = ENUM_SIGNAL_SOURCE_ADSHIELD;
                break;
            case 3:
                apsVar = ENUM_SIGNAL_SOURCE_GASS;
                break;
            case 4:
                apsVar = ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
                break;
            default:
                apsVar = null;
                break;
        }
        return apsVar;
    }

    /* renamed from: b */
    public static dda m12814b() {
        return aqt.f10225a;
    }

    @Override // com.google.android.gms.internal.ads.dcy
    /* renamed from: a */
    public final int mo8208a() {
        return this.f10204g;
    }

    @Override // java.lang.Enum
    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" number=").append(this.f10204g);
        return sb.append(" name=").append(name()).append('>').toString();
    }
}
