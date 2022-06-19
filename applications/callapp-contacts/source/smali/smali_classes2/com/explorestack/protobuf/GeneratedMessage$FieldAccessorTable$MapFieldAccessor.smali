.class Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$FieldAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable;
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
            "Lcom/explorestack/protobuf/GeneratedMessage;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
            ">;)V"
        }
    .end annotation

    .line 2532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2533
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Class;

    const-string p4, "getDefaultInstance"

    .line 2535
    invoke-static {p3, p4, p2}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1100(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 2537
    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/GeneratedMessage;->access$1200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessage;

    .line 2536
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    .line 2539
    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMapEntryMessageDefaultInstance()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;

    return-void
.end method

.method private getMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2550
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetMapField(I)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method private getMapField(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessage;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2546
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessage;->internalGetMapField(I)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method private getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessage$Builder;",
            ")",
            "Lcom/explorestack/protobuf/MapField<",
            "**>;"
        }
    .end annotation

    .line 2555
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->field:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2556
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v0

    .line 2555
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessage$Builder;->internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 2624
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object p1

    check-cast p2, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;
    .locals 3

    .line 2572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2573
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2574
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2576
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/explorestack/protobuf/GeneratedMessage;)Ljava/lang/Object;
    .locals 3

    .line 2562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2563
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessage;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2564
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2566
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getBuilder(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2661
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Nested builder not supported for map fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRaw(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;
    .locals 0

    .line 2586
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRaw(Lcom/explorestack/protobuf/GeneratedMessage;)Ljava/lang/Object;
    .locals 0

    .line 2581
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->get(Lcom/explorestack/protobuf/GeneratedMessage;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;
    .locals 0

    .line 2604
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeated(Lcom/explorestack/protobuf/GeneratedMessage;I)Ljava/lang/Object;
    .locals 0

    .line 2599
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedBuilder(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2667
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Nested builder not supported for map fields."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)I
    .locals 0

    .line 2646
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getRepeatedCount(Lcom/explorestack/protobuf/GeneratedMessage;)I
    .locals 0

    .line 2641
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMapField(Lcom/explorestack/protobuf/GeneratedMessage;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getRepeatedRaw(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;
    .locals 0

    .line 2614
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRepeatedRaw(Lcom/explorestack/protobuf/GeneratedMessage;I)Ljava/lang/Object;
    .locals 0

    .line 2609
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getRepeated(Lcom/explorestack/protobuf/GeneratedMessage;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public has(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Z
    .locals 1

    .line 2635
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public has(Lcom/explorestack/protobuf/GeneratedMessage;)Z
    .locals 1

    .line 2629
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "hasField() is not supported for repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 2656
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->mapEntryMessageDefaultInstance:Lcom/explorestack/protobuf/Message;

    invoke-interface {v0}, Lcom/explorestack/protobuf/Message;->newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V
    .locals 1

    .line 2591
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->clear(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)V

    .line 2592
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2593
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->addRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRepeated(Lcom/explorestack/protobuf/GeneratedMessage$Builder;ILjava/lang/Object;)V
    .locals 0

    .line 2619
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessage$FieldAccessorTable$MapFieldAccessor;->getMutableMapField(Lcom/explorestack/protobuf/GeneratedMessage$Builder;)Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/MapField;->getMutableList()Ljava/util/List;

    move-result-object p1

    check-cast p3, Lcom/explorestack/protobuf/Message;

    invoke-interface {p1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
