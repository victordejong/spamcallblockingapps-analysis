.class final enum Lcom/google/android/gms/internal/ads/dct;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dct;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dct;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dct;

.field public static final enum c:Lcom/google/android/gms/internal/ads/dct;

.field public static final enum d:Lcom/google/android/gms/internal/ads/dct;

.field private static final synthetic f:[Lcom/google/android/gms/internal/ads/dct;


# instance fields
.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dct;

    const-string/jumbo v1, "SCALAR"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/dct;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dct;->a:Lcom/google/android/gms/internal/ads/dct;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dct;

    const-string/jumbo v1, "VECTOR"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/ads/dct;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dct;->b:Lcom/google/android/gms/internal/ads/dct;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/dct;

    const-string/jumbo v1, "PACKED_VECTOR"

    invoke-direct {v0, v1, v4, v3}, Lcom/google/android/gms/internal/ads/dct;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dct;->c:Lcom/google/android/gms/internal/ads/dct;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/dct;

    const-string/jumbo v1, "MAP"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/dct;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dct;->d:Lcom/google/android/gms/internal/ads/dct;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dct;

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->a:Lcom/google/android/gms/internal/ads/dct;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->b:Lcom/google/android/gms/internal/ads/dct;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->c:Lcom/google/android/gms/internal/ads/dct;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dct;->d:Lcom/google/android/gms/internal/ads/dct;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/dct;->f:[Lcom/google/android/gms/internal/ads/dct;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/dct;->e:Z

    .line 4
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dct;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dct;->f:[Lcom/google/android/gms/internal/ads/dct;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dct;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dct;

    return-object v0
.end method
