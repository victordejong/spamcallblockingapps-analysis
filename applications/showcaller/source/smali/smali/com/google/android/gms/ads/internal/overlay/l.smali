.class public Lcom/google/android/gms/ads/internal/overlay/l;
.super Lcom/google/android/gms/internal/ads/jb0;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/y;


# static fields
.field static final d:I


# instance fields
.field protected final e:Landroid/app/Activity;

.field f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field g:Lcom/google/android/gms/internal/ads/wn0;

.field h:Lcom/google/android/gms/ads/internal/overlay/h;

.field i:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field j:Z

.field k:Landroid/widget/FrameLayout;

.field l:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field m:Z

.field n:Z

.field o:Lcom/google/android/gms/ads/internal/overlay/g;

.field p:Z

.field private final q:Ljava/lang/Object;

.field private r:Ljava/lang/Runnable;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/l;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jb0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->u:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->v:Z

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->w:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    return-void
.end method

.method private final I6(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzj;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/ads/internal/util/e;->o(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzj;->j:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->M0:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    const/16 v0, 0x1706

    goto :goto_2

    :cond_4
    const/16 v0, 0x1504

    goto :goto_2

    :cond_5
    const/16 v0, 0x100

    .line 7
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_6
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_8

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_7
    return-void

    .line 12
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static final J6(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->s()Lcom/google/android/gms/internal/ads/gb0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/gb0;->e(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final F6()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->v:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/h;->d:Landroid/content/Context;

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/wn0;->s0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/wn0;->Y0(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/h;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    iget v4, v3, Lcom/google/android/gms/ads/internal/overlay/h;->a:I

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/h;->b:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    invoke-virtual {v0, v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 9
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/wn0;->s0(Landroid/content/Context;)V

    .line 10
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/o;->a6(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->t0()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/l;->J6(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final G6()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/l;->H6()V

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/g;->e:Z

    return-void
.end method

.method protected final H6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->W()V

    return-void
.end method

.method public final I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->s:Z

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->r:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 2
    sget-object v2, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->r:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final J4(Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->n3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->L0:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/p;

    .line 6
    invoke-direct {v4}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>()V

    const/16 v5, 0x32

    iput v5, v4, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    if-eq v3, v1, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    iput v5, v4, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    if-eq v3, v1, :cond_3

    move v2, v0

    :cond_3
    iput v2, v4, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    iput v0, v4, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 7
    invoke-direct {v0, v2, v4, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/y;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/ads/internal/overlay/zzq;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    .line 8
    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eq v3, v1, :cond_4

    const/16 v1, 0x9

    goto :goto_3

    :cond_4
    const/16 v1, 0xb

    .line 10
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 11
    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/l;->K6(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/ads/internal/overlay/zzq;

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final K6(ZZ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->J0:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzj;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->K0:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzj;->l:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/ra0;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    const-string v5, "useCustomClose"

    .line 6
    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/ra0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 7
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/ra0;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 8
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->a(Z)V

    :cond_5
    return-void
.end method

.method public final L6(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    const/high16 v0, -0x1000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public final M6(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->m4:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->n4:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->o4:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->p4:Lcom/google/android/gms/internal/ads/cw;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 11
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/ads/ph0;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ph0;->l(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final N6(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->t:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Z

    return-void
.end method

.method protected final O6(Z)V
    .locals 27

    move-object/from16 v9, p0

    .line 1
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->t:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 3
    iget-object v2, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/jp0;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    if-eqz v2, :cond_6

    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 6
    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 7
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    .line 8
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 9
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    .line 10
    :cond_6
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    .line 11
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 12
    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:I

    invoke-virtual {v9, v4}, Lcom/google/android/gms/ads/internal/overlay/l;->M6(I)V

    const/high16 v4, 0x1000000

    .line 13
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->a(Ljava/lang/String;)V

    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    if-nez v0, :cond_7

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    const/high16 v4, -0x1000000

    .line 15
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_3

    .line 16
    :cond_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    sget v4, Lcom/google/android/gms/ads/internal/overlay/l;->d:I

    .line 17
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 18
    :goto_3
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    .line 19
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v1, v9, Lcom/google/android/gms/ads/internal/overlay/l;->t:Z

    if-eqz p1, :cond_e

    .line 20
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/ads/ho0;

    iget-object v10, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 21
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->o()Lcom/google/android/gms/internal/ads/mp0;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_8
    move-object v11, v3

    :goto_4
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 22
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_9

    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->E()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_9
    move-object v12, v3

    :goto_5
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 24
    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_a

    .line 26
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->h()Lcom/google/android/gms/ads/internal/a;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_6

    :cond_a
    move-object/from16 v20, v3

    :goto_6
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/pm;->a()Lcom/google/android/gms/internal/ads/pm;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move v14, v2

    move-object/from16 v17, v4

    .line 28
    invoke-static/range {v10 .. v23}, Lcom/google/android/gms/internal/ads/ho0;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mp0;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/u;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/zzcgz;Lcom/google/android/gms/internal/ads/ax;Lcom/google/android/gms/ads/internal/k;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)Lcom/google/android/gms/internal/ads/wn0;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v10

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->s:Lcom/google/android/gms/internal/ads/m10;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Lcom/google/android/gms/internal/ads/o10;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Lcom/google/android/gms/ads/internal/overlay/u;

    .line 30
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_b

    .line 31
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jp0;->c()Lcom/google/android/gms/ads/internal/b;

    move-result-object v3

    :cond_b
    move-object/from16 v18, v3

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 32
    invoke-interface/range {v10 .. v26}, Lcom/google/android/gms/internal/ads/jp0;->q0(Lcom/google/android/gms/internal/ads/kq;Lcom/google/android/gms/internal/ads/m10;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/o10;Lcom/google/android/gms/ads/internal/overlay/u;ZLcom/google/android/gms/internal/ads/q20;Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/sa0;Lcom/google/android/gms/internal/ads/hf0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/bp2;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Lcom/google/android/gms/internal/ads/o20;Lcom/google/android/gms/internal/ads/qa1;)V

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/e;

    invoke-direct {v3, v9}, Lcom/google/android/gms/ads/internal/overlay/e;-><init>(Lcom/google/android/gms/ads/internal/overlay/l;)V

    .line 34
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/jp0;->f0(Lcom/google/android/gms/internal/ads/hp0;)V

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 35
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 36
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/wn0;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    .line 37
    :cond_c
    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:Ljava/lang/String;

    if-eqz v12, :cond_d

    iget-object v10, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 38
    iget-object v11, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v13, "text/html"

    const-string v14, "UTF-8"

    invoke-interface/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/wn0;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 40
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_f

    .line 41
    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/wn0;->H0(Lcom/google/android/gms/ads/internal/overlay/l;)V

    goto :goto_8

    .line 42
    :cond_d
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzf;

    const-string v1, "No URL or HTML to display in ad overlay."

    .line 43
    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Error obtaining webview."

    .line 44
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzf;

    const-string v1, "Could not obtain webview for the overlay."

    .line 45
    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_e
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 47
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 48
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/wn0;->s0(Landroid/content/Context;)V

    .line 49
    :cond_f
    :goto_8
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 50
    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/wn0;->J0(Lcom/google/android/gms/ads/internal/overlay/l;)V

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 51
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_10

    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->t0()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/l;->J6(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    :cond_10
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 53
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 54
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_11

    .line 56
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    if-eqz v0, :cond_12

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 57
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->R()V

    :cond_12
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 58
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 59
    invoke-virtual {v0, v4, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    :cond_13
    if-nez p1, :cond_14

    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->p:Z

    if-nez v0, :cond_14

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/l;->H6()V

    :cond_14
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 61
    iget v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    if-eq v4, v3, :cond_16

    .line 62
    invoke-virtual {v9, v2}, Lcom/google/android/gms/ads/internal/overlay/l;->J4(Z)V

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 63
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->L0()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 64
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/l;->K6(ZZ)V

    :cond_15
    return-void

    :cond_16
    iget-object v1, v9, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 65
    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->x:Lcom/google/android/gms/ads/internal/util/u0;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->u:Lcom/google/android/gms/internal/ads/dw1;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->v:Lcom/google/android/gms/internal/ads/rn1;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->w:Lcom/google/android/gms/internal/ads/jo2;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->t:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->y:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/lw1;->F6(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/l;Lcom/google/android/gms/ads/internal/util/u0;Lcom/google/android/gms/internal/ads/dw1;Lcom/google/android/gms/internal/ads/rn1;Lcom/google/android/gms/internal/ads/jo2;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_17
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzf;

    const-string v1, "Invalid activity, no window available."

    .line 67
    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final P6()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->u:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->u:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    add-int/lit8 v1, v1, -0x1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wn0;->x0(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->q:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->s:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/wn0;->U0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->j3:Lcom/google/android/gms/internal/ads/cw;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->v:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/overlay/o;->e()V

    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/f;

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Lcom/google/android/gms/ads/internal/overlay/l;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->r:Ljava/lang/Runnable;

    .line 10
    sget-object v2, Lcom/google/android/gms/ads/internal/util/c2;->a:Lcom/google/android/gms/internal/ads/au2;

    sget-object v3, Lcom/google/android/gms/internal/ads/kw;->I0:Lcom/google/android/gms/internal/ads/cw;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 13
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/l;->F6()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final S(Lcom/google/android/gms/dynamic/a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/l;->I6(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final V1(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    return-void
.end method

.method public a0(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 2
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    const/4 v2, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 3
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k0(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_e

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/internal/ads/zzcgz;

    .line 4
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzcgz;->f:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_1

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 5
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 6
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->w:Z

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 7
    iget-object v4, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->r:Lcom/google/android/gms/ads/internal/zzj;

    const/4 v5, 0x5

    if-eqz v4, :cond_3

    iget-boolean v6, v4, Lcom/google/android/gms/ads/internal/zzj;->d:Z

    iput-boolean v6, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    if-eqz v6, :cond_5

    goto :goto_1

    .line 8
    :cond_3
    iget v6, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    if-ne v6, v5, :cond_4

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    .line 9
    :goto_1
    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    if-eq v3, v5, :cond_5

    iget v3, v4, Lcom/google/android/gms/ads/internal/zzj;->i:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/k;

    const/4 v4, 0x0

    .line 10
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/k;-><init>(Lcom/google/android/gms/ads/internal/overlay/l;Lcom/google/android/gms/ads/internal/overlay/i;)V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/util/b0;->c()Lcom/google/android/gms/internal/ads/r03;

    goto :goto_2

    .line 11
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->n:Z

    :cond_5
    :goto_2
    if-nez p1, :cond_9

    .line 12
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->w:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->A:Lcom/google/android/gms/internal/ads/l31;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/l31;->c()V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz p1, :cond_7

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/o;->y4()V

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 17
    iget v3, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    if-eq v3, v1, :cond_9

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/ads/kq;

    if-eqz p1, :cond_8

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/kq;->z0()V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->B:Lcom/google/android/gms/internal/ads/qa1;

    if-eqz p1, :cond_9

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/qa1;->b()V

    :cond_9
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 22
    iget-object v6, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->q:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/internal/ads/zzcgz;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzcgz;->d:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->z:Ljava/lang/String;

    invoke-direct {p1, v3, v6, v7, v4}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    const/16 v3, 0x3e8

    .line 23
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/internal/util/e;->q(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 25
    iget v3, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    if-eq v3, v1, :cond_d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    const/4 p1, 0x3

    if-eq v3, p1, :cond_b

    if-ne v3, v5, :cond_a

    .line 26
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/l;->O6(Z)V

    return-void

    .line 27
    :cond_a
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzf;

    const-string v0, "Could not determine ad overlay type."

    .line 28
    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_b
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/l;->O6(Z)V

    return-void

    .line 30
    :cond_c
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/h;

    .line 31
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Lcom/google/android/gms/internal/ads/wn0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/overlay/h;-><init>(Lcom/google/android/gms/internal/ads/wn0;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/l;->O6(Z)V

    return-void

    .line 33
    :cond_d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/l;->O6(Z)V

    return-void

    .line 34
    :cond_e
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzf;

    const-string v0, "Could not get info for ad overlay."

    .line 35
    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzf; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/l;->M6(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    .line 2
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->t:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Landroid/widget/FrameLayout;

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->k:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->l:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->j:Z

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->a()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->h0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->onResume()V

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->a3()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/l;->I6(Landroid/content/res/Configuration;)V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l3:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->h0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->onResume()V

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/l;->c()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->f:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->m2()V

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l3:Lcom/google/android/gms/internal/ads/cw;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->onPause()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/l;->P6()V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->D()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/l;->P6()V

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->l3:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->e:Landroid/app/Activity;

    .line 4
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->onPause()V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/l;->P6()V

    return-void
.end method

.method public final m0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->m:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->t:Z

    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->o:Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->i:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/l;->J4(Z)V

    return-void
.end method

.method public final zzg()Z
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->x:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kw;->p6:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->goBack()V

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->a1()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/l;->g:Lcom/google/android/gms/internal/ads/wn0;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    .line 9
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/s40;->D0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return v0
.end method

.method public final zzi()V
    .locals 0

    return-void
.end method
