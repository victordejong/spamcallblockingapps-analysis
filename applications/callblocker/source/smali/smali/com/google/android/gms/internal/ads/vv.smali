.class public final Lcom/google/android/gms/internal/ads/vv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/PointF;

.field private i:Landroid/graphics/PointF;

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/vy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vy;-><init>(Lcom/google/android/gms/internal/ads/vv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->k:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/vv;->g:I

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->a()Landroid/os/Looper;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->q()Lcom/google/android/gms/internal/ads/xc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/xc;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->j:Landroid/os/Handler;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/vv;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vv;->b:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 88
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final a(FFFF)Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/vv;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->h:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p2

    .line 48
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/vv;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p3

    .line 49
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/vv;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->i:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, p4

    .line 50
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/vv;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 52
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 54
    const-string/jumbo v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    const-string/jumbo v0, "Creative Preview (Enabled)"

    move-object v1, v0

    .line 59
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wf;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const-string/jumbo v0, "Troubleshooting (Enabled)"

    .line 62
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    const-string/jumbo v3, "Ad Information"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/vv;->a(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v3

    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-static {v2, v1, v4}, Lcom/google/android/gms/internal/ads/vv;->a(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v1

    .line 66
    const/4 v4, 0x1

    .line 67
    invoke-static {v2, v0, v4}, Lcom/google/android/gms/internal/ads/vv;->a(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v4

    .line 68
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/vj;->d()I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 70
    const-string/jumbo v0, "Select a Debug Mode"

    .line 71
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v2, Lcom/google/android/gms/internal/ads/vx;

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/google/android/gms/internal/ads/vx;-><init>(Lcom/google/android/gms/internal/ads/vv;III)V

    .line 73
    invoke-virtual {v6, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    const-string/jumbo v0, "Creative Preview"

    move-object v1, v0

    goto :goto_1

    .line 61
    :cond_2
    const-string/jumbo v0, "Troubleshooting"
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method final synthetic a(IIILandroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 115
    if-ne p5, p1, :cond_4

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 118
    const-string/jumbo v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->b:Ljava/lang/String;

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 122
    const-string/jumbo v1, "\\+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ve;->b(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    .line 126
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " = "

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 130
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\n\n"

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 136
    :goto_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    const-string/jumbo v2, "Ad Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string/jumbo v2, "Share"

    new-instance v3, Lcom/google/android/gms/internal/ads/wa;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/wa;-><init>(Lcom/google/android/gms/internal/ads/vv;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string/jumbo v0, "Close"

    sget-object v2, Lcom/google/android/gms/internal/ads/vz;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 134
    :cond_3
    const-string/jumbo v0, "No debug information"

    goto :goto_2

    .line 144
    :cond_4
    if-ne p5, p2, :cond_5

    .line 146
    const-string/jumbo v0, "Debug mode [Creative Preview] selected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/wc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wc;-><init>(Lcom/google/android/gms/internal/ads/vv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 149
    :cond_5
    if-ne p5, p3, :cond_0

    .line 151
    const-string/jumbo v0, "Debug mode [Troubleshooting] selected."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/wb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/wb;-><init>(Lcom/google/android/gms/internal/ads/vv;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 16
    if-nez v0, :cond_1

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->h:Landroid/graphics/PointF;

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    iget v5, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    if-eq v5, v9, :cond_0

    .line 21
    iget v5, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    if-nez v5, :cond_2

    if-ne v0, v6, :cond_2

    .line 22
    iput v6, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    .line 23
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->i:Landroid/graphics/PointF;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vv;->k:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bW:Lcom/google/android/gms/internal/ads/ect;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 27
    :cond_2
    iget v5, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    if-ne v5, v6, :cond_0

    .line 29
    if-eq v3, v7, :cond_4

    .line 43
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 44
    iput v9, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 31
    :cond_4
    if-ne v0, v7, :cond_7

    move v3, v2

    move v0, v2

    .line 32
    :goto_2
    if-ge v3, v4, :cond_6

    .line 34
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v5

    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    .line 36
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v7

    .line 37
    invoke-virtual {p1, v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v8

    .line 38
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/vv;->a(FFFF)Z

    move-result v5

    if-nez v5, :cond_5

    move v0, v1

    .line 40
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 41
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/vv;->a(FFFF)Z

    move-result v2

    if-eqz v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv;->c:Ljava/lang/String;

    .line 81
    return-void
.end method

.method final synthetic a(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "text/plain"

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.TEXT"

    .line 111
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "Share via"

    .line 112
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method final synthetic b()V
    .locals 5

    .prologue
    .line 105
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vv;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/vv;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv;->d:Ljava/lang/String;

    .line 83
    return-void
.end method

.method final synthetic c()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->m()Lcom/google/android/gms/internal/ads/wf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vv;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/vv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/wf;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv;->b:Ljava/lang/String;

    .line 85
    return-void
.end method

.method final synthetic d()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/vv;->f:I

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/vv;->a()V

    .line 156
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vv;->e:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "{Dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->b:Ljava/lang/String;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",DebugSignal: "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->e:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",AFMA Version: "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->d:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",Ad Unit ID: "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vv;->c:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method
