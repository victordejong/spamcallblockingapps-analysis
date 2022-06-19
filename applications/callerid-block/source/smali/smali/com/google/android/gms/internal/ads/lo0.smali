.class final synthetic Lcom/google/android/gms/internal/ads/lo0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/ro0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ro0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lo0;->b:Lcom/google/android/gms/internal/ads/ro0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lo0;->b:Lcom/google/android/gms/internal/ads/ro0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ro0;->c(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
