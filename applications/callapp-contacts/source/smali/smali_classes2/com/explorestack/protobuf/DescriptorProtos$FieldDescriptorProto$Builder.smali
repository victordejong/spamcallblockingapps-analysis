.class public final Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private defaultValue_:Ljava/lang/Object;

.field private extendee_:Ljava/lang/Object;

.field private jsonName_:Ljava/lang/Object;

.field private label_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

.field private typeName_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 12496
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 12734
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 12842
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    .line 12879
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    .line 12936
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 13060
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13166
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13342
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 12497
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 12478
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 12502
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 12734
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 12842
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    .line 12879
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    .line 12936
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 13060
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13166
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13342
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 12503
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 12478
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12484
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$6900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 13567
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13568
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 13570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    .line 13571
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 13572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 13573
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 13575
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 12506
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 12508
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 12645
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 2

    .line 12554
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    .line 12555
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12556
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 4

    .line 12563
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 12564
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12569
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7402(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 12571
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7502(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 12577
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7602(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x8

    .line 12581
    :cond_3
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7702(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x10

    .line 12585
    :cond_4
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7802(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x20

    .line 12589
    :cond_5
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7902(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x40

    .line 12593
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8002(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_7

    .line 12595
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->oneofIndex_:I

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8102(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_8

    or-int/lit16 v2, v2, 0x100

    .line 12601
    :cond_8
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8202(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_a

    .line 12603
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_9

    .line 12604
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8302(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_1

    .line 12606
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8302(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    :goto_1
    or-int/lit16 v2, v2, 0x200

    .line 12610
    :cond_a
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8402(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;I)I

    .line 12611
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 4

    .line 12513
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 12514
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12515
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v2, 0x0

    .line 12516
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    and-int/lit8 v1, v1, -0x3

    .line 12517
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v3, 0x1

    .line 12518
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    and-int/lit8 v1, v1, -0x5

    .line 12519
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12520
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    and-int/lit8 v1, v1, -0x9

    .line 12521
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12522
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x11

    .line 12523
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12524
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x21

    .line 12525
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12526
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x41

    .line 12527
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12528
    iput v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->oneofIndex_:I

    and-int/lit16 v1, v1, -0x81

    .line 12529
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12530
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    and-int/lit16 v0, v1, -0x101

    .line 12531
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12532
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 12533
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0

    .line 12535
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 12537
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearDefaultValue()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13263
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13264
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExtendee()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13142
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13143
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getExtendee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13144
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 12628
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearJsonName()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13434
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13435
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getJsonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 13436
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12873
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 12874
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    .line 12875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12791
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12792
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12793
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNumber()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12836
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 12837
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    .line 12838
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 12633
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneofIndex()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13336
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 13337
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->oneofIndex_:I

    .line 13338
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13533
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 13534
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 13535
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 13537
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 13539
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12930
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 12931
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    .line 12932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTypeName()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13033
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13034
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 13035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12617
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    .locals 1

    .line 12549
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 12478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 13193
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13194
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13195
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13198
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13199
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13203
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultValueBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13219
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13220
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13221
    check-cast v0, Ljava/lang/String;

    .line 13222
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13224
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    return-object v0

    .line 13227
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12544
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$6900()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getExtendee()Ljava/lang/String;
    .locals 2

    .line 13081
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13082
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13083
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13085
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13086
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13087
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13091
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getExtendeeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13104
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13105
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13106
    check-cast v0, Ljava/lang/String;

    .line 13107
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13109
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    return-object v0

    .line 13112
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJsonName()Ljava/lang/String;
    .locals 2

    .line 13367
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 13368
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13369
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 13371
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13372
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13373
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13377
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getJsonNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 13392
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 13393
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13394
    check-cast v0, Ljava/lang/String;

    .line 13395
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 13397
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    return-object v0

    .line 13400
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .locals 1

    .line 12854
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12855
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    :cond_0
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 12745
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12746
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 12747
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12749
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12750
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12751
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 12755
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12763
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12764
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12765
    check-cast v0, Ljava/lang/String;

    .line 12766
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12768
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 12771
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 12821
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    return v0
.end method

.method public final getOneofIndex()I
    .locals 1

    .line 13311
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->oneofIndex_:I

    return v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 13473
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13474
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 13476
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    return-object v0
.end method

.method public final getOptionsBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    .line 13546
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13547
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    .line 13548
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;
    .locals 1

    .line 13554
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 13555
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptionsOrBuilder;

    return-object v0

    .line 13557
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-nez v0, :cond_1

    .line 13558
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 12901
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->valueOf(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12902
    sget-object v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->TYPE_DOUBLE:Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    :cond_0
    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 2

    .line 12963
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 12964
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 12965
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 12967
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12968
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12969
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 12973
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 12989
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 12990
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12991
    check-cast v0, Ljava/lang/String;

    .line 12992
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 12994
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    return-object v0

    .line 12997
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasDefaultValue()Z
    .locals 1

    .line 13179
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasExtendee()Z
    .locals 1

    .line 13070
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasJsonName()Z
    .locals 1

    .line 13354
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLabel()Z
    .locals 1

    .line 12847
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .locals 2

    .line 12739
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

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

    .line 12815
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOneofIndex()Z
    .locals 1

    .line 13300
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 13467
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasType()Z
    .locals 1

    .line 12889
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTypeName()Z
    .locals 1

    .line 12949
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 12490
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$7000()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12491
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 12706
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12707
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

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

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12721
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 12727
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12723
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12724
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

    .line 12727
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12729
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12658
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 12659
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12660
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12661
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7400(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    .line 12664
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12665
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12667
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12668
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getLabel()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setLabel(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12670
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12671
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getType()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setType(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12673
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasTypeName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12674
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12675
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7800(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 12676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    .line 12678
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasExtendee()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12679
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12680
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$7900(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 12681
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    .line 12683
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12684
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12685
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8000(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 12686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    .line 12688
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOneofIndex()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 12689
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOneofIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setOneofIndex(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12691
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasJsonName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 12692
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12693
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->access$8200(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 12694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    .line 12696
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12697
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12699
    :cond_a
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    .line 12700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12649
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    if-eqz v0, :cond_0

    .line 12650
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 12652
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

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

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

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 2

    .line 13513
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 13514
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    if-eqz v0, :cond_0

    .line 13516
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13517
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 13518
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    goto :goto_0

    .line 13520
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 13522
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 13524
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 13526
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 13586
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setDefaultValue(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13244
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13246
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13247
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDefaultValueBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13282
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13284
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13285
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->defaultValue_:Ljava/lang/Object;

    .line 13286
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtendee(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13128
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13129
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13130
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtendeeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13158
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13160
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13161
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->extendee_:Ljava/lang/Object;

    .line 13162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 12623
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setJsonName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13418
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13419
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 13420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJsonNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13454
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13455
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->jsonName_:Ljava/lang/Object;

    .line 13456
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLabel(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12862
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12864
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12865
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->label_:I

    .line 12866
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12780
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12782
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12783
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12784
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12802
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12804
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12805
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 12806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12827
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12828
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->number_:I

    .line 12829
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOneofIndex(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13322
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13323
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->oneofIndex_:I

    .line 13324
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13500
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13501
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 13502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 13504
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 13506
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13483
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 13485
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13487
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 13488
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 13490
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 13492
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 12639
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setType(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 12914
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12916
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 12917
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->type_:I

    .line 12918
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13014
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13016
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13017
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 13018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 1

    .line 13052
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13054
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->bitField0_:I

    .line 13055
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->typeName_:Ljava/lang/Object;

    .line 13056
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;
    .locals 0

    .line 13580
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 12478
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method
