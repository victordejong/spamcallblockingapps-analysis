.class final synthetic Lcom/google/android/gms/internal/ads/wz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/xs1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/xs1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wz0;->a:Lcom/google/android/gms/internal/ads/xs1;

    return-void
.end method

.method static c(Lcom/google/android/gms/internal/ads/xs1;)Lcom/google/android/gms/internal/ads/uz2;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wz0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/wz0;-><init>(Lcom/google/android/gms/internal/ads/xs1;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wz0;->a:Lcom/google/android/gms/internal/ads/xs1;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/xs1;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
