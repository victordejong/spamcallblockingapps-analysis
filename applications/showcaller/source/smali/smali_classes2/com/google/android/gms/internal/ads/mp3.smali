.class final synthetic Lcom/google/android/gms/internal/ads/mp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tp3;

.field private final e:I

.field private final f:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp3;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iput p2, p0, Lcom/google/android/gms/internal/ads/mp3;->e:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/mp3;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iget v1, p0, Lcom/google/android/gms/internal/ads/mp3;->e:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mp3;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/tp3;->q(IJ)V

    return-void
.end method
