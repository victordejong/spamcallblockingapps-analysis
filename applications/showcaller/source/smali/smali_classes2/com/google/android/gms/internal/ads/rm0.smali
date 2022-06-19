.class final synthetic Lcom/google/android/gms/internal/ads/rm0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/kk0;

.field private final e:Z

.field private final f:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/kk0;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rm0;->d:Lcom/google/android/gms/internal/ads/kk0;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/rm0;->e:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/rm0;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rm0;->d:Lcom/google/android/gms/internal/ads/kk0;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rm0;->e:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/rm0;->f:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/kk0;->c1(ZJ)V

    return-void
.end method
