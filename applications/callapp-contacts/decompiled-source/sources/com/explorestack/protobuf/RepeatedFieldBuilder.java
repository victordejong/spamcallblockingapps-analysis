package com.explorestack.protobuf;

import com.explorestack.protobuf.GeneratedMessage;
import com.explorestack.protobuf.GeneratedMessage.Builder;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RepeatedFieldBuilder.class */
public class RepeatedFieldBuilder<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {
    private List<SingleFieldBuilder<MType, BType, IType>> builders;
    private BuilderExternalList<MType, BType, IType> externalBuilderList;
    private MessageExternalList<MType, BType, IType> externalMessageList;
    private MessageOrBuilderExternalList<MType, BType, IType> externalMessageOrBuilderList;
    private boolean isClean;
    private boolean isMessagesListMutable;
    private List<MType> messages;
    private GeneratedMessage.BuilderParent parent;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RepeatedFieldBuilder$BuilderExternalList.class */
    public static class BuilderExternalList<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType> {
        RepeatedFieldBuilder<MType, BType, IType> builder;

        BuilderExternalList(RepeatedFieldBuilder<MType, BType, IType> repeatedFieldBuilder) {
            this.builder = repeatedFieldBuilder;
        }

        @Override // java.util.AbstractList, java.util.List
        public BType get(int i) {
            return this.builder.getBuilder(i);
        }

        void incrementModCount() {
            this.modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.builder.getCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RepeatedFieldBuilder$MessageExternalList.class */
    public static class MessageExternalList<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType> {
        RepeatedFieldBuilder<MType, BType, IType> builder;

        MessageExternalList(RepeatedFieldBuilder<MType, BType, IType> repeatedFieldBuilder) {
            this.builder = repeatedFieldBuilder;
        }

        @Override // java.util.AbstractList, java.util.List
        public MType get(int i) {
            return this.builder.getMessage(i);
        }

        void incrementModCount() {
            this.modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.builder.getCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList.class */
    public static class MessageOrBuilderExternalList<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType> {
        RepeatedFieldBuilder<MType, BType, IType> builder;

        MessageOrBuilderExternalList(RepeatedFieldBuilder<MType, BType, IType> repeatedFieldBuilder) {
            this.builder = repeatedFieldBuilder;
        }

        @Override // java.util.AbstractList, java.util.List
        public IType get(int i) {
            return this.builder.getMessageOrBuilder(i);
        }

        void incrementModCount() {
            this.modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.builder.getCount();
        }
    }

    public RepeatedFieldBuilder(List<MType> list, boolean z, GeneratedMessage.BuilderParent builderParent, boolean z2) {
        this.messages = list;
        this.isMessagesListMutable = z;
        this.parent = builderParent;
        this.isClean = z2;
    }

    private void ensureBuilders() {
        if (this.builders == null) {
            this.builders = new ArrayList(this.messages.size());
            for (int i = 0; i < this.messages.size(); i++) {
                this.builders.add(null);
            }
        }
    }

    private void ensureMutableMessageList() {
        if (!this.isMessagesListMutable) {
            this.messages = new ArrayList(this.messages);
            this.isMessagesListMutable = true;
        }
    }

    private MType getMessage(int i, boolean z) {
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder;
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (!(list == null || (singleFieldBuilder = list.get(i)) == null)) {
            return z ? singleFieldBuilder.build() : singleFieldBuilder.getMessage();
        }
        return this.messages.get(i);
    }

    private void incrementModCounts() {
        MessageExternalList<MType, BType, IType> messageExternalList = this.externalMessageList;
        if (messageExternalList != null) {
            messageExternalList.incrementModCount();
        }
        BuilderExternalList<MType, BType, IType> builderExternalList = this.externalBuilderList;
        if (builderExternalList != null) {
            builderExternalList.incrementModCount();
        }
        MessageOrBuilderExternalList<MType, BType, IType> messageOrBuilderExternalList = this.externalMessageOrBuilderList;
        if (messageOrBuilderExternalList != null) {
            messageOrBuilderExternalList.incrementModCount();
        }
    }

    private void onChanged() {
        GeneratedMessage.BuilderParent builderParent;
        if (this.isClean && (builderParent = this.parent) != null) {
            builderParent.markDirty();
            this.isClean = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RepeatedFieldBuilder<MType, BType, IType> addAllMessages(Iterable<? extends MType> iterable) {
        Iterator<? extends MType> it2 = iterable.iterator();
        while (it2.hasNext()) {
            Internal.checkNotNull((GeneratedMessage) it2.next());
        }
        int i = -1;
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() == 0) {
                return this;
            }
            i = collection.size();
        }
        ensureMutableMessageList();
        if (i >= 0) {
            List<MType> list = this.messages;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i);
            }
        }
        Iterator<? extends MType> it3 = iterable.iterator();
        while (it3.hasNext()) {
            addMessage((GeneratedMessage) it3.next());
        }
        onChanged();
        incrementModCounts();
        return this;
    }

    public BType addBuilder(int i, MType mtype) {
        ensureMutableMessageList();
        ensureBuilders();
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = new SingleFieldBuilder<>(mtype, this, this.isClean);
        this.messages.add(i, null);
        this.builders.add(i, singleFieldBuilder);
        onChanged();
        incrementModCounts();
        return singleFieldBuilder.getBuilder();
    }

    public BType addBuilder(MType mtype) {
        ensureMutableMessageList();
        ensureBuilders();
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = new SingleFieldBuilder<>(mtype, this, this.isClean);
        this.messages.add(null);
        this.builders.add(singleFieldBuilder);
        onChanged();
        incrementModCounts();
        return singleFieldBuilder.getBuilder();
    }

    public RepeatedFieldBuilder<MType, BType, IType> addMessage(int i, MType mtype) {
        Internal.checkNotNull(mtype);
        ensureMutableMessageList();
        this.messages.add(i, mtype);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (list != null) {
            list.add(i, null);
        }
        onChanged();
        incrementModCounts();
        return this;
    }

    public RepeatedFieldBuilder<MType, BType, IType> addMessage(MType mtype) {
        Internal.checkNotNull(mtype);
        ensureMutableMessageList();
        this.messages.add(mtype);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (list != null) {
            list.add(null);
        }
        onChanged();
        incrementModCounts();
        return this;
    }

    public List<MType> build() {
        boolean z;
        this.isClean = true;
        boolean z2 = this.isMessagesListMutable;
        if (!z2 && this.builders == null) {
            return this.messages;
        }
        if (!z2) {
            int i = 0;
            while (true) {
                if (i >= this.messages.size()) {
                    z = true;
                    break;
                }
                MType mtype = this.messages.get(i);
                SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = this.builders.get(i);
                if (!(singleFieldBuilder == null || singleFieldBuilder.build() == mtype)) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.messages;
            }
        }
        ensureMutableMessageList();
        for (int i2 = 0; i2 < this.messages.size(); i2++) {
            this.messages.set(i2, getMessage(i2, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.messages);
        this.messages = unmodifiableList;
        this.isMessagesListMutable = false;
        return unmodifiableList;
    }

    public void clear() {
        this.messages = Collections.emptyList();
        this.isMessagesListMutable = false;
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (list != null) {
            for (SingleFieldBuilder<MType, BType, IType> singleFieldBuilder : list) {
                if (singleFieldBuilder != null) {
                    singleFieldBuilder.dispose();
                }
            }
            this.builders = null;
        }
        onChanged();
        incrementModCounts();
    }

    public void dispose() {
        this.parent = null;
    }

    public BType getBuilder(int i) {
        ensureBuilders();
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder = this.builders.get(i);
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder2 = singleFieldBuilder;
        if (singleFieldBuilder == null) {
            singleFieldBuilder2 = new SingleFieldBuilder<>(this.messages.get(i), this, this.isClean);
            this.builders.set(i, singleFieldBuilder2);
        }
        return singleFieldBuilder2.getBuilder();
    }

    public List<BType> getBuilderList() {
        if (this.externalBuilderList == null) {
            this.externalBuilderList = new BuilderExternalList<>(this);
        }
        return this.externalBuilderList;
    }

    public int getCount() {
        return this.messages.size();
    }

    public MType getMessage(int i) {
        return getMessage(i, false);
    }

    public List<MType> getMessageList() {
        if (this.externalMessageList == null) {
            this.externalMessageList = new MessageExternalList<>(this);
        }
        return this.externalMessageList;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [com.explorestack.protobuf.MessageOrBuilder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    /* JADX WARN: Type inference failed for: r0v16, types: [com.explorestack.protobuf.MessageOrBuilder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    public IType getMessageOrBuilder(int i) {
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder;
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (!(list == null || (singleFieldBuilder = list.get(i)) == null)) {
            return singleFieldBuilder.getMessageOrBuilder();
        }
        return this.messages.get(i);
    }

    public List<IType> getMessageOrBuilderList() {
        if (this.externalMessageOrBuilderList == null) {
            this.externalMessageOrBuilderList = new MessageOrBuilderExternalList<>(this);
        }
        return this.externalMessageOrBuilderList;
    }

    public boolean isEmpty() {
        return this.messages.isEmpty();
    }

    @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        onChanged();
    }

    public void remove(int i) {
        SingleFieldBuilder<MType, BType, IType> remove;
        ensureMutableMessageList();
        this.messages.remove(i);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (!(list == null || (remove = list.remove(i)) == null)) {
            remove.dispose();
        }
        onChanged();
        incrementModCounts();
    }

    public RepeatedFieldBuilder<MType, BType, IType> setMessage(int i, MType mtype) {
        SingleFieldBuilder<MType, BType, IType> singleFieldBuilder;
        Internal.checkNotNull(mtype);
        ensureMutableMessageList();
        this.messages.set(i, mtype);
        List<SingleFieldBuilder<MType, BType, IType>> list = this.builders;
        if (!(list == null || (singleFieldBuilder = list.set(i, null)) == null)) {
            singleFieldBuilder.dispose();
        }
        onChanged();
        incrementModCounts();
        return this;
    }
}
