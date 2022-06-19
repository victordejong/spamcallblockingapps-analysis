.class public final Lcom/sinch/metadata/model/PermissionsMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/metadata/model/PermissionsMetadata$Companion;,
        Lcom/sinch/metadata/model/PermissionsMetadata$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 .2\u00020\u0001:\u0002-.B_\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eB=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000fJ\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003JO\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010(\u001a\u00020\u00052\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001J\t\u0010+\u001a\u00020,H\u00d6\u0001R\u001c\u0010\n\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013R\u001c\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0013R\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0011\u001a\u0004\u0008\u001b\u0010\u0013R\u001c\u0010\u0008\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0011\u001a\u0004\u0008\u001d\u0010\u0013R\u001c\u0010\t\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001e\u0010\u0011\u001a\u0004\u0008\u001f\u0010\u0013\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sinch/metadata/model/PermissionsMetadata;",
        "",
        "seen1",
        "",
        "hasReadPhoneStatePermission",
        "",
        "hasReadCallLogPermission",
        "hasCallPhonePermission",
        "hasReadSmsPermission",
        "hasReceiveSmsPermission",
        "hasAccessNetworkStatePermission",
        "hasCellularSignalPermission",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(IZZZZZZZLkotlinx/serialization/SerializationConstructorMarker;)V",
        "(ZZZZZZZ)V",
        "hasAccessNetworkStatePermission$annotations",
        "()V",
        "getHasAccessNetworkStatePermission",
        "()Z",
        "hasCallPhonePermission$annotations",
        "getHasCallPhonePermission",
        "hasCellularSignalPermission$annotations",
        "getHasCellularSignalPermission",
        "hasReadCallLogPermission$annotations",
        "getHasReadCallLogPermission",
        "hasReadPhoneStatePermission$annotations",
        "getHasReadPhoneStatePermission",
        "hasReadSmsPermission$annotations",
        "getHasReadSmsPermission",
        "hasReceiveSmsPermission$annotations",
        "getHasReceiveSmsPermission",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "$serializer",
        "Companion",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/metadata/model/PermissionsMetadata$Companion;


# instance fields
.field private final hasAccessNetworkStatePermission:Z

.field private final hasCallPhonePermission:Z

.field private final hasCellularSignalPermission:Z

.field private final hasReadCallLogPermission:Z

.field private final hasReadPhoneStatePermission:Z

.field private final hasReadSmsPermission:Z

.field private final hasReceiveSmsPermission:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/metadata/model/PermissionsMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/metadata/model/PermissionsMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/metadata/model/PermissionsMetadata;->Companion:Lcom/sinch/metadata/model/PermissionsMetadata$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZZZZZZZLkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p9, p1, 0x1

    if-eqz p9, :cond_6

    iput-boolean p2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_5

    iput-boolean p3, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_4

    iput-boolean p4, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    iput-boolean p5, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_2

    iput-boolean p6, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    and-int/lit8 p2, p1, 0x20

    if-eqz p2, :cond_1

    iput-boolean p7, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    iput-boolean p8, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "getCellularSignalLevel"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "ACCESS_NETWORK_STATE"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "RECEIVE_SMS"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "READ_SMS"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "CALL_PHONE"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "READ_CALL_LOG"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_6
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "READ_PHONE_STATE"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(ZZZZZZZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    iput-boolean p2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    iput-boolean p3, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    iput-boolean p4, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    iput-boolean p5, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    iput-boolean p6, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    iput-boolean p7, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/metadata/model/PermissionsMetadata;ZZZZZZZILjava/lang/Object;)Lcom/sinch/metadata/model/PermissionsMetadata;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-boolean p1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-boolean p2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-boolean p7, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    :cond_6
    move v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/sinch/metadata/model/PermissionsMetadata;->copy(ZZZZZZZ)Lcom/sinch/metadata/model/PermissionsMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hasAccessNetworkStatePermission$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hasCallPhonePermission$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hasCellularSignalPermission$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hasReadCallLogPermission$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hasReadPhoneStatePermission$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hasReadSmsPermission$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic hasReceiveSmsPermission$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/metadata/model/PermissionsMetadata;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    const/4 v1, 0x3

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    const/4 v1, 0x4

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    const/4 v1, 0x5

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean p0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    const/4 v0, 0x6

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    return v0
.end method

.method public final copy(ZZZZZZZ)Lcom/sinch/metadata/model/PermissionsMetadata;
    .locals 9

    new-instance v8, Lcom/sinch/metadata/model/PermissionsMetadata;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sinch/metadata/model/PermissionsMetadata;-><init>(ZZZZZZZ)V

    return-object v8
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/metadata/model/PermissionsMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/metadata/model/PermissionsMetadata;

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    iget-boolean v1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    iget-boolean v1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    iget-boolean v1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    iget-boolean v1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    iget-boolean v1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    iget-boolean v1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    iget-boolean p1, p1, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getHasAccessNetworkStatePermission()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    return v0
.end method

.method public final getHasCallPhonePermission()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    return v0
.end method

.method public final getHasCellularSignalPermission()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    return v0
.end method

.method public final getHasReadCallLogPermission()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    return v0
.end method

.method public final getHasReadPhoneStatePermission()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    return v0
.end method

.method public final getHasReadSmsPermission()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    return v0
.end method

.method public final getHasReceiveSmsPermission()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionsMetadata(hasReadPhoneStatePermission="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadPhoneStatePermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasReadCallLogPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadCallLogPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasCallPhonePermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCallPhonePermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasReadSmsPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReadSmsPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasReceiveSmsPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasReceiveSmsPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasAccessNetworkStatePermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasAccessNetworkStatePermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasCellularSignalPermission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/metadata/model/PermissionsMetadata;->hasCellularSignalPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
