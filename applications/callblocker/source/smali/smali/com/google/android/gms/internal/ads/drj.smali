.class public abstract Lcom/google/android/gms/internal/ads/drj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/gms/internal/ads/dll;Lcom/google/android/gms/internal/ads/dqv;)Lcom/google/android/gms/internal/ads/drl;
.end method

.method protected final a()V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drj;->a:Lcom/google/android/gms/internal/ads/dri;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/drj;->a:Lcom/google/android/gms/internal/ads/dri;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dri;->c()V

    .line 6
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dri;)V
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/drj;->a:Lcom/google/android/gms/internal/ads/dri;

    .line 3
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method
