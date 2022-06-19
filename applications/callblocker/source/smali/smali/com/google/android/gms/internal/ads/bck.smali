.class public final Lcom/google/android/gms/internal/ads/bck;
.super Lcom/google/android/gms/internal/ads/gs;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/bi;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/google/android/gms/internal/ads/eba;

.field private c:Lcom/google/android/gms/internal/ads/aym;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aym;Lcom/google/android/gms/internal/ads/ayx;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gs;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ayx;->m()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ayx;->b()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/eba;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bck;->d:Z

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bck;->e:Z

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ayx;->v()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/bi;)V

    .line 9
    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/gu;I)V
    .locals 2

    .prologue
    .line 82
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/gu;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final f()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private final g()V
    .locals 5

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    .line 79
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/aym;->b(Landroid/view/View;)Z

    move-result v4

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/aym;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/bcj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bcj;-><init>(Lcom/google/android/gms/internal/ads/bck;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/bcm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bcm;-><init>(Lcom/google/android/gms/internal/ads/bck;)V

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/bck;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gu;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/gu;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 10
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bck;->d:Z

    if-eqz v0, :cond_0

    .line 12
    const-string/jumbo v0, "Instream ad can not be shown after destroy()."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/bck;->a(Lcom/google/android/gms/internal/ads/gu;I)V

    .line 37
    :goto_0
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/eba;

    if-nez v0, :cond_4

    .line 16
    :cond_1
    const-string/jumbo v1, "Instream internal error: "

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    if-nez v0, :cond_2

    const-string/jumbo v0, "can not get video view."

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/bck;->a(Lcom/google/android/gms/internal/ads/gu;I)V

    goto :goto_0

    .line 17
    :cond_2
    const-string/jumbo v0, "can not get video controller."

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bck;->e:Z

    if-eqz v0, :cond_5

    .line 22
    const-string/jumbo v0, "Instream ad should not be used again."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 23
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/bck;->a(Lcom/google/android/gms/internal/ads/gu;I)V

    goto :goto_0

    .line 25
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/bck;->e:Z

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bck;->f()V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->z()Lcom/google/android/gms/internal/ads/yw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/yw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->z()Lcom/google/android/gms/internal/ads/yw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/yw;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bck;->g()V

    .line 33
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/gu;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/bck;->d:Z

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/eba;

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string/jumbo v0, "#008 Must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bck;->f()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->k()V

    .line 58
    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    .line 59
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->a:Landroid/view/View;

    .line 60
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->b:Lcom/google/android/gms/internal/ads/eba;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/bck;->d:Z

    .line 62
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/bt;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    const-string/jumbo v1, "#008 Must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/String;)V

    .line 48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/bck;->d:Z

    if-eqz v1, :cond_1

    .line 49
    const-string/jumbo v1, "getVideoController: Instream ad should not be used after destroyed"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;)V

    .line 53
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aym;->m()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bck;->c:Lcom/google/android/gms/internal/ads/aym;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aym;->m()Lcom/google/android/gms/internal/ads/ays;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ays;->a()Lcom/google/android/gms/internal/ads/bt;

    move-result-object v0

    goto :goto_0
.end method

.method final synthetic e()V
    .locals 2

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bck;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onGlobalLayout()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bck;->g()V

    .line 70
    return-void
.end method

.method public final onScrollChanged()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/bck;->g()V

    .line 72
    return-void
.end method
