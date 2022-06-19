.class final synthetic Lcom/google/android/gms/internal/ads/beh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bef;

.field private final b:Landroid/view/WindowManager;

.field private final c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bef;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/beh;->a:Lcom/google/android/gms/internal/ads/bef;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/beh;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/beh;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/beh;->a:Lcom/google/android/gms/internal/ads/bef;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/beh;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/beh;->c:Landroid/view/View;

    check-cast p1, Lcom/google/android/gms/internal/ads/adt;

    const-string v2, "Hide native ad policy validator overlay."

    .line 1081
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 1082
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1084
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1085
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->destroy()V

    .line 1086
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 1087
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/bef;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1088
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/bef;->c:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    return-void
.end method
