.class public final enum Lcom/mopub/common/logging/MoPubLog$AdLogEvent;
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
    name = "AdLogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/logging/MoPubLog$AdLogEvent;",
        ">;",
        "Lcom/mopub/common/logging/MoPubLog$MPLogEventType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum DID_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum RESPONSE_RECEIVED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum WILL_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

.field public static final enum WILL_LEAVE_APPLICATION:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;


# instance fields
.field private mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

.field private mMessageFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 230
    new-instance v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v2, "REQUESTED"

    const/4 v3, 0x0

    const-string v4, "Ad requesting from AdServer: {0}\n{1}"

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 234
    new-instance v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v2, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v4, "RESPONSE_RECEIVED"

    const/4 v5, 0x1

    const-string v6, "Ad server responded with:\n{0}"

    invoke-direct {v1, v4, v5, v2, v6}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->RESPONSE_RECEIVED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 238
    new-instance v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v4, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v6, "LOAD_ATTEMPTED"

    const/4 v7, 0x2

    const-string v8, "Ad attempting to load"

    invoke-direct {v2, v6, v7, v4, v8}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 242
    new-instance v4, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v6, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v8, "LOAD_SUCCESS"

    const/4 v9, 0x3

    const-string v10, "Ad loaded"

    invoke-direct {v4, v8, v9, v6, v10}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v4, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 247
    new-instance v6, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v8, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v10, "LOAD_FAILED"

    const/4 v11, 0x4

    const-string v12, "Ad failed to load: ({0}) {1}"

    invoke-direct {v6, v10, v11, v8, v12}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v6, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 251
    new-instance v8, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v10, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v12, "SHOW_ATTEMPTED"

    const/4 v13, 0x5

    const-string v14, "Attempting to show ad"

    invoke-direct {v8, v12, v13, v10, v14}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v8, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 255
    new-instance v10, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v12, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOW_SUCCESS"

    const/4 v15, 0x6

    const-string v13, "Ad shown"

    invoke-direct {v10, v14, v15, v12, v13}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v10, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 260
    new-instance v12, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->INFO:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOW_FAILED"

    const/4 v15, 0x7

    const-string v11, "Ad failed to show: ({0}) {1}"

    invoke-direct {v12, v14, v15, v13, v11}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v12, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 264
    new-instance v11, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "EXPIRED"

    const/16 v15, 0x8

    const-string v9, "Ad expired since it was not shown within {0} seconds of it being loaded"

    invoke-direct {v11, v14, v15, v13, v9}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v11, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->EXPIRED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 268
    new-instance v9, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CLICKED"

    const/16 v15, 0x9

    const-string v7, "Ad clicked"

    invoke-direct {v9, v14, v15, v13, v7}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v9, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 272
    new-instance v7, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "WILL_APPEAR"

    const/16 v15, 0xa

    const-string v5, "Ad will appear"

    invoke-direct {v7, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v7, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 276
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "DID_APPEAR"

    const/16 v15, 0xb

    const-string v3, "Ad did appear"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_APPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 280
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "WILL_DISAPPEAR"

    const/16 v15, 0xc

    move-object/from16 v16, v5

    const-string v5, "Ad will disappear"

    invoke-direct {v3, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 284
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "DID_DISAPPEAR"

    const/16 v15, 0xd

    move-object/from16 v17, v3

    const-string v3, "Ad did disappear"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 289
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "SHOULD_REWARD"

    const/16 v15, 0xe

    move-object/from16 v18, v5

    const-string v5, "Ad should reward user with {0} {1}"

    invoke-direct {v3, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOULD_REWARD:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 293
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "WILL_LEAVE_APPLICATION"

    const/16 v15, 0xf

    move-object/from16 v19, v3

    const-string v3, "Ad will leave application"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->WILL_LEAVE_APPLICATION:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 297
    new-instance v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CUSTOM"

    const/16 v15, 0x10

    move-object/from16 v20, v5

    const-string v5, "Ad Log - {0}"

    invoke-direct {v3, v14, v15, v13, v5}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    .line 302
    new-instance v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    sget-object v13, Lcom/mopub/common/logging/MoPubLog$LogLevel;->DEBUG:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    const-string v14, "CUSTOM_WITH_THROWABLE"

    const/16 v15, 0x11

    move-object/from16 v21, v3

    const-string v3, "Ad Log With Throwable - {0}, {1}"

    invoke-direct {v5, v14, v15, v13, v3}, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;-><init>(Ljava/lang/String;ILcom/mopub/common/logging/MoPubLog$LogLevel;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/16 v3, 0x12

    new-array v3, v3, [Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

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

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    aput-object v5, v3, v15

    .line 225
    sput-object v3, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

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

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 308
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 309
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 311
    iput-object p3, p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    .line 312
    iput-object p4, p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->mMessageFormat:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/logging/MoPubLog$AdLogEvent;
    .locals 1

    .line 225
    const-class v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/logging/MoPubLog$AdLogEvent;
    .locals 1

    .line 225
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->$VALUES:[Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    return-object v0
.end method


# virtual methods
.method public final getLogLevel()Lcom/mopub/common/logging/MoPubLog$LogLevel;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->mLogLevel:Lcom/mopub/common/logging/MoPubLog$LogLevel;

    return-object v0
.end method

.method public final varargs getMessage([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->mMessageFormat:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
