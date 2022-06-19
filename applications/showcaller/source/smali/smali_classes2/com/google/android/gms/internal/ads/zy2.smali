.class final Lcom/google/android/gms/internal/ads/zy2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final d:Lcom/google/android/gms/internal/ads/fz2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/fz2<",
            "TV;>;"
        }
    .end annotation
.end field

.field final e:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fz2;Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/fz2<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/r03<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zy2;->d:Lcom/google/android/gms/internal/ads/fz2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zy2;->e:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy2;->d:Lcom/google/android/gms/internal/ads/fz2;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fz2;->m(Lcom/google/android/gms/internal/ads/fz2;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy2;->e:Lcom/google/android/gms/internal/ads/r03;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fz2;->x(Lcom/google/android/gms/internal/ads/r03;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/fz2;->l()Lcom/google/android/gms/internal/ads/uy2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zy2;->d:Lcom/google/android/gms/internal/ads/fz2;

    .line 3
    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/uy2;->e(Lcom/google/android/gms/internal/ads/fz2;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zy2;->d:Lcom/google/android/gms/internal/ads/fz2;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/fz2;->y(Lcom/google/android/gms/internal/ads/fz2;)V

    :cond_1
    return-void
.end method
