.class public final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAdOrBuilder;"
    }
.end annotation


# instance fields
.field private bidder_:Ljava/lang/Object;

.field private bitField0_:I

.field private clientParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverParams_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 610
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 749
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 611
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 749
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 617
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V
    .locals 0

    .line 566
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 572
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetClientParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 843
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 850
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    .line 851
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 852
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ClientParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    .line 855
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    .line 858
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clientParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1001
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    .line 1002
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1003
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    .line 1006
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    .line 1009
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetServerParams()Lcom/explorestack/protobuf/MapField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->serverParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 994
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$ServerParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 621
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 697
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 2

    .line 647
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 649
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 2

    .line 656
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$1;)V

    .line 658
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$402(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$502(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 660
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$500(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 661
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$602(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 662
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$600(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 663
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 626
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 627
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 629
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 630
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    return-object p0
.end method

.method public final clearBidder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 815
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 816
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearClientParams()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 931
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 932
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 680
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 685
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public final clearServerParams()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 1082
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1083
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 669
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsClientParams(Ljava/lang/String;)Z
    .locals 1

    .line 874
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsServerParams(Ljava/lang/String;)Z
    .locals 1

    .line 1025
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBidder()Ljava/lang/String;
    .locals 2

    .line 758
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 759
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 760
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 762
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 763
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    return-object v0

    .line 766
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBidderBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 778
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 779
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 780
    check-cast v0, Ljava/lang/String;

    .line 781
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 783
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    return-object v0

    .line 786
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getClientParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 882
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getClientParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getClientParamsCount()I
    .locals 1

    .line 862
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getClientParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 893
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getClientParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 906
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 909
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getClientParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 921
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 924
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 925
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 1

    .line 642
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 637
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getMutableClientParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 956
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMutableServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1107
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1033
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->getServerParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getServerParamsCount()I
    .locals 1

    .line 1013
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getServerParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1044
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getServerParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1057
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1060
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final getServerParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1072
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1075
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1076
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 604
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingAd_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    const-class v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 605
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 582
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
.end method

.method public final internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 595
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 597
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1
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

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

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

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 736
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$1000()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 742
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 738
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
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

    .line 742
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 744
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 701
    instance-of v0, p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    if-eqz v0, :cond_0

    .line 702
    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1

    .line 704
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 2

    .line 710
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 711
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getBidder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$400(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 713
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    .line 715
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 716
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$700(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 717
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 718
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 719
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$900(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    .line 720
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 1148
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public final putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;"
        }
    .end annotation

    .line 984
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 985
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putAllServerParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;"
        }
    .end annotation

    .line 1135
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1136
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putClientParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 968
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 971
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final putServerParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 1119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1122
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeClientParams(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 945
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableClientParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 947
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeServerParams(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 1

    .line 1096
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->internalGetMutableServerParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1098
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setBidder(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 799
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 803
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBidderBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 829
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 833
    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->bidder_:Ljava/lang/Object;

    .line 834
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 675
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 691
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 566
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;
    .locals 0

    .line 1142
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd$Builder;

    return-object p1
.end method
