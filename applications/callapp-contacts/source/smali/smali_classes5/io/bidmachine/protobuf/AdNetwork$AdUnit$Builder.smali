.class public final Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork$AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;"
    }
.end annotation


# instance fields
.field private adFormat_:Ljava/lang/Object;

.field private bitField0_:I

.field private customParams_:Lcom/explorestack/protobuf/MapField;
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

    .line 623
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 757
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 624
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 629
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 757
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 630
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 583
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 583
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 589
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private internalGetCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 830
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 831
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;
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

    .line 838
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onChanged()V

    .line 839
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 840
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 843
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 846
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 634
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 707
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 2

    .line 659
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 661
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 2

    .line 668
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 670
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$402(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$502(Lio/bidmachine/protobuf/AdNetwork$AdUnit;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 672
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$500(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 673
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 639
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 640
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 642
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    return-object p0
.end method

.method public final clearAdFormat()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 807
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 808
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCustomParams()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 903
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 690
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 695
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 679
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 858
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAdFormat()Ljava/lang/String;
    .locals 2

    .line 762
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 763
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 764
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 766
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 767
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    return-object v0

    .line 770
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getAdFormatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 778
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 779
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 780
    check-cast v0, Ljava/lang/String;

    .line 781
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 783
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    return-object v0

    .line 786
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getCustomParams()Ljava/util/Map;
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

    .line 866
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsCount()I
    .locals 1

    .line 850
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getCustomParamsMap()Ljava/util/Map;
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

    .line 873
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 882
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 885
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

.method public final getCustomParamsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 893
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 896
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 897
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1

    .line 654
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 649
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getMutableCustomParams()Ljava/util/Map;
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

    .line 924
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 617
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 618
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 597
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 599
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

    .line 608
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 610
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

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

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

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 744
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 746
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 747
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

    .line 750
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 752
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 711
    instance-of v0, p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    if-eqz v0, :cond_0

    .line 712
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1

    .line 714
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 720
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 721
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getAdFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$400(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 723
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onChanged()V

    .line 725
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 726
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$600(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 725
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 727
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$700(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    .line 728
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 957
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;"
        }
    .end annotation

    .line 944
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 945
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 932
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 935
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 913
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 915
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setAdFormat(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 795
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 799
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAdFormatBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 817
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->access$900(Lcom/explorestack/protobuf/ByteString;)V

    .line 821
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->adFormat_:Ljava/lang/Object;

    .line 822
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 685
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 701
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 0

    .line 951
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method
