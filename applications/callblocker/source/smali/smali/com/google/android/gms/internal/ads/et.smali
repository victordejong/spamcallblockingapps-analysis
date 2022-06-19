.class final Lcom/google/android/gms/internal/ads/et;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->H()Lcom/google/android/gms/internal/ads/bj;

    move-result-object v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/bj;->a()V

    .line 6
    :cond_0
    return-void
.end method
