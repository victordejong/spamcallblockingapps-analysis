.class public final enum Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ABOVE_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field public static final enum BELOW_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field public static final enum FOOTER:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field public static final enum FULL_SCREEN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field public static final enum HEADER:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field public static final enum SIDEBAR:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field public static final enum UNKNOWN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

.field private static final synthetic b:[Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->UNKNOWN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v3, "ABOVE_THE_FOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->ABOVE_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-instance v3, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v5, "BELOW_THE_FOLD"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v3, v5, v6, v7}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->BELOW_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-instance v5, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v8, "HEADER"

    const/4 v9, 0x4

    invoke-direct {v5, v8, v7, v9}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->HEADER:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-instance v8, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v10, "FOOTER"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->FOOTER:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-instance v10, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v12, "SIDEBAR"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->SIDEBAR:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-instance v12, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    const-string v14, "FULL_SCREEN"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->FULL_SCREEN:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    new-array v14, v15, [Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->b:[Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->b:[Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->a:I

    return v0
.end method
