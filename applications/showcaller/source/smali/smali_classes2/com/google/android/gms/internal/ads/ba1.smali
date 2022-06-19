.class final synthetic Lcom/google/android/gms/internal/ads/ba1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/hh1;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/hh1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ba1;->d:Lcom/google/android/gms/internal/ads/hh1;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/ba1;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ba1;->d:Lcom/google/android/gms/internal/ads/hh1;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ba1;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/hh1;->q(J)V

    return-void
.end method
