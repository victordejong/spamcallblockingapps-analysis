.class final Lcom/google/android/gms/internal/ads/dbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzebk;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbq;->b:[B

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbq;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzebk;->a([B)Lcom/google/android/gms/internal/ads/zzebk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbq;->a:Lcom/google/android/gms/internal/ads/zzebk;

    .line 4
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/dbl;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dbq;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbi;
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbq;->a:Lcom/google/android/gms/internal/ads/zzebk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebk;->b()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/dbt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbq;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dbt;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzebk;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbq;->a:Lcom/google/android/gms/internal/ads/zzebk;

    return-object v0
.end method
