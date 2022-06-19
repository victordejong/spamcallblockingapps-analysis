.class final Lcom/google/android/gms/internal/ads/dti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dlf;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtd;Lcom/google/android/gms/internal/ads/dlf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dti;->b:Lcom/google/android/gms/internal/ads/dtd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dti;->a:Lcom/google/android/gms/internal/ads/dlf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dti;->b:Lcom/google/android/gms/internal/ads/dtd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dtd;)Lcom/google/android/gms/internal/ads/dte;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dti;->a:Lcom/google/android/gms/internal/ads/dlf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dte;->a(Lcom/google/android/gms/internal/ads/dlf;)V

    .line 3
    return-void
.end method
