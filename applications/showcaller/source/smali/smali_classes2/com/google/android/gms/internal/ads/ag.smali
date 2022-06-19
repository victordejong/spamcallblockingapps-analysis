.class final Lcom/google/android/gms/internal/ads/ag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ljava/io/IOException;

.field final synthetic e:Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eg;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ag;->e:Lcom/google/android/gms/internal/ads/eg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ag;->d:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ag;->e:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eg;->v(Lcom/google/android/gms/internal/ads/eg;)Lcom/google/android/gms/internal/ads/fg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ag;->d:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/fg;->b(Ljava/io/IOException;)V

    return-void
.end method
