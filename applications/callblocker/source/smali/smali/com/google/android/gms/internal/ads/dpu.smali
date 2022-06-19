.class final Lcom/google/android/gms/internal/ads/dpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dqa;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dpt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dpt;Lcom/google/android/gms/internal/ads/dqa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dpu;->b:Lcom/google/android/gms/internal/ads/dpt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dpu;->a:Lcom/google/android/gms/internal/ads/dqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpu;->a:Lcom/google/android/gms/internal/ads/dqa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqa;->a()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpu;->b:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dpt;->d(Lcom/google/android/gms/internal/ads/dpt;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dpu;->b:Lcom/google/android/gms/internal/ads/dpt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dpt;->d(Lcom/google/android/gms/internal/ads/dpt;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dqn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dqn;->b()V

    .line 6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7
    :cond_0
    return-void
.end method
