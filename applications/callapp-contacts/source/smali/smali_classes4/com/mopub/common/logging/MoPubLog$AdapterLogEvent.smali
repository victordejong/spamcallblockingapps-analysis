.class public final enum Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/logging/MoPubLog$MPLogEventType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/logging/MoPubLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum DID_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum WILL_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

.field public static final enum WILL_LEAVE_APPLICATION:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;


# instance fields
.field private mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private mMessageFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 334
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "LOAD_ATTEMPTED"

    const/4 v3, 0x0

    const-string v4, "Adapter {0} attempting to load ad{1}{2}"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 338
    new-instance v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v4, "LOAD_SUCCESS"

    const/4 v5, 0x1

    const-string v6, "Adapter {0} successfully loaded ad"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 344
    new-instance v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v4, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v6, "LOAD_FAILED"

    const/4 v7, 0x2

    const-string v8, "Adapter {0} failed to load ad: ({1}) {2}"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 348
    new-instance v4, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v6, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v8, "SHOW_ATTEMPTED"

    const/4 v9, 0x3

    const-string v10, "Adapter {0} attempting to show ad"

    invoke-direct {v4, v8, v9, v6, v10}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v4, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 352
    new-instance v6, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v8, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v10, "SHOW_SUCCESS"

    const/4 v11, 0x4

    const-string v12, "Adapter {0} successfully showed ad"

    invoke-direct {v6, v10, v11, v8, v12}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v6, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 358
    new-instance v8, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v10, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v12, "SHOW_FAILED"

    const/4 v13, 0x5

    const-string v14, "Adapter {0} failed to show ad: ({1}) {2}"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v8, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 363
    new-instance v10, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v12, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "EXPIRED"

    const/4 v15, 0x6

    const-string v13, "Adapter {0} expired since it was not shown within {1} seconds of it being loaded"

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v10, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 367
    new-instance v12, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CLICKED"

    const/4 v15, 0x7

    const-string v11, "Adapter {0} clicked"

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v12, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 371
    new-instance v11, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "WILL_APPEAR"

    const/16 v15, 0x8

    const-string v9, "Adapter {0} will appear"

    invoke-direct {v11, v14, v15, v13, v9}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v11, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->WILL_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 375
    new-instance v9, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "DID_APPEAR"

    const/16 v15, 0x9

    const-string v7, "Adapter {0} did appear"

    invoke-direct {v9, v14, v15, v13, v7}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v9, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->DID_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 379
    new-instance v7, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "WILL_DISAPPEAR"

    const/16 v15, 0xa

    const-string v5, "Adapter {0} will disappear"

    invoke-direct {v7, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v7, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 384
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "DID_DISAPPEAR"

    const/16 v15, 0xb

    const-string v3, "Adapter {0} did disappear"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 390
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOULD_REWARD"

    const/16 v15, 0xc

    move-object/from16 v16, v5

    const-string v5, "Adapter {0} should reward user with {1} {2}"

    invoke-direct {v3, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 394
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "WILL_LEAVE_APPLICATION"

    const/16 v15, 0xd

    move-object/from16 v17, v3

    const-string v3, "Adapter {0} will leave application"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->WILL_LEAVE_APPLICATION:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 399
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CUSTOM"

    const/16 v15, 0xe

    move-object/from16 v18, v5

    const-string v5, "Adapter {0} Log - {1}"

    invoke-direct {v3, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    .line 405
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CUSTOM_WITH_THROWABLE"

    const/16 v15, 0xf

    move-object/from16 v19, v3

    const-string v3, "Adapter {0} Log With Throwable - {1}, {2}"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v13, 0x0

    aput-object v0, v3, v13

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v11, v3, v0

    const/16 v0, 0x9

    aput-object v9, v3, v0

    const/16 v0, 0xa

    aput-object v7, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    aput-object v5, v3, v15

    .line 328
    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/common/logging/MoPubLog$LogLevel;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 411
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 412
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 414
    iput-object p3, p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 415
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->mMessageFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;
    .locals 1

    .line 328
    const-class v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;
    .locals 1

    .line 328
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    return-object v0
.end method


# virtual methods
.method public final getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public final varargs getMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 421
    new-instance v0, Ljava/text/MessageFormat;

    iget-object v1, p0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->mMessageFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Ljava/text/MessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v1

    array-length v1, v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 424
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    if-ne p0, v2, :cond_2

    .line 425
    array-length v2, p1

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    aget-object v2, p1, v5

    if-eqz v2, :cond_0

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    .line 426
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, " with DSP creative ID {0}"

    invoke-static {v6, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_0

    .line 428
    :cond_0
    aput-object v4, v1, v5

    .line 431
    :goto_0
    array-length v2, p1

    const/4 v6, 0x2

    if-le v2, v6, :cond_1

    aget-object v2, p1, v6

    if-eqz v2, :cond_1

    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    .line 432
    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, " with DSP name {0}"

    invoke-static {p1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    goto :goto_1

    .line 434
    :cond_1
    aput-object v4, v1, v6

    .line 438
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
