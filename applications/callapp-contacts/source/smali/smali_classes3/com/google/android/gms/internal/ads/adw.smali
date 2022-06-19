.class final Lcom/google/android/gms/internal/ads/adw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/vy;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ads;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ads;Lcom/google/android/gms/internal/ads/vy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/adw;->b:Lcom/google/android/gms/internal/ads/ads;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/adw;->a:Lcom/google/android/gms/internal/ads/vy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/adw;->b:Lcom/google/android/gms/internal/ads/ads;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/adw;->a:Lcom/google/android/gms/internal/ads/vy;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/ads;->a(Lcom/google/android/gms/internal/ads/ads;Landroid/view/View;Lcom/google/android/gms/internal/ads/vy;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
