.class public final Lcom/explorestack/protobuf/openrtb/Response$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/openrtb/Response$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/openrtb/ResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bidid_:Ljava/lang/Object;

.field private bitField0_:I

.field private cdata_:Ljava/lang/Object;

.field private cur_:Ljava/lang/Object;

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

.field private nbr_:I

.field private seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private seatbid_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 8004
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 8258
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8357
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8446
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8511
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8605
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8700
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8005
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 8010
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 8258
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8357
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8446
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8511
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8605
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8700
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8011
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 7986
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$1;)V
    .locals 0

    .line 7986
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 9167
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 9168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 9169
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSeatbidIsMutable()V
    .locals 2

    .line 8702
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 8703
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8704
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7992
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 9153
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9154
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 9156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 9157
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9158
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 9159
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9161
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 9464
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9465
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9469
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 9470
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9471
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 9473
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8999
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9000
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9004
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 9005
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 9006
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 9008
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 8015
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$6400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8016
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8017
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;"
        }
    .end annotation

    .line 9343
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9344
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9345
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 9347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9349
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAllSeatbid(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;)",
            "Lcom/explorestack/protobuf/openrtb/Response$Builder;"
        }
    .end annotation

    .line 8878
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8879
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8880
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 8882
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8884
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9325
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9326
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9327
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9328
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9330
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9286
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9288
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9290
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9291
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9292
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9294
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9307
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9308
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9309
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9312
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9265
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9269
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9270
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9271
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9273
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 9435
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9436
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9435
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 9447
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 9448
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 9447
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8140
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public final addSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8860
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8861
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8862
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8863
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8865
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8821
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8823
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8825
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8826
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8827
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8829
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSeatbid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8842
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8843
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8844
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8845
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8847
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSeatbid(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8800
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8802
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8804
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8805
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8808
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addSeatbidBuilder()Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 8970
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8971
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v1

    .line 8970
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object v0
.end method

.method public final addSeatbidBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 2

    .line 8982
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 8983
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object v1

    .line 8982
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 2

    .line 8067
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    .line 8068
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8069
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->buildPartial()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 2

    .line 8076
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/openrtb/Response;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/openrtb/Response$1;)V

    .line 8078
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6602(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8079
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6702(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8080
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6802(Lcom/explorestack/protobuf/openrtb/Response;I)I

    .line 8081
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6902(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8082
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7002(Lcom/explorestack/protobuf/openrtb/Response;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8083
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 8084
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8085
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8086
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8088
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7102(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 8090
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7102(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    .line 8092
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 8093
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7202(Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 8095
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7202(Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 8097
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_4

    .line 8098
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 8099
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8100
    iget v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8102
    :cond_3
    iget-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7302(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 8104
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7302(Lcom/explorestack/protobuf/openrtb/Response;Ljava/util/List;)Ljava/util/List;

    .line 8106
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2

    .line 8022
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 8023
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8025
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 8027
    iput v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8029
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8031
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8033
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8035
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_0

    .line 8037
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 8039
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 8040
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 8042
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 8043
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 8045
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 8046
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8047
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_2

    .line 8049
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public final clearBidid()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8423
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8424
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCdata()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8675
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCur()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8581
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8582
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2

    .line 9106
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9107
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9110
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9111
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9361
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9362
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 9363
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 9364
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9366
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8123
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public final clearId()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8332
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8333
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNbr()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 8506
    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8128
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public final clearSeatbid()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8896
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8897
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8898
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8899
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8901
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8112
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->clone()Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getBidid()Ljava/lang/String;
    .locals 2

    .line 8366
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8367
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8368
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8370
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8371
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 8374
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBididBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8386
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8387
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8388
    check-cast v0, Ljava/lang/String;

    .line 8389
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8391
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    return-object v0

    .line 8394
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCdata()Ljava/lang/String;
    .locals 2

    .line 8615
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8616
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8617
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8619
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8620
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 8623
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCdataBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8636
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8637
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8638
    check-cast v0, Ljava/lang/String;

    .line 8639
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8641
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    return-object v0

    .line 8644
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCur()Ljava/lang/String;
    .locals 2

    .line 8521
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8522
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8523
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8525
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8526
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    return-object v0

    .line 8529
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8542
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8543
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8544
    check-cast v0, Ljava/lang/String;

    .line 8545
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8547
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    return-object v0

    .line 8550
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 7986
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/openrtb/Response;
    .locals 1

    .line 8062
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8057
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 9032
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9033
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 9035
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 9125
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 9126
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 9136
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9137
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 9139
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 9140
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 9212
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9213
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 9215
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 9396
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 9459
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 9198
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9199
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 9201
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

    .line 9184
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9185
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9187
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 9407
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9408
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 9409
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

    .line 9421
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 9422
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9424
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .line 8269
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8270
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 8271
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 8273
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8274
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8277
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 8291
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8293
    check-cast v0, Ljava/lang/String;

    .line 8294
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 8296
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 8299
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getNbr()Lcom/explorestack/protobuf/openrtb/NoBidReason;
    .locals 1

    .line 8478
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->valueOf(I)Lcom/explorestack/protobuf/openrtb/NoBidReason;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8479
    sget-object v0, Lcom/explorestack/protobuf/openrtb/NoBidReason;->UNRECOGNIZED:Lcom/explorestack/protobuf/openrtb/NoBidReason;

    :cond_0
    return-object v0
.end method

.method public final getNbrValue()I
    .locals 1

    .line 8455
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    return v0
.end method

.method public final getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;
    .locals 1

    .line 8747
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8748
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p1

    .line 8750
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    return-object p1
.end method

.method public final getSeatbidBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;
    .locals 1

    .line 8931
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;

    return-object p1
.end method

.method public final getSeatbidBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;",
            ">;"
        }
    .end annotation

    .line 8994
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSeatbidCount()I
    .locals 1

    .line 8733
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8734
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 8736
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getSeatbidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/openrtb/Response$Seatbid;",
            ">;"
        }
    .end annotation

    .line 8719
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8720
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8722
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getSeatbidOrBuilder(I)Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;
    .locals 1

    .line 8942
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8943
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;

    return-object p1

    .line 8944
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;

    return-object p1
.end method

.method public final getSeatbidOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/openrtb/Response$SeatbidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8956
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 8957
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 8959
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 9022
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 7998
    sget-object v0, Lcom/explorestack/protobuf/openrtb/OpenrtbProto;->internal_static_bidmachine_protobuf_openrtb_Response_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/openrtb/Response;

    const-class v2, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 7999
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9084
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 9085
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 9087
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 9089
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9091
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_1

    .line 9093
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

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

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

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8245
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$7700()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8251
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8247
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/openrtb/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8248
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

    .line 8251
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8253
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8144
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Response;

    if-eqz v0, :cond_0

    .line 8145
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1

    .line 8147
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 3

    .line 8153
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Response;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8154
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8155
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6600(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8158
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getBidid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8159
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6700(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8162
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6800(Lcom/explorestack/protobuf/openrtb/Response;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 8163
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getNbrValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setNbrValue(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8165
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getCur()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 8166
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$6900(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8167
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8169
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getCdata()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8170
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7000(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    .line 8173
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 8174
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8175
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8176
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8177
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_0

    .line 8179
    :cond_6
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8180
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8182
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_2

    .line 8185
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8186
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8187
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8188
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8189
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    .line 8190
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8192
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$7400()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 8193
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getSeatbidFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 8195
    :cond_9
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7100(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8199
    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8200
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/Response;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8202
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_d

    .line 8203
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8204
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 8205
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8206
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    goto :goto_3

    .line 8208
    :cond_c
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 8209
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8211
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_4

    .line 8214
    :cond_d
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 8215
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8216
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 8217
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8218
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    .line 8219
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bitField0_:I

    .line 8221
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Response;->access$7500()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8222
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_e
    iput-object v1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_4

    .line 8224
    :cond_f
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7300(Lcom/explorestack/protobuf/openrtb/Response;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 8228
    :cond_10
    :goto_4
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7600(Lcom/explorestack/protobuf/openrtb/Response;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    .line 8229
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 9484
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9378
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9379
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9380
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9383
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8913
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8914
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8915
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8916
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8918
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setBidid(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8410
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8411
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBididBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8437
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8439
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7900(Lcom/explorestack/protobuf/ByteString;)V

    .line 8441
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->bidid_:Ljava/lang/Object;

    .line 8442
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCdata(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8658
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8661
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8662
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCdataBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8690
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8692
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$8100(Lcom/explorestack/protobuf/ByteString;)V

    .line 8694
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cdata_:Ljava/lang/Object;

    .line 8695
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8564
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8567
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8596
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8598
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$8000(Lcom/explorestack/protobuf/ByteString;)V

    .line 8600
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->cur_:Ljava/lang/Object;

    .line 8601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9067
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9068
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9071
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9046
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9048
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9050
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 9051
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9053
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9248
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9249
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9250
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9251
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9253
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 9227
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 9229
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9231
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureExtProtoIsMutable()V

    .line 9232
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9233
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 9235
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8118
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public final setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8314
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8317
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8318
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIdBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8350
    invoke-static {p1}, Lcom/explorestack/protobuf/openrtb/Response;->access$7800(Lcom/explorestack/protobuf/ByteString;)V

    .line 8352
    iput-object p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->id_:Ljava/lang/Object;

    .line 8353
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNbr(Lcom/explorestack/protobuf/openrtb/NoBidReason;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8490
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8493
    invoke-virtual {p1}, Lcom/explorestack/protobuf/openrtb/NoBidReason;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNbrValue(I)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8465
    iput p1, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->nbr_:I

    .line 8466
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 8134
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method

.method public final setSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8783
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8784
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8785
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8786
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8788
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Builder;->build()Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setSeatbid(ILcom/explorestack/protobuf/openrtb/Response$Seatbid;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 1

    .line 8762
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbidBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 8764
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8766
    invoke-direct {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->ensureSeatbidIsMutable()V

    .line 8767
    iget-object v0, p0, Lcom/explorestack/protobuf/openrtb/Response$Builder;->seatbid_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->onChanged()V

    goto :goto_0

    .line 8770
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 7986
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/openrtb/Response$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/openrtb/Response$Builder;
    .locals 0

    .line 9478
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/openrtb/Response$Builder;

    return-object p1
.end method
