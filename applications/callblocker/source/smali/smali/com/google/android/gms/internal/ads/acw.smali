.class final Lcom/google/android/gms/internal/ads/acw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/st;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/acs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/acs;Lcom/google/android/gms/internal/ads/st;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/acw;->b:Lcom/google/android/gms/internal/ads/acs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/acw;->a:Lcom/google/android/gms/internal/ads/st;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/acw;->b:Lcom/google/android/gms/internal/ads/acs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/acw;->a:Lcom/google/android/gms/internal/ads/st;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/acs;->a(Lcom/google/android/gms/internal/ads/acs;Landroid/view/View;Lcom/google/android/gms/internal/ads/st;I)V

    .line 3
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4
    return-void
.end method
