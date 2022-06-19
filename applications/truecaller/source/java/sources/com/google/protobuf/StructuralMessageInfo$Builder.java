package com.google.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/StructuralMessageInfo$Builder.class */
public final class StructuralMessageInfo$Builder {
    private int[] checkInitialized;
    private Object defaultInstance;
    private final List<FieldInfo> fields;
    private boolean messageSetWireFormat;
    private ProtoSyntax syntax;
    private boolean wasBuilt;

    public StructuralMessageInfo$Builder() {
        this.checkInitialized = null;
        this.fields = new ArrayList();
    }

    public StructuralMessageInfo$Builder(int i) {
        this.checkInitialized = null;
        this.fields = new ArrayList(i);
    }

    public StructuralMessageInfo build() {
        if (!this.wasBuilt) {
            if (this.syntax == null) {
                throw new IllegalStateException("Must specify a proto syntax");
            }
            this.wasBuilt = true;
            Collections.sort(this.fields);
            return new StructuralMessageInfo(this.syntax, this.messageSetWireFormat, this.checkInitialized, (FieldInfo[]) this.fields.toArray(new FieldInfo[0]), this.defaultInstance);
        }
        throw new IllegalStateException("Builder can only build once");
    }

    public void withCheckInitialized(int[] iArr) {
        this.checkInitialized = iArr;
    }

    public void withDefaultInstance(Object obj) {
        this.defaultInstance = obj;
    }

    public void withField(FieldInfo fieldInfo) {
        if (!this.wasBuilt) {
            this.fields.add(fieldInfo);
            return;
        }
        throw new IllegalStateException("Builder can only build once");
    }

    public void withMessageSetWireFormat(boolean z) {
        this.messageSetWireFormat = z;
    }

    public void withSyntax(ProtoSyntax protoSyntax) {
        this.syntax = (ProtoSyntax) Internal.checkNotNull(protoSyntax, "syntax");
    }
}
