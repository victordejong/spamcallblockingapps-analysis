package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessage.Builder;
import com.explorestack.protobuf.MessageOrBuilder;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/SingleFieldBuilderV3.class */
public class SingleFieldBuilderV3<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {
    private BType builder;
    private boolean isClean;
    private MType message;
    private AbstractMessage.BuilderParent parent;

    public SingleFieldBuilderV3(MType mtype, AbstractMessage.BuilderParent builderParent, boolean z) {
        this.message = (MType) ((AbstractMessage) Internal.checkNotNull(mtype));
        this.parent = builderParent;
        this.isClean = z;
    }

    private void onChanged() {
        AbstractMessage.BuilderParent builderParent;
        if (this.builder != null) {
            this.message = null;
        }
        if (this.isClean && (builderParent = this.parent) != null) {
            builderParent.markDirty();
            this.isClean = false;
        }
    }

    public MType build() {
        this.isClean = true;
        return getMessage();
    }

    public SingleFieldBuilderV3<MType, BType, IType> clear() {
        MType mtype = this.message;
        this.message = (MType) ((AbstractMessage) (mtype != null ? mtype.getDefaultInstanceForType() : this.builder.getDefaultInstanceForType()));
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
            BType btype = (BType) ((AbstractMessage.Builder) this.message.newBuilderForType(this));
            this.builder = btype;
            btype.mergeFrom(this.message);
            this.builder.markClean();
        }
        return this.builder;
    }

    public MType getMessage() {
        if (this.message == null) {
            this.message = (MType) ((AbstractMessage) this.builder.buildPartial());
        }
        return this.message;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [BType extends com.explorestack.protobuf.AbstractMessage$Builder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    /* JADX WARN: Type inference failed for: r0v4, types: [MType extends com.explorestack.protobuf.AbstractMessage, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    public IType getMessageOrBuilder() {
        BType btype = this.builder;
        return btype != 0 ? btype : this.message;
    }

    @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        onChanged();
    }

    public SingleFieldBuilderV3<MType, BType, IType> mergeFrom(MType mtype) {
        MType mtype2;
        if (this.builder == null && (mtype2 = this.message) == mtype2.getDefaultInstanceForType()) {
            this.message = mtype;
        } else {
            getBuilder().mergeFrom(mtype);
        }
        onChanged();
        return this;
    }

    public SingleFieldBuilderV3<MType, BType, IType> setMessage(MType mtype) {
        this.message = (MType) ((AbstractMessage) Internal.checkNotNull(mtype));
        BType btype = this.builder;
        if (btype != null) {
            btype.dispose();
            this.builder = null;
        }
        onChanged();
        return this;
    }
}
