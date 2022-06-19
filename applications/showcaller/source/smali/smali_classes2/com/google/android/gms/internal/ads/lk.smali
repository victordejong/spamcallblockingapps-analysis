.class final Lcom/google/android/gms/internal/ads/lk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/google/android/gms/internal/ads/qk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qk;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->e:Lcom/google/android/gms/internal/ads/qk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lk;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lk;->e:Lcom/google/android/gms/internal/ads/qk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lk;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qk;->b(Landroid/view/View;)V

    return-void
.end method
