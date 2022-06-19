.class final Lcom/google/android/gms/internal/ads/x8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/x8;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/util/l0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/x8;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jt;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/x8;->a:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jt;->r()Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbq;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/l0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/z;->b()Lcom/google/android/gms/internal/ads/rz1;

    return-void
.end method
