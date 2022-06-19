.class final synthetic Lcom/google/android/gms/internal/ads/kn3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/ln3;

.field private final e:I

.field private final f:J

.field private final g:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ln3;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kn3;->d:Lcom/google/android/gms/internal/ads/ln3;

    iput p2, p0, Lcom/google/android/gms/internal/ads/kn3;->e:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/kn3;->f:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/kn3;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kn3;->d:Lcom/google/android/gms/internal/ads/ln3;

    iget v2, p0, Lcom/google/android/gms/internal/ads/kn3;->e:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/kn3;->f:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/kn3;->g:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ln3;->b(Lcom/google/android/gms/internal/ads/ln3;)Lcom/google/android/gms/internal/ads/nn3;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/nn3;->D(IJJ)V

    return-void
.end method
