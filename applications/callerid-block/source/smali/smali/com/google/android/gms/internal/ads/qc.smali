.class final Lcom/google/android/gms/internal/ads/qc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/jp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/jp<",
        "Lcom/google/android/gms/internal/ads/pb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/qc;->a:Lcom/google/android/gms/internal/ads/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/pb;

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/y0;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qc;->a:Lcom/google/android/gms/internal/ads/pc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pb;->j()Lcom/google/android/gms/internal/ads/xc;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/mp;->b(Ljava/lang/Object;)V

    return-void
.end method
