.class public final Lcom/google/android/gms/internal/ads/px;
.super Lcom/google/android/gms/internal/ads/qa;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/qa;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Lcom/google/android/gms/internal/ads/adt;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/adt;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/WindowManager;

.field private final d:Lcom/google/android/gms/internal/ads/ab;

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
.method public constructor <init>(Lcom/google/android/gms/internal/ads/adt;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ab;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/qa;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->g:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->h:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->j:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->k:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->l:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->m:I

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/px;->d:Lcom/google/android/gms/internal/ads/ab;

    const-string p1, "window"

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzj;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->getWidth()I

    move-result v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->getHeight()I

    move-result v2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->K:Lcom/google/android/gms/internal/ads/af;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/afh;->c:I

    :cond_2
    if-nez v2, :cond_3

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/afh;->b:I

    .line 26
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->l:I

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/px;->m:I

    :cond_4
    sub-int v0, p2, v1

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/px;->l:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/px;->m:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/qa;->a(IIII)V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/afe;->b(II)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    .line 34
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    .line 35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->c:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/px;->f:F

    .line 38
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->i:I

    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->g:I

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->h:I

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/ads/internal/util/zzj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzj;->zzf(Landroid/app/Activity;)[I

    move-result-object p1

    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/px;->j:I

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px;->e:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->k:I

    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/px;->g:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->j:I

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/ads/px;->h:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->k:I

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/afh;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget p1, p0, Lcom/google/android/gms/internal/ads/px;->g:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->l:I

    .line 54
    iget p1, p0, Lcom/google/android/gms/internal/ads/px;->h:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/px;->m:I

    goto :goto_2

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/adt;->measure(II)V

    .line 57
    :goto_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/px;->g:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/px;->h:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/px;->j:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/px;->k:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/px;->f:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/px;->i:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/qa;->a(IIIIFI)V

    .line 60
    new-instance p1, Lcom/google/android/gms/internal/ads/py;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/py;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 1005
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "tel:"

    .line 1006
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1007
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ab;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 2004
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/py;->b:Z

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 2008
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms:"

    .line 2009
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2010
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ab;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 3002
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/py;->a:Z

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 63
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ab;->b()Z

    move-result v1

    .line 3006
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/py;->c:Z

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/px;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ab;->a()Z

    move-result v1

    .line 3008
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/py;->d:Z

    .line 3010
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/py;->e:Z

    .line 67
    new-instance v1, Lcom/google/android/gms/internal/ads/pw;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/pw;-><init>(Lcom/google/android/gms/internal/ads/py;Lcom/google/android/gms/internal/ads/pv;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pw;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "onDeviceFeaturesReceived"

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    .line 72
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/adt;->getLocationOnScreen([I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    aget v0, v1, v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/content/Context;I)I

    move-result v0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/px;->b:Landroid/content/Context;

    aget p2, v1, p2

    invoke-virtual {v2, v3, p2}, Lcom/google/android/gms/internal/ads/yq;->b(Landroid/content/Context;I)I

    move-result p2

    .line 76
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/px;->a(II)V

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->isLoggable(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Dispatching Ready Event."

    .line 79
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/px;->a:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->k()Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/qa;->b(Ljava/lang/String;)V

    return-void
.end method
