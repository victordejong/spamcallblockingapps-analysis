.class final Lcom/google/android/gms/internal/ads/vl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/yl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vl;->a:Lcom/google/android/gms/internal/ads/yl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yl;->h(Lcom/google/android/gms/internal/ads/yl;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/vl;->a:Lcom/google/android/gms/internal/ads/yl;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yl;->j(Lcom/google/android/gms/internal/ads/yl;)V

    return-void
.end method
