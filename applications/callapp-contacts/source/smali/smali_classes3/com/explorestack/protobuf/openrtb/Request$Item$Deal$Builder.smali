.class public final Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Request$Item$DealOrBuilder;"
    }
.end annotation


# instance fields
.field private at_:I

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

.field private flr_:D

.field private flrcur_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private wadomain_:Lcom/explorestack/protobuf/LazyStringList;

.field private wseat_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5555
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 5793
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5925
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6057
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6187
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5556
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 5561
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 5793
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5925
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6057
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6187
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5562
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 5537
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Request$1;)V
    .locals 0

    .line 5537
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 6473
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 6474
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 6475
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWadomainIsMutable()V
    .locals 2

    .line 6189
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 6190
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6191
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureWseatIsMutable()V
    .locals 2

    .line 6059
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 6060
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6061
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5543
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 6459
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6460
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 6463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 6465
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6467
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 6770
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6771
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6775
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 6776
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 6777
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 6779
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 5566
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5567
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;"
        }
    .end annotation

    .line 6649
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6650
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6651
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6655
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllWadomain(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;"
        }
    .end annotation

    .line 6279
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6280
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6282
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllWseat(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;"
        }
    .end annotation

    .line 6149
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6150
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6152
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6631
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6632
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6633
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6634
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6636
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6592
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6594
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6596
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6597
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6600
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6613
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6614
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6615
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6618
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6571
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6573
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6575
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6576
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6577
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6579
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 6741
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6742
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 6741
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 6753
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6754
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 6753
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5686
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final addWadomain(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6263
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6265
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6266
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 6267
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final addWadomainBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6308
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6310
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5400(Lcom/explorestack/protobuf/ByteString;)V

    .line 6311
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6312
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 6313
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final addWseat(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6135
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6136
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 6137
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final addWseatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6180
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5300(Lcom/explorestack/protobuf/ByteString;)V

    .line 6181
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6182
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 6183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 2

    .line 5613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    .line 5614
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5615
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 3

    .line 5622
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Request$1;)V

    .line 5624
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4002(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5625
    iget-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    invoke-static {v0, v1, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4102(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;D)D

    .line 5626
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4202(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5627
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4302(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;I)I

    .line 5628
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 5629
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5630
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5632
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4402(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 5633
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 5634
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5635
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5637
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4502(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 5638
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 5639
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4602(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5641
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4602(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 5643
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 5644
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 5645
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5646
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5648
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4702(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 5650
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4702(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;Ljava/util/List;)Ljava/util/List;

    .line 5652
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 3

    .line 5572
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 5573
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 5575
    iput-wide v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    .line 5577
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5579
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    .line 5581
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5582
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5583
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5584
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5585
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5586
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 5588
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 5589
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 5591
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 5592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5593
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_1

    .line 5595
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearAt()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6052
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    .line 6053
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    .line 6412
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6413
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6414
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6416
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6417
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6667
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6668
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 6669
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 6670
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6672
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5669
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final clearFlr()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    .line 5920
    iput-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    .line 5921
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFlrcur()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5995
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 5996
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearId()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5863
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5864
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5674
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final clearWadomain()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6293
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6294
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 6295
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearWseat()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6163
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 6164
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 6165
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5658
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAt()I
    .locals 1

    .line 6028
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    .locals 1

    .line 5608
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5603
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 6338
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6339
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 6341
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 6431
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 6432
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 6442
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 6443
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 6445
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 6446
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 6518
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6519
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 6521
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 6702
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 6765
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 6504
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6505
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 6507
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

    .line 6490
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6491
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6493
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 6713
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6714
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 6715
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

    .line 6727
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 6728
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6730
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFlr()D
    .locals 2

    .line 5896
    iget-wide v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    return-wide v0
.end method

.method public final getFlrcur()Ljava/lang/String;
    .locals 2

    .line 5935
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 5936
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5937
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5939
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5940
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 5943
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getFlrcurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5956
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 5957
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5958
    check-cast v0, Ljava/lang/String;

    .line 5959
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5961
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    return-object v0

    .line 5964
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 5803
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5804
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5805
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 5807
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5808
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 5811
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 5824
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5825
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5826
    check-cast v0, Ljava/lang/String;

    .line 5827
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 5829
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 5832
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getWadomain(I)Ljava/lang/String;
    .locals 1

    .line 6223
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWadomainBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 6234
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getWadomainCount()I
    .locals 1

    .line 6213
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 6203
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getWadomainList()Ljava/util/List;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getWadomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getWseat(I)Ljava/lang/String;
    .locals 1

    .line 6093
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getWseatBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 6104
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getWseatCount()I
    .locals 1

    .line 6083
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 6073
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getWseatList()Ljava/util/List;
    .locals 1

    .line 5537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getWseatList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 6328
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 5549
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Request_Item_Deal_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5550
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6390
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6391
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 6393
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 6395
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6397
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_1

    .line 6399
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

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

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

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

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

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

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

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5780
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5786
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5782
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5783
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

    .line 5786
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5788
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 5690
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    if-eqz v0, :cond_0

    .line 5691
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1

    .line 5693
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 5

    .line 5699
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5700
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5701
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4000(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5702
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5704
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 5705
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlr()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5707
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getFlrcur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5708
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4200(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 5709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5711
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 5712
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getAt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5714
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5715
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5716
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5717
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_0

    .line 5719
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 5720
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4400(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 5722
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5724
    :cond_6
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5725
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5726
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    .line 5727
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_1

    .line 5729
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 5730
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4500(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 5732
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    .line 5734
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5735
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5737
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_b

    .line 5738
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5739
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5740
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5741
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    goto :goto_2

    .line 5743
    :cond_a
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 5744
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5746
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_3

    .line 5749
    :cond_b
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 5750
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5751
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 5752
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 5753
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    .line 5754
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->bitField0_:I

    .line 5756
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4800()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5757
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_c
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_3

    .line 5759
    :cond_d
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4700(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 5763
    :cond_e
    :goto_3
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$4900(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 5764
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6790
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6684
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6685
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6686
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6689
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6039
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->at_:I

    .line 6040
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6373
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6374
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6375
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6377
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6352
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6356
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6359
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6554
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6555
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6556
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6557
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6559
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6533
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6535
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6537
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureExtProtoIsMutable()V

    .line 6538
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    goto :goto_0

    .line 6541
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5664
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5907
    iput-wide p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flr_:D

    .line 5908
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5978
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5981
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 5982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFlrcurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6010
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6012
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5200(Lcom/explorestack/protobuf/ByteString;)V

    .line 6014
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->flrcur_:Ljava/lang/Object;

    .line 6015
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5846
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5849
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5850
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5878
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5880
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->access$5100(Lcom/explorestack/protobuf/ByteString;)V

    .line 5882
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->id_:Ljava/lang/Object;

    .line 5883
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 5680
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5537
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 0

    .line 6784
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    return-object p1
.end method

.method public final setWadomain(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6246
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6248
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWadomainIsMutable()V

    .line 6249
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wadomain_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6250
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method

.method public final setWseat(ILjava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;
    .locals 1

    .line 6116
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6118
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->ensureWseatIsMutable()V

    .line 6119
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->wseat_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->onChanged()V

    return-object p0
.end method
