.class public final Lcom/google/android/gms/internal/ads/np;
.super Lcom/google/android/gms/internal/ads/nt;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/nt;",
        "Lcom/google/android/gms/internal/ads/fa",
        "<",
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/act;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/WindowManager;

.field private final d:Lcom/google/android/gms/internal/ads/ecp;

.field private e:Landroid/util/DisplayMetrics;

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/act;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ecp;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->g:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->h:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->j:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->k:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->l:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->m:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/np;->d:Lcom/google/android/gms/internal/ads/ecp;

    .line 11
    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np;->c:Landroid/view/WindowManager;

    .line 12
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ve;->c(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    move v1, v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getWidth()I

    move-result v3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->getHeight()I

    move-result v2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->H:Lcom/google/android/gms/internal/ads/ect;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    iget v3, v0, Lcom/google/android/gms/internal/ads/aei;->b:I

    .line 24
    :cond_2
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/aei;->a:I

    .line 26
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/np;->l:I

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->m:I

    .line 28
    :cond_3
    sub-int v0, p2, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/np;->l:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/np;->m:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/nt;->b(IIII)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aef;->a(II)V

    .line 30
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/act;

    .line 34
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/np;->f:F

    .line 38
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->i:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->g:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->h:I

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->f()Landroid/app/Activity;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    .line 46
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/np;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->j:I

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/np;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->k:I

    .line 52
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    iget v0, p0, Lcom/google/android/gms/internal/ads/np;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->l:I

    .line 54
    iget v0, p0, Lcom/google/android/gms/internal/ads/np;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->m:I

    .line 57
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/np;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/np;->h:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/np;->j:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/np;->k:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/np;->f:F

    iget v6, p0, Lcom/google/android/gms/internal/ads/np;->i:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/nt;->a(IIIIFI)V

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/nq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/nq;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->d:Lcom/google/android/gms/internal/ads/ecp;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ecp;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nq;->b(Z)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->d:Lcom/google/android/gms/internal/ads/ecp;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ecp;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nq;->a(Z)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->d:Lcom/google/android/gms/internal/ads/ecp;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ecp;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nq;->c(Z)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->d:Lcom/google/android/gms/internal/ads/ecp;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ecp;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nq;->d(Z)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/nq;->e(Z)Lcom/google/android/gms/internal/ads/nq;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/no;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/no;-><init>(Lcom/google/android/gms/internal/ads/nq;Lcom/google/android/gms/internal/ads/nn;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    const-string/jumbo v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/no;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/act;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 71
    new-array v0, v9, [I

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/act;->getLocationOnScreen([I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    aget v3, v0, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/content/Context;I)I

    move-result v1

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/np;->b:Landroid/content/Context;

    aget v0, v0, v8

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/content/Context;I)I

    move-result v0

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/np;->a(II)V

    .line 78
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/uu;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string/jumbo v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->j()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/nt;->b(Ljava/lang/String;)V

    .line 81
    return-void

    .line 48
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/app/Activity;)[I

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/np;->j:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np;->e:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/xr;->b(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/np;->k:I

    goto/16 :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np;->a:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/ads/act;->measure(II)V

    goto/16 :goto_1
.end method
