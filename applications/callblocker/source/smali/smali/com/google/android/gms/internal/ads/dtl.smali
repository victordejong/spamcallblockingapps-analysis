.class final Lcom/google/android/gms/internal/ads/dtl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dmt;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtd;Lcom/google/android/gms/internal/ads/dmt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtl;->b:Lcom/google/android/gms/internal/ads/dtd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dtl;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtl;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dmt;->a()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtl;->b:Lcom/google/android/gms/internal/ads/dtd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dtd;)Lcom/google/android/gms/internal/ads/dte;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtl;->a:Lcom/google/android/gms/internal/ads/dmt;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dte;->b(Lcom/google/android/gms/internal/ads/dmt;)V

    .line 4
    return-void
.end method
