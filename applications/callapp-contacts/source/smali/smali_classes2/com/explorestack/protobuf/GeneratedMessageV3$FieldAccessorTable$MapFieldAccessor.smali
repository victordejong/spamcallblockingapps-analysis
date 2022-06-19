.class Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$FieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapFieldAccessor"
.end annotation


# instance fields
.field private final field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;",
            ">;)V"
        }
    .end annotation

    .line 2325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2326
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Class;

    const-string p4, "getDefaultInstance"

    .line 2328
    invoke-static {p3, p4, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 2330
    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    .line 2329
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    .line 2332
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMapEntryMessageDefaultInstance()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;

    return-void
.end method

.method private coerceType(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2356
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 2363
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->toBuilder()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method

.method private getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2343
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->internalGetMapField(I)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method private getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2339
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->internalGetMapField(I)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method private getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2348
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2349
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    .line 2348
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 2431
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object p1

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-direct {p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->coerceType(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0

    .line 2458
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 3

    .line 2379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2380
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2381
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2383
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 3

    .line 2369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2370
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessageV3;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2371
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2373
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBuilder(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder not supported for map fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRaw(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;
    .locals 0

    .line 2393
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRaw(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    .line 2388
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 0

    .line 2411
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    .line 2406
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedBuilder(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2474
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Nested builder not supported for map fields."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)I
    .locals 0

    .line 2453
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessageV3;)I
    .locals 0

    .line 2448
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getRepeatedRaw(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;
    .locals 0

    .line 2421
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedRaw(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    .line 2416
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public has(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Z
    .locals 1

    .line 2442
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public has(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z
    .locals 1

    .line 2436
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2463
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 1

    .line 2398
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->clear(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    .line 2399
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2400
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->addRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V
    .locals 0

    .line 2426
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object p1

    check-cast p3, Lcom/explorestack/protobuf/Message;

    invoke-direct {p0, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$MapFieldAccessor;->coerceType(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
