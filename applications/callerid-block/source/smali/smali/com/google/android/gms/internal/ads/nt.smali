.class final Lcom/google/android/gms/internal/ads/nt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/tl;

.field final synthetic c:Lcom/google/android/gms/internal/ads/qt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qt;Lcom/google/android/gms/internal/ads/tl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nt;->c:Lcom/google/android/gms/internal/ads/qt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nt;->b:Lcom/google/android/gms/internal/ads/tl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nt;->c:Lcom/google/android/gms/internal/ads/qt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nt;->b:Lcom/google/android/gms/internal/ads/tl;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/qt;->g(Lcom/google/android/gms/internal/ads/qt;Landroid/view/View;Lcom/google/android/gms/internal/ads/tl;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
