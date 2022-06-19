package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/CoercionConfigs.class */
public class CoercionConfigs implements Serializable {
    private static final int TARGET_TYPE_COUNT = LogicalType.values().length;
    protected CoercionAction _defaultAction;
    protected final MutableCoercionConfig _defaultCoercions;
    protected Map<Class<?>, MutableCoercionConfig> _perClassCoercions;
    protected MutableCoercionConfig[] _perTypeCoercions;

    /* renamed from: com.fasterxml.jackson.databind.cfg.CoercionConfigs$1 */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/CoercionConfigs$1.class */
    public static /* synthetic */ class C105251 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CoercionInputShape.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape = iArr;
            try {
                iArr[CoercionInputShape.EmptyArray.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape[CoercionInputShape.Float.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape[CoercionInputShape.Integer.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public CoercionConfigs() {
        this(CoercionAction.TryConvert, new MutableCoercionConfig(), null, null);
    }

    protected CoercionConfigs(CoercionAction coercionAction, MutableCoercionConfig mutableCoercionConfig, MutableCoercionConfig[] mutableCoercionConfigArr, Map<Class<?>, MutableCoercionConfig> map) {
        this._defaultCoercions = mutableCoercionConfig;
        this._defaultAction = coercionAction;
        this._perTypeCoercions = mutableCoercionConfigArr;
        this._perClassCoercions = map;
    }

    private static MutableCoercionConfig _copy(MutableCoercionConfig mutableCoercionConfig) {
        if (mutableCoercionConfig == null) {
            return null;
        }
        return mutableCoercionConfig.copy();
    }

    public CoercionConfigs copy() {
        MutableCoercionConfig[] mutableCoercionConfigArr;
        MutableCoercionConfig[] mutableCoercionConfigArr2 = this._perTypeCoercions;
        HashMap hashMap = null;
        if (mutableCoercionConfigArr2 != null) {
            int length = mutableCoercionConfigArr2.length;
            MutableCoercionConfig[] mutableCoercionConfigArr3 = new MutableCoercionConfig[length];
            int i = 0;
            while (true) {
                mutableCoercionConfigArr = mutableCoercionConfigArr3;
                if (i >= length) {
                    break;
                }
                mutableCoercionConfigArr3[i] = _copy(this._perTypeCoercions[i]);
                i++;
            }
        } else {
            mutableCoercionConfigArr = null;
        }
        if (this._perClassCoercions != null) {
            HashMap hashMap2 = new HashMap();
            Iterator<Map.Entry<Class<?>, MutableCoercionConfig>> it2 = this._perClassCoercions.entrySet().iterator();
            while (true) {
                hashMap = hashMap2;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<Class<?>, MutableCoercionConfig> next = it2.next();
                hashMap2.put(next.getKey(), next.getValue().copy());
            }
        }
        return new CoercionConfigs(this._defaultAction, this._defaultCoercions.copy(), mutableCoercionConfigArr, hashMap);
    }

    public MutableCoercionConfig defaultCoercions() {
        return this._defaultCoercions;
    }

    public CoercionAction findCoercion(DeserializationConfig deserializationConfig, LogicalType logicalType, Class<?> cls, CoercionInputShape coercionInputShape) {
        MutableCoercionConfig mutableCoercionConfig;
        CoercionAction findAction;
        MutableCoercionConfig mutableCoercionConfig2;
        CoercionAction findAction2;
        Map<Class<?>, MutableCoercionConfig> map = this._perClassCoercions;
        if (map == null || cls == null || (mutableCoercionConfig2 = map.get(cls)) == null || (findAction2 = mutableCoercionConfig2.findAction(coercionInputShape)) == null) {
            MutableCoercionConfig[] mutableCoercionConfigArr = this._perTypeCoercions;
            if (mutableCoercionConfigArr != null && logicalType != null && (mutableCoercionConfig = mutableCoercionConfigArr[logicalType.ordinal()]) != null && (findAction = mutableCoercionConfig.findAction(coercionInputShape)) != null) {
                return findAction;
            }
            CoercionAction findAction3 = this._defaultCoercions.findAction(coercionInputShape);
            if (findAction3 != null) {
                return findAction3;
            }
            int i = C105251.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionInputShape[coercionInputShape.ordinal()];
            if (i == 1) {
                return deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT) ? CoercionAction.AsNull : CoercionAction.Fail;
            }
            if (i != 2) {
                if (i == 3 && logicalType == LogicalType.Enum && deserializationConfig.isEnabled(DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
                    return CoercionAction.Fail;
                }
            } else if (logicalType == LogicalType.Integer) {
                return deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_FLOAT_AS_INT) ? CoercionAction.TryConvert : CoercionAction.Fail;
            }
            boolean z = true;
            if (logicalType != LogicalType.Float) {
                z = true;
                if (logicalType != LogicalType.Integer) {
                    z = true;
                    if (logicalType != LogicalType.Boolean) {
                        z = logicalType == LogicalType.DateTime;
                    }
                }
            }
            return (!z || deserializationConfig.isEnabled(MapperFeature.ALLOW_COERCION_OF_SCALARS)) ? coercionInputShape == CoercionInputShape.EmptyString ? (z || deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) ? CoercionAction.AsNull : logicalType == LogicalType.OtherScalar ? CoercionAction.TryConvert : CoercionAction.Fail : this._defaultAction : CoercionAction.Fail;
        }
        return findAction2;
    }

    public CoercionAction findCoercionFromBlankString(DeserializationConfig deserializationConfig, LogicalType logicalType, Class<?> cls, CoercionAction coercionAction) {
        CoercionAction coercionAction2;
        Boolean bool;
        MutableCoercionConfig mutableCoercionConfig;
        Map<Class<?>, MutableCoercionConfig> map = this._perClassCoercions;
        if (map == null || cls == null || (mutableCoercionConfig = map.get(cls)) == null) {
            coercionAction2 = null;
            bool = null;
        } else {
            bool = mutableCoercionConfig.getAcceptBlankAsEmpty();
            coercionAction2 = mutableCoercionConfig.findAction(CoercionInputShape.EmptyString);
        }
        MutableCoercionConfig[] mutableCoercionConfigArr = this._perTypeCoercions;
        Boolean bool2 = bool;
        CoercionAction coercionAction3 = coercionAction2;
        if (mutableCoercionConfigArr != null) {
            bool2 = bool;
            coercionAction3 = coercionAction2;
            if (logicalType != null) {
                MutableCoercionConfig mutableCoercionConfig2 = mutableCoercionConfigArr[logicalType.ordinal()];
                bool2 = bool;
                coercionAction3 = coercionAction2;
                if (mutableCoercionConfig2 != null) {
                    Boolean bool3 = bool;
                    if (bool == null) {
                        bool3 = mutableCoercionConfig2.getAcceptBlankAsEmpty();
                    }
                    bool2 = bool3;
                    coercionAction3 = coercionAction2;
                    if (coercionAction2 == null) {
                        coercionAction3 = mutableCoercionConfig2.findAction(CoercionInputShape.EmptyString);
                        bool2 = bool3;
                    }
                }
            }
        }
        Boolean bool4 = bool2;
        if (bool2 == null) {
            bool4 = this._defaultCoercions.getAcceptBlankAsEmpty();
        }
        CoercionAction coercionAction4 = coercionAction3;
        if (coercionAction3 == null) {
            coercionAction4 = this._defaultCoercions.findAction(CoercionInputShape.EmptyString);
        }
        return !Boolean.TRUE.equals(bool4) ? coercionAction : coercionAction4 != null ? coercionAction4 : deserializationConfig.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT) ? CoercionAction.AsNull : CoercionAction.Fail;
    }

    public MutableCoercionConfig findOrCreateCoercion(LogicalType logicalType) {
        if (this._perTypeCoercions == null) {
            this._perTypeCoercions = new MutableCoercionConfig[TARGET_TYPE_COUNT];
        }
        MutableCoercionConfig mutableCoercionConfig = this._perTypeCoercions[logicalType.ordinal()];
        MutableCoercionConfig mutableCoercionConfig2 = mutableCoercionConfig;
        if (mutableCoercionConfig == null) {
            MutableCoercionConfig[] mutableCoercionConfigArr = this._perTypeCoercions;
            int ordinal = logicalType.ordinal();
            mutableCoercionConfig2 = new MutableCoercionConfig();
            mutableCoercionConfigArr[ordinal] = mutableCoercionConfig2;
        }
        return mutableCoercionConfig2;
    }

    public MutableCoercionConfig findOrCreateCoercion(Class<?> cls) {
        if (this._perClassCoercions == null) {
            this._perClassCoercions = new HashMap();
        }
        MutableCoercionConfig mutableCoercionConfig = this._perClassCoercions.get(cls);
        MutableCoercionConfig mutableCoercionConfig2 = mutableCoercionConfig;
        if (mutableCoercionConfig == null) {
            mutableCoercionConfig2 = new MutableCoercionConfig();
            this._perClassCoercions.put(cls, mutableCoercionConfig2);
        }
        return mutableCoercionConfig2;
    }
}
