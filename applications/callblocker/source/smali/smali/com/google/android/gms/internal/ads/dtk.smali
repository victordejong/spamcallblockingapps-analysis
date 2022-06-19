.class final Lcom/google/android/gms/internal/ads/dtk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field private final synthetic c:I

.field private final synthetic d:F

.field private final synthetic e:Lcom/google/android/gms/internal/ads/dtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtd;IIIF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dtk;->e:Lcom/google/android/gms/internal/ads/dtd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dtk;->a:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/dtk;->b:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/dtk;->c:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/dtk;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtk;->e:Lcom/google/android/gms/internal/ads/dtd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dtd;)Lcom/google/android/gms/internal/ads/dte;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dtk;->a:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dtk;->b:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dtk;->c:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dtk;->d:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/dte;->a(IIIF)V

    .line 3
    return-void
.end method
