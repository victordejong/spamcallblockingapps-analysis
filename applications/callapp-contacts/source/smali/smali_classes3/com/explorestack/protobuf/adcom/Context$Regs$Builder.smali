.class public final Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Regs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$RegsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coppa_:Z

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private gdpr_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25370
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 25790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25371
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 25376
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 25790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25377
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 25352
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 25352
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 25792
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 25793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25794
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 25358
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25778
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25779
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25781
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 25782
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 25783
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 25784
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25786
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 26089
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 26090
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 26094
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 26095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 26096
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 26098
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 25381
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$23500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25382
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;"
        }
    .end annotation

    .line 25968
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25969
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25970
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 25972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25974
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25950
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25951
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25952
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25953
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25955
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25913
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25915
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25916
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 25917
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25919
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25932
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25933
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25934
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25937
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25890
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25892
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25894
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25895
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25896
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25898
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 26060
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 26061
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 26060
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 26072
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 26073
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 26072
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25481
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 2

    .line 25420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    .line 25421
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 25422
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 2

    .line 25429
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Regs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 25431
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->coppa_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$23702(Lcom/explorestack/protobuf/adcom/Context$Regs;Z)Z

    .line 25432
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->gdpr_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$23802(Lcom/explorestack/protobuf/adcom/Context$Regs;Z)Z

    .line 25433
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 25434
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$23902(Lcom/explorestack/protobuf/adcom/Context$Regs;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 25436
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$23902(Lcom/explorestack/protobuf/adcom/Context$Regs;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 25438
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_2

    .line 25439
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 25440
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25441
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    .line 25443
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24002(Lcom/explorestack/protobuf/adcom/Context$Regs;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 25445
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24002(Lcom/explorestack/protobuf/adcom/Context$Regs;Ljava/util/List;)Ljava/util/List;

    .line 25447
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 2

    .line 25387
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 25388
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->coppa_:Z

    .line 25390
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->gdpr_:Z

    .line 25392
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25393
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 25395
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25396
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 25398
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25400
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    goto :goto_1

    .line 25402
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearCoppa()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 25593
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->coppa_:Z

    .line 25594
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 2

    .line 25731
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25732
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25733
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25735
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25736
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25986
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25987
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25988
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    .line 25989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25991
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25464
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method

.method public final clearGdpr()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 25631
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->gdpr_:Z

    .line 25632
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25469
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25453
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCoppa()Z
    .locals 1

    .line 25569
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->coppa_:Z

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 25352
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Regs;
    .locals 1

    .line 25415
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 25410
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Regs_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 25657
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25658
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 25660
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 25750
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    .line 25751
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 25761
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 25762
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 25764
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 25765
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 25837
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25838
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 25840
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 26021
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final getExtProtoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any$Builder;",
            ">;"
        }
    .end annotation

    .line 26084
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 25823
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25824
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 25826
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 25809
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25810
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25812
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 26032
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 26033
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 26034
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public final getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 26046
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 26047
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 26049
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getGdpr()Z
    .locals 1

    .line 25607
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->gdpr_:Z

    return v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 25647
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 25364
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Regs_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25365
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25709
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 25710
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 25712
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 25714
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25716
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_1

    .line 25718
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

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

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

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

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 25547
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 25553
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25549
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Regs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25550
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

    .line 25553
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25555
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25485
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    if-eqz v0, :cond_0

    .line 25486
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1

    .line 25488
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 2

    .line 25494
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Regs;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 25495
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getCoppa()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25496
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getCoppa()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setCoppa(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25498
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getGdpr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25499
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getGdpr()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setGdpr(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25501
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25502
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25504
    :cond_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    .line 25505
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25506
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25507
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25508
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    goto :goto_0

    .line 25510
    :cond_4
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25511
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25513
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_1

    .line 25516
    :cond_5
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25517
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25518
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 25519
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 25520
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    .line 25521
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->bitField0_:I

    .line 25523
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24100()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 25524
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 25526
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24000(Lcom/explorestack/protobuf/adcom/Context$Regs;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 25530
    :cond_8
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Regs;->access$24200(Lcom/explorestack/protobuf/adcom/Context$Regs;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 25531
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 26109
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 26003
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 26004
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 26005
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26006
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 26008
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCoppa(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25580
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->coppa_:Z

    .line 25581
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25693
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25696
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25671
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25673
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25675
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 25676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25678
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25873
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25874
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25875
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25876
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25878
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 1

    .line 25852
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 25854
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25856
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->ensureExtProtoIsMutable()V

    .line 25857
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 25858
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    goto :goto_0

    .line 25860
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25459
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method

.method public final setGdpr(Z)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25618
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->gdpr_:Z

    .line 25619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 25475
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 25352
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;
    .locals 0

    .line 26103
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    return-object p1
.end method
