.class final Lcom/google/android/gms/internal/ads/zf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/cg;

.field final synthetic e:Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eg;Lcom/google/android/gms/internal/ads/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zf;->e:Lcom/google/android/gms/internal/ads/eg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zf;->d:Lcom/google/android/gms/internal/ads/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->d:Lcom/google/android/gms/internal/ads/cg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cg;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf;->e:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/eg;->z(Lcom/google/android/gms/internal/ads/eg;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zf;->e:Lcom/google/android/gms/internal/ads/eg;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/eg;->z(Lcom/google/android/gms/internal/ads/eg;)Landroid/util/SparseArray;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/sg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/sg;->g()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
