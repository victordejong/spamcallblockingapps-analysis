.class final Lcom/google/android/gms/internal/ads/ao0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/hf0;

.field final synthetic e:Lcom/google/android/gms/internal/ads/do0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/do0;Lcom/google/android/gms/internal/ads/hf0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ao0;->e:Lcom/google/android/gms/internal/ads/do0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ao0;->d:Lcom/google/android/gms/internal/ads/hf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao0;->e:Lcom/google/android/gms/internal/ads/do0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ao0;->d:Lcom/google/android/gms/internal/ads/hf0;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/do0;->S(Lcom/google/android/gms/internal/ads/do0;Landroid/view/View;Lcom/google/android/gms/internal/ads/hf0;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
