.class final Lcom/google/android/gms/internal/ads/es;
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
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->K()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->K()Lcom/google/android/gms/internal/ads/dva;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dva;->t()V

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->r()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a()V

    .line 12
    :goto_0
    return-void

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/act;->s()Lcom/google/android/gms/ads/internal/overlay/c;

    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a()V

    goto :goto_0

    .line 11
    :cond_2
    const-string/jumbo v0, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
