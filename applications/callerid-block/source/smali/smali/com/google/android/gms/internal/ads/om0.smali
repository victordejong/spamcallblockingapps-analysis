.class public final Lcom/google/android/gms/internal/ads/om0;
.super Lcom/google/android/gms/internal/ads/bb;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/q5;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/google/android/gms/internal/ads/m1;

.field private d:Lcom/google/android/gms/internal/ads/ni0;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ni0;Lcom/google/android/gms/internal/ads/si0;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bb;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/si0;->f()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/si0;->Y()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->c:Lcom/google/android/gms/internal/ads/m1;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/om0;->d:Lcom/google/android/gms/internal/ads/ni0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/om0;->e:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/om0;->f:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/jt;->o0(Lcom/google/android/gms/internal/ads/q5;)V

    :cond_0
    return-void
.end method

.method private final e()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->d:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ni0;->P(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ni0;->F(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_0
    return-void
.end method

.method private final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static final z6(Lcom/google/android/gms/internal/ads/gb;I)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/gb;->E(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final L(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/nm0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/nm0;-><init>(Lcom/google/android/gms/internal/ads/om0;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/om0;->n1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gb;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/m1;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/om0;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->c:Lcom/google/android/gms/internal/ads/m1;

    return-object v0
.end method

.method public final c()V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/om0;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->d:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->d:Lcom/google/android/gms/internal/ads/ni0;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->c:Lcom/google/android/gms/internal/ads/m1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/om0;->e:Z

    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/d6;
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/om0;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->d:Lcom/google/android/gms/internal/ads/ni0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ni0;->l()Lcom/google/android/gms/internal/ads/pi0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->d:Lcom/google/android/gms/internal/ads/ni0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ni0;->l()Lcom/google/android/gms/internal/ads/pi0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pi0;->a()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final n1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gb;)V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/om0;->e:Z

    if-eqz v0, :cond_0

    const-string p1, "Instream ad can not be shown after destroy()."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/om0;->z6(Lcom/google/android/gms/internal/ads/gb;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/om0;->c:Lcom/google/android/gms/internal/ads/m1;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/om0;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string p1, "Instream ad should not be used again."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/om0;->z6(Lcom/google/android/gms/internal/ads/gb;I)V

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/om0;->f:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/om0;->g()V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->A()Lcom/google/android/gms/internal/ads/np;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/np;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->A()Lcom/google/android/gms/internal/ads/np;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/om0;->b:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/np;->b(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/om0;->e()V

    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/gb;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    const-string p1, "can not get video view."

    goto :goto_1

    :cond_4
    const-string p1, "can not get video controller."

    :goto_1
    const-string v0, "Instream internal error: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/om0;->z6(Lcom/google/android/gms/internal/ads/gb;I)V

    return-void
.end method

.method public final onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/om0;->e()V

    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/om0;->e()V

    return-void
.end method

.method public final zza()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v1, Lcom/google/android/gms/internal/ads/mm0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/mm0;-><init>(Lcom/google/android/gms/internal/ads/om0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
