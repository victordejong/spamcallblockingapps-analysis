.class public final enum Lcom/callapp/common/api/ReturnCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/common/api/ReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/common/api/ReturnCode;

.field public static final enum AUTHENTICATION_FAILED:Lcom/callapp/common/api/ReturnCode;

.field public static final enum BLOCKED_NUMBER:Lcom/callapp/common/api/ReturnCode;

.field public static final enum CONTACT_NOT_FOUND:Lcom/callapp/common/api/ReturnCode;

.field public static final enum FAILED_TO_SEND_SMS:Lcom/callapp/common/api/ReturnCode;

.field public static final enum GENERAL_ERROR:Lcom/callapp/common/api/ReturnCode;

.field public static final enum INVALID_CHALLENGE_RESPONSE:Lcom/callapp/common/api/ReturnCode;

.field public static final enum INVALID_DEVICE_ID:Lcom/callapp/common/api/ReturnCode;

.field public static final enum INVALID_NUMBER:Lcom/callapp/common/api/ReturnCode;

.field public static final enum INVALID_PHONE_OR_CONFIRMATION_CODE:Lcom/callapp/common/api/ReturnCode;

.field public static final enum INVALID_TOKEN:Lcom/callapp/common/api/ReturnCode;

.field public static final enum MAX_DAILY_CALLS:Lcom/callapp/common/api/ReturnCode;

.field public static final enum MAX_DAILY_CALLS_PER_DEVICE:Lcom/callapp/common/api/ReturnCode;

.field public static final enum MAX_DAILY_CALLS_PER_USER:Lcom/callapp/common/api/ReturnCode;

.field public static final enum MAX_DAILY_SMS:Lcom/callapp/common/api/ReturnCode;

.field public static final enum MAX_DAILY_SMS_PER_DEVICE:Lcom/callapp/common/api/ReturnCode;

.field public static final enum MAX_DAILY_SMS_PER_USER:Lcom/callapp/common/api/ReturnCode;

.field public static final enum NOT_SUPER_USER:Lcom/callapp/common/api/ReturnCode;

.field public static final enum NO_SUCH_USER:Lcom/callapp/common/api/ReturnCode;

.field public static final enum OK:Lcom/callapp/common/api/ReturnCode;

.field public static final enum OLD_VERSION:Lcom/callapp/common/api/ReturnCode;

.field public static final enum OVER_USE_LIMIT:Lcom/callapp/common/api/ReturnCode;

.field public static final enum PHONE_UNLISTED_SUCCESS:Lcom/callapp/common/api/ReturnCode;

.field public static final enum PHONE_UNLIST_REQUEST_SUCCESS:Lcom/callapp/common/api/ReturnCode;


# instance fields
.field public final code:I

.field public final statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 6
    new-instance v0, Lcom/callapp/common/api/ReturnCode;

    const-string v1, "GENERAL_ERROR"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x1fe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/callapp/common/api/ReturnCode;->GENERAL_ERROR:Lcom/callapp/common/api/ReturnCode;

    .line 7
    new-instance v1, Lcom/callapp/common/api/ReturnCode;

    const-string v3, "AUTHENTICATION_FAILED"

    const/4 v4, 0x1

    const/4 v5, -0x2

    const/16 v6, 0x1af

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/callapp/common/api/ReturnCode;->AUTHENTICATION_FAILED:Lcom/callapp/common/api/ReturnCode;

    .line 8
    new-instance v3, Lcom/callapp/common/api/ReturnCode;

    const-string v6, "INVALID_NUMBER"

    const/4 v7, 0x2

    const/16 v8, 0x1ff

    invoke-direct {v3, v6, v7, v5, v8}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/callapp/common/api/ReturnCode;->INVALID_NUMBER:Lcom/callapp/common/api/ReturnCode;

    .line 9
    new-instance v5, Lcom/callapp/common/api/ReturnCode;

    const-string v6, "NO_SUCH_USER"

    const/4 v8, 0x3

    const/4 v9, -0x3

    const/16 v10, 0x200

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/callapp/common/api/ReturnCode;->NO_SUCH_USER:Lcom/callapp/common/api/ReturnCode;

    .line 10
    new-instance v6, Lcom/callapp/common/api/ReturnCode;

    const-string v9, "OVER_USE_LIMIT"

    const/4 v10, 0x4

    const/4 v11, -0x4

    const/16 v12, 0x201

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/callapp/common/api/ReturnCode;->OVER_USE_LIMIT:Lcom/callapp/common/api/ReturnCode;

    .line 11
    new-instance v9, Lcom/callapp/common/api/ReturnCode;

    const-string v11, "INVALID_TOKEN"

    const/4 v12, 0x5

    const/4 v13, -0x5

    const/16 v14, 0x202

    invoke-direct {v9, v11, v12, v13, v14}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/callapp/common/api/ReturnCode;->INVALID_TOKEN:Lcom/callapp/common/api/ReturnCode;

    .line 12
    new-instance v11, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "INVALID_DEVICE_ID"

    const/4 v14, 0x6

    const/4 v15, -0x6

    const/16 v12, 0x203

    invoke-direct {v11, v13, v14, v15, v12}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/callapp/common/api/ReturnCode;->INVALID_DEVICE_ID:Lcom/callapp/common/api/ReturnCode;

    .line 13
    new-instance v12, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "INVALID_CHALLENGE_RESPONSE"

    const/4 v15, 0x7

    const/4 v14, -0x7

    const/16 v10, 0x204

    invoke-direct {v12, v13, v15, v14, v10}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/callapp/common/api/ReturnCode;->INVALID_CHALLENGE_RESPONSE:Lcom/callapp/common/api/ReturnCode;

    .line 14
    new-instance v10, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "BLOCKED_NUMBER"

    const/16 v14, 0x8

    const/4 v15, -0x8

    const/16 v8, 0x205

    invoke-direct {v10, v13, v14, v15, v8}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/callapp/common/api/ReturnCode;->BLOCKED_NUMBER:Lcom/callapp/common/api/ReturnCode;

    .line 15
    new-instance v8, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "MAX_DAILY_SMS"

    const/16 v15, 0x9

    const/16 v14, -0x9

    const/16 v7, 0x206

    invoke-direct {v8, v13, v15, v14, v7}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/callapp/common/api/ReturnCode;->MAX_DAILY_SMS:Lcom/callapp/common/api/ReturnCode;

    .line 16
    new-instance v7, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "MAX_DAILY_SMS_PER_USER"

    const/16 v14, 0xa

    const/16 v15, -0xa

    const/16 v4, 0x207

    invoke-direct {v7, v13, v14, v15, v4}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/callapp/common/api/ReturnCode;->MAX_DAILY_SMS_PER_USER:Lcom/callapp/common/api/ReturnCode;

    .line 17
    new-instance v4, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "MAX_DAILY_SMS_PER_DEVICE"

    const/16 v15, 0xb

    const/16 v14, -0xb

    const/16 v2, 0x208

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/common/api/ReturnCode;->MAX_DAILY_SMS_PER_DEVICE:Lcom/callapp/common/api/ReturnCode;

    .line 18
    new-instance v2, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "MAX_DAILY_CALLS"

    const/16 v14, 0xc

    const/16 v15, -0xc

    move-object/from16 v16, v4

    const/16 v4, 0x209

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/callapp/common/api/ReturnCode;->MAX_DAILY_CALLS:Lcom/callapp/common/api/ReturnCode;

    .line 19
    new-instance v4, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "MAX_DAILY_CALLS_PER_USER"

    const/16 v15, 0xd

    const/16 v14, -0xd

    move-object/from16 v17, v2

    const/16 v2, 0x20a

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/common/api/ReturnCode;->MAX_DAILY_CALLS_PER_USER:Lcom/callapp/common/api/ReturnCode;

    .line 20
    new-instance v2, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "MAX_DAILY_CALLS_PER_DEVICE"

    const/16 v14, 0xe

    const/16 v15, -0xe

    move-object/from16 v18, v4

    const/16 v4, 0x20b

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/callapp/common/api/ReturnCode;->MAX_DAILY_CALLS_PER_DEVICE:Lcom/callapp/common/api/ReturnCode;

    .line 21
    new-instance v4, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "FAILED_TO_SEND_SMS"

    const/16 v15, 0xf

    const/16 v14, -0xf

    move-object/from16 v19, v2

    const/16 v2, 0x20c

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/common/api/ReturnCode;->FAILED_TO_SEND_SMS:Lcom/callapp/common/api/ReturnCode;

    .line 22
    new-instance v2, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "CONTACT_NOT_FOUND"

    const/16 v14, 0x10

    const/16 v15, 0x20d

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-direct {v2, v13, v14, v4, v15}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/callapp/common/api/ReturnCode;->CONTACT_NOT_FOUND:Lcom/callapp/common/api/ReturnCode;

    .line 23
    new-instance v4, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "OLD_VERSION"

    const/16 v15, 0x11

    const/16 v14, -0x10

    move-object/from16 v21, v2

    const/16 v2, 0x20e

    invoke-direct {v4, v13, v15, v14, v2}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/common/api/ReturnCode;->OLD_VERSION:Lcom/callapp/common/api/ReturnCode;

    .line 24
    new-instance v2, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "NOT_SUPER_USER"

    const/16 v14, 0x12

    const/16 v15, -0x11

    move-object/from16 v22, v4

    const/16 v4, 0x20f

    invoke-direct {v2, v13, v14, v15, v4}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/callapp/common/api/ReturnCode;->NOT_SUPER_USER:Lcom/callapp/common/api/ReturnCode;

    .line 25
    new-instance v4, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "OK"

    const/16 v15, 0x13

    const/16 v14, 0xc8

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-direct {v4, v13, v15, v2, v14}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/common/api/ReturnCode;->OK:Lcom/callapp/common/api/ReturnCode;

    .line 28
    new-instance v2, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "PHONE_UNLISTED_SUCCESS"

    const/16 v15, 0x14

    move-object/from16 v24, v4

    const/4 v4, 0x2

    invoke-direct {v2, v13, v15, v4, v14}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/callapp/common/api/ReturnCode;->PHONE_UNLISTED_SUCCESS:Lcom/callapp/common/api/ReturnCode;

    .line 29
    new-instance v4, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "PHONE_UNLIST_REQUEST_SUCCESS"

    const/16 v15, 0x15

    move-object/from16 v25, v2

    const/4 v2, 0x3

    invoke-direct {v4, v13, v15, v2, v14}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/callapp/common/api/ReturnCode;->PHONE_UNLIST_REQUEST_SUCCESS:Lcom/callapp/common/api/ReturnCode;

    .line 30
    new-instance v2, Lcom/callapp/common/api/ReturnCode;

    const-string v13, "INVALID_PHONE_OR_CONFIRMATION_CODE"

    const/16 v15, 0x16

    move-object/from16 v26, v4

    const/4 v4, 0x4

    invoke-direct {v2, v13, v15, v4, v14}, Lcom/callapp/common/api/ReturnCode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/callapp/common/api/ReturnCode;->INVALID_PHONE_OR_CONFIRMATION_CODE:Lcom/callapp/common/api/ReturnCode;

    const/16 v13, 0x17

    new-array v13, v13, [Lcom/callapp/common/api/ReturnCode;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v3, v13, v0

    const/4 v0, 0x3

    aput-object v5, v13, v0

    aput-object v6, v13, v4

    const/4 v0, 0x5

    aput-object v9, v13, v0

    const/4 v0, 0x6

    aput-object v11, v13, v0

    const/4 v0, 0x7

    aput-object v12, v13, v0

    const/16 v0, 0x8

    aput-object v10, v13, v0

    const/16 v0, 0x9

    aput-object v8, v13, v0

    const/16 v0, 0xa

    aput-object v7, v13, v0

    const/16 v0, 0xb

    aput-object v16, v13, v0

    const/16 v0, 0xc

    aput-object v17, v13, v0

    const/16 v0, 0xd

    aput-object v18, v13, v0

    const/16 v0, 0xe

    aput-object v19, v13, v0

    const/16 v0, 0xf

    aput-object v20, v13, v0

    const/16 v0, 0x10

    aput-object v21, v13, v0

    const/16 v0, 0x11

    aput-object v22, v13, v0

    const/16 v0, 0x12

    aput-object v23, v13, v0

    const/16 v0, 0x13

    aput-object v24, v13, v0

    const/16 v0, 0x14

    aput-object v25, v13, v0

    const/16 v0, 0x15

    aput-object v26, v13, v0

    const/16 v0, 0x16

    aput-object v2, v13, v0

    .line 5
    sput-object v13, Lcom/callapp/common/api/ReturnCode;->$VALUES:[Lcom/callapp/common/api/ReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/callapp/common/api/ReturnCode;->code:I

    .line 37
    iput p4, p0, Lcom/callapp/common/api/ReturnCode;->statusCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/common/api/ReturnCode;
    .locals 1

    .line 5
    const-class v0, Lcom/callapp/common/api/ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/api/ReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/callapp/common/api/ReturnCode;
    .locals 1

    .line 5
    sget-object v0, Lcom/callapp/common/api/ReturnCode;->$VALUES:[Lcom/callapp/common/api/ReturnCode;

    invoke-virtual {v0}, [Lcom/callapp/common/api/ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/common/api/ReturnCode;

    return-object v0
.end method
