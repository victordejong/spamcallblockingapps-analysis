.class final Lcom/google/android/gms/internal/ads/cku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cki;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ckr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ckr;Lcom/google/android/gms/internal/ads/cki;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cku;->b:Lcom/google/android/gms/internal/ads/ckr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cku;->a:Lcom/google/android/gms/internal/ads/cki;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cku;->b:Lcom/google/android/gms/internal/ads/ckr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckr;->a:Lcom/google/android/gms/internal/ads/ckl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ckl;->c(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/ckx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cku;->a:Lcom/google/android/gms/internal/ads/cki;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ckx;->c(Lcom/google/android/gms/internal/ads/cki;)V

    .line 3
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cku;->b:Lcom/google/android/gms/internal/ads/ckr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckr;->a:Lcom/google/android/gms/internal/ads/ckl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ckl;->c(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/ckx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cku;->a:Lcom/google/android/gms/internal/ads/cki;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/ckx;->a(Lcom/google/android/gms/internal/ads/cki;Ljava/lang/Throwable;)V

    .line 5
    return-void
.end method
