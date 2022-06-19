.class public abstract Lcom/google/android/gms/internal/ads/lh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/kh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/android/gms/internal/ads/vb;Lcom/google/android/gms/internal/ads/yg;)Lcom/google/android/gms/internal/ads/mh;
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

.method public final c(Lcom/google/android/gms/internal/ads/kh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lh;->a:Lcom/google/android/gms/internal/ads/kh;

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lh;->a:Lcom/google/android/gms/internal/ads/kh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/kh;->h()V

    :cond_0
    return-void
.end method
