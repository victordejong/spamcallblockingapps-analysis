.class final Lcom/google/android/gms/internal/ads/um0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/t5;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vm0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vm0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/um0;->a:Lcom/google/android/gms/internal/ads/vm0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->a:Lcom/google/android/gms/internal/ads/vm0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm0;->A6(Lcom/google/android/gms/internal/ads/vm0;)Lcom/google/android/gms/internal/ads/ni0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/um0;->a:Lcom/google/android/gms/internal/ads/vm0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm0;->A6(Lcom/google/android/gms/internal/ads/vm0;)Lcom/google/android/gms/internal/ads/ni0;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ni0;->w(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
