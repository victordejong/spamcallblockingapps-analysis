.class public final enum Lcom/mopub/mobileads/MoPubInterstitial$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/MoPubInterstitial$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$b;

.field public static final enum IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

.field public static final enum LOADING:Lcom/mopub/mobileads/MoPubInterstitial$b;

.field public static final enum READY:Lcom/mopub/mobileads/MoPubInterstitial$b;

.field public static final enum SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$b;

.field public static final synthetic a:[Lcom/mopub/mobileads/MoPubInterstitial$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial$b;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MoPubInterstitial$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$b;

    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial$b;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/mobileads/MoPubInterstitial$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/MoPubInterstitial$b;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    new-instance v3, Lcom/mopub/mobileads/MoPubInterstitial$b;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/mobileads/MoPubInterstitial$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/mobileads/MoPubInterstitial$b;->READY:Lcom/mopub/mobileads/MoPubInterstitial$b;

    new-instance v5, Lcom/mopub/mobileads/MoPubInterstitial$b;

    const-string v7, "SHOWING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/mobileads/MoPubInterstitial$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/mobileads/MoPubInterstitial$b;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$b;

    new-instance v7, Lcom/mopub/mobileads/MoPubInterstitial$b;

    const-string v9, "DESTROYED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mopub/mobileads/MoPubInterstitial$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mopub/mobileads/MoPubInterstitial$b;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mopub/mobileads/MoPubInterstitial$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mopub/mobileads/MoPubInterstitial$b;->a:[Lcom/mopub/mobileads/MoPubInterstitial$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubInterstitial$b;
    .locals 1

    const-class v0, Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/MoPubInterstitial$b;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubInterstitial$b;
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$b;->a:[Lcom/mopub/mobileads/MoPubInterstitial$b;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubInterstitial$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubInterstitial$b;

    return-object v0
.end method
