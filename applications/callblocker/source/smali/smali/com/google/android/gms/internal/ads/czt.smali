.class public final enum Lcom/google/android/gms/internal/ads/czt;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/czt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/czt;

.field public static final enum b:Lcom/google/android/gms/internal/ads/czt;

.field public static final enum c:Lcom/google/android/gms/internal/ads/czt;

.field private static final synthetic d:[Lcom/google/android/gms/internal/ads/czt;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/czt;

    const-string/jumbo v1, "NIST_P256"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/czt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czt;->a:Lcom/google/android/gms/internal/ads/czt;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/czt;

    const-string/jumbo v1, "NIST_P384"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/czt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czt;->b:Lcom/google/android/gms/internal/ads/czt;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/czt;

    const-string/jumbo v1, "NIST_P521"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/czt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czt;->c:Lcom/google/android/gms/internal/ads/czt;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/czt;

    sget-object v1, Lcom/google/android/gms/internal/ads/czt;->a:Lcom/google/android/gms/internal/ads/czt;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/czt;->b:Lcom/google/android/gms/internal/ads/czt;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/czt;->c:Lcom/google/android/gms/internal/ads/czt;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/czt;->d:[Lcom/google/android/gms/internal/ads/czt;

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

.method public static values()[Lcom/google/android/gms/internal/ads/czt;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/czt;->d:[Lcom/google/android/gms/internal/ads/czt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/czt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/czt;

    return-object v0
.end method
