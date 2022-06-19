.class public final enum Lcom/google/android/gms/internal/ads/czw;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/czw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/czw;

.field public static final enum b:Lcom/google/android/gms/internal/ads/czw;

.field public static final enum c:Lcom/google/android/gms/internal/ads/czw;

.field private static final synthetic d:[Lcom/google/android/gms/internal/ads/czw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/czw;

    const-string/jumbo v1, "UNCOMPRESSED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/czw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czw;->a:Lcom/google/android/gms/internal/ads/czw;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/czw;

    const-string/jumbo v1, "COMPRESSED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/czw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czw;->b:Lcom/google/android/gms/internal/ads/czw;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/czw;

    const-string/jumbo v1, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/czw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/czw;->c:Lcom/google/android/gms/internal/ads/czw;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/czw;

    sget-object v1, Lcom/google/android/gms/internal/ads/czw;->a:Lcom/google/android/gms/internal/ads/czw;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/czw;->b:Lcom/google/android/gms/internal/ads/czw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/czw;->c:Lcom/google/android/gms/internal/ads/czw;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/czw;->d:[Lcom/google/android/gms/internal/ads/czw;

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

.method public static values()[Lcom/google/android/gms/internal/ads/czw;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/czw;->d:[Lcom/google/android/gms/internal/ads/czw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/czw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/czw;

    return-object v0
.end method
