.class final synthetic Lcom/google/android/gms/internal/ads/bil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bil;->a:Lcom/google/android/gms/internal/ads/bih;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bil;->a:Lcom/google/android/gms/internal/ads/bih;

    .line 1053
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/bih;->e:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zza;->recordClick()V

    .line 1054
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/bih;->f:Lcom/google/android/gms/internal/ads/vy;

    if-eqz p2, :cond_0

    .line 1055
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bih;->f:Lcom/google/android/gms/internal/ads/vy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/vy;->c()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
