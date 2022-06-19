.class public abstract Lcom/google/android/gms/internal/ads/fn3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/en3;

.field private b:Lcom/google/android/gms/internal/ads/on3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b([Lcom/google/android/gms/internal/ads/u6;Lcom/google/android/gms/internal/ads/dv3;Lcom/google/android/gms/internal/ads/mk3;Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/hn3;
.end method

.method public final c(Lcom/google/android/gms/internal/ads/en3;Lcom/google/android/gms/internal/ads/on3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fn3;->a:Lcom/google/android/gms/internal/ads/en3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fn3;->b:Lcom/google/android/gms/internal/ads/on3;

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fn3;->a:Lcom/google/android/gms/internal/ads/en3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/en3;->zza()V

    :cond_0
    return-void
.end method

.method protected final e()Lcom/google/android/gms/internal/ads/on3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fn3;->b:Lcom/google/android/gms/internal/ads/on3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
