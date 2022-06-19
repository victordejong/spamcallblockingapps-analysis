package com.truecaller.api.services.previews.p140v1.models;

import com.google.protobuf.Internal;
/* renamed from: com.truecaller.api.services.previews.v1.models.MapStyle */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/MapStyle.class */
public enum MapStyle implements Internal.EnumLite {
    DAY(0),
    NIGHT(1),
    UNRECOGNIZED(-1);
    
    public static final int DAY_VALUE = 0;
    public static final int NIGHT_VALUE = 1;
    private static final Internal.EnumLiteMap<MapStyle> internalValueMap = new Internal.EnumLiteMap<MapStyle>() { // from class: com.truecaller.api.services.previews.v1.models.MapStyle.a
        @Override // com.google.protobuf.Internal.EnumLiteMap
        public MapStyle findValueByNumber(int i) {
            return MapStyle.forNumber(i);
        }
    };
    private final int value;

    /* renamed from: com.truecaller.api.services.previews.v1.models.MapStyle$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/previews/v1/models/MapStyle$b.class */
    public static final class C3364b implements Internal.EnumVerifier {

        /* renamed from: a */
        public static final Internal.EnumVerifier f10131a = new C3364b();

        @Override // com.google.protobuf.Internal.EnumVerifier
        public boolean isInRange(int i) {
            return MapStyle.forNumber(i) != null;
        }
    }

    MapStyle(int i) {
        this.value = i;
    }

    public static MapStyle forNumber(int i) {
        if (i != 0) {
            if (i == 1) {
                return NIGHT;
            }
            return null;
        }
        return DAY;
    }

    public static Internal.EnumLiteMap<MapStyle> internalGetValueMap() {
        return internalValueMap;
    }

    public static Internal.EnumVerifier internalGetVerifier() {
        return C3364b.f10131a;
    }

    @Deprecated
    public static MapStyle valueOf(int i) {
        return forNumber(i);
    }

    @Override // com.google.protobuf.Internal.EnumLite
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
