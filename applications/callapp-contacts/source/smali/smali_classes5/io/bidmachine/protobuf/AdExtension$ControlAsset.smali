.class public final Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ControlAsset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

.field public static final FILL_FIELD_NUMBER:I = 0x2

.field public static final FONT_STYLE_FIELD_NUMBER:I = 0x3

.field public static final HEIGHT_FIELD_NUMBER:I = 0x4

.field public static final HIDEAFTER_FIELD_NUMBER:I = 0x5

.field public static final MARGIN_FIELD_NUMBER:I = 0x6

.field public static final OPACITY_FIELD_NUMBER:I = 0x7

.field public static final OUTLINED_FIELD_NUMBER:I = 0x8

.field public static final PADDING_FIELD_NUMBER:I = 0x9

.field private static final PARSER:Lcom/explorestack/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHADOW_FIELD_NUMBER:I = 0xa

.field public static final STROKE_FIELD_NUMBER:I = 0xb

.field public static final STROKE_WIDTH_FIELD_NUMBER:I = 0x12

.field public static final STYLE_FIELD_NUMBER:I = 0xd

.field public static final VISIBLE_FIELD_NUMBER:I = 0xe

.field public static final WIDTH_FIELD_NUMBER:I = 0xf

.field public static final X_FIELD_NUMBER:I = 0x10

.field public static final Y_FIELD_NUMBER:I = 0x11

.field private static final serialVersionUID:J


# instance fields
.field private volatile content_:Ljava/lang/Object;

.field private volatile fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private volatile margin_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private opacity_:F

.field private outlined_:Z

.field private volatile padding_:Ljava/lang/Object;

.field private volatile shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private volatile stroke_:Ljava/lang/Object;

.field private volatile style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private volatile x_:Ljava/lang/Object;

.field private volatile y_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2836
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 2844
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;

    invoke-direct {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$1;-><init>()V

    sput-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1133
    iput-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    const-string v0, ""

    .line 484
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 485
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 486
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 487
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 488
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 489
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 490
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 491
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 492
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    .line 513
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {}, Lcom/explorestack/protobuf/UnknownFieldSet;->newBuilder()Lcom/explorestack/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 520
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 620
    invoke-virtual {p0, p1, v0, p2, v3}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->parseUnknownField(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/UnknownFieldSet$Builder;Lcom/explorestack/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    goto/16 :goto_2

    .line 616
    :sswitch_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    goto :goto_0

    .line 609
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 611
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    goto :goto_0

    .line 603
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 605
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    goto :goto_0

    .line 599
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    goto :goto_0

    .line 594
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    goto :goto_0

    .line 587
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 589
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    goto :goto_0

    .line 581
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 583
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    goto :goto_0

    .line 575
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 577
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    goto :goto_0

    .line 569
    :sswitch_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 571
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    goto :goto_0

    .line 565
    :sswitch_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    goto :goto_0

    .line 560
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    goto :goto_0

    .line 553
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 555
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    goto :goto_0

    .line 549
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    goto :goto_0

    .line 544
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    goto :goto_0

    .line 539
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    goto :goto_0

    .line 532
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 534
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    goto :goto_0

    .line 526
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 528
    iput-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_11
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 631
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 632
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 629
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    :goto_3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->makeExtensionsImmutable()V

    .line 636
    throw p1

    .line 634
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet$Builder;->build()Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    .line 635
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0x12 -> :sswitch_f
        0x18 -> :sswitch_e
        0x20 -> :sswitch_d
        0x28 -> :sswitch_c
        0x32 -> :sswitch_b
        0x3d -> :sswitch_a
        0x40 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x6a -> :sswitch_5
        0x70 -> :sswitch_4
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8a -> :sswitch_1
        0x95 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 474
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)V

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

    .line 481
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1133
    iput-byte p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F
    .locals 0

    .line 474
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    return p1
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z
    .locals 0

    .line 474
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    return p1
.end method

.method static synthetic access$1200(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F
    .locals 0

    .line 474
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    return p1
.end method

.method static synthetic access$1600(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z
    .locals 0

    .line 474
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    return p1
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 474
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    return p1
.end method

.method static synthetic access$1900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 474
    sget-boolean v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/explorestack/protobuf/Parser;
    .locals 1

    .line 474
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 474
    invoke-static {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 474
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    return p1
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 474
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    return p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I
    .locals 0

    .line 474
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    return p1
.end method

.method static synthetic access$900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;
    .locals 0

    .line 474
    iget-object p0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 474
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 2840
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 640
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1444
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1447
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1417
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1418
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1424
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1425
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1385
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1391
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1430
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1431
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1438
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1405
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1406
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1412
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    .line 1413
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/Parser;Ljava/io/InputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1374
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1380
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1395
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1401
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/Parser;->parseFrom([BLcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Parser<",
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation

    .line 2855
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1276
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-nez v1, :cond_1

    .line 1277
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1279
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    .line 1281
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1282
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1283
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v1

    .line 1284
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1285
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v1

    .line 1286
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 1287
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v1

    .line 1288
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 1289
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v1

    .line 1290
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 1291
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 1293
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1295
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v3

    .line 1294
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 1296
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v1

    .line 1297
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 1298
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v1

    .line 1299
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 1300
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v1

    .line 1301
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 1302
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v1

    .line 1303
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 1304
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1306
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v3

    .line 1305
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 1307
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 1309
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v1

    .line 1310
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 1311
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v1

    .line 1312
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 1313
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v1

    .line 1314
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 1315
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v1

    .line 1316
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 1317
    :cond_12
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 2

    .line 661
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 662
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 663
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 665
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 667
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 668
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 681
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    .line 682
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 683
    check-cast v0, Ljava/lang/String;

    .line 684
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 686
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    return-object v0

    .line 689
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 2865
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    return-object v0
.end method

.method public final getFill()Ljava/lang/String;
    .locals 2

    .line 703
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 704
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 705
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 707
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 709
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 710
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 723
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    .line 724
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 725
    check-cast v0, Ljava/lang/String;

    .line 726
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 728
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    return-object v0

    .line 731
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getFontStyle()I
    .locals 1

    .line 745
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 758
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    return v0
.end method

.method public final getHideafter()I
    .locals 1

    .line 771
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    return v0
.end method

.method public final getMargin()Ljava/lang/String;
    .locals 2

    .line 784
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 785
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 786
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 788
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 790
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 791
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMarginBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 804
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    .line 805
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 806
    check-cast v0, Ljava/lang/String;

    .line 807
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 809
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    return-object v0

    .line 812
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getOpacity()F
    .locals 1

    .line 826
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    return v0
.end method

.method public final getOutlined()Z
    .locals 1

    .line 839
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    return v0
.end method

.method public final getPadding()Ljava/lang/String;
    .locals 2

    .line 852
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 853
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 854
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 856
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 858
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 859
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 872
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    .line 873
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 874
    check-cast v0, Ljava/lang/String;

    .line 875
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 877
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    return-object v0

    .line 880
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
            "Lio/bidmachine/protobuf/AdExtension$ControlAsset;",
            ">;"
        }
    .end annotation

    .line 2860
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->PARSER:Lcom/explorestack/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .line 1203
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1207
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1208
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1211
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1213
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 1215
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1217
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 1219
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1221
    :cond_4
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    .line 1223
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1225
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMarginBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x6

    .line 1226
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1228
    :cond_6
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 1230
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    .line 1232
    :cond_7
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    if-eqz v0, :cond_8

    const/16 v3, 0x8

    .line 1234
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 1236
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPaddingBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x9

    .line 1237
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1239
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    .line 1240
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1242
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xb

    .line 1243
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1245
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 1246
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1248
    :cond_c
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    if-eqz v0, :cond_d

    const/16 v3, 0xe

    .line 1250
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 1252
    :cond_d
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    if-eqz v0, :cond_e

    const/16 v3, 0xf

    .line 1254
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1256
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x10

    .line 1257
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1259
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 1260
    iget-object v3, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1262
    :cond_10
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_11

    const/16 v2, 0x12

    .line 1264
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v1, v0

    .line 1266
    :cond_11
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1267
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedSize:I

    return v1
.end method

.method public final getShadow()Ljava/lang/String;
    .locals 2

    .line 894
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 895
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 896
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 898
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 900
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 901
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 914
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    .line 915
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 916
    check-cast v0, Ljava/lang/String;

    .line 917
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 919
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 922
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getStroke()Ljava/lang/String;
    .locals 2

    .line 936
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 938
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 940
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 942
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 943
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 956
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    .line 957
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 958
    check-cast v0, Ljava/lang/String;

    .line 959
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 961
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 964
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .line 978
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    return v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .line 991
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 993
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 995
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 997
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 998
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1011
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    .line 1012
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1013
    check-cast v0, Ljava/lang/String;

    .line 1014
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1016
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    return-object v0

    .line 1019
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/UnknownFieldSet;
    .locals 1

    .line 505
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getVisible()Z
    .locals 1

    .line 1033
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1046
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    return v0
.end method

.method public final getX()Ljava/lang/String;
    .locals 2

    .line 1059
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 1060
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1061
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1063
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1065
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1066
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getXBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1079
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    .line 1080
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1081
    check-cast v0, Ljava/lang/String;

    .line 1082
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1084
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    return-object v0

    .line 1087
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final getY()Ljava/lang/String;
    .locals 2

    .line 1101
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 1102
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1103
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1105
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1107
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1108
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object v0
.end method

.method public final getYBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1121
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    .line 1122
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1123
    check-cast v0, Ljava/lang/String;

    .line 1124
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1126
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    return-object v0

    .line 1129
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1323
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1324
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedHashCode:I

    return v0

    .line 1327
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1329
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1331
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1333
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1335
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 1337
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 1339
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 1342
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v1

    .line 1341
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 1345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v1

    .line 1344
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 1347
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 1349
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 1351
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 1354
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v1

    .line 1353
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 1356
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 1359
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v1

    .line 1358
    invoke-static {v1}, Lcom/explorestack/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 1361
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 1363
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 1365
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1366
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1367
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedHashCode:I

    return v0
.end method

.method public final internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 646
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 647
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1136
    iget-byte v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1140
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->memoizedIsInitialized:B

    return v1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1442
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->newBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 2

    .line 1458
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0
.end method

.method public final newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 499
    new-instance p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-direct {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>()V

    return-object p1
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 474
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 2

    .line 1451
    sget-object v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 1452
    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1147
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContentBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1148
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->content_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFillBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1151
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fill_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1153
    :cond_1
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->fontStyle_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1154
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1156
    :cond_2
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->height_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1157
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1159
    :cond_3
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->hideafter_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1160
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1162
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMarginBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 1163
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->margin_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1165
    :cond_5
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->opacity_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 1166
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1168
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->outlined_:Z

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    .line 1169
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1171
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPaddingBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 1172
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->padding_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1174
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadowBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 1175
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->shadow_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1177
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 1178
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->stroke_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1180
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyleBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    .line 1181
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->style_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1183
    :cond_b
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->visible_:Z

    if-eqz v0, :cond_c

    const/16 v2, 0xe

    .line 1184
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1186
    :cond_c
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->width_:I

    if-eqz v0, :cond_d

    const/16 v2, 0xf

    .line 1187
    invoke-virtual {p1, v2, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1189
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getXBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x10

    .line 1190
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->x_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1192
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getYBytes()Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x11

    .line 1193
    iget-object v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->y_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1195
    :cond_f
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->strokeWidth_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_10

    const/16 v1, 0x12

    .line 1196
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1198
    :cond_10
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->unknownFields:Lcom/explorestack/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/UnknownFieldSet;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    return-void
.end method
