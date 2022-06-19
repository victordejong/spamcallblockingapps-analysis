.class final synthetic Lcom/google/android/gms/ads/internal/util/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/ads/internal/util/w;

.field private final e:Lcom/google/android/gms/internal/ads/s03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/w;Lcom/google/android/gms/internal/ads/s03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/i;->d:Lcom/google/android/gms/ads/internal/util/w;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/i;->e:Lcom/google/android/gms/internal/ads/s03;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/i;->d:Lcom/google/android/gms/ads/internal/util/w;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/i;->e:Lcom/google/android/gms/internal/ads/s03;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/w;->i(Lcom/google/android/gms/internal/ads/s03;)V

    return-void
.end method
