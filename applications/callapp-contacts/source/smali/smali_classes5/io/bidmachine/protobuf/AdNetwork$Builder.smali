.class public final Lio/bidmachine/protobuf/AdNetwork$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdNetworkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdNetwork$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdNetworkOrBuilder;"
    }
.end annotation


# instance fields
.field private adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adUnits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private className_:Ljava/lang/Object;

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

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1422
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1605
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1674
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1423
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1428
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1605
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1674
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1429
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 1382
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AdNetwork$1;)V
    .locals 0

    .line 1382
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;-><init>()V

    return-void
.end method

.method private ensureAdUnitsIsMutable()V
    .locals 2

    .line 1869
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1870
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1871
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2094
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2095
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    iget v2, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2099
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2100
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2101
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 2103
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1388
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 1747
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1748
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

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

    .line 1755
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    .line 1756
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1757
    sget-object v0, Lio/bidmachine/protobuf/AdNetwork$CustomParamsDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 1760
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1761
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    .line 1763
    :cond_1
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->customParams_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1433
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1991
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1992
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1993
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1994
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1996
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1960
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1962
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1964
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1965
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1966
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1968
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnits(Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1977
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1978
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1979
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1982
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnits(Lio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1943
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1945
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1948
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1949
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1951
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addAdUnitsBuilder()Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 2073
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2074
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v1

    .line 2073
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object v0
.end method

.method public final addAdUnitsBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 2

    .line 2081
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2082
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork$AdUnit;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object v1

    .line 2081
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final addAllAdUnits(Ljava/lang/Iterable;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;"
        }
    .end annotation

    .line 2005
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2006
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2007
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2009
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2011
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1525
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->build()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lio/bidmachine/protobuf/AdNetwork;
    .locals 2

    .line 1467
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    .line 1468
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1469
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->buildPartial()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lio/bidmachine/protobuf/AdNetwork;
    .locals 2

    .line 1476
    new-instance v0, Lio/bidmachine/protobuf/AdNetwork;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdNetwork;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdNetwork$1;)V

    .line 1478
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1502(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1602(Lio/bidmachine/protobuf/AdNetwork;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1702(Lio/bidmachine/protobuf/AdNetwork;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 1481
    invoke-static {v0}, Lio/bidmachine/protobuf/AdNetwork;->access$1700(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 1482
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1483
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1484
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1485
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 1487
    :cond_0
    iget-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1489
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdNetwork;->access$1802(Lio/bidmachine/protobuf/AdNetwork;Ljava/util/List;)Ljava/util/List;

    .line 1491
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clear()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1439
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const-string v0, ""

    .line 1440
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1442
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1444
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 1445
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1446
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1447
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    goto :goto_0

    .line 1449
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearAdUnits()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2019
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 2021
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 2022
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2024
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final clearClassName()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1724
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1725
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCustomParams()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1820
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1821
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1508
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public final clearName()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1655
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1656
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1513
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1497
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->clone()Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsCustomParams(Ljava/lang/String;)Z
    .locals 1

    .line 1775
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit;
    .locals 1

    .line 1902
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1903
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1

    .line 1905
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    return-object p1
.end method

.method public final getAdUnitsBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;
    .locals 1

    .line 2046
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;

    return-object p1
.end method

.method public final getAdUnitsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;",
            ">;"
        }
    .end annotation

    .line 2089
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitsCount()I
    .locals 1

    .line 1892
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1893
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1895
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
            "Lio/bidmachine/protobuf/AdNetwork$AdUnit;",
            ">;"
        }
    .end annotation

    .line 1882
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1883
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1885
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitsOrBuilder(I)Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;
    .locals 1

    .line 2053
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2054
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1

    .line 2055
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;

    return-object p1
.end method

.method public final getAdUnitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/bidmachine/protobuf/AdNetwork$AdUnitOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2063
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2064
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2066
    :cond_0
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .locals 2

    .line 1679
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1680
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1681
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1683
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1684
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 1687
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getClassNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1695
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1696
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1697
    check-cast v0, Ljava/lang/String;

    .line 1698
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1700
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 1703
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

    .line 1783
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsCount()I
    .locals 1

    .line 1767
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

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

    .line 1790
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1799
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1802
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

    .line 1810
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1813
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1816
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1814
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdNetwork;
    .locals 1

    .line 1462
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1457
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 1841
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1610
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1611
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1612
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1614
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1615
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1618
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getNameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1626
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1627
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1628
    check-cast v0, Ljava/lang/String;

    .line 1629
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1631
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    return-object v0

    .line 1634
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1416
    sget-object v0, Lio/bidmachine/protobuf/InitProto;->internal_static_bidmachine_protobuf_AdNetwork_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdNetwork;

    const-class v2, Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1417
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1396
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1398
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

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1407
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1409
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

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;

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

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1592
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1598
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1594
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdNetwork;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
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

    .line 1598
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1600
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1529
    instance-of v0, p1, Lio/bidmachine/protobuf/AdNetwork;

    if-eqz v0, :cond_0

    .line 1530
    check-cast p1, Lio/bidmachine/protobuf/AdNetwork;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1

    .line 1532
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lio/bidmachine/protobuf/AdNetwork;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 2

    .line 1538
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->getDefaultInstance()Lio/bidmachine/protobuf/AdNetwork;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1539
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1540
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1500(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1541
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    .line 1543
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdNetwork;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1544
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1600(Lio/bidmachine/protobuf/AdNetwork;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    .line 1547
    :cond_2
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 1548
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1900(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1547
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 1549
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 1550
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1551
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1552
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1553
    iget v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    goto :goto_0

    .line 1555
    :cond_3
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1556
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1558
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_1

    .line 1561
    :cond_4
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1562
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1563
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1564
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1565
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    .line 1566
    iget v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->bitField0_:I

    .line 1568
    invoke-static {}, Lio/bidmachine/protobuf/AdNetwork;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1569
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->getAdUnitsFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1571
    :cond_6
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$1800(Lio/bidmachine/protobuf/AdNetwork;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1575
    :cond_7
    :goto_1
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2100(Lio/bidmachine/protobuf/AdNetwork;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    .line 1576
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 2114
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public final putAllCustomParams(Ljava/util/Map;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/bidmachine/protobuf/AdNetwork$Builder;"
        }
    .end annotation

    .line 1861
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1862
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putCustomParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1849
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1851
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1852
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeAdUnits(I)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 2032
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2033
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 2034
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2035
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 2037
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final removeCustomParams(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1830
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->internalGetMutableCustomParams()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1832
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1930
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1931
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1932
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1933
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1935
    :cond_0
    invoke-virtual {p2}, Lio/bidmachine/protobuf/AdNetwork$AdUnit$Builder;->build()Lio/bidmachine/protobuf/AdNetwork$AdUnit;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setAdUnits(ILio/bidmachine/protobuf/AdNetwork$AdUnit;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 1

    .line 1913
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnitsBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1915
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1917
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->ensureAdUnitsIsMutable()V

    .line 1918
    iget-object v0, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->adUnits_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1919
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    goto :goto_0

    .line 1921
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setClassName(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1712
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1716
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClassNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1734
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 1738
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->className_:Ljava/lang/Object;

    .line 1739
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1503
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public final setName(Ljava/lang/String;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1643
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1647
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNameBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1665
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    invoke-static {p1}, Lio/bidmachine/protobuf/AdNetwork;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1669
    iput-object p1, p0, Lio/bidmachine/protobuf/AdNetwork$Builder;->name_:Ljava/lang/Object;

    .line 1670
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdNetwork$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 1519
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1382
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdNetwork$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdNetwork$Builder;
    .locals 0

    .line 2108
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdNetwork$Builder;

    return-object p1
.end method
