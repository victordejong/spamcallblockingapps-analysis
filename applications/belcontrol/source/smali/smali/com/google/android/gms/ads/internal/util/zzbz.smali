.class public final Lcom/google/android/gms/ads/internal/util/zzbz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final view:Landroid/view/View;

.field private zzbrv:Z

.field private zzbwh:Z

.field private zzehf:Landroid/app/Activity;

.field private zzehg:Z

.field private zzehh:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzehi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehf:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->view:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehh:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static zzk(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    return-object p0
.end method

.method private final zzzu()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehg:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehh:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehf:Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzk(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlo()Lcom/google/android/gms/internal/ads/zzbai;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehh:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbai;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehg:Z

    :cond_2
    return-void
.end method

.method private final zzzv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehf:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehg:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehh:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzk(Landroid/app/Activity;)Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehg:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbrv:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbwh:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzu()V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbrv:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzv()V

    return-void
.end method

.method public final zzj(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzehf:Landroid/app/Activity;

    return-void
.end method

.method public final zzzs()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbwh:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbrv:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzu()V

    :cond_0
    return-void
.end method

.method public final zzzt()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/util/zzbz;->zzbwh:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbz;->zzzv()V

    return-void
.end method
