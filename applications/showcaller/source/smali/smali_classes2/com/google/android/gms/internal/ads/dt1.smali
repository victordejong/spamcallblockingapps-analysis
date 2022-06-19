.class final synthetic Lcom/google/android/gms/internal/ads/dt1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/it1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rs1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/rs1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dt1;->a:Lcom/google/android/gms/internal/ads/rs1;

    return-void
.end method

.method static b(Lcom/google/android/gms/internal/ads/rs1;)Lcom/google/android/gms/internal/ads/it1;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dt1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/dt1;-><init>(Lcom/google/android/gms/internal/ads/rs1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dt1;->a:Lcom/google/android/gms/internal/ads/rs1;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rs1;->b(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
