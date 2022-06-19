.class public final enum Lnet/pubnative/lite/sdk/vpaid/enums/VastError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/vpaid/enums/VastError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum COMPANION:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum FILE_NOT_FOUND:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum MEDIA_FILE_NO_SUPPORTED_TYPE:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum MEDIA_FILE_UNSUPPORTED:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum TIMEOUT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum TRAFFICKING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum UNDEFINED:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum VPAID:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum WRAPPER:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum WRAPPER_LIMIT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum WRAPPER_NO_VAST:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum WRAPPER_TIMEOUT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

.field public static final enum XML_PARSING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v1, "XML_PARSING"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->XML_PARSING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 5
    new-instance v1, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v3, "TRAFFICKING"

    const/4 v4, 0x1

    const/16 v5, 0xc8

    invoke-direct {v1, v3, v4, v5}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->TRAFFICKING:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 6
    new-instance v3, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v5, "WRAPPER"

    const/4 v6, 0x2

    const/16 v7, 0x12c

    invoke-direct {v3, v5, v6, v7}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->WRAPPER:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 7
    new-instance v5, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v7, "WRAPPER_TIMEOUT"

    const/4 v8, 0x3

    const/16 v9, 0x12d

    invoke-direct {v5, v7, v8, v9}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->WRAPPER_TIMEOUT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 8
    new-instance v7, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v9, "WRAPPER_LIMIT"

    const/4 v10, 0x4

    const/16 v11, 0x12e

    invoke-direct {v7, v9, v10, v11}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->WRAPPER_LIMIT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 9
    new-instance v9, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v11, "WRAPPER_NO_VAST"

    const/4 v12, 0x5

    const/16 v13, 0x12f

    invoke-direct {v9, v11, v12, v13}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->WRAPPER_NO_VAST:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 10
    new-instance v11, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v13, "FILE_NOT_FOUND"

    const/4 v14, 0x6

    const/16 v15, 0x191

    invoke-direct {v11, v13, v14, v15}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->FILE_NOT_FOUND:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 11
    new-instance v13, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v15, "TIMEOUT"

    const/4 v14, 0x7

    const/16 v12, 0x192

    invoke-direct {v13, v15, v14, v12}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->TIMEOUT:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 12
    new-instance v12, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v15, "MEDIA_FILE_NO_SUPPORTED_TYPE"

    const/16 v14, 0x8

    const/16 v10, 0x193

    invoke-direct {v12, v15, v14, v10}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->MEDIA_FILE_NO_SUPPORTED_TYPE:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 13
    new-instance v10, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v15, "MEDIA_FILE_UNSUPPORTED"

    const/16 v14, 0x9

    const/16 v8, 0x195

    invoke-direct {v10, v15, v14, v8}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->MEDIA_FILE_UNSUPPORTED:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 14
    new-instance v8, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v15, "COMPANION"

    const/16 v14, 0xa

    const/16 v6, 0x258

    invoke-direct {v8, v15, v14, v6}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->COMPANION:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 15
    new-instance v6, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v15, "UNDEFINED"

    const/16 v14, 0xb

    const/16 v4, 0x384

    invoke-direct {v6, v15, v14, v4}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->UNDEFINED:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    .line 16
    new-instance v4, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const-string v15, "VPAID"

    const/16 v14, 0xc

    const/16 v2, 0x385

    invoke-direct {v4, v15, v14, v2}, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->VPAID:Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const/16 v2, 0xd

    new-array v2, v2, [Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    aput-object v4, v2, v14

    .line 3
    sput-object v2, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->$VALUES:[Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/vpaid/enums/VastError;
    .locals 1

    .line 3
    const-class v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/vpaid/enums/VastError;
    .locals 1

    .line 3
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->$VALUES:[Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/vpaid/enums/VastError;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 25
    iget v0, p0, Lnet/pubnative/lite/sdk/vpaid/enums/VastError;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
