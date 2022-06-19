.class public final enum Lcom/pubmatic/sdk/common/POBDataType$POBAdState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/POBDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBAdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/POBDataType$POBAdState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum EXPIRED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field public static final enum SHOWN:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/POBDataType$POBAdState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->DEFAULT:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->LOADING:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v5, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v7, "SHOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->SHOWN:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v7, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v9, "AD_SERVER_READY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->AD_SERVER_READY:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v9, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v11, "EXPIRED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->EXPIRED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v11, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v13, "BID_RECEIVED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_RECEIVED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    new-instance v13, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const-string v15, "BID_FAILED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->BID_FAILED:Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->a:[Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/POBDataType$POBAdState;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/POBDataType$POBAdState;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->a:[Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/POBDataType$POBAdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/POBDataType$POBAdState;

    return-object v0
.end method
