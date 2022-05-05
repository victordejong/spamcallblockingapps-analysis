package com.fasterxml.jackson.databind;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/PropertyMetadata.class */
public class PropertyMetadata implements Serializable {
    public final String _defaultValue;
    public final String _description;
    public final Integer _index;
    public final Boolean _required;
    public static final PropertyMetadata STD_REQUIRED = new PropertyMetadata(Boolean.TRUE, null, null, null);
    public static final PropertyMetadata STD_OPTIONAL = new PropertyMetadata(Boolean.FALSE, null, null, null);
    public static final PropertyMetadata STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null, null, null, null);

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r7.isEmpty() != false) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PropertyMetadata(java.lang.Boolean r4, java.lang.String r5, java.lang.Integer r6, java.lang.String r7) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r4
            r0._required = r1
            r0 = r3
            r1 = r5
            r0._description = r1
            r0 = r3
            r1 = r6
            r0._index = r1
            r0 = r7
            if (r0 == 0) goto L_0x0023
            r0 = r7
            r4 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0025
        L_0x0023:
            r0 = 0
            r4 = r0
        L_0x0025:
            r0 = r3
            r1 = r4
            r0._defaultValue = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.PropertyMetadata.<init>(java.lang.Boolean, java.lang.String, java.lang.Integer, java.lang.String):void");
    }

    public static PropertyMetadata construct(boolean z, String str, Integer num, String str2) {
        if (str != null || num != null || str2 != null) {
            return new PropertyMetadata(Boolean.valueOf(z), str, num, str2);
        }
        return z ? STD_REQUIRED : STD_OPTIONAL;
    }

    public boolean isRequired() {
        Boolean bool = this._required;
        return bool != null && bool.booleanValue();
    }

    public Object readResolve() {
        if (this._description != null || this._index != null || this._defaultValue != null) {
            return this;
        }
        Boolean bool = this._required;
        if (bool == null) {
            return STD_REQUIRED_OR_OPTIONAL;
        }
        return bool.booleanValue() ? STD_REQUIRED : STD_OPTIONAL;
    }

    public PropertyMetadata withDescription(String str) {
        return new PropertyMetadata(this._required, str, this._index, this._defaultValue);
    }
}
