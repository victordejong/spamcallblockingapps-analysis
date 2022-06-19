.class final synthetic Lcom/google/android/gms/internal/ads/cb1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/hh1;

.field private final e:I

.field private final f:J

.field private final g:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh1;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cb1;->d:Lcom/google/android/gms/internal/ads/hh1;

    iput p2, p0, Lcom/google/android/gms/internal/ads/cb1;->e:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/cb1;->f:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/cb1;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cb1;->d:Lcom/google/android/gms/internal/ads/hh1;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cb1;->e:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cb1;->f:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/cb1;->g:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/hh1;->p(IJJ)V

    return-void
.end method
