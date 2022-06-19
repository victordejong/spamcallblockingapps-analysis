.class public final Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacementOrBuilder;"
    }
.end annotation


# instance fields
.field private adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adUnits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1560
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1725
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1561
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1566
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1725
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1567
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$1;)V
    .locals 0

    .line 1542
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$1;)V
    .locals 0

    .line 1542
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;-><init>()V

    return-void
.end method

.method private ensureAdUnitsIsMutable()V
    .locals 2

    .line 1727
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1729
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2024
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2025
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2029
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2030
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2031
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 2033
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1548
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1571
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAdUnits(ILio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1885
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1886
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1887
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1888
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1890
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnits(ILio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1846
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1848
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1851
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1852
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1854
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnits(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1867
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1868
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1869
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1870
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1872
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnits(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1825
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1827
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1830
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1831
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1833
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnitsBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;
    .locals 2

    .line 1995
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 1996
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object v1

    .line 1995
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    return-object v0
.end method

.method public final addAdUnitsBuilder(I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;
    .locals 2

    .line 2007
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2008
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object v1

    .line 2007
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    return-object p1
.end method

.method public final addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;",
            ">;)",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;"
        }
    .end annotation

    .line 1903
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1904
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1905
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1907
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1909
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 1654
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .locals 2

    .line 1600
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    .line 1601
    invoke-virtual {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1602
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .locals 2

    .line 1609
    new-instance v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$1;)V

    .line 1611
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1612
    iget v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1613
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1614
    iget v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    .line 1616
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1802(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1618
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1802(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;Ljava/util/List;)Ljava/util/List;

    .line 1620
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1577
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1578
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1579
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1580
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    goto :goto_0

    .line 1582
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearAdUnits()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1921
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1922
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1923
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    .line 1924
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1926
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 1637
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 1642
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1626
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->clone()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnits(I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;
    .locals 1

    .line 1772
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1773
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    return-object p1

    .line 1775
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    return-object p1
.end method

.method public final getAdUnitsBuilder(I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;
    .locals 1

    .line 1956
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    return-object p1
.end method

.method public final getAdUnitsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;",
            ">;"
        }
    .end annotation

    .line 2019
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitsCount()I
    .locals 1

    .line 1758
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1759
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1761
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public final getAdUnitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1744
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1745
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1747
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnitOrBuilder;
    .locals 1

    .line 1967
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1968
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnitOrBuilder;

    return-object p1

    .line 1969
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnitOrBuilder;

    return-object p1
.end method

.method public final getAdUnitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1981
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 1982
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1984
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    .locals 1

    .line 1595
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1590
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1554
    sget-object v0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingProto;->internal_static_bidmachine_protobuf_headerbidding_HeaderBiddingPlacement_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    const-class v2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 1555
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
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

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

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

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

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

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

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

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1711
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$2100()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1717
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1713
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
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

    .line 1717
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 1719
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1658
    instance-of v0, p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    if-eqz v0, :cond_0

    .line 1659
    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1

    .line 1661
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 2

    .line 1667
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->getDefaultInstance()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1668
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 1669
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1670
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1671
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1672
    iget v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    goto :goto_0

    .line 1674
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1675
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1677
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_1

    .line 1680
    :cond_2
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1681
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1682
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1683
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1684
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    .line 1685
    iget v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->bitField0_:I

    .line 1687
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1688
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1690
    :cond_4
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$1800(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1694
    :cond_5
    :goto_1
    invoke-static {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;->access$2000(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    .line 1695
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 2044
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method

.method public final removeAdUnits(I)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1938
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1939
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1940
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1941
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1943
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setAdUnits(ILio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1808
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1809
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1810
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1811
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1813
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAdUnits(ILio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 1

    .line 1787
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1789
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    invoke-direct {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->ensureAdUnitsIsMutable()V

    .line 1792
    iget-object v0, p0, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1793
    invoke-virtual {p0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->onChanged()V

    goto :goto_0

    .line 1795
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 1632
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 1648
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1542
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;
    .locals 0

    .line 2038
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$Builder;

    return-object p1
.end method
