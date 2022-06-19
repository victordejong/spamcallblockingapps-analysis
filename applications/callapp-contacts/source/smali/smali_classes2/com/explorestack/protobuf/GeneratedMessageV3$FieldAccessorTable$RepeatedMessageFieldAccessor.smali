.class final Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RepeatedMessageFieldAccessor"
.end annotation


# instance fields
.field private final getBuilderMethodBuilder:Ljava/lang/reflect/Method;

.field private final newBuilderMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
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

    .line 2756
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2758
    iget-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->type:Ljava/lang/Class;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    const-string v1, "newBuilder"

    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    .line 2759
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Builder"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, p3

    invoke-static {p4, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->getBuilderMethodBuilder:Ljava/lang/reflect/Method;

    return-void
.end method

.method private coerceType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2767
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2774
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Message$Builder;

    check-cast p1, Lcom/explorestack/protobuf/Message;

    .line 2775
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Message$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/protobuf/Message$Builder;->build()Lcom/explorestack/protobuf/Message;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 2786
    invoke-direct {p0, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->addRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Ljava/lang/Object;)V

    return-void
.end method

.method public final getRepeatedBuilder(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 3

    .line 2795
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->getBuilderMethodBuilder:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2796
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 2795
    invoke-static {v0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Message$Builder;

    return-object p1
.end method

.method public final newBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 3

    .line 2790
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->newBuilderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Message$Builder;

    return-object v0
.end method

.method public final setRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V
    .locals 0

    .line 2782
    invoke-direct {p0, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedMessageFieldAccessor;->coerceType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable$RepeatedFieldAccessor;->setRepeated(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;ILjava/lang/Object;)V

    return-void
.end method
