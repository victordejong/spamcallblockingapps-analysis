.class public final enum Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/RequestParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NativeAdAsset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final enum ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final enum MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final enum SPONSORED:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final enum STAR_RATING:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final enum TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final enum TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

.field public static final synthetic b:[Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    const-string v3, "title"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    new-instance v1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    const-string v5, "text"

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    new-instance v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v5, "ICON_IMAGE"

    const/4 v6, 0x2

    const-string v7, "iconimage"

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->ICON_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    new-instance v5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v7, "MAIN_IMAGE"

    const/4 v8, 0x3

    const-string v9, "mainimage"

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    new-instance v7, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v9, "CALL_TO_ACTION_TEXT"

    const/4 v10, 0x4

    const-string v11, "ctatext"

    invoke-direct {v7, v9, v10, v11}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    new-instance v9, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v11, "STAR_RATING"

    const/4 v12, 0x5

    const-string v13, "starrating"

    invoke-direct {v9, v11, v12, v13}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->STAR_RATING:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    new-instance v11, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const-string v13, "SPONSORED"

    const/4 v14, 0x6

    const-string v15, "sponsored"

    invoke-direct {v11, v13, v14, v15}, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->SPONSORED:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->b:[Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;
    .locals 1

    const-class v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    return-object p0
.end method

.method public static values()[Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;
    .locals 1

    sget-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->b:[Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-virtual {v0}, [Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->a:Ljava/lang/String;

    return-object v0
.end method
