package com.explorestack.protobuf;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/StructuralMessageInfo.class */
public final class StructuralMessageInfo implements MessageInfo {
    private final int[] checkInitialized;
    private final MessageLite defaultInstance;
    private final FieldInfo[] fields;
    private final boolean messageSetWireFormat;
    private final ProtoSyntax syntax;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/StructuralMessageInfo$Builder.class */
    public static final class Builder {
        private int[] checkInitialized;
        private Object defaultInstance;
        private final List<FieldInfo> fields;
        private boolean messageSetWireFormat;
        private ProtoSyntax syntax;
        private boolean wasBuilt;

        public Builder() {
            this.checkInitialized = null;
            this.fields = new ArrayList();
        }

        public Builder(int i) {
            this.checkInitialized = null;
            this.fields = new ArrayList(i);
        }

        public final StructuralMessageInfo build() {
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

        public final void withCheckInitialized(int[] iArr) {
            this.checkInitialized = iArr;
        }

        public final void withDefaultInstance(Object obj) {
            this.defaultInstance = obj;
        }

        public final void withField(FieldInfo fieldInfo) {
            if (!this.wasBuilt) {
                this.fields.add(fieldInfo);
                return;
            }
            throw new IllegalStateException("Builder can only build once");
        }

        public final void withMessageSetWireFormat(boolean z) {
            this.messageSetWireFormat = z;
        }

        public final void withSyntax(ProtoSyntax protoSyntax) {
            this.syntax = (ProtoSyntax) Internal.checkNotNull(protoSyntax, "syntax");
        }
    }

    StructuralMessageInfo(ProtoSyntax protoSyntax, boolean z, int[] iArr, FieldInfo[] fieldInfoArr, Object obj) {
        this.syntax = protoSyntax;
        this.messageSetWireFormat = z;
        this.checkInitialized = iArr;
        this.fields = fieldInfoArr;
        this.defaultInstance = (MessageLite) Internal.checkNotNull(obj, "defaultInstance");
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public static Builder newBuilder(int i) {
        return new Builder(i);
    }

    public final int[] getCheckInitialized() {
        return this.checkInitialized;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public final MessageLite getDefaultInstance() {
        return this.defaultInstance;
    }

    public final FieldInfo[] getFields() {
        return this.fields;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public final ProtoSyntax getSyntax() {
        return this.syntax;
    }

    @Override // com.explorestack.protobuf.MessageInfo
    public final boolean isMessageSetWireFormat() {
        return this.messageSetWireFormat;
    }
}
