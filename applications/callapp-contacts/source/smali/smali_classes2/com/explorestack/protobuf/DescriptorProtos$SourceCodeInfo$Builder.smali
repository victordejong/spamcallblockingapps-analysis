.class public final Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40307
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 40472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40308
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 40289
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 40313
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 40472
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40314
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 40289
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureLocationIsMutable()V
    .locals 2

    .line 40474
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 40475
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40476
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 40295
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27100()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41491
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 41492
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 41496
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 41497
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 41498
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 41500
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 40317
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 40319
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllLocation(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;)",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;"
        }
    .end annotation

    .line 41050
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41051
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 41052
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 41054
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 41056
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLocation(ILcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40992
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40993
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40994
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40995
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 40997
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLocation(ILcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40873
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40875
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40877
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40878
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 40881
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLocation(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40934
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40935
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40936
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40937
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 40939
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLocation(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40812
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40814
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40816
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40817
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40818
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 40820
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addLocationBuilder()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 41382
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 41383
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v1

    .line 41382
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object v0
.end method

.method public final addLocationBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 2

    .line 41434
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 41435
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v1

    .line 41434
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 40401
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 2

    .line 40347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    .line 40348
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 40349
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 2

    .line 40356
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 40358
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 40359
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 40360
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40361
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    .line 40363
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28802(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 40365
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28802(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;Ljava/util/List;)Ljava/util/List;

    .line 40367
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40324
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 40325
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40326
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40327
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    goto :goto_0

    .line 40329
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 40384
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearLocation()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 41108
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41109
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 41110
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    .line 41111
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 41113
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 40389
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40373
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    .locals 1

    .line 40342
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 40289
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 40337
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27100()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;
    .locals 1

    .line 40639
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40640
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p1

    .line 40642
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    return-object p1
.end method

.method public final getLocationBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 41223
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;

    return-object p1
.end method

.method public final getLocationBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
            ">;"
        }
    .end annotation

    .line 41486
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationCount()I
    .locals 1

    .line 40585
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40586
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 40588
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getLocationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
            ">;"
        }
    .end annotation

    .line 40531
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40532
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 40534
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLocationOrBuilder(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;
    .locals 1

    .line 41274
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41275
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;

    return-object p1

    .line 41276
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;

    return-object p1
.end method

.method public final getLocationOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 41328
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 41329
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 41331
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 40301
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$27200()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 40302
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40458
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 40464
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40460
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40461
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 40464
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 40466
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 2

    .line 40414
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 40415
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 40416
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40417
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40418
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40419
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    goto :goto_0

    .line 40421
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40422
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40424
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_1

    .line 40427
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 40428
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40429
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 40430
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 40431
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    .line 40432
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->bitField0_:I

    .line 40433
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_3

    .line 40435
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->getLocationFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 40437
    :cond_4
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->access$28800(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 40441
    :cond_5
    :goto_1
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    .line 40442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40405
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    if-eqz v0, :cond_0

    .line 40406
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1

    .line 40408
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 41511
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final removeLocation(I)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 41165
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 41166
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 41167
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41168
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 41170
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 40379
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setLocation(ILcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40755
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40756
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40757
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40758
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 40760
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setLocation(ILcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Location;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 1

    .line 40694
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->locationBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 40696
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40698
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->ensureLocationIsMutable()V

    .line 40699
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->location_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->onChanged()V

    goto :goto_0

    .line 40702
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 40395
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;
    .locals 0

    .line 41505
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 40289
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$SourceCodeInfo$Builder;

    move-result-object p1

    return-object p1
.end method
