.class public final Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientStreaming_:Z

.field private inputType_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptionsOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

.field private outputType_:Ljava/lang/Object;

.field private serverStreaming_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19897
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 20095
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20171
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20277
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 19898
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 19879
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 19903
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 20095
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20171
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20277
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 19904
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 19879
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19885
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$13600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodOptionsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20460
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20461
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    .line 20464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 20465
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 20466
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 20468
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 19907
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    .line 19909
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20022
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 2

    .line 19947
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    .line 19948
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 19949
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 4

    .line 19956
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/DescriptorProtos$1;)V

    .line 19957
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 19962
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14102(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    or-int/lit8 v2, v2, 0x2

    .line 19966
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14202(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_2

    or-int/lit8 v2, v2, 0x4

    .line 19970
    :cond_2
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14302(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    .line 19972
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v3, :cond_3

    .line 19973
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14402(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_1

    .line 19975
    :cond_3
    invoke-virtual {v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14402(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    :goto_1
    or-int/lit8 v2, v2, 0x8

    :cond_4
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_5

    .line 19980
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14502(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    or-int/lit8 v2, v2, 0x10

    :cond_5
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    .line 19984
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14602(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;Z)Z

    or-int/lit8 v2, v2, 0x20

    .line 19987
    :cond_6
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14702(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;I)I

    .line 19988
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .line 19914
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 19915
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 19916
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 19917
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    and-int/lit8 v1, v1, -0x3

    .line 19918
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 19919
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x5

    .line 19920
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 19921
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 19922
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0

    .line 19924
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19926
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 19927
    iput-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    and-int/lit8 v0, v0, -0x11

    .line 19928
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 19929
    iput-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    and-int/lit8 v0, v0, -0x21

    .line 19930
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clear()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clearClientStreaming()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20513
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20514
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    .line 20515
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20005
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearInputType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20253
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20254
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getInputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20152
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20153
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20154
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20010
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20426
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 20427
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 20428
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 20430
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->clear()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20432
    :goto_0
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearOutputType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20334
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20335
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOutputType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 20336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServerStreaming()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20561
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 20562
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    .line 20563
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 19994
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clone()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getClientStreaming()Z
    .locals 1

    .line 20490
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 19942
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 19879
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 19937
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$13600()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getInputType()Ljava/lang/String;
    .locals 2

    .line 20192
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20193
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20194
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20196
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20197
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20198
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20202
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getInputTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20215
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20216
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20217
    check-cast v0, Ljava/lang/String;

    .line 20218
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20220
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    return-object v0

    .line 20223
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 20106
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20107
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20108
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20110
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20111
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20112
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20116
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20124
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20125
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20126
    check-cast v0, Ljava/lang/String;

    .line 20127
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20129
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 20132
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;
    .locals 1

    .line 20366
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20367
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_0
    return-object v0

    .line 20369
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    return-object v0
.end method

.method public final getOptionsBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;
    .locals 1

    .line 20439
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20440
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 20441
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptionsFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptionsOrBuilder;
    .locals 1

    .line 20447
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20448
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptionsOrBuilder;

    return-object v0

    .line 20450
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-nez v0, :cond_1

    .line 20451
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getOutputType()Ljava/lang/String;
    .locals 2

    .line 20288
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 20289
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 20290
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20292
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20294
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 20298
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputTypeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20306
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 20307
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20308
    check-cast v0, Ljava/lang/String;

    .line 20309
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20311
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    return-object v0

    .line 20314
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getServerStreaming()Z
    .locals 1

    .line 20538
    iget-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    return v0
.end method

.method public final hasClientStreaming()Z
    .locals 1

    .line 20480
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasInputType()Z
    .locals 1

    .line 20181
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .locals 2

    .line 20100
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

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

    .line 20360
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOutputType()Z
    .locals 1

    .line 20282
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasServerStreaming()Z
    .locals 1

    .line 20528
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 19891
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->access$13700()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 19892
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 20067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20068
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->isInitialized()Z

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

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20082
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 20088
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20084
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20085
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

    .line 20088
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 20090
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20035
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 20036
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20037
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20038
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14100(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20039
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 20041
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20042
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20043
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14200(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20044
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 20046
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOutputType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20047
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20048
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->access$14300(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 20049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    .line 20051
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20052
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 20054
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasClientStreaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20055
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getClientStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setClientStreaming(Z)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 20057
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->hasServerStreaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20058
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->getServerStreaming()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setServerStreaming(Z)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 20060
    :cond_6
    iget-object p1, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    .line 20061
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20026
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    if-eqz v0, :cond_0

    .line 20027
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1

    .line 20029
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

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

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

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeOptions(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 2

    .line 20406
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20407
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    if-eqz v0, :cond_0

    .line 20409
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->getDefaultInstance()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20410
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 20411
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;->newBuilder(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;->mergeFrom(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;->buildPartial()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    goto :goto_0

    .line 20413
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 20415
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_1

    .line 20417
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20419
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20575
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setClientStreaming(Z)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20500
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20501
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->clientStreaming_:Z

    .line 20502
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20000
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setInputType(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20239
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20240
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setInputTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20271
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20272
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->inputType_:Ljava/lang/Object;

    .line 20273
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20141
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20143
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20144
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20163
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20165
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20166
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->name_:Ljava/lang/Object;

    .line 20167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20393
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20394
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 20395
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 20397
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions$Builder;->build()Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20399
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOptions(Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20376
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->optionsBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20378
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20380
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->options_:Lcom/explorestack/protobuf/DescriptorProtos$MethodOptions;

    .line 20381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    goto :goto_0

    .line 20383
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20385
    :goto_0
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    return-object p0
.end method

.method public final setOutputType(Ljava/lang/String;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20325
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20326
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 20327
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOutputTypeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20345
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20347
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20348
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->outputType_:Ljava/lang/Object;

    .line 20349
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20016
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setServerStreaming(Z)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 1

    .line 20548
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->bitField0_:I

    .line 20549
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->serverStreaming_:Z

    .line 20550
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;
    .locals 0

    .line 20569
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 19879
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method
