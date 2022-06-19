.class public final Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17554
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 17721
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17555
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 17536
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 17560
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 17721
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17561
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 17536
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17542
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$11600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 17936
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17937
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    .line 17940
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 17941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 17942
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17944
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 17564
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 17566
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17661
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 2

    .line 17598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    .line 17599
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 17600
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 4

    .line 17607
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 17608
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 17613
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$12102(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 17615
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->number_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$12202(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 17619
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 17620
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$12302(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    goto :goto_1

    .line 17622
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$12302(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    :goto_1
    or-int/lit8 v2, v2, 0x4

    .line 17626
    :cond_3
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$12402(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)I

    .line 17627
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 17571
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 17572
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17573
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 17574
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->number_:I

    and-int/lit8 v0, v0, -0x3

    .line 17575
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17576
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17577
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    goto :goto_0

    .line 17579
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17581
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17644
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17778
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17779
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17780
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNumber()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17823
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 17824
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->number_:I

    .line 17825
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17649
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17902
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 17903
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17904
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 17906
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17908
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17633
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

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

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 17593
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 17536
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 17588
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$11600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 17732
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17733
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 17734
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17736
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 17737
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17738
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 17742
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 17750
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17751
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17752
    check-cast v0, Ljava/lang/String;

    .line 17753
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 17755
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 17758
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 17808
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->number_:I

    return v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;
    .locals 1

    .line 17842
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17843
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 17845
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public final getOptionsBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 17915
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    .line 17917
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;
    .locals 1

    .line 17923
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 17924
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;

    return-object v0

    .line 17926
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    if-nez v0, :cond_1

    .line 17927
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 17726
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNumber()Z
    .locals 1

    .line 17802
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 17836
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 17548
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$11700()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17549
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 17693
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

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

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17708
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 17714
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17710
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17711
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

    .line 17714
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17716
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17674
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 17675
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17676
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17677
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->access$12100(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17678
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    .line 17680
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17681
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17683
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17684
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17686
    :cond_3
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    .line 17687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17665
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    if-eqz v0, :cond_0

    .line 17666
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 17668
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

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

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

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 2

    .line 17882
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17883
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    if-eqz v0, :cond_0

    .line 17885
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 17886
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17887
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    goto :goto_0

    .line 17889
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17891
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 17893
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17895
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17955
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17639
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17767
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17769
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17770
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17789
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17791
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17792
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 17793
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17814
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    .line 17815
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->number_:I

    .line 17816
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17869
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17870
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17871
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 17873
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17875
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 1

    .line 17852
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17854
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17856
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$EnumValueOptions;

    .line 17857
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 17859
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 17861
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17655
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .locals 0

    .line 17949
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 17536
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method
