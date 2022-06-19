.class public final Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14033
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 14191
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14034
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 14015
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 14039
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 14191
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14040
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 14015
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14021
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$8600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$OneofOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14374
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14375
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    .line 14378
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 14379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 14380
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 14382
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 14043
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 14045
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14134
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 2

    .line 14075
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    .line 14076
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 14077
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 4

    .line 14084
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 14085
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 14090
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->access$9102(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 14092
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 14093
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->access$9202(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    goto :goto_1

    .line 14095
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->access$9202(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    :goto_1
    or-int/lit8 v2, v2, 0x2

    .line 14099
    :cond_2
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->access$9302(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;I)I

    .line 14100
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14050
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 14051
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14052
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    .line 14053
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 14054
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    goto :goto_0

    .line 14056
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14058
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14117
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14248
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    .line 14249
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14122
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14340
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 14341
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 14342
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14344
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14346
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14106
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

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

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 14070
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 14015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 14065
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$8600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 14202
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14203
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 14204
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 14206
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14207
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14208
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 14212
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 14220
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14222
    check-cast v0, Ljava/lang/String;

    .line 14223
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 14225
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 14228
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 14280
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 14281
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 14283
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    return-object v0
.end method

.method public final getOptionsBuilder()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;
    .locals 1

    .line 14353
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    .line 14354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    .line 14355
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptionsOrBuilder;
    .locals 1

    .line 14361
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 14362
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptionsOrBuilder;

    return-object v0

    .line 14364
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    if-nez v0, :cond_1

    .line 14365
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final hasName()Z
    .locals 2

    .line 14196
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .locals 1

    .line 14274
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 14027
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$8700()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    .line 14028
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 14163
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14164
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->isInitialized()Z

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

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

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

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14178
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 14184
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14180
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14181
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

    .line 14184
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    .line 14186
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14147
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 14148
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14149
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    .line 14150
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->access$9100(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    .line 14153
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14154
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    .line 14156
    :cond_2
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    .line 14157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14138
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    if-eqz v0, :cond_0

    .line 14139
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 14141
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

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

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

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 2

    .line 14320
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 14321
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    if-eqz v0, :cond_0

    .line 14323
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14324
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 14325
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    goto :goto_0

    .line 14327
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 14329
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 14331
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14333
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14393
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14112
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14239
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    .line 14240
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14259
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14261
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    .line 14262
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 14263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14307
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14308
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 14309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14311
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14313
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 14290
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 14292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14294
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    .line 14295
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 14297
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 14299
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14128
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 0

    .line 14387
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 14015
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method
