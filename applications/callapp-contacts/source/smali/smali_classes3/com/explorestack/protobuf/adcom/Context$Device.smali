.class public final Lcom/explorestack/protobuf/adcom/Context$Device;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Context$DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    }
.end annotation


# static fields
.field public static final CARRIER_FIELD_NUMBER:I = 0x15

.field public static final CONTYPE_FIELD_NUMBER:I = 0x18

.field private static final DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

.field public static final DNT_FIELD_NUMBER:I = 0x4

.field public static final EXT_FIELD_NUMBER:I = 0x1c

.field public static final EXT_PROTO_FIELD_NUMBER:I = 0x1b

.field public static final GEOFETCH_FIELD_NUMBER:I = 0x19

.field public static final GEO_FIELD_NUMBER:I = 0x1a

.field public static final HWV_FIELD_NUMBER:I = 0xa

.field public static final H_FIELD_NUMBER:I = 0xb

.field public static final IFA_FIELD_NUMBER:I = 0x3

.field public static final IPTR_FIELD_NUMBER:I = 0x14

.field public static final IPV6_FIELD_NUMBER:I = 0x12

.field public static final IP_FIELD_NUMBER:I = 0x11

.field public static final JS_FIELD_NUMBER:I = 0xf

.field public static final LANG_FIELD_NUMBER:I = 0x10

.field public static final LMT_FIELD_NUMBER:I = 0x5

.field public static final MAKE_FIELD_NUMBER:I = 0x6

.field public static final MCCMNCSIM_FIELD_NUMBER:I = 0x17

.field public static final MCCMNC_FIELD_NUMBER:I = 0x16

.field public static final MODEL_FIELD_NUMBER:I = 0x7

.field public static final OSV_FIELD_NUMBER:I = 0x9

.field public static final OS_FIELD_NUMBER:I = 0x8

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPI_FIELD_NUMBER:I = 0xd

.field public static final PXRATIO_FIELD_NUMBER:I = 0xe

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UA_FIELD_NUMBER:I = 0x2

.field public static final W_FIELD_NUMBER:I = 0xc

.field public static final XFF_FIELD_NUMBER:I = 0x13

.field private static final serialVersionUID:J


# instance fields
.field private volatile carrier_:Ljava/lang/Object;

.field private contype_:I

.field private dnt_:Z

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

.field private geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

.field private geofetch_:Z

.field private h_:I

.field private volatile hwv_:Ljava/lang/Object;

.field private volatile ifa_:Ljava/lang/Object;

.field private volatile ip_:Ljava/lang/Object;

.field private iptr_:Z

.field private volatile ipv6_:Ljava/lang/Object;

.field private js_:Z

.field private volatile lang_:Ljava/lang/Object;

.field private lmt_:Z

.field private volatile make_:Ljava/lang/Object;

.field private volatile mccmnc_:Ljava/lang/Object;

.field private volatile mccmncsim_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile model_:Ljava/lang/Object;

.field private os_:I

.field private volatile osv_:Ljava/lang/Object;

.field private ppi_:I

.field private pxratio_:F

.field private type_:I

.field private volatile ua_:Ljava/lang/Object;

.field private w_:I

.field private volatile xff_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24799
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 24807
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Device$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 20513
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 21635
    iput-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 20514
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    const-string v1, ""

    .line 20515
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    .line 20516
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    .line 20517
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    .line 20518
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    .line 20519
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    .line 20520
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    .line 20521
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    .line 20522
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    .line 20523
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    .line 20524
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    .line 20525
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    .line 20526
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    .line 20527
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    .line 20528
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    .line 20529
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    .line 20530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20549
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;-><init>()V

    .line 20551
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20555
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 20559
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 20741
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/explorestack/protobuf/adcom/Context$Device;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    goto/16 :goto_2

    .line 20729
    :sswitch_0
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v4, :cond_1

    .line 20730
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Struct;->toBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v5

    .line 20732
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/Struct;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v5, :cond_0

    .line 20734
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 20735
    invoke-virtual {v5}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    :sswitch_1
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_2

    .line 20720
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    or-int/lit8 v3, v3, 0x1

    .line 20723
    :cond_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    .line 20724
    invoke-static {}, Lcom/explorestack/protobuf/Any;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v5

    .line 20723
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20707
    :sswitch_2
    iget-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v4, :cond_3

    .line 20708
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Geo;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v5

    .line 20710
    :cond_3
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->parser()Lcom/explorestack/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/explorestack/protobuf/CodedInputStream;->readMessage(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/explorestack/protobuf/adcom/Context$Geo;

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v5, :cond_0

    .line 20712
    invoke-virtual {v5, v4}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 20713
    invoke-virtual {v5}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v4

    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    goto :goto_0

    .line 20702
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geofetch_:Z

    goto :goto_0

    .line 20695
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 20697
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    goto :goto_0

    .line 20689
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20691
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    goto :goto_0

    .line 20683
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20685
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20677
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20679
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20673
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->iptr_:Z

    goto/16 :goto_0

    .line 20666
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20668
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20660
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20662
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20654
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20656
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20648
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20650
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20644
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->js_:Z

    goto/16 :goto_0

    .line 20639
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->pxratio_:F

    goto/16 :goto_0

    .line 20634
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ppi_:I

    goto/16 :goto_0

    .line 20629
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->w_:I

    goto/16 :goto_0

    .line 20624
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->h_:I

    goto/16 :goto_0

    .line 20617
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20619
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20611
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20613
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20605
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 20607
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    goto/16 :goto_0

    .line 20599
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20601
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20593
    :sswitch_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20595
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20589
    :sswitch_17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lmt_:Z

    goto/16 :goto_0

    .line 20584
    :sswitch_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->dnt_:Z

    goto/16 :goto_0

    .line 20577
    :sswitch_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20579
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20571
    :sswitch_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 20573
    iput-object v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 20565
    :sswitch_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 20567
    iput v4, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1c
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 20752
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 20753
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 20750
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v3, 0x1

    if-eqz p2, :cond_4

    .line 20756
    iget-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    .line 20758
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 20759
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->makeExtensionsImmutable()V

    .line 20760
    throw p1

    :cond_5
    and-int/lit8 p1, v3, 0x1

    if-eqz p1, :cond_6

    .line 20756
    iget-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    .line 20758
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 20759
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_19
        0x20 -> :sswitch_18
        0x28 -> :sswitch_17
        0x32 -> :sswitch_16
        0x3a -> :sswitch_15
        0x40 -> :sswitch_14
        0x4a -> :sswitch_13
        0x52 -> :sswitch_12
        0x58 -> :sswitch_11
        0x60 -> :sswitch_10
        0x68 -> :sswitch_f
        0x75 -> :sswitch_e
        0x78 -> :sswitch_d
        0x82 -> :sswitch_c
        0x8a -> :sswitch_b
        0x92 -> :sswitch_a
        0x9a -> :sswitch_9
        0xa0 -> :sswitch_8
        0xaa -> :sswitch_7
        0xb2 -> :sswitch_6
        0xba -> :sswitch_5
        0xc0 -> :sswitch_4
        0xc8 -> :sswitch_3
        0xd2 -> :sswitch_2
        0xda -> :sswitch_1
        0xe2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20504
    invoke-direct {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Device;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 20511
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 21635
    iput-byte p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Context$1;)V
    .locals 0

    .line 20504
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$18600()Z
    .locals 1

    .line 20504
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Device;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18800(Lcom/explorestack/protobuf/adcom/Context$Device;)I
    .locals 0

    .line 20504
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    return p0
.end method

.method static synthetic access$18802(Lcom/explorestack/protobuf/adcom/Context$Device;I)I
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    return p1
.end method

.method static synthetic access$18900(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18902(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19000(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19002(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19102(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z
    .locals 0

    .line 20504
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->dnt_:Z

    return p1
.end method

.method static synthetic access$19202(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z
    .locals 0

    .line 20504
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lmt_:Z

    return p1
.end method

.method static synthetic access$19300(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19302(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19400(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19402(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19500(Lcom/explorestack/protobuf/adcom/Context$Device;)I
    .locals 0

    .line 20504
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    return p0
.end method

.method static synthetic access$19502(Lcom/explorestack/protobuf/adcom/Context$Device;I)I
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    return p1
.end method

.method static synthetic access$19600(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19602(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19700(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19702(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19802(Lcom/explorestack/protobuf/adcom/Context$Device;I)I
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->h_:I

    return p1
.end method

.method static synthetic access$19902(Lcom/explorestack/protobuf/adcom/Context$Device;I)I
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->w_:I

    return p1
.end method

.method static synthetic access$20002(Lcom/explorestack/protobuf/adcom/Context$Device;I)I
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ppi_:I

    return p1
.end method

.method static synthetic access$20102(Lcom/explorestack/protobuf/adcom/Context$Device;F)F
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->pxratio_:F

    return p1
.end method

.method static synthetic access$20202(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z
    .locals 0

    .line 20504
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->js_:Z

    return p1
.end method

.method static synthetic access$20300(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20302(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20400(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20402(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20502(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20600(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20602(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20702(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z
    .locals 0

    .line 20504
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->iptr_:Z

    return p1
.end method

.method static synthetic access$20800(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20802(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20900(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$20902(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21000(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$21002(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21100(Lcom/explorestack/protobuf/adcom/Context$Device;)I
    .locals 0

    .line 20504
    iget p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    return p0
.end method

.method static synthetic access$21102(Lcom/explorestack/protobuf/adcom/Context$Device;I)I
    .locals 0

    .line 20504
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    return p1
.end method

.method static synthetic access$21202(Lcom/explorestack/protobuf/adcom/Context$Device;Z)Z
    .locals 0

    .line 20504
    iput-boolean p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geofetch_:Z

    return p1
.end method

.method static synthetic access$21302(Lcom/explorestack/protobuf/adcom/Context$Device;Lcom/explorestack/protobuf/adcom/Context$Geo;)Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    return-object p1
.end method

.method static synthetic access$21402(Lcom/explorestack/protobuf/adcom/Context$Device;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$21500(Lcom/explorestack/protobuf/adcom/Context$Device;)Ljava/util/List;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$21502(Lcom/explorestack/protobuf/adcom/Context$Device;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20504
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$21600()Z
    .locals 1

    .line 20504
    sget-boolean v0, Lcom/explorestack/protobuf/adcom/Context$Device;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$21700(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 20504
    iget-object p0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$21800()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 20504
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$21900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20504
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1

    .line 24803
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 20764
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22073
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22076
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22046
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22047
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22053
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22054
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22014
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22020
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22059
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22060
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22066
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22067
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22034
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22035
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22041
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 22042
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22003
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22009
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22024
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22030
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Device;",
            ">;"
        }
    .end annotation

    .line 24818
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 21851
    :cond_0
    instance-of v1, p1, Lcom/explorestack/protobuf/adcom/Context$Device;

    if-nez v1, :cond_1

    .line 21852
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21854
    :cond_1
    check-cast p1, Lcom/explorestack/protobuf/adcom/Context$Device;

    .line 21856
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 21857
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUa()Ljava/lang/String;

    move-result-object v1

    .line 21858
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 21859
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfa()Ljava/lang/String;

    move-result-object v1

    .line 21860
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 21861
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDnt()Z

    move-result v1

    .line 21862
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDnt()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 21863
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLmt()Z

    move-result v1

    .line 21864
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLmt()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 21865
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMake()Ljava/lang/String;

    move-result-object v1

    .line 21866
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMake()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 21867
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 21868
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 21869
    :cond_8
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    if-eq v1, v2, :cond_9

    return v3

    .line 21870
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsv()Ljava/lang/String;

    move-result-object v1

    .line 21871
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 21872
    :cond_a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwv()Ljava/lang/String;

    move-result-object v1

    .line 21873
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 21874
    :cond_b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getH()I

    move-result v1

    .line 21875
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getH()I

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 21876
    :cond_c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getW()I

    move-result v1

    .line 21877
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getW()I

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 21878
    :cond_d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPpi()I

    move-result v1

    .line 21879
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPpi()I

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 21880
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPxratio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 21882
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPxratio()F

    move-result v2

    .line 21881
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 21883
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getJs()Z

    move-result v1

    .line 21884
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getJs()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 21885
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLang()Ljava/lang/String;

    move-result-object v1

    .line 21886
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 21887
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIp()Ljava/lang/String;

    move-result-object v1

    .line 21888
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 21889
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6()Ljava/lang/String;

    move-result-object v1

    .line 21890
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 21891
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXff()Ljava/lang/String;

    move-result-object v1

    .line 21892
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXff()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 21893
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIptr()Z

    move-result v1

    .line 21894
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIptr()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 21895
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrier()Ljava/lang/String;

    move-result-object v1

    .line 21896
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 21897
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmnc()Ljava/lang/String;

    move-result-object v1

    .line 21898
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 21899
    :cond_17
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsim()Ljava/lang/String;

    move-result-object v1

    .line 21900
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 21901
    :cond_18
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    iget v2, p1, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    if-eq v1, v2, :cond_19

    return v3

    .line 21902
    :cond_19
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeofetch()Z

    move-result v1

    .line 21903
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeofetch()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 21904
    :cond_1a
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasGeo()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasGeo()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 21905
    :cond_1b
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 21906
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    .line 21907
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/adcom/Context$Geo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 21909
    :cond_1c
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasExt()Z

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasExt()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 21910
    :cond_1d
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 21911
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 21912
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 21914
    :cond_1e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    .line 21915
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExtProtoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    .line 21916
    :cond_1f
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    return v3

    :cond_20
    return v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 2

    .line 21360
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    .line 21361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21362
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21364
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21366
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21367
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCarrierBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21380
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    .line 21381
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21382
    check-cast v0, Ljava/lang/String;

    .line 21383
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21385
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    return-object v0

    .line 21388
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getContype()Lcom/explorestack/protobuf/adcom/ConnectionType;
    .locals 1

    .line 21497
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/ConnectionType;->valueOf(I)Lcom/explorestack/protobuf/adcom/ConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21498
    sget-object v0, Lcom/explorestack/protobuf/adcom/ConnectionType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/ConnectionType;

    :cond_0
    return-object v0
.end method

.method public final getContypeValue()I
    .locals 1

    .line 21486
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 20504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 20504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Device;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Context$Device;
    .locals 1

    .line 24828
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

    return-object v0
.end method

.method public final getDnt()Z
    .locals 1

    .line 20894
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->dnt_:Z

    return v0
.end method

.method public final getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 21567
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 21577
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public final getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 21621
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public final getExtProtoCount()I
    .locals 1

    .line 21611
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 21590
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 21632
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 21601
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    return-object v0
.end method

.method public final getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;
    .locals 1

    .line 21534
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getGeoOrBuilder()Lcom/explorestack/protobuf/adcom/Context$GeoOrBuilder;
    .locals 1

    .line 21544
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v0

    return-object v0
.end method

.method public final getGeofetch()Z
    .locals 1

    .line 21511
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geofetch_:Z

    return v0
.end method

.method public final getH()I
    .locals 1

    .line 21113
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->h_:I

    return v0
.end method

.method public final getHwv()Ljava/lang/String;
    .locals 2

    .line 21071
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    .line 21072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21073
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21075
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21077
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21078
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getHwvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21091
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    .line 21092
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21093
    check-cast v0, Ljava/lang/String;

    .line 21094
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21096
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    return-object v0

    .line 21099
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIfa()Ljava/lang/String;
    .locals 2

    .line 20852
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    .line 20853
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20854
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20856
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20858
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20859
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIfaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20872
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    .line 20873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20874
    check-cast v0, Ljava/lang/String;

    .line 20875
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20877
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    return-object v0

    .line 20880
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 2

    .line 21220
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    .line 21221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21222
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21224
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21226
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21227
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIpBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21240
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    .line 21241
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21242
    check-cast v0, Ljava/lang/String;

    .line 21243
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21245
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    return-object v0

    .line 21248
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getIptr()Z
    .locals 1

    .line 21347
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->iptr_:Z

    return v0
.end method

.method public final getIpv6()Ljava/lang/String;
    .locals 2

    .line 21262
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    .line 21263
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21264
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21266
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21268
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21269
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIpv6Bytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21282
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    .line 21283
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21284
    check-cast v0, Ljava/lang/String;

    .line 21285
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21287
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    return-object v0

    .line 21290
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getJs()Z
    .locals 1

    .line 21165
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->js_:Z

    return v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 2

    .line 21178
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    .line 21179
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21180
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21182
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21184
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21185
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getLangBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21198
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    .line 21199
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21200
    check-cast v0, Ljava/lang/String;

    .line 21201
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21203
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    return-object v0

    .line 21206
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getLmt()Z
    .locals 1

    .line 20907
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lmt_:Z

    return v0
.end method

.method public final getMake()Ljava/lang/String;
    .locals 2

    .line 20920
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    .line 20921
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20922
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20924
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20926
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20927
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMakeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20940
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    .line 20941
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20942
    check-cast v0, Ljava/lang/String;

    .line 20943
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20945
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    return-object v0

    .line 20948
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMccmnc()Ljava/lang/String;
    .locals 2

    .line 21402
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    .line 21403
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21404
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21406
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21408
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21409
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMccmncBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21422
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    .line 21423
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21424
    check-cast v0, Ljava/lang/String;

    .line 21425
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21427
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    return-object v0

    .line 21430
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getMccmncsim()Ljava/lang/String;
    .locals 2

    .line 21444
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    .line 21445
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21446
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21448
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21450
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21451
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMccmncsimBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21464
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    .line 21465
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21466
    check-cast v0, Ljava/lang/String;

    .line 21467
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21469
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    return-object v0

    .line 21472
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    .line 20962
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    .line 20963
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20964
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20966
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20968
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20969
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getModelBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20982
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    .line 20983
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20984
    check-cast v0, Ljava/lang/String;

    .line 20985
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20987
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    return-object v0

    .line 20990
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOs()Lcom/explorestack/protobuf/adcom/OS;
    .locals 1

    .line 21015
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/OS;->valueOf(I)Lcom/explorestack/protobuf/adcom/OS;

    move-result-object v0

    if-nez v0, :cond_0

    .line 21016
    sget-object v0, Lcom/explorestack/protobuf/adcom/OS;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/OS;

    :cond_0
    return-object v0
.end method

.method public final getOsValue()I
    .locals 1

    .line 21004
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    return v0
.end method

.method public final getOsv()Ljava/lang/String;
    .locals 2

    .line 21029
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    .line 21030
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21031
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21033
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21035
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21036
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getOsvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21049
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    .line 21050
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21051
    check-cast v0, Ljava/lang/String;

    .line 21052
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21054
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    return-object v0

    .line 21057
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lcom/explorestack/protobuf/adcom/Context$Device;",
            ">;"
        }
    .end annotation

    .line 24823
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getPpi()I
    .locals 1

    .line 21139
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ppi_:I

    return v0
.end method

.method public final getPxratio()F
    .locals 1

    .line 21152
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->pxratio_:F

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 21738
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 21742
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 21743
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    const/4 v1, 0x1

    .line 21744
    invoke-static {v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 21746
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 21747
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21749
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 21750
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21752
    :cond_3
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->dnt_:Z

    if-eqz v1, :cond_4

    const/4 v3, 0x4

    .line 21754
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21756
    :cond_4
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lmt_:Z

    if-eqz v1, :cond_5

    const/4 v3, 0x5

    .line 21758
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21760
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 21761
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21763
    :cond_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 21764
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21766
    :cond_7
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_8

    const/16 v1, 0x8

    .line 21767
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    .line 21768
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21770
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 21771
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21773
    :cond_9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 21774
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21776
    :cond_a
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->h_:I

    if-eqz v1, :cond_b

    const/16 v3, 0xb

    .line 21778
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21780
    :cond_b
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->w_:I

    if-eqz v1, :cond_c

    const/16 v3, 0xc

    .line 21782
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21784
    :cond_c
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ppi_:I

    if-eqz v1, :cond_d

    const/16 v3, 0xd

    .line 21786
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21788
    :cond_d
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->pxratio_:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_e

    const/16 v3, 0xe

    .line 21790
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 21792
    :cond_e
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->js_:Z

    if-eqz v1, :cond_f

    const/16 v3, 0xf

    .line 21794
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21796
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLangBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x10

    .line 21797
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21799
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x11

    .line 21800
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21802
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6Bytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0x12

    .line 21803
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21805
    :cond_12
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXffBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    const/16 v1, 0x13

    .line 21806
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21808
    :cond_13
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->iptr_:Z

    if-eqz v1, :cond_14

    const/16 v3, 0x14

    .line 21810
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21812
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrierBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x15

    .line 21813
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21815
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x16

    .line 21816
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21818
    :cond_16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsimBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0x17

    .line 21819
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21821
    :cond_17
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    sget-object v3, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v3

    if-eq v1, v3, :cond_18

    const/16 v1, 0x18

    .line 21822
    iget v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    .line 21823
    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21825
    :cond_18
    iget-boolean v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geofetch_:Z

    if-eqz v1, :cond_19

    const/16 v3, 0x19

    .line 21827
    invoke-static {v3, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21829
    :cond_19
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1a

    .line 21831
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21833
    :cond_1a
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1b

    const/16 v1, 0x1b

    .line 21834
    iget-object v3, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    .line 21835
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21837
    :cond_1b
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v1, :cond_1c

    const/16 v1, 0x1c

    .line 21839
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->computeMessageSize(ILcom/explorestack/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21841
    :cond_1c
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 21842
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedSize:I

    return v0
.end method

.method public final getType()Lcom/explorestack/protobuf/adcom/DeviceType;
    .locals 1

    .line 20796
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/DeviceType;->valueOf(I)Lcom/explorestack/protobuf/adcom/DeviceType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20797
    sget-object v0, Lcom/explorestack/protobuf/adcom/DeviceType;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/DeviceType;

    :cond_0
    return-object v0
.end method

.method public final getTypeValue()I
    .locals 1

    .line 20785
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    return v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 2

    .line 20810
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    .line 20811
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20812
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 20814
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 20816
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 20817
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getUaBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 20830
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    .line 20831
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 20832
    check-cast v0, Ljava/lang/String;

    .line 20833
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 20835
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    return-object v0

    .line 20838
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 20543
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getW()I
    .locals 1

    .line 21126
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->w_:I

    return v0
.end method

.method public final getXff()Ljava/lang/String;
    .locals 2

    .line 21304
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    .line 21305
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21306
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 21308
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 21310
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 21311
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getXffBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 21324
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    .line 21325
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 21326
    check-cast v0, Ljava/lang/String;

    .line 21327
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 21329
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    return-object v0

    .line 21332
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hasExt()Z
    .locals 1

    .line 21557
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasGeo()Z
    .locals 1

    .line 21524
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 21922
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 21923
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedHashCode:I

    return v0

    .line 21926
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 21928
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 21930
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 21932
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 21935
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getDnt()Z

    move-result v1

    .line 21934
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 21938
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLmt()Z

    move-result v1

    .line 21937
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 21940
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMake()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 21942
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 21944
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 21946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 21948
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 21950
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getH()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 21952
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getW()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 21954
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPpi()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 21957
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getPxratio()F

    move-result v1

    .line 21956
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 21960
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getJs()Z

    move-result v1

    .line 21959
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 21962
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 21964
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 21966
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 21968
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXff()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 21971
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIptr()Z

    move-result v1

    .line 21970
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 21973
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 21975
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmnc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 21977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 21979
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 21982
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeofetch()Z

    move-result v1

    .line 21981
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 21983
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasGeo()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 21985
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/Context$Geo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21987
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->hasExt()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 21989
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21991
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExtProtoCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 21993
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExtProtoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 21995
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21996
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 20770
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Context$Device;

    const-class v2, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    .line 20771
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 21638
    iget-byte v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 21642
    :cond_1
    iput-byte v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 20504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 20504
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 20504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 1

    .line 22071
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 2

    .line 22087
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 20537
    new-instance p1, Lcom/explorestack/protobuf/adcom/Context$Device;

    invoke-direct {p1}, Lcom/explorestack/protobuf/adcom/Context$Device;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 20504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 20504
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Builder;
    .locals 2

    .line 22080
    sget-object v0, Lcom/explorestack/protobuf/adcom/Context$Device;->DEFAULT_INSTANCE:Lcom/explorestack/protobuf/adcom/Context$Device;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;-><init>(Lcom/explorestack/protobuf/adcom/Context$1;)V

    .line 22081
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/adcom/Context$Device$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device;)Lcom/explorestack/protobuf/adcom/Context$Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21649
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/DeviceType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/DeviceType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 21650
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->type_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21652
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getUaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 21653
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ua_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21655
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIfaBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 21656
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ifa_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21658
    :cond_2
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->dnt_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 21659
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21661
    :cond_3
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lmt_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 21662
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21664
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMakeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 21665
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->make_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21667
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getModelBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 21668
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->model_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21670
    :cond_6
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_INVALID:Lcom/explorestack/protobuf/adcom/OS;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/OS;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_7

    const/16 v0, 0x8

    .line 21671
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->os_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21673
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getOsvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 21674
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->osv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21676
    :cond_8
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getHwvBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 21677
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->hwv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21679
    :cond_9
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->h_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 21680
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21682
    :cond_a
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->w_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 21683
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21685
    :cond_b
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ppi_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 21686
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21688
    :cond_c
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->pxratio_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    .line 21689
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 21691
    :cond_d
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->js_:Z

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 21692
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21694
    :cond_e
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getLangBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    .line 21695
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->lang_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21697
    :cond_f
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 21698
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ip_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21700
    :cond_10
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getIpv6Bytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x12

    .line 21701
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ipv6_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21703
    :cond_11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getXffBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/16 v0, 0x13

    .line 21704
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->xff_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21706
    :cond_12
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->iptr_:Z

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 21707
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21709
    :cond_13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getCarrierBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0x15

    .line 21710
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->carrier_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21712
    :cond_14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x16

    .line 21713
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmnc_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21715
    :cond_15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getMccmncsimBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0x17

    .line 21716
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->mccmncsim_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21718
    :cond_16
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    sget-object v1, Lcom/explorestack/protobuf/adcom/ConnectionType;->CONNECTION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/ConnectionType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/adcom/ConnectionType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_17

    const/16 v0, 0x18

    .line 21719
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->contype_:I

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21721
    :cond_17
    iget-boolean v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geofetch_:Z

    if-eqz v0, :cond_18

    const/16 v1, 0x19

    .line 21722
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 21724
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->geo_:Lcom/explorestack/protobuf/adcom/Context$Geo;

    if-eqz v0, :cond_19

    const/16 v0, 0x1a

    .line 21725
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getGeo()Lcom/explorestack/protobuf/adcom/Context$Geo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    :cond_19
    const/4 v0, 0x0

    .line 21727
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    const/16 v1, 0x1b

    .line 21728
    iget-object v2, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->extProto_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/explorestack/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21730
    :cond_1a
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_1b

    const/16 v0, 0x1c

    .line 21731
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Context$Device;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->writeMessage(ILcom/explorestack/protobuf/MessageLite;)V

    .line 21733
    :cond_1b
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Context$Device;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
