.class final Lcom/google/android/gms/internal/ads/dme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/zzemk;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dme;->b:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemk;->a([B)Lcom/google/android/gms/internal/ads/zzemk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dme;->a:Lcom/google/android/gms/internal/ads/zzemk;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/dlv;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dme;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dlw;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dme;->a:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzemk;->i()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dme;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dmh;-><init>([B)V

    return-object v0
.end method
