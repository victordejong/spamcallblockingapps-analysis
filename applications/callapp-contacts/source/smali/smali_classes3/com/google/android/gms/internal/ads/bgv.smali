.class final Lcom/google/android/gms/internal/ads/bgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dg;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/bgs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bgs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgv;->a:Lcom/google/android/gms/internal/ads/bgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->a:Lcom/google/android/gms/internal/ads/bgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bgs;->a(Lcom/google/android/gms/internal/ads/bgs;)Lcom/google/android/gms/internal/ads/bcf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bgv;->a:Lcom/google/android/gms/internal/ads/bgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bgs;->a(Lcom/google/android/gms/internal/ads/bgs;)Lcom/google/android/gms/internal/ads/bcf;

    move-result-object v0

    const-string v1, "_videoMediaView"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bcf;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
