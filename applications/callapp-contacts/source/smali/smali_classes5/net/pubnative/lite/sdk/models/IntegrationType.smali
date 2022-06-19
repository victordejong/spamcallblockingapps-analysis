.class public final enum Lnet/pubnative/lite/sdk/models/IntegrationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/models/IntegrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/models/IntegrationType;

.field public static final enum HEADER_BIDDING:Lnet/pubnative/lite/sdk/models/IntegrationType;

.field public static final enum IN_APP_BIDDING:Lnet/pubnative/lite/sdk/models/IntegrationType;

.field public static final enum MEDIATION:Lnet/pubnative/lite/sdk/models/IntegrationType;

.field public static final enum STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 4
    new-instance v0, Lnet/pubnative/lite/sdk/models/IntegrationType;

    const-string v1, "HEADER_BIDDING"

    const/4 v2, 0x0

    const-string v3, "hb"

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/models/IntegrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/models/IntegrationType;->HEADER_BIDDING:Lnet/pubnative/lite/sdk/models/IntegrationType;

    .line 5
    new-instance v1, Lnet/pubnative/lite/sdk/models/IntegrationType;

    const-string v3, "IN_APP_BIDDING"

    const/4 v4, 0x1

    const-string v5, "iab"

    invoke-direct {v1, v3, v4, v5}, Lnet/pubnative/lite/sdk/models/IntegrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/IntegrationType;->IN_APP_BIDDING:Lnet/pubnative/lite/sdk/models/IntegrationType;

    .line 6
    new-instance v3, Lnet/pubnative/lite/sdk/models/IntegrationType;

    const-string v5, "MEDIATION"

    const/4 v6, 0x2

    const-string v7, "m"

    invoke-direct {v3, v5, v6, v7}, Lnet/pubnative/lite/sdk/models/IntegrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lnet/pubnative/lite/sdk/models/IntegrationType;->MEDIATION:Lnet/pubnative/lite/sdk/models/IntegrationType;

    .line 7
    new-instance v5, Lnet/pubnative/lite/sdk/models/IntegrationType;

    const-string v7, "STANDALONE"

    const/4 v8, 0x3

    const-string v9, "s"

    invoke-direct {v5, v7, v8, v9}, Lnet/pubnative/lite/sdk/models/IntegrationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lnet/pubnative/lite/sdk/models/IntegrationType;->STANDALONE:Lnet/pubnative/lite/sdk/models/IntegrationType;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/pubnative/lite/sdk/models/IntegrationType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lnet/pubnative/lite/sdk/models/IntegrationType;->$VALUES:[Lnet/pubnative/lite/sdk/models/IntegrationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lnet/pubnative/lite/sdk/models/IntegrationType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/IntegrationType;
    .locals 1

    .line 3
    const-class v0, Lnet/pubnative/lite/sdk/models/IntegrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/models/IntegrationType;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/models/IntegrationType;
    .locals 1

    .line 3
    sget-object v0, Lnet/pubnative/lite/sdk/models/IntegrationType;->$VALUES:[Lnet/pubnative/lite/sdk/models/IntegrationType;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/models/IntegrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/models/IntegrationType;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/IntegrationType;->code:Ljava/lang/String;

    return-object v0
.end method
