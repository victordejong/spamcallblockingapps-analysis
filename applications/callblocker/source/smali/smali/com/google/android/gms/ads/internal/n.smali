.class final Lcom/google/android/gms/ads/internal/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/ads/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->b(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/n;->a:Lcom/google/android/gms/ads/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/l;->b(Lcom/google/android/gms/ads/internal/l;)Lcom/google/android/gms/internal/ads/ctl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/ctl;->a(Landroid/view/MotionEvent;)V

    .line 4
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
