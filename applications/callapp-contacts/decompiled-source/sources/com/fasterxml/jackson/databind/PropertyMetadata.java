package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.Nulls;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/PropertyMetadata.class */
public class PropertyMetadata implements Serializable {
    protected Nulls _contentNulls;
    protected final String _defaultValue;
    protected final String _description;
    protected final Integer _index;
    protected final transient MergeInfo _mergeInfo;
    protected final Boolean _required;
    protected Nulls _valueNulls;
    public static final PropertyMetadata STD_REQUIRED = new PropertyMetadata(Boolean.TRUE, null, null, null, null, null, null);
    public static final PropertyMetadata STD_OPTIONAL = new PropertyMetadata(Boolean.FALSE, null, null, null, null, null, null);
    public static final PropertyMetadata STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null, null, null, null, null, null, null);

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/PropertyMetadata$MergeInfo.class */
    public static final class MergeInfo {
        public final boolean fromDefaults;
        public final AnnotatedMember getter;

        protected MergeInfo(AnnotatedMember annotatedMember, boolean z) {
            this.getter = annotatedMember;
            this.fromDefaults = z;
        }

        public static MergeInfo createForDefaults(AnnotatedMember annotatedMember) {
            return new MergeInfo(annotatedMember, true);
        }

        public static MergeInfo createForPropertyOverride(AnnotatedMember annotatedMember) {
            return new MergeInfo(annotatedMember, false);
        }

        public static MergeInfo createForTypeOverride(AnnotatedMember annotatedMember) {
            return new MergeInfo(annotatedMember, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r7.isEmpty() != false) goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected PropertyMetadata(java.lang.Boolean r4, java.lang.String r5, java.lang.Integer r6, java.lang.String r7, com.fasterxml.jackson.databind.PropertyMetadata.MergeInfo r8, com.fasterxml.jackson.annotation.Nulls r9, com.fasterxml.jackson.annotation.Nulls r10) {
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
            r0 = r3
            r1 = r8
            r0._mergeInfo = r1
            r0 = r3
            r1 = r9
            r0._valueNulls = r1
            r0 = r3
            r1 = r10
            r0._contentNulls = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.PropertyMetadata.<init>(java.lang.Boolean, java.lang.String, java.lang.Integer, java.lang.String, com.fasterxml.jackson.databind.PropertyMetadata$MergeInfo, com.fasterxml.jackson.annotation.Nulls, com.fasterxml.jackson.annotation.Nulls):void");
    }

    public static PropertyMetadata construct(Boolean bool, String str, Integer num, String str2) {
        return (str == null && num == null && str2 == null) ? bool == null ? STD_REQUIRED_OR_OPTIONAL : bool.booleanValue() ? STD_REQUIRED : STD_OPTIONAL : new PropertyMetadata(bool, str, num, str2, null, null, null);
    }

    public Nulls getContentNulls() {
        return this._contentNulls;
    }

    public Integer getIndex() {
        return this._index;
    }

    public MergeInfo getMergeInfo() {
        return this._mergeInfo;
    }

    public Nulls getValueNulls() {
        return this._valueNulls;
    }

    public boolean hasIndex() {
        return this._index != null;
    }

    public boolean isRequired() {
        Boolean bool = this._required;
        return bool != null && bool.booleanValue();
    }

    protected Object readResolve() {
        if (this._description != null || this._index != null || this._defaultValue != null || this._mergeInfo != null || this._valueNulls != null || this._contentNulls != null) {
            return this;
        }
        Boolean bool = this._required;
        return bool == null ? STD_REQUIRED_OR_OPTIONAL : bool.booleanValue() ? STD_REQUIRED : STD_OPTIONAL;
    }

    public PropertyMetadata withDescription(String str) {
        return new PropertyMetadata(this._required, str, this._index, this._defaultValue, this._mergeInfo, this._valueNulls, this._contentNulls);
    }

    public PropertyMetadata withMergeInfo(MergeInfo mergeInfo) {
        return new PropertyMetadata(this._required, this._description, this._index, this._defaultValue, mergeInfo, this._valueNulls, this._contentNulls);
    }

    public PropertyMetadata withNulls(Nulls nulls, Nulls nulls2) {
        return new PropertyMetadata(this._required, this._description, this._index, this._defaultValue, this._mergeInfo, nulls, nulls2);
    }
}
