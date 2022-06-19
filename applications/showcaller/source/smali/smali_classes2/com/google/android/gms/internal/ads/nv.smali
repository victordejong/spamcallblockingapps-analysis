.class public final Lcom/google/android/gms/internal/ads/nv;
.super Lcom/google/android/gms/internal/ads/bu;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/n;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/ads/n;

    return-void
.end method


# virtual methods
.method public final j5(Lcom/google/android/gms/internal/ads/zzbdn;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/ads/n;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbdn;->e:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbdn;->f:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzbdn;->g:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/g;->a(ILjava/lang/String;J)Lcom/google/android/gms/ads/g;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/ads/n;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/n;->a(Lcom/google/android/gms/ads/g;)V

    :cond_0
    return-void
.end method
