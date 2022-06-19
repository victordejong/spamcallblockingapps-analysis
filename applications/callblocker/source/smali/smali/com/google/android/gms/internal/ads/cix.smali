.class public final enum Lcom/google/android/gms/internal/ads/cix;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/cix;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/cix;

.field public static final enum b:Lcom/google/android/gms/internal/ads/cix;

.field public static final enum c:Lcom/google/android/gms/internal/ads/cix;

.field private static final synthetic d:[Lcom/google/android/gms/internal/ads/cix;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cix;

    const-string/jumbo v1, "Rewarded"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cix;->a:Lcom/google/android/gms/internal/ads/cix;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/cix;

    const-string/jumbo v1, "Interstitial"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/cix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cix;->b:Lcom/google/android/gms/internal/ads/cix;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cix;

    const-string/jumbo v1, "AppOpen"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/cix;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/cix;->c:Lcom/google/android/gms/internal/ads/cix;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/cix;

    sget-object v1, Lcom/google/android/gms/internal/ads/cix;->a:Lcom/google/android/gms/internal/ads/cix;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/cix;->b:Lcom/google/android/gms/internal/ads/cix;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/cix;->c:Lcom/google/android/gms/internal/ads/cix;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/cix;->d:[Lcom/google/android/gms/internal/ads/cix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/cix;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cix;->d:[Lcom/google/android/gms/internal/ads/cix;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/cix;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/cix;

    return-object v0
.end method
