.class public final enum Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "API"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MRAID1:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field public static final enum MRAID2:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field public static final enum MRAID3:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field public static final enum OMSDK:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field public static final enum ORMMA:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field public static final enum VPAID1:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field public static final enum VPAID2:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

.field private static final synthetic b:[Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v1, "VPAID1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->VPAID1:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v4, "VPAID2"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->VPAID2:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-instance v4, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v6, "MRAID1"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->MRAID1:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-instance v6, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v8, "ORMMA"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->ORMMA:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-instance v8, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v10, "MRAID2"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->MRAID2:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-instance v10, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v12, "MRAID3"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->MRAID3:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-instance v12, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    const-string v14, "OMSDK"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->OMSDK:Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    new-array v14, v15, [Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->b:[Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

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

    iput p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->b:[Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$API;->a:I

    return v0
.end method
