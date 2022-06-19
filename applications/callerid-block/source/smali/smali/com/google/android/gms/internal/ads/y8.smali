.class final Lcom/google/android/gms/internal/ads/y8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/h9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/h9<",
        "Lcom/google/android/gms/internal/ads/jt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->v()Lcom/google/android/gms/internal/ads/lu2;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->v()Lcom/google/android/gms/internal/ads/lu2;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/lu2;->zza()V

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->Q()Lcom/google/android/gms/ads/internal/overlay/n;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/n;->b()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->i0()Lcom/google/android/gms/ads/internal/overlay/n;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/n;->b()V

    return-void

    :cond_2
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    return-void
.end method
