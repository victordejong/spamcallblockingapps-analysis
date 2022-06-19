.class public final Lcom/google/android/gms/internal/ads/h9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/util/SparseBooleanArray;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/h9;->a:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/h9;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/h9;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/h9;->a:Landroid/util/SparseBooleanArray;

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/j9;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/h9;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/h9;->b:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/j9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/h9;->a:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/j9;-><init>(Landroid/util/SparseBooleanArray;Lcom/google/android/gms/internal/ads/i9;)V

    return-object v0
.end method
