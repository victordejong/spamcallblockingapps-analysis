.class final synthetic Lcom/google/android/gms/internal/ads/pp3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/tp3;

.field private final e:Ljava/lang/Object;

.field private final f:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tp3;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pp3;->e:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/pp3;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pp3;->d:Lcom/google/android/gms/internal/ads/tp3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp3;->e:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pp3;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/tp3;->n(Ljava/lang/Object;J)V

    return-void
.end method
