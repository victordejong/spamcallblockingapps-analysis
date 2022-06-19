.class public final enum Lcom/mopub/mraid/PlacementType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mraid/PlacementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INLINE:Lcom/mopub/mraid/PlacementType;

.field public static final enum INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

.field public static final synthetic a:[Lcom/mopub/mraid/PlacementType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mopub/mraid/PlacementType;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mraid/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    new-instance v1, Lcom/mopub/mraid/PlacementType;

    const-string v3, "INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/mraid/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/mopub/mraid/PlacementType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/mopub/mraid/PlacementType;->a:[Lcom/mopub/mraid/PlacementType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mraid/PlacementType;
    .locals 1

    const-class v0, Lcom/mopub/mraid/PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mraid/PlacementType;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mraid/PlacementType;
    .locals 1

    sget-object v0, Lcom/mopub/mraid/PlacementType;->a:[Lcom/mopub/mraid/PlacementType;

    invoke-virtual {v0}, [Lcom/mopub/mraid/PlacementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mraid/PlacementType;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
