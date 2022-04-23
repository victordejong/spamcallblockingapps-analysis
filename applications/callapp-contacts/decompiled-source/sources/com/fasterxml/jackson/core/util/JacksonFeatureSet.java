package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.util.JacksonFeature;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/util/JacksonFeatureSet.class */
public final class JacksonFeatureSet<F extends JacksonFeature> {
    protected int _enabled;

    protected JacksonFeatureSet(int i) {
        this._enabled = i;
    }

    public static <F extends JacksonFeature> JacksonFeatureSet<F> fromDefaults(F[] fArr) {
        if (fArr.length <= 31) {
            int i = 0;
            for (F f : fArr) {
                i = i;
                if (f.enabledByDefault()) {
                    i |= f.getMask();
                }
            }
            return new JacksonFeatureSet<>(i);
        }
        throw new IllegalArgumentException(String.format("Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)", fArr[0].getClass().getName(), Integer.valueOf(fArr.length)));
    }

    public final boolean isEnabled(F f) {
        return (f.getMask() & this._enabled) != 0;
    }

    public final JacksonFeatureSet<F> with(F f) {
        int mask = f.getMask() | this._enabled;
        return mask == this._enabled ? this : new JacksonFeatureSet<>(mask);
    }
}
