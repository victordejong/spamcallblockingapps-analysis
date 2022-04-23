package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ExtraMaterialsDescription.class */
public class ExtraMaterialsDescription implements Serializable {
    public static final ExtraMaterialsDescription NONE = new ExtraMaterialsDescription(Collections.EMPTY_MAP);
    private final Map<String, String> extra;
    private final ConflictResolution resolve;

    /* renamed from: com.amazonaws.services.s3.model.ExtraMaterialsDescription$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ExtraMaterialsDescription$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ConflictResolution.values().length];
            $SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution = iArr;
            try {
                iArr[ConflictResolution.FAIL_FAST.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution[ConflictResolution.OVERRIDDEN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution[ConflictResolution.OVERRIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

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
        int i = AnonymousClass1.$SwitchMap$com$amazonaws$services$s3$model$ExtraMaterialsDescription$ConflictResolution[this.resolve.ordinal()];
        if (i == 1) {
            int size = map.size();
            int size2 = this.extra.size();
            HashMap hashMap = new HashMap(map);
            hashMap.putAll(this.extra);
            if (size + size2 == hashMap.size()) {
                return Collections.unmodifiableMap(hashMap);
            }
            throw new IllegalArgumentException("The supplemental material descriptions contains conflicting entries");
        } else if (i == 2) {
            HashMap hashMap2 = new HashMap(this.extra);
            hashMap2.putAll(map);
            return Collections.unmodifiableMap(hashMap2);
        } else if (i == 3) {
            HashMap hashMap3 = new HashMap(map);
            hashMap3.putAll(this.extra);
            return Collections.unmodifiableMap(hashMap3);
        } else {
            throw new UnsupportedOperationException();
        }
    }
}
