.class final Lcom/google/android/gms/internal/ads/eai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ean;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/eah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eah;Lcom/google/android/gms/internal/ads/ean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eai;->b:Lcom/google/android/gms/internal/ads/eah;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eai;->a:Lcom/google/android/gms/internal/ads/ean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eai;->a:Lcom/google/android/gms/internal/ads/ean;

    .line 1025
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ean;->a:Lcom/google/android/gms/internal/ads/dxv;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1027
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ean;->a:Lcom/google/android/gms/internal/ads/dxv;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eai;->b:Lcom/google/android/gms/internal/ads/eah;

    .line 1262
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eai;->b:Lcom/google/android/gms/internal/ads/eah;

    .line 2262
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/ebb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ebb;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
