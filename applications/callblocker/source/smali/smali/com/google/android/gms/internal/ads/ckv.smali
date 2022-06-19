.class final synthetic Lcom/google/android/gms/internal/ads/ckv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ckr;

.field private final b:Lcom/google/android/gms/internal/ads/cki;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ckr;Lcom/google/android/gms/internal/ads/cki;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ckv;->b:Lcom/google/android/gms/internal/ads/cki;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ckv;->a:Lcom/google/android/gms/internal/ads/ckr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ckv;->b:Lcom/google/android/gms/internal/ads/cki;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ckr;->a:Lcom/google/android/gms/internal/ads/ckl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ckl;->c(Lcom/google/android/gms/internal/ads/ckl;)Lcom/google/android/gms/internal/ads/ckx;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ckx;->b(Lcom/google/android/gms/internal/ads/cki;)V

    .line 3
    return-void
.end method
