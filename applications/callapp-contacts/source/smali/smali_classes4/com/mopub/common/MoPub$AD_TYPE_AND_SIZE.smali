.class public final enum Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/MoPub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AD_TYPE_AND_SIZE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

.field public static final enum BANNER_300X250:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

.field public static final enum BANNER_320X50:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

.field public static final enum INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

.field public static final enum NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;


# instance fields
.field private size:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 472
    new-instance v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v1, "NATIVE"

    const/4 v2, 0x0

    const-string v3, "Native"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    .line 473
    new-instance v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v3, "BANNER_320X50"

    const/4 v4, 0x1

    const-string v5, "Banner"

    const-string v6, "320X50"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->BANNER_320X50:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    .line 474
    new-instance v3, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v6, "BANNER_300X250"

    const/4 v7, 0x2

    const-string v8, "300X250"

    invoke-direct {v3, v6, v7, v5, v8}, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->BANNER_300X250:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    .line 475
    new-instance v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v6, "INTERSTITIAL"

    const/4 v8, 0x3

    const-string v9, "Interstitial"

    const-string v10, "Fullscreen"

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    aput-object v3, v6, v7

    aput-object v5, v6, v8

    .line 471
    sput-object v6, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->$VALUES:[Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 480
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 481
    iput-object p3, p0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->type:Ljava/lang/String;

    .line 482
    iput-object p4, p0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->size:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;
    .locals 1

    .line 471
    const-class v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;
    .locals 1

    .line 471
    sget-object v0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->$VALUES:[Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    invoke-virtual {v0}, [Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    return-object v0
.end method


# virtual methods
.method public final getSize()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->size:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->type:Ljava/lang/String;

    return-object v0
.end method
