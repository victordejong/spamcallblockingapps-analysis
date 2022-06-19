.class public abstract Lcom/explorestack/protobuf/GeneratedMessage$Builder;
.super Lcom/explorestack/protobuf/AbstractMessage$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessage$Builder<",
        "TBuilderType;>;>",
        "Lcom/explorestack/protobuf/AbstractMessage$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# instance fields
.field private builderParent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

.field private isClean:Z

.field private meAsParent:Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/GeneratedMessage$Builder<",
            "TBuilderType;>.BuilderParentImpl;"
        }
    .end annotation
.end field

.field private unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 398
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method protected constructor <init>(Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    .line 401
    invoke-direct {p0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;-><init>()V

    .line 395
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 402
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method static synthetic access$900(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Ljava/util/Map;
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private getAllFieldsMutable()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v1

    invoke-static {v1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 480
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 481
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 482
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 490
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFieldCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    .line 491
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    invoke-virtual {p0, v4}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object v3

    goto :goto_1

    .line 499
    :cond_0
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 500
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 501
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 502
    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 506
    :cond_1
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 511
    :goto_1
    invoke-virtual {p0, v3}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->addRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 451
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 452
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->clear(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;",
            ")TBuilderType;"
        }
    .end annotation

    .line 573
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->clear(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    .line 441
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->buildPartial()Lcom/explorestack/protobuf/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getAllFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 470
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getAllFieldsMutable()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$000(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 1

    .line 549
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getBuilder(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getOneofFieldDescriptor(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    move-result-object p1

    return-object p1
.end method

.method protected getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->meAsParent:Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;-><init>(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Lcom/explorestack/protobuf/GeneratedMessage$1;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->meAsParent:Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->meAsParent:Lcom/explorestack/protobuf/GeneratedMessage$Builder$BuilderParentImpl;

    return-object v0
.end method

.method public getRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 586
    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldBuilder(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 528
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedBuilder(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedFieldCount(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)I
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 580
    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)I

    move-result p1

    return p1
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->has(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Z

    move-result p1

    return p1
.end method

.method public hasOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Z
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$100(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$OneofAccessor;->has(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Z

    move-result p1

    return p1
.end method

.method protected abstract internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;
.end method

.method protected internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    .line 720
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No map fields found in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    .line 729
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No map fields found in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isClean()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->isClean:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 5

    .line 623
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 625
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 631
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v2

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v2, v4, :cond_0

    .line 632
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 634
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 635
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/Message;

    .line 636
    invoke-interface {v2}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    .line 641
    :cond_3
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->getField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Message;

    invoke-interface {v1}, Lcom/explorestack/protobuf/Message;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method protected markClean()V
    .locals 1

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->isClean:Z

    return-void
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 614
    invoke-static {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    .line 615
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFrom(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object p1

    .line 616
    invoke-virtual {p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 617
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public newBuilderForField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->newBuilder()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    return-object p1
.end method

.method protected onBuilt()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->markClean()V

    :cond_0
    return-void
.end method

.method protected final onChanged()V
    .locals 1

    .line 697
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->isClean:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->builderParent:Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {v0}, Lcom/explorestack/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    .line 701
    iput-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->isClean:Z

    :cond_0
    return-void
.end method

.method protected parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    invoke-virtual {p2, p4, p1}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->mergeFieldFrom(ILcom/explorestack/protobuf/CodedInputStream;)Z

    move-result p1

    return p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->set(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "I",
            "Ljava/lang/Object;",
            ")TBuilderType;"
        }
    .end annotation

    .line 592
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;->access$200(Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;

    move-result-object p1

    .line 593
    invoke-interface {p1, p0, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;->setRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/UnknownFieldSet;",
            ")TBuilderType;"
        }
    .end annotation

    .line 605
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 606
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 382
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method
