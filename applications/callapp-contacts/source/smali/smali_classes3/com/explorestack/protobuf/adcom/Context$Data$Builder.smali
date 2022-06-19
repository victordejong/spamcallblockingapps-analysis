.class public final Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Data$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$DataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

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

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private segment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16101
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 16335
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16424
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16102
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 16107
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 16335
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16424
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16514
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16979
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16108
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 16083
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 16083
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 16981
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 16982
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16983
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSegmentIsMutable()V
    .locals 2

    .line 16516
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 16517
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16518
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16089
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 16967
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16968
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16970
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 16971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 16972
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 16973
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16975
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 17278
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 17279
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 17283
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 17284
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 17285
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 17287
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16813
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16814
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 16818
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 16819
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 16820
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16822
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 16112
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16113
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16114
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Builder;"
        }
    .end annotation

    .line 17157
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17158
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17159
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 17161
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17163
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllSegment(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Builder;"
        }
    .end annotation

    .line 16692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16693
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16694
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 16696
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16698
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17139
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17140
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17141
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17142
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17144
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17100
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17104
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17105
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17108
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17121
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17122
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17123
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17124
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17126
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17079
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17081
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17083
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17084
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17085
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17087
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 17249
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 17250
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 17249
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 17261
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 17262
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 17261
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16228
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public final addSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16674
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16675
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16676
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16677
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16679
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16635
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16637
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16639
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16640
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16643
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16656
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16657
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16658
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16661
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16614
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16616
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16618
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16619
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16620
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16622
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSegmentBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 16784
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16785
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v1

    .line 16784
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object v0
.end method

.method public final addSegmentBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 2

    .line 16796
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 16797
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object v1

    .line 16796
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 2

    .line 16158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    .line 16159
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 16160
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 2

    .line 16167
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Data;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 16169
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14502(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16170
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14602(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16171
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 16172
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 16173
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16174
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 16176
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14702(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 16178
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14702(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    .line 16180
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 16181
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14802(Lcom/explorestack/protobuf/adcom/Context$Data;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 16183
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14802(Lcom/explorestack/protobuf/adcom/Context$Data;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 16185
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 16186
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 16187
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16188
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 16190
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14902(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 16192
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14902(Lcom/explorestack/protobuf/adcom/Context$Data;Ljava/util/List;)Ljava/util/List;

    .line 16194
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16119
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 16120
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16122
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16124
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16125
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16126
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_0

    .line 16128
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 16130
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 16131
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 16133
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16134
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 16136
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 16137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16138
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_2

    .line 16140
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2

    .line 16920
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 16921
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16922
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16924
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16925
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17175
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 17177
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 17178
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17180
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16211
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16401
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16402
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearName()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16490
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16216
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public final clearSegment()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16710
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16711
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16712
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 16713
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16715
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16200
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 16083
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Data;
    .locals 1

    .line 16153
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 16148
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 16846
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16847
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 16849
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 16939
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    .line 16940
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 16950
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 16951
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 16953
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 16954
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 17026
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17027
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 17029
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 17210
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 17273
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 17012
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17013
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 17015
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

    .line 16998
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16999
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17001
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 17221
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17222
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 17223
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

    .line 17235
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 17236
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 17238
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 16344
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16345
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 16346
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 16348
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 16349
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 16352
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 16364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16365
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16366
    check-cast v0, Ljava/lang/String;

    .line 16367
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 16369
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 16372
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 16433
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16434
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 16435
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 16437
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 16438
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 16441
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 16453
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16454
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16455
    check-cast v0, Ljava/lang/String;

    .line 16456
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 16458
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 16461
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSegment(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment;
    .locals 1

    .line 16561
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16562
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p1

    .line 16564
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    return-object p1
.end method

.method public final getSegmentBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;
    .locals 1

    .line 16745
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    return-object p1
.end method

.method public final getSegmentBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;",
            ">;"
        }
    .end annotation

    .line 16808
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSegmentCount()I
    .locals 1

    .line 16547
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16548
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 16550
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Context$Data$Segment;",
            ">;"
        }
    .end annotation

    .line 16533
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16536
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSegmentOrBuilder(I)Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;
    .locals 1

    .line 16756
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16757
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;

    return-object p1

    .line 16758
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;

    return-object p1
.end method

.method public final getSegmentOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Context$Data$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16770
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 16771
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 16773
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 16836
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 16095
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Data_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Data;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 16096
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16898
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 16899
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 16901
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 16903
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16905
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_1

    .line 16907
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

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

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

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 16322
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 16328
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16324
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Data;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16325
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

    .line 16328
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 16330
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16232
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    if-eqz v0, :cond_0

    .line 16233
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1

    .line 16235
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 3

    .line 16241
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Data;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 16242
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16243
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14500(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16244
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    .line 16246
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16247
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14600(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16248
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    .line 16250
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 16251
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16252
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16253
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16254
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_0

    .line 16256
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16257
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16259
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_2

    .line 16262
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16263
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16264
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 16265
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16266
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    .line 16267
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 16269
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15000()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16270
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getSegmentFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 16272
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14700(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16276
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16277
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 16279
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    .line 16280
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 16281
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16282
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16283
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    goto :goto_3

    .line 16285
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 16286
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16288
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_4

    .line 16291
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 16292
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 16293
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 16294
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16295
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    .line 16296
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->bitField0_:I

    .line 16298
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15100()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16299
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 16301
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$14900(Lcom/explorestack/protobuf/adcom/Context$Data;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 16305
    :cond_d
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15200(Lcom/explorestack/protobuf/adcom/Context$Data;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    .line 16306
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17298
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17192
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17193
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17194
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 17195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17197
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeSegment(I)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16727
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16728
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16729
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16732
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16881
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16882
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16885
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16860
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16862
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16864
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 16865
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16867
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17062
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17063
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17064
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17065
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17067
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 17041
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 17043
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17045
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureExtProtoIsMutable()V

    .line 17046
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 17047
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 17049
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16206
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16385
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16388
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16389
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16415
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16417
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15400(Lcom/explorestack/protobuf/ByteString;)V

    .line 16419
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->id_:Ljava/lang/Object;

    .line 16420
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16474
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16477
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16478
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16504
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16506
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Data;->access$15500(Lcom/explorestack/protobuf/ByteString;)V

    .line 16508
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->name_:Ljava/lang/Object;

    .line 16509
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 16222
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method

.method public final setSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16597
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16598
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16599
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16602
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Data$Segment;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSegment(ILcom/explorestack/protobuf/adcom/Context$Data$Segment;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 1

    .line 16576
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segmentBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 16578
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16580
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->ensureSegmentIsMutable()V

    .line 16581
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->segment_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->onChanged()V

    goto :goto_0

    .line 16584
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 16083
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;
    .locals 0

    .line 17292
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    return-object p1
.end method
