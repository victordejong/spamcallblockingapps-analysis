package com.amazonaws.services.p101s3.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.services.s3.model.ExtraMaterialsDescription */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ExtraMaterialsDescription.class */
public class ExtraMaterialsDescription implements Serializable {
    public static final ExtraMaterialsDescription NONE = new ExtraMaterialsDescription(Collections.EMPTY_MAP);
    private final Map<String, String> extra;
    private final ConflictResolution resolve;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.services.s3.model.ExtraMaterialsDescription$1 */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ExtraMaterialsDescription$1.class */
    public static /* synthetic */ class C33081 {

        /* renamed from: $SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution */
        static final /* synthetic */ int[] f12462xb3b15629;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConflictResolution.values().length];
            f12462xb3b15629 = iArr;
            try {
                iArr[ConflictResolution.FAIL_FAST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12462xb3b15629[ConflictResolution.OVERRIDDEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f12462xb3b15629[ConflictResolution.OVERRIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.amazonaws.services.s3.model.ExtraMaterialsDescription$ConflictResolution */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ExtraMaterialsDescription$ConflictResolution.class */
    public enum ConflictResolution {
        FAIL_FAST,
        OVERRIDE,
        OVERRIDDEN
    }

    public ExtraMaterialsDescription(Map<String, String> map) {
        this(map, ConflictResolution.FAIL_FAST);
    }

    public ExtraMaterialsDescription(Map<String, String> map, ConflictResolution conflictResolution) {
        if (map == null || conflictResolution == null) {
            throw new IllegalArgumentException();
        }
        this.extra = Collections.unmodifiableMap(new HashMap(map));
        this.resolve = conflictResolution;
    }

    public ConflictResolution getConflictResolution() {
        return this.resolve;
    }

    public Map<String, String> getMaterialDescription() {
        return this.extra;
    }

    public Map<String, String> mergeInto(Map<String, String> map) {
        if (this.extra.size() == 0) {
            return map;
        }
        if (map == null || map.size() == 0) {
            return this.extra;
        }
        int i = C33081.f12462xb3b15629[this.resolve.ordinal()];
        if (i == 1) {
            int size = map.size();
            int size2 = this.extra.size();
            HashMap hashMap = new HashMap(map);
            hashMap.putAll(this.extra);
            if (size + size2 != hashMap.size()) {
                throw new IllegalArgumentException("The supplemental material descriptions contains conflicting entries");
            }
            return Collections.unmodifiableMap(hashMap);
        } else if (i == 2) {
            HashMap hashMap2 = new HashMap(this.extra);
            hashMap2.putAll(map);
            return Collections.unmodifiableMap(hashMap2);
        } else if (i != 3) {
            throw new UnsupportedOperationException();
        } else {
            HashMap hashMap3 = new HashMap(map);
            hashMap3.putAll(this.extra);
            return Collections.unmodifiableMap(hashMap3);
        }
    }
}
