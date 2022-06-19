.class public final Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context$Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Context$Device$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private carrier_:Ljava/lang/Object;

.field private contype_:I

.field private dnt_:Z

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

.field private geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private geofetch_:Z

.field private h_:I

.field private hwv_:Ljava/lang/Object;

.field private ifa_:Ljava/lang/Object;

.field private ip_:Ljava/lang/Object;

.field private iptr_:Z

.field private ipv6_:Ljava/lang/Object;

.field private js_:Z

.field private lang_:Ljava/lang/Object;

.field private lmt_:Z

.field private make_:Ljava/lang/Object;

.field private mccmnc_:Ljava/lang/Object;

.field private mccmncsim_:Ljava/lang/Object;

.field private model_:Ljava/lang/Object;

.field private os_:I

.field private osv_:Ljava/lang/Object;

.field private ppi_:I

.field private pxratio_:F

.field private type_:I

.field private ua_:Ljava/lang/Object;

.field private w_:I

.field private xff_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22111
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    .line 22466
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    const-string v1, ""

    .line 22531
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22620
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22785
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22874
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22963
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    .line 23028
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23117
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23396
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23485
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23574
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23663
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23793
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23882
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23971
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 24060
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    .line 24470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 22112
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 22117
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    .line 22466
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    const-string v0, ""

    .line 22531
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22620
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22785
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22874
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22963
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    .line 23028
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23117
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23396
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23485
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23574
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23663
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23793
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23882
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23971
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 24060
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    .line 24470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 22118
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 22093
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 22093
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;-><init>()V

    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 24472
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 24473
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 24474
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22099
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

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

    .line 24458
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24459
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24461
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 24462
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 24463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 24464
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24466
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

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

    .line 24769
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24770
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 24774
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 24775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 24776
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 24778
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Context$Geo;",
            "Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;",
            "Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24305
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24306
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 24308
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 24309
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 24310
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 24311
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 24313
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 22122
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$18600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22123
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Context$Device$Builder;"
        }
    .end annotation

    .line 24648
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24649
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24650
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 24652
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24654
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24630
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24631
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24632
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24633
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24635
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24591
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24593
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24595
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24596
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 24597
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24599
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24612
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24613
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24614
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24615
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24617
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24570
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24572
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24574
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24575
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24576
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24578
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 24740
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 24741
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 24740
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public final addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 24752
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 24753
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 24752
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22302
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 2

    .line 22213
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    .line 22214
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 22215
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 2

    .line 22222
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Device;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 22224
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$18802(Lcom/explorestack/protobuf/adcom/Context$Device;I)I

    .line 22225
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$18902(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22226
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19002(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22227
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->dnt_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19102(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z

    .line 22228
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lmt_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19202(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z

    .line 22229
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19302(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22230
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19402(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22231
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19502(Lcom/explorestack/protobuf/adcom/Context$Device;I)I

    .line 22232
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19602(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22233
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19702(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22234
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->h_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19802(Lcom/explorestack/protobuf/adcom/Context$Device;I)I

    .line 22235
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->w_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19902(Lcom/explorestack/protobuf/adcom/Context$Device;I)I

    .line 22236
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ppi_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20002(Lcom/explorestack/protobuf/adcom/Context$Device;I)I

    .line 22237
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->pxratio_:F

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20102(Lcom/explorestack/protobuf/adcom/Context$Device;F)F

    .line 22238
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->js_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20202(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z

    .line 22239
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20302(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22240
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20402(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22241
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20502(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22242
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20602(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22243
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->iptr_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20702(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z

    .line 22244
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20802(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22245
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20902(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22246
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21002(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22247
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21102(Lcom/explorestack/protobuf/adcom/Context$Device;I)I

    .line 22248
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geofetch_:Z

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21202(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z

    .line 22249
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 22250
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21302(Lcom/explorestack/protobuf/adcom/Context$Device;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 22252
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Context$Geo;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21302(Lcom/explorestack/protobuf/adcom/Context$Device;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 22254
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 22255
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21402(Lcom/explorestack/protobuf/adcom/Context$Device;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 22257
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21402(Lcom/explorestack/protobuf/adcom/Context$Device;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 22259
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    .line 22260
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 22261
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 22262
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    .line 22264
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21502(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 22266
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21502(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/util/List;)Ljava/util/List;

    .line 22268
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onBuilt()V

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clear()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 3

    .line 22128
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 22129
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    const-string v1, ""

    .line 22131
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22133
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22135
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->dnt_:Z

    .line 22137
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lmt_:Z

    .line 22139
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22141
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22143
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    .line 22145
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 22147
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 22149
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->h_:I

    .line 22151
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->w_:I

    .line 22153
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ppi_:I

    const/4 v2, 0x0

    .line 22155
    iput v2, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->pxratio_:F

    .line 22157
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->js_:Z

    .line 22159
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 22161
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 22163
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 22165
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 22167
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->iptr_:Z

    .line 22169
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 22171
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 22173
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 22175
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    .line 22177
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geofetch_:Z

    .line 22179
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 22180
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 22182
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 22183
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 22185
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 22186
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_1

    .line 22188
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 22189
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 22191
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 22192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 22193
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    goto :goto_2

    .line 22195
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_2
    return-object p0
.end method

.method public final clearCarrier()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23859
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23860
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearContype()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 24120
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    .line 24121
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDnt()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22742
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->dnt_:Z

    .line 22743
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExt()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 2

    .line 24411
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24412
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24413
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24415
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24416
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearExtProto()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24666
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24667
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 24668
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    .line 24669
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24671
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22285
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final clearGeo()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 2

    .line 24258
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 24259
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 24260
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24262
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 24263
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final clearGeofetch()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 24158
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geofetch_:Z

    .line 24159
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearH()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23239
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->h_:I

    .line 23240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHwv()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23183
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23184
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIfa()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22686
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22687
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIp()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23551
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23552
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIptr()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23788
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->iptr_:Z

    .line 23789
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIpv6()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23640
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23641
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearJs()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23391
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->js_:Z

    .line 23392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLang()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23462
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23463
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLmt()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22780
    iput-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lmt_:Z

    .line 22781
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMake()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22851
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMake()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22852
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMccmnc()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23948
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmnc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23949
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMccmncsim()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24037
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 24038
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearModel()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22940
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22941
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22290
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final clearOs()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23023
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    .line 23024
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOsv()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23094
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23095
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPpi()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23315
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ppi_:I

    .line 23316
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPxratio()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23353
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->pxratio_:F

    .line 23354
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearType()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 22526
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    .line 22527
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUa()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22597
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22598
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearW()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 23277
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->w_:I

    .line 23278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearXff()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 23729
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXff()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22274
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->clone()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 2

    .line 23802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23803
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23804
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23806
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23807
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    return-object v0

    .line 23810
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCarrierBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23822
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23823
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23824
    check-cast v0, Ljava/lang/String;

    .line 23825
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23827
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    return-object v0

    .line 23830
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 24092
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24093
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_0
    return-object v0
.end method

.method public final getContypeValue()I
    .locals 1

    .line 24069
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 22093
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1

    .line 22208
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 22203
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getDnt()Z
    .locals 1

    .line 22718
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->dnt_:Z

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 24337
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24338
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 24340
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public final getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 24430
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 24431
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 24441
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24442
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 24444
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 24445
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 24517
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24518
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 24520
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 24701
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

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

    .line 24764
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 24503
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24504
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 24506
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

    .line 24489
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24490
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24492
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 24712
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24713
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 24714
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

    .line 24726
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24727
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 24729
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 24184
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24185
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0

    .line 24187
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object v0
.end method

.method public final getGeoBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1

    .line 24277
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 24278
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getGeoFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    return-object v0
.end method

.method public final getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 24288
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 24289
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;

    return-object v0

    .line 24291
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_1

    .line 24292
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getGeofetch()Z
    .locals 1

    .line 24134
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geofetch_:Z

    return v0
.end method

.method public final getH()I
    .locals 1

    .line 23215
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->h_:I

    return v0
.end method

.method public final getHwv()Ljava/lang/String;
    .locals 2

    .line 23126
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23127
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23128
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23130
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23131
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 23134
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23146
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23147
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23148
    check-cast v0, Ljava/lang/String;

    .line 23149
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23151
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 23154
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIfa()Ljava/lang/String;
    .locals 2

    .line 22629
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22630
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22631
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22633
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22634
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 22637
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22649
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22650
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22651
    check-cast v0, Ljava/lang/String;

    .line 22652
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22654
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 22657
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 2

    .line 23494
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23495
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23496
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23498
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23499
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    return-object v0

    .line 23502
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIpBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23514
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23515
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23516
    check-cast v0, Ljava/lang/String;

    .line 23517
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23519
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    return-object v0

    .line 23522
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIptr()Z
    .locals 1

    .line 23762
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->iptr_:Z

    return v0
.end method

.method public final getIpv6()Ljava/lang/String;
    .locals 2

    .line 23583
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23584
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23585
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23587
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23588
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    return-object v0

    .line 23591
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIpv6Bytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23603
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23604
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23605
    check-cast v0, Ljava/lang/String;

    .line 23606
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23608
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    return-object v0

    .line 23611
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJs()Z
    .locals 1

    .line 23367
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->js_:Z

    return v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 2

    .line 23405
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23406
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23407
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23409
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23410
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    return-object v0

    .line 23413
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLangBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23425
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23426
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23427
    check-cast v0, Ljava/lang/String;

    .line 23428
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23430
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    return-object v0

    .line 23433
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLmt()Z
    .locals 1

    .line 22756
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lmt_:Z

    return v0
.end method

.method public final getMake()Ljava/lang/String;
    .locals 2

    .line 22794
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22795
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22796
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22798
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22799
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 22802
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22814
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22815
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22816
    check-cast v0, Ljava/lang/String;

    .line 22817
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22819
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    return-object v0

    .line 22822
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMccmnc()Ljava/lang/String;
    .locals 2

    .line 23891
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23892
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23893
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23895
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23896
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    return-object v0

    .line 23899
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMccmncBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23911
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23912
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23913
    check-cast v0, Ljava/lang/String;

    .line 23914
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23916
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    return-object v0

    .line 23919
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMccmncsim()Ljava/lang/String;
    .locals 2

    .line 23980
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 23981
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23982
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23984
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23985
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    return-object v0

    .line 23988
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getMccmncsimBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 24000
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 24001
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 24002
    check-cast v0, Ljava/lang/String;

    .line 24003
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 24005
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    return-object v0

    .line 24008
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 22883
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22884
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22885
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22887
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22888
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 22891
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22903
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22904
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22905
    check-cast v0, Ljava/lang/String;

    .line 22906
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22908
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    return-object v0

    .line 22911
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 22995
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22996
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_0
    return-object v0
.end method

.method public final getOsValue()I
    .locals 1

    .line 22972
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    return v0
.end method

.method public final getOsv()Ljava/lang/String;
    .locals 2

    .line 23037
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23038
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23039
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23041
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23042
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 23045
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23057
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23058
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23059
    check-cast v0, Ljava/lang/String;

    .line 23060
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23062
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    return-object v0

    .line 23065
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getPpi()I
    .locals 1

    .line 23291
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ppi_:I

    return v0
.end method

.method public final getPxratio()F
    .locals 1

    .line 23329
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->pxratio_:F

    return v0
.end method

.method public final getType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 22498
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22499
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_0
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 22475
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    return v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 2

    .line 22540
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22541
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 22542
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 22544
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 22545
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    return-object v0

    .line 22548
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getUaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 22560
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22561
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 22562
    check-cast v0, Ljava/lang/String;

    .line 22563
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 22565
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    return-object v0

    .line 22568
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 23253
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->w_:I

    return v0
.end method

.method public final getXff()Ljava/lang/String;
    .locals 2

    .line 23672
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23673
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 23674
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 23676
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 23677
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    return-object v0

    .line 23680
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getXffBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 23692
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23693
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 23694
    check-cast v0, Ljava/lang/String;

    .line 23695
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 23697
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    return-object v0

    .line 23700
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 24327
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public final hasGeo()Z
    .locals 1

    .line 24174
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

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

    .line 22105
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Device;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22106
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24389
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24390
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 24392
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 24394
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24396
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_1

    .line 24398
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

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

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

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

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

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

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

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22453
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21800()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 22459
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22455
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Context$Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22456
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

    .line 22459
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22461
    :cond_1
    throw p1
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22306
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Context$Device;

    if-eqz v0, :cond_0

    .line 22307
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1

    .line 22309
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public final mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 2

    .line 22315
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 22316
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$18800(Lcom/explorestack/protobuf/adcom/Context$Device;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 22317
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getTypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setTypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22319
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 22320
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$18900(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22323
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 22324
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19000(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22325
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22327
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDnt()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22328
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDnt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setDnt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22330
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLmt()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22331
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLmt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setLmt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22333
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMake()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 22334
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19300(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22335
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22337
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 22338
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19400(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22341
    :cond_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19500(Lcom/explorestack/protobuf/adcom/Context$Device;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 22342
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setOsValue(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22344
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 22345
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19600(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 22346
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22348
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 22349
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$19700(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 22350
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22352
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getH()I

    move-result v0

    if-eqz v0, :cond_b

    .line 22353
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22355
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getW()I

    move-result v0

    if-eqz v0, :cond_c

    .line 22356
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22358
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPpi()I

    move-result v0

    if-eqz v0, :cond_d

    .line 22359
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPpi()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPpi(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22361
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPxratio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    .line 22362
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPxratio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setPxratio(F)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22364
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getJs()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 22365
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getJs()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setJs(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22367
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 22368
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20300(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 22369
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22371
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 22372
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20400(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 22373
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22375
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 22376
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 22377
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22379
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXff()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 22380
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20600(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 22381
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22383
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIptr()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 22384
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIptr()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setIptr(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22386
    :cond_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 22387
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20800(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 22388
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22390
    :cond_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmnc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 22391
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$20900(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 22392
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22394
    :cond_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 22395
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21000(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 22396
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    .line 22398
    :cond_17
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21100(Lcom/explorestack/protobuf/adcom/Context$Device;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 22399
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getContypeValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setContypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22401
    :cond_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeofetch()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 22402
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeofetch()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setGeofetch(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22404
    :cond_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasGeo()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 22405
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22407
    :cond_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 22408
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22410
    :cond_1b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1d

    .line 22411
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 22412
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 22413
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 22414
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    goto :goto_0

    .line 22416
    :cond_1c
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 22417
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22419
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_1

    .line 22422
    :cond_1d
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 22423
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 22424
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 22425
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22426
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    .line 22427
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->bitField0_:I

    .line 22429
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21600()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 22430
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_1e
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 22432
    :cond_1f
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 22436
    :cond_20
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21700(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 22437
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final mergeGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24236
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 24237
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    .line 24239
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 24241
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 24243
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_1

    .line 24245
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24789
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final removeExtProto(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24683
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24684
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24685
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 24686
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24688
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public final setCarrier(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23843
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23846
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23847
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCarrierBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23873
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23875
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22900(Lcom/explorestack/protobuf/ByteString;)V

    .line 23877
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->carrier_:Ljava/lang/Object;

    .line 23878
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24104
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24107
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    .line 24108
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setContypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24079
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->contype_:I

    .line 24080
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDnt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22729
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->dnt_:Z

    .line 22730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24372
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24373
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24374
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24376
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24351
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24353
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24355
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 24356
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24358
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24553
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24554
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24555
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24556
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24558
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24532
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24534
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24536
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ensureExtProtoIsMutable()V

    .line 24537
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24538
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24540
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22280
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24219
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24220
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 24221
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24223
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->build()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 24198
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geoBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 24200
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24202
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    .line 24203
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    goto :goto_0

    .line 24205
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public final setGeofetch(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24145
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->geofetch_:Z

    .line 24146
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setH(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23226
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->h_:I

    .line 23227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHwv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23170
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23171
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHwvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23199
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22400(Lcom/explorestack/protobuf/ByteString;)V

    .line 23201
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->hwv_:Ljava/lang/Object;

    .line 23202
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22670
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22673
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22674
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIfaBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22700
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22702
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22000(Lcom/explorestack/protobuf/ByteString;)V

    .line 22704
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ifa_:Ljava/lang/Object;

    .line 22705
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIp(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23535
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23538
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23539
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIpBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23565
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23567
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22600(Lcom/explorestack/protobuf/ByteString;)V

    .line 23569
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ip_:Ljava/lang/Object;

    .line 23570
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIptr(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23774
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->iptr_:Z

    .line 23775
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIpv6(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23624
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23627
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23628
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIpv6Bytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23654
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23656
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22700(Lcom/explorestack/protobuf/ByteString;)V

    .line 23658
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ipv6_:Ljava/lang/Object;

    .line 23659
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setJs(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23378
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->js_:Z

    .line 23379
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLang(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23446
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23449
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23450
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLangBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23476
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23478
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22500(Lcom/explorestack/protobuf/ByteString;)V

    .line 23480
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lang_:Ljava/lang/Object;

    .line 23481
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLmt(Z)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22767
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->lmt_:Z

    .line 22768
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMake(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22835
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22838
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMakeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22865
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22867
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22100(Lcom/explorestack/protobuf/ByteString;)V

    .line 22869
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->make_:Ljava/lang/Object;

    .line 22870
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMccmnc(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23932
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23935
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23936
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMccmncBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23962
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23964
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$23000(Lcom/explorestack/protobuf/ByteString;)V

    .line 23966
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmnc_:Ljava/lang/Object;

    .line 23967
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMccmncsim(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24021
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24024
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 24025
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMccmncsimBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24051
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24053
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$23100(Lcom/explorestack/protobuf/ByteString;)V

    .line 24055
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mccmncsim_:Ljava/lang/Object;

    .line 24056
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setModel(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22924
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22927
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22928
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setModelBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22954
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22956
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22200(Lcom/explorestack/protobuf/ByteString;)V

    .line 22958
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->model_:Ljava/lang/Object;

    .line 22959
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOs(Lcom/explorestack/protobuf/adcom/OS;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23007
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23010
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    .line 23011
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsValue(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22982
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->os_:I

    .line 22983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsv(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23078
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23081
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23082
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsvBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23110
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22300(Lcom/explorestack/protobuf/ByteString;)V

    .line 23112
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->osv_:Ljava/lang/Object;

    .line 23113
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPpi(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23302
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ppi_:I

    .line 23303
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPxratio(F)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23340
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->pxratio_:F

    .line 23341
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22296
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final setType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22513
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    .line 22514
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTypeValue(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22485
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->type_:I

    .line 22486
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUa(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22581
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22584
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22585
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUaBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 22611
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22613
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$21900(Lcom/explorestack/protobuf/ByteString;)V

    .line 22615
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->ua_:Ljava/lang/Object;

    .line 22616
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 22093
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 24783
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    return-object p1
.end method

.method public final setW(I)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23264
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->w_:I

    .line 23265
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setXff(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23713
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23716
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23717
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method

.method public final setXffBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 0

    .line 23743
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23745
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->access$22800(Lcom/explorestack/protobuf/ByteString;)V

    .line 23747
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->xff_:Ljava/lang/Object;

    .line 23748
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->onChanged()V

    return-object p0
.end method
