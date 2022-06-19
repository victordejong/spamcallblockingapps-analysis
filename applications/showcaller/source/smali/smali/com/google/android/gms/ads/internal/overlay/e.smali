.class final synthetic Lcom/google/android/gms/ads/internal/overlay/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hp0;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/e;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/e;->d:Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->W()V

    :cond_0
    return-void
.end method
