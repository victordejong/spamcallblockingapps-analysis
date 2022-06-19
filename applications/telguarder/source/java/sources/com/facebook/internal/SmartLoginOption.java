package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/SmartLoginOption.class */
public enum SmartLoginOption {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    
    public static final EnumSet<SmartLoginOption> ALL = EnumSet.allOf(SmartLoginOption.class);
    private final long mValue;

    SmartLoginOption(long j) {
        this.mValue = j;
    }

    public static EnumSet<SmartLoginOption> parseOptions(long j) {
        EnumSet<SmartLoginOption> noneOf = EnumSet.noneOf(SmartLoginOption.class);
        Iterator it = ALL.iterator();
        while (it.hasNext()) {
            SmartLoginOption smartLoginOption = (SmartLoginOption) it.next();
            if ((smartLoginOption.getValue() & j) != 0) {
                noneOf.add(smartLoginOption);
            }
        }
        return noneOf;
    }

    public long getValue() {
        return this.mValue;
    }
}
