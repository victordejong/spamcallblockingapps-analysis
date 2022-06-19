.class public final enum Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;
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
    name = "ConsentLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOULD_SHOW_DIALOG:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

.field public static final enum UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;


# instance fields
.field private mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private mMessageFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 452
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "SYNC_ATTEMPTED"

    const/4 v3, 0x0

    const-string v4, "Consent attempting to synchronize state"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 456
    new-instance v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v4, "SYNC_COMPLETED"

    const/4 v5, 0x1

    const-string v6, "Consent synchronization completed: {0}"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 461
    new-instance v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v4, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v6, "SYNC_FAILED"

    const/4 v7, 0x2

    const-string v8, "Consent synchronization failed: ({0}) {1}"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v2, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 468
    new-instance v4, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v6, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v8, "UPDATED"

    const/4 v9, 0x3

    const-string v10, "Consent changed from {0} to {1}: PII {2} be collected. Reason: {3}"

    invoke-direct {v4, v8, v9, v6, v10}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v4, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 472
    new-instance v6, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v8, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v10, "SHOULD_SHOW_DIALOG"

    const/4 v11, 0x4

    const-string v12, "Consent dialog should be shown"

    invoke-direct {v6, v10, v11, v8, v12}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v6, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOULD_SHOW_DIALOG:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 476
    new-instance v8, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v10, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v12, "LOAD_ATTEMPTED"

    const/4 v13, 0x5

    const-string v14, "Consent attempting to load dialog"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v8, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 480
    new-instance v10, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v12, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "LOAD_SUCCESS"

    const/4 v15, 0x6

    const-string v13, "Consent dialog loaded"

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v10, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 485
    new-instance v12, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "LOAD_FAILED"

    const/4 v15, 0x7

    const-string v11, "Consent dialog failed: ({0}) {1}"

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v12, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 489
    new-instance v11, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOW_ATTEMPTED"

    const/16 v15, 0x8

    const-string v9, "Consent dialog attempting to show"

    invoke-direct {v11, v14, v15, v13, v9}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v11, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 493
    new-instance v9, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOW_SUCCESS"

    const/16 v15, 0x9

    const-string v7, "Consent successfully showed dialog"

    invoke-direct {v9, v14, v15, v13, v7}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v9, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 498
    new-instance v7, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOW_FAILED"

    const/16 v15, 0xa

    const-string v5, "Consent dialog failed to show: ({0}) {1}"

    invoke-direct {v7, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v7, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 502
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CUSTOM"

    const/16 v15, 0xb

    const-string v3, "Consent Log - {0}"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    .line 507
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CUSTOM_WITH_THROWABLE"

    const/16 v15, 0xc

    move-object/from16 v16, v5

    const-string v5, "Consent Log With Throwable - {0}, {1}"

    invoke-direct {v3, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/16 v5, 0xd

    new-array v5, v5, [Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v13, 0x0

    aput-object v0, v5, v13

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v7, v5, v0

    const/16 v0, 0xb

    aput-object v16, v5, v0

    aput-object v3, v5, v15

    .line 448
    sput-object v5, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

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

    .line 512
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 513
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 514
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 516
    iput-object p3, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 517
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mMessageFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;
    .locals 1

    .line 448
    const-class v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;
    .locals 1

    .line 448
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    return-object v0
.end method


# virtual methods
.method public final getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public final varargs getMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 523
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->UPDATED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 524
    aget-object v0, p1, v1

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "can"

    goto :goto_0

    :cond_0
    const-string v0, "cannot"

    :goto_0
    aput-object v0, p1, v1

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->mMessageFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
