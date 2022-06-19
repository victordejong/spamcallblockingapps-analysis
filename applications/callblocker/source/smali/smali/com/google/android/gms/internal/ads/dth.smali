.class final Lcom/google/android/gms/internal/ads/dth;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dtd;IJ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dth;->c:Lcom/google/android/gms/internal/ads/dtd;

    iput p2, p0, Lcom/google/android/gms/internal/ads/dth;->a:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dth;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dth;->c:Lcom/google/android/gms/internal/ads/dtd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dtd;->a(Lcom/google/android/gms/internal/ads/dtd;)Lcom/google/android/gms/internal/ads/dte;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/dth;->a:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dth;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dte;->a(IJ)V

    .line 3
    return-void
.end method
