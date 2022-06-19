.class public final Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;"
    }
.end annotation


# instance fields
.field private bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private bid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation
.end field

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

.field private package_:Z

.field private seat_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6177
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 6410
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 7030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 6178
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 6183
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 6410
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 7030
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 6184
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 6159
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 6159
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;-><init>()V

    return-void
.end method

.method private ensureBidIsMutable()V
    .locals 2

    .line 6549
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 6550
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6551
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 7032
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 7033
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 7034
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6864
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6865
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6869
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 6870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 6871
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6873
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6165
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 7018
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7019
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 7021
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 7022
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 7023
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 7024
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 7026
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 7329
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 7330
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7334
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 7335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 7336
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 7338
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 6188
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$4900()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6189
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6190
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllBid(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;"
        }
    .end annotation

    .line 6735
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6736
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6737
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 6739
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6741
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;"
        }
    .end annotation

    .line 7208
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7209
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7210
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 7212
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7214
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6716
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6717
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6718
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6719
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6721
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6675
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6677
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6679
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6680
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6681
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6683
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6697
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6698
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6699
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6700
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6702
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6653
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6655
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6657
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6658
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6661
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addBidBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    .line 6833
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6834
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    .line 6833
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object v0
.end method

.method public final addBidBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 2

    .line 6846
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 6847
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object v1

    .line 6846
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7190
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7191
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7192
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7195
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7151
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7153
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7155
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7156
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7159
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7172
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7173
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7174
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7175
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7177
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7130
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7134
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7135
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7136
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7138
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 7300
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 7301
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 7300
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 7312
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 7313
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 7312
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6304
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 2

    .line 6234
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    .line 6235
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6236
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 2

    .line 6243
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    .line 6245
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5102(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6246
    iget-boolean v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->package_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5202(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Z)Z

    .line 6247
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 6248
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 6249
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6250
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    .line 6252
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5302(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 6254
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5302(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/util/List;)Ljava/util/List;

    .line 6256
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 6257
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5402(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 6259
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5402(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 6261
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 6262
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 6263
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 6264
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    .line 6266
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5502(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 6268
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5502(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Ljava/util/List;)Ljava/util/List;

    .line 6270
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 6195
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 6196
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6198
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->package_:Z

    .line 6200
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6202
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    goto :goto_0

    .line 6204
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 6206
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6207
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 6209
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6210
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 6212
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 6213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 6214
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    goto :goto_2

    .line 6216
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public final clearBid()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6754
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6756
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    .line 6757
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6759
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 6971
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6972
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6975
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6976
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7226
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 7228
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    .line 7229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7231
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6287
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6292
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final clearPackage()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 6541
    iput-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->package_:Z

    .line 6542
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSeat()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6476
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6477
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6276
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;
    .locals 1

    .line 6597
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6598
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p1

    .line 6600
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    return-object p1
.end method

.method public final getBidBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;
    .locals 1

    .line 6791
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;

    return-object p1
.end method

.method public final getBidBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;",
            ">;"
        }
    .end annotation

    .line 6859
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBidCount()I
    .locals 1

    .line 6582
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6583
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 6585
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getBidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;",
            ">;"
        }
    .end annotation

    .line 6567
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6568
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6570
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;
    .locals 1

    .line 6803
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6804
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;

    return-object p1

    .line 6805
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;

    return-object p1
.end method

.method public final getBidOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$BidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6818
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 6819
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6821
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 6159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1

    .line 6229
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6224
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 6897
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6898
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 6900
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 6990
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    .line 6991
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 7001
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 7002
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 7004
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 7005
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 7077
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7078
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 7080
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 7261
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 7324
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 7063
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7064
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 7066
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

    .line 7049
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7050
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7052
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 7272
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7273
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 7274
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

    .line 7286
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 7287
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7289
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPackage()Z
    .locals 1

    .line 6511
    iget-boolean v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->package_:Z

    return v0
.end method

.method public final getSeat()Ljava/lang/String;
    .locals 2

    .line 6419
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6420
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 6421
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 6423
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6424
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    return-object v0

    .line 6427
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSeatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 6439
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6440
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6441
    check-cast v0, Ljava/lang/String;

    .line 6442
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 6444
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    return-object v0

    .line 6447
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 6887
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 6171
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_Seatbid_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    .line 6172
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6949
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 6950
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 6952
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 6954
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6956
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_1

    .line 6958
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

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

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

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

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

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

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

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6397
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 6403
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6399
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6400
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

    .line 6403
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    .line 6405
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6308
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    if-eqz v0, :cond_0

    .line 6309
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1

    .line 6311
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 3

    .line 6317
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 6318
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6319
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5100(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6320
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    .line 6322
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getPackage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6323
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getPackage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setPackage(Z)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    .line 6325
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 6326
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6327
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6328
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6329
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    goto :goto_0

    .line 6331
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6332
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6334
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_2

    .line 6337
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6338
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6339
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 6340
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6341
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    .line 6342
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    .line 6344
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5600()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6345
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getBidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 6347
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5300(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6351
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6352
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    .line 6354
    :cond_8
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_a

    .line 6355
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6356
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6357
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 6358
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    goto :goto_3

    .line 6360
    :cond_9
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 6361
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6363
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_4

    .line 6366
    :cond_a
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 6367
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6368
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 6369
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6370
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    .line 6371
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bitField0_:I

    .line 6373
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5700()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6374
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_b
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 6376
    :cond_c
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5500(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 6380
    :cond_d
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$5800(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    .line 6381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 7349
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final removeBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6772
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6773
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6774
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6777
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7243
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7244
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7245
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7246
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7248
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setBid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6635
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6636
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6637
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6638
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6640
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setBid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6613
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6615
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6617
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureBidIsMutable()V

    .line 6618
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->bid_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6619
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6621
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6932
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6933
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6934
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6936
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 6911
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 6913
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6915
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 6916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 6918
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7113
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7114
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7115
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7116
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7118
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 7092
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 7094
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7096
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->ensureExtProtoIsMutable()V

    .line 7097
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7098
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    goto :goto_0

    .line 7100
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6282
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final setPackage(Z)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6525
    iput-boolean p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->package_:Z

    .line 6526
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6298
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final setSeat(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6463
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6464
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSeatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 6490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6492
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->access$6000(Lcom/explorestack/protobuf/ByteString;)V

    .line 6494
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->seat_:Ljava/lang/Object;

    .line 6495
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 6159
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 0

    .line 7343
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method
