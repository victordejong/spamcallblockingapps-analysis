.class final Lcom/google/android/gms/ads/internal/overlay/j;
.super Landroid/widget/RelativeLayout;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field a:Z

.field private b:Lcom/google/android/gms/internal/ads/vv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/vv;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/vv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/internal/ads/vv;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/internal/ads/vv;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/vv;->b(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->a:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/j;->b:Lcom/google/android/gms/internal/ads/vv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/vv;->a(Landroid/view/MotionEvent;)V

    .line 7
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
