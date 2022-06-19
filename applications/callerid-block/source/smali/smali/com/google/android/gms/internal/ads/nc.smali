.class final Lcom/google/android/gms/internal/ads/nc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/jp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/jp<",
        "Lcom/google/android/gms/internal/ads/wc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/pc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/wc;

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/nc;->a:Lcom/google/android/gms/internal/ads/pc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/pc;->g(Lcom/google/android/gms/internal/ads/pc;)Lcom/google/android/gms/internal/ads/uc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uc;->g()V

    return-void
.end method
