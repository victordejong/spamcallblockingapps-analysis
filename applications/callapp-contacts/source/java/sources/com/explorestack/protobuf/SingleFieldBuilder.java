package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessage;
import com.explorestack.protobuf.GeneratedMessage.Builder;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/SingleFieldBuilder.class */
public class SingleFieldBuilder<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {
    private BType builder;
    private boolean isClean;
    private MType message;
    private GeneratedMessage.BuilderParent parent;

    public SingleFieldBuilder(MType mtype, GeneratedMessage.BuilderParent builderParent, boolean z) {
        this.message = (MType) Internal.checkNotNull(mtype);
        this.parent = builderParent;
        this.isClean = z;
    }

    private void onChanged() {
        GeneratedMessage.BuilderParent builderParent;
        if (this.builder != null) {
            this.message = null;
        }
        if (!this.isClean || (builderParent = this.parent) == null) {
            return;
        }
        builderParent.markDirty();
        this.isClean = false;
    }

    public MType build() {
        this.isClean = true;
        return getMessage();
    }

    public SingleFieldBuilder<MType, BType, IType> clear() {
        MType mtype = this.message;
        this.message = (MType) (mtype != null ? mtype.getDefaultInstanceForType() : this.builder.getDefaultInstanceForType());
        BType btype = this.builder;
        if (btype != null) {
            btype.dispose();
            this.builder = null;
        }
        onChanged();
        return this;
    }

    public void dispose() {
        this.parent = null;
    }

    public BType getBuilder() {
        if (this.builder == null) {
            BType btype = (BType) this.message.newBuilderForType(this);
            this.builder = btype;
            btype.mergeFrom(this.message);
            this.builder.markClean();
        }
        return this.builder;
    }

    public MType getMessage() {
        if (this.message == null) {
            this.message = (MType) this.builder.buildPartial();
        }
        return this.message;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [BType extends com.explorestack.protobuf.GeneratedMessage$Builder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    /* JADX WARN: Type inference failed for: r0v4, types: [MType extends com.explorestack.protobuf.GeneratedMessage, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    public IType getMessageOrBuilder() {
        BType btype = this.builder;
        return btype != 0 ? btype : this.message;
    }

    @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        onChanged();
    }

    public SingleFieldBuilder<MType, BType, IType> mergeFrom(MType mtype) {
        MType mtype2;
        if (this.builder == null && (mtype2 = this.message) == mtype2.getDefaultInstanceForType()) {
            this.message = mtype;
        } else {
            getBuilder().mergeFrom(mtype);
        }
        onChanged();
        return this;
    }

    public SingleFieldBuilder<MType, BType, IType> setMessage(MType mtype) {
        this.message = (MType) Internal.checkNotNull(mtype);
        BType btype = this.builder;
        if (btype != null) {
            btype.dispose();
            this.builder = null;
        }
        onChanged();
        return this;
    }
}
