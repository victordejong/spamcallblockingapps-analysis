.class public final Lcom/google/android/gms/internal/ads/el2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/dl2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/el2;->a:Lcom/google/android/gms/internal/ads/dl2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dl2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/el2;->a:Lcom/google/android/gms/internal/ads/dl2;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/el2;->a:Lcom/google/android/gms/internal/ads/dl2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dl2;->zza()V

    :cond_0
    return-void
.end method
