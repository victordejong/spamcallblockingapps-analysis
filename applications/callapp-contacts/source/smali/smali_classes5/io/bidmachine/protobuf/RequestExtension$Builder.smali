.class public final Lio/bidmachine/protobuf/RequestExtension$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/RequestExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/RequestExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/RequestExtension$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/RequestExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private bmIfv_:Ljava/lang/Object;

.field private headerBiddingType_:I

.field private ifv_:Ljava/lang/Object;

.field private sellerData_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sellerId_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 672
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 833
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1053
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1098
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1187
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1276
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 673
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 678
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 833
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1098
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1187
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1276
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 679
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/RequestExtension$1;)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/RequestExtension$1;)V
    .locals 0

    .line 632
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 638
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;
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

    .line 914
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 915
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 916
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    .line 919
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    .line 922
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private internalGetSellerData()Lcom/explorestack/protobuf/MapField;
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

    .line 906
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerData_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 907
    sget-object v0, Lio/bidmachine/protobuf/RequestExtension$SellerDataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 683
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 768
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/RequestExtension;
    .locals 2

    .line 716
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 718
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->buildPartial()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/RequestExtension;
    .locals 2

    .line 725
    new-instance v0, Lio/bidmachine/protobuf/RequestExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/RequestExtension;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/RequestExtension$1;)V

    .line 727
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$402(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$502(Lio/bidmachine/protobuf/RequestExtension;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 729
    invoke-static {v0}, Lio/bidmachine/protobuf/RequestExtension;->access$500(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 730
    iget v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$602(Lio/bidmachine/protobuf/RequestExtension;I)I

    .line 731
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$702(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$802(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/RequestExtension;->access$902(Lio/bidmachine/protobuf/RequestExtension;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clear()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 2

    .line 688
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 689
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 691
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->clear()V

    const/4 v1, 0x0

    .line 692
    iput v1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 694
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 696
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 698
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public final clearBmIfv()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1253
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 751
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public final clearHeaderBiddingType()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1093
    iput v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1094
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIfv()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1164
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1165
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 756
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public final clearSellerData()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 995
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 996
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearSellerId()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 883
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 884
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSessionId()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1342
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1343
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 740
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->clone()Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsSellerData(Ljava/lang/String;)Z
    .locals 1

    .line 938
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBmIfv()Ljava/lang/String;
    .locals 2

    .line 1196
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1197
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1198
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1200
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1201
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 1204
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1216
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1217
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1218
    check-cast v0, Ljava/lang/String;

    .line 1219
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1221
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    return-object v0

    .line 1224
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/RequestExtension;
    .locals 1

    .line 711
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 706
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getHeaderBiddingType()Lio/bidmachine/protobuf/HeaderBiddingType;
    .locals 1

    .line 1073
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    invoke-static {v0}, Lio/bidmachine/protobuf/HeaderBiddingType;->valueOf(I)Lio/bidmachine/protobuf/HeaderBiddingType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1074
    sget-object v0, Lio/bidmachine/protobuf/HeaderBiddingType;->UNRECOGNIZED:Lio/bidmachine/protobuf/HeaderBiddingType;

    :cond_0
    return-object v0
.end method

.method public final getHeaderBiddingTypeValue()I
    .locals 1

    .line 1058
    iget v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    return v0
.end method

.method public final getIfv()Ljava/lang/String;
    .locals 2

    .line 1107
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1108
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1109
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1111
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1112
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 1115
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1127
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1128
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1129
    check-cast v0, Ljava/lang/String;

    .line 1130
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1132
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    return-object v0

    .line 1135
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMutableSellerData()Ljava/util/Map;
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

    .line 1020
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSellerData()Ljava/util/Map;
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

    .line 946
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->getSellerDataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSellerDataCount()I
    .locals 1

    .line 926
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getSellerDataMap()Ljava/util/Map;
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

    .line 957
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSellerDataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 970
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 973
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

.method public final getSellerDataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 985
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 988
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 989
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getSellerId()Ljava/lang/String;
    .locals 2

    .line 838
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 839
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 840
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 842
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 843
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 846
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSellerIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 854
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 855
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 856
    check-cast v0, Ljava/lang/String;

    .line 857
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 859
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    return-object v0

    .line 862
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    .line 1285
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1286
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1287
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1289
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1290
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1293
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionIdBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1305
    iget-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1307
    check-cast v0, Ljava/lang/String;

    .line 1308
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1310
    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    return-object v0

    .line 1313
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 666
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_RequestExtension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/RequestExtension;

    const-class v2, Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 667
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 646
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 648
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final internalGetMutableMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 657
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 659
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid map field number: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;

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

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 820
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->access$1200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 826
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 822
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/RequestExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
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

    .line 826
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 828
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 772
    instance-of v0, p1, Lio/bidmachine/protobuf/RequestExtension;

    if-eqz v0, :cond_0

    .line 773
    check-cast p1, Lio/bidmachine/protobuf/RequestExtension;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1

    .line 775
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/RequestExtension;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 2

    .line 781
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->getDefaultInstance()Lio/bidmachine/protobuf/RequestExtension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 782
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSellerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 783
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$400(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 784
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 786
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 787
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1000(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 786
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 788
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$600(Lio/bidmachine/protobuf/RequestExtension;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 789
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getHeaderBiddingTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setHeaderBiddingTypeValue(I)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 791
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 792
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$700(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 795
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getBmIfv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 796
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$800(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 797
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 799
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/RequestExtension;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 800
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$900(Lio/bidmachine/protobuf/RequestExtension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 801
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    .line 803
    :cond_5
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1100(Lio/bidmachine/protobuf/RequestExtension;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 804
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1373
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public final putAllSellerData(Ljava/util/Map;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/RequestExtension$Builder;"
        }
    .end annotation

    .line 1048
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1049
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putSellerData(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1032
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1035
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeSellerData(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 1

    .line 1009
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    invoke-direct {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->internalGetMutableSellerData()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1011
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1241
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBmIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1500(Lcom/explorestack/protobuf/ByteString;)V

    .line 1271
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->bmIfv_:Ljava/lang/Object;

    .line 1272
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 746
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public final setHeaderBiddingType(Lio/bidmachine/protobuf/HeaderBiddingType;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1081
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    invoke-virtual {p1}, Lio/bidmachine/protobuf/HeaderBiddingType;->getNumber()I

    move-result p1

    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1085
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHeaderBiddingTypeValue(I)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1064
    iput p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->headerBiddingType_:I

    .line 1065
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfvBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1182
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->ifv_:Ljava/lang/Object;

    .line 1183
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 762
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method

.method public final setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 871
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 875
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSellerIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 893
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1300(Lcom/explorestack/protobuf/ByteString;)V

    .line 897
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sellerId_:Ljava/lang/Object;

    .line 898
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1326
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1330
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionIdBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1356
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-static {p1}, Lio/bidmachine/protobuf/RequestExtension;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1360
    iput-object p1, p0, Lio/bidmachine/protobuf/RequestExtension$Builder;->sessionId_:Ljava/lang/Object;

    .line 1361
    invoke-virtual {p0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/RequestExtension$Builder;
    .locals 0

    .line 1367
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/RequestExtension$Builder;

    return-object p1
.end method
