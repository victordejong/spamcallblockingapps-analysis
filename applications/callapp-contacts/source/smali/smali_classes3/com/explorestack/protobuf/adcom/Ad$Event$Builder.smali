.class public final Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;"
    }
.end annotation


# instance fields
.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private cdata_:Lcom/explorestack/protobuf/MapField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/MapField<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private method_:I

.field private type_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1281
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 1500
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    .line 1565
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    .line 1631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    const-string v0, ""

    .line 1808
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 2202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 1282
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1287
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 1500
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    .line 1565
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    .line 1631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    const-string p1, ""

    .line 1808
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 2202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 1288
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 1241
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 1241
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;-><init>()V

    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 1633
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1634
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    .line 1635
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 2204
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 2205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 2206
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1247
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 2190
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2191
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 2193
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 2194
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 2195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 2196
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 2501
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2502
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2506
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 2507
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 2508
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 2510
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private internalGetCdata()Lcom/explorestack/protobuf/MapField;
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

    .line 1901
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1902
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->emptyMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;
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

    .line 1909
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    .line 1910
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    if-nez v0, :cond_0

    .line 1911
    sget-object v0, Lcom/explorestack/protobuf/adcom/Ad$Event$CdataDefaultEntryHolder;->defaultEntry:Lcom/explorestack/protobuf/MapEntry;

    invoke-static {v0}, Lcom/explorestack/protobuf/MapField;->newMapField(Lcom/explorestack/protobuf/MapEntry;)Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->isMutable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1915
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->copy()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    .line 1917
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->cdata_:Lcom/explorestack/protobuf/MapField;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1292
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllApi(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;"
        }
    .end annotation

    .line 1717
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1718
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 1719
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1721
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllApiValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;"
        }
    .end annotation

    .line 1800
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1801
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1802
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1804
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;"
        }
    .end annotation

    .line 2380
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2381
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2382
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 2384
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2386
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1700
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1703
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final addApiValue(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1785
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1786
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1787
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2362
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2363
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2364
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2365
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2367
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2323
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2325
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2328
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2331
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2344
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2345
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2346
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2347
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2349
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2304
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2307
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2310
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2472
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2473
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2472
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 2484
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 2485
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 2484
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1405
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 2

    .line 1336
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1338
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 2

    .line 1345
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 1347
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$402(Lcom/explorestack/protobuf/adcom/Ad$Event;I)I

    .line 1348
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$502(Lcom/explorestack/protobuf/adcom/Ad$Event;I)I

    .line 1349
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1350
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    .line 1351
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    .line 1353
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$602(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/util/List;)Ljava/util/List;

    .line 1354
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$702(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$802(Lcom/explorestack/protobuf/adcom/Ad$Event;Lcom/explorestack/protobuf/MapField;)Lcom/explorestack/protobuf/MapField;

    .line 1356
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$800(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/MapField;->makeImmutable()V

    .line 1357
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 1358
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$902(Lcom/explorestack/protobuf/adcom/Ad$Event;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1360
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$902(Lcom/explorestack/protobuf/adcom/Ad$Event;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 1362
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 1363
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1364
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 1365
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    .line 1367
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1002(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 1369
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1002(Lcom/explorestack/protobuf/adcom/Ad$Event;Ljava/util/List;)Ljava/util/List;

    .line 1371
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 1298
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 1299
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    .line 1301
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    .line 1303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    .line 1304
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    const-string v0, ""

    .line 1305
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1307
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->clear()V

    .line 1308
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1309
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 1311
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 1312
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 1314
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 1316
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    goto :goto_1

    .line 1318
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_1
    return-object p0
.end method

.method public final clearApi()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    .line 1734
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    .line 1735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCdata()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1990
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 1991
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 2143
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2144
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2145
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2147
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2148
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2398
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2399
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 2400
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    .line 2401
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2403
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1388
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final clearMethod()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1625
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    .line 1626
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1393
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final clearType()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1560
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    .line 1561
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUrl()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1874
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1875
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1377
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final containsCdata(Ljava/lang/String;)Z
    .locals 1

    .line 1933
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 1670
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1500()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public final getApiCount()I
    .locals 1

    .line 1659
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 1647
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    .line 1648
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1500()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public final getApiValue(I)I
    .locals 1

    .line 1759
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1748
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCdata()Ljava/util/Map;
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

    .line 1941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getCdataMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCdataCount()I
    .locals 1

    .line 1921
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final getCdataMap()Ljava/util/Map;
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

    .line 1952
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getCdataOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1965
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1968
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

.method public final getCdataOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1980
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMap()Ljava/util/Map;

    move-result-object v0

    .line 1983
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1986
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1984
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1241
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 1331
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1326
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2070
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 2072
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 2162
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    .line 2163
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 2173
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2174
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 2177
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 2252
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 2433
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 2496
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 2235
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 2238
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

    .line 2221
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2222
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2224
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 2444
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 2446
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

    .line 2458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 2459
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMethod()Lcom/explorestack/protobuf/adcom/EventTrackingMethod;
    .locals 1

    .line 1597
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->valueOf(I)Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1598
    sget-object v0, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/EventTrackingMethod;

    :cond_0
    return-object v0
.end method

.method public final getMethodValue()I
    .locals 1

    .line 1574
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    return v0
.end method

.method public final getMutableCdata()Ljava/util/Map;
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

    .line 2015
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lcom/explorestack/protobuf/adcom/EventType;
    .locals 1

    .line 1532
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/EventType;->valueOf(I)Lcom/explorestack/protobuf/adcom/EventType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1533
    sget-object v0, Lcom/explorestack/protobuf/adcom/EventType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/EventType;

    :cond_0
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 1509
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 1817
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1818
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1819
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1821
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1822
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 1825
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUrlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1837
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1838
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1839
    check-cast v0, Ljava/lang/String;

    .line 1840
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1842
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    return-object v0

    .line 1845
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 2059
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

    .line 1275
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 1276
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final internalGetMapField(I)Lcom/explorestack/protobuf/MapField;
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1255
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1257
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

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1266
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object p1

    return-object p1

    .line 1268
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

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2121
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 2122
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 2124
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 2126
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2128
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_1

    .line 2130
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

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

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

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

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

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

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

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1487
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1400()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1493
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1489
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Event;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
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

    .line 1493
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 1495
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1409
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    if-eqz v0, :cond_0

    .line 1410
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1

    .line 1412
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 1418
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1419
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$400(Lcom/explorestack/protobuf/adcom/Ad$Event;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1420
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setTypeValue(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 1422
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$500(Lcom/explorestack/protobuf/adcom/Ad$Event;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getMethodValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setMethodValue(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 1425
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$600(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1426
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1427
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$600(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    .line 1428
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    goto :goto_0

    .line 1430
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1431
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$600(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1433
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    .line 1435
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1436
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$700(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    .line 1439
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    .line 1440
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1100(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/MapField;

    move-result-object v1

    .line 1439
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/MapField;->mergeFrom(Lcom/explorestack/protobuf/MapField;)V

    .line 1441
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1442
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 1444
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_8

    .line 1445
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1446
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1447
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 1448
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    goto :goto_1

    .line 1450
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 1451
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1453
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_2

    .line 1456
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1457
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1459
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1460
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    .line 1461
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->bitField0_:I

    .line 1463
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1464
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_9
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    .line 1466
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1000(Lcom/explorestack/protobuf/adcom/Ad$Event;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 1470
    :cond_b
    :goto_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1300(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    .line 1471
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 2521
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final putAllCdata(Ljava/util/Map;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;"
        }
    .end annotation

    .line 2043
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2044
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public final putCdata(Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2027
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2030
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeCdata(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->internalGetMutableCdata()Lcom/explorestack/protobuf/MapField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/MapField;->getMutableMap()Ljava/util/Map;

    move-result-object v0

    .line 2006
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2415
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2416
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2417
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2418
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2420
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setApi(ILcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1683
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1686
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final setApiValue(II)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 1771
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureApiIsMutable()V

    .line 1772
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1773
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2104
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2105
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2106
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2108
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2083
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2085
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2087
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 2088
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2090
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2286
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2287
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2288
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2290
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 2264
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 2266
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->ensureExtProtoIsMutable()V

    .line 2269
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2270
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    goto :goto_0

    .line 2272
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1383
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final setMethod(Lcom/explorestack/protobuf/adcom/EventTrackingMethod;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1609
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/EventTrackingMethod;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    .line 1613
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMethodValue(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1584
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->method_:I

    .line 1585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1399
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final setType(Lcom/explorestack/protobuf/adcom/EventType;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1544
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/EventType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    .line 1548
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeValue(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1519
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->type_:I

    .line 1520
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1241
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 2515
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public final setUrl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1858
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1861
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1862
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 0

    .line 1888
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event;->access$1600(Lcom/explorestack/protobuf/ByteString;)V

    .line 1892
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->url_:Ljava/lang/Object;

    .line 1893
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->onChanged()V

    return-object p0
.end method
