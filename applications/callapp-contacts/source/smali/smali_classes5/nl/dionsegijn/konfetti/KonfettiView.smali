.class public Lnl/dionsegijn/konfetti/KonfettiView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/dionsegijn/konfetti/KonfettiView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u00002\u00020\u0001:\u0001#B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u0016\u001a\u00020\u0013J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012J\u0006\u0010\u0018\u001a\u00020\u0019J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u0006\u0010\u001e\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0013J\u000e\u0010!\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0013J\u0006\u0010\"\u001a\u00020\u001bR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lnl/dionsegijn/konfetti/KonfettiView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "onParticleSystemUpdateListener",
        "Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;",
        "getOnParticleSystemUpdateListener",
        "()Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;",
        "setOnParticleSystemUpdateListener",
        "(Lnl/dionsegijn/konfetti/listeners/OnParticleSystemUpdateListener;)V",
        "systems",
        "",
        "Lnl/dionsegijn/konfetti/ParticleSystem;",
        "timer",
        "Lnl/dionsegijn/konfetti/KonfettiView$TimerIntegration;",
        "build",
        "getActiveSystems",
        "isActive",
        "",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "reset",
        "start",
        "particleSystem",
        "stop",
        "stopGracefully",
        "TimerIntegration",
        "konfetti_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnl/dionsegijn/konfetti/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lnl/dionsegijn/konfetti/b/a;

.field private c:Lnl/dionsegijn/konfetti/KonfettiView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 29
    new-instance p1, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {p1}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 29
    new-instance p1, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {p1}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    .line 29
    new-instance p1, Lnl/dionsegijn/konfetti/KonfettiView$a;

    invoke-direct {p1}, Lnl/dionsegijn/konfetti/KonfettiView$a;-><init>()V

    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v3, v0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    .line 1117
    iget-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    .line 1119
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1120
    iget-wide v8, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    sub-long v8, v4, v8

    long-to-float v8, v8

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    .line 1121
    iput-wide v4, v3, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v8, v3

    .line 52
    iget-object v4, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_0
    if-ltz v4, :cond_14

    .line 53
    iget-object v9, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnl/dionsegijn/konfetti/b;

    .line 55
    invoke-virtual {v9}, Lnl/dionsegijn/konfetti/b;->a()Lnl/dionsegijn/konfetti/a/b;

    move-result-object v10

    .line 2028
    iget-wide v10, v10, Lnl/dionsegijn/konfetti/a/b;->e:J

    .line 2126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 3034
    iget-object v10, v9, Lnl/dionsegijn/konfetti/b;->f:Lnl/dionsegijn/konfetti/models/ConfettiConfig;

    invoke-virtual {v10}, Lnl/dionsegijn/konfetti/models/ConfettiConfig;->getDelay()J

    move-result-wide v10

    const/4 v14, 0x0

    cmp-long v15, v12, v10

    if-ltz v15, :cond_d

    .line 57
    invoke-virtual {v9}, Lnl/dionsegijn/konfetti/b;->a()Lnl/dionsegijn/konfetti/a/b;

    move-result-object v10

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3077
    iget-boolean v11, v10, Lnl/dionsegijn/konfetti/a/b;->a:Z

    if-eqz v11, :cond_1

    iget-object v11, v10, Lnl/dionsegijn/konfetti/a/b;->d:Lnl/dionsegijn/konfetti/a/a;

    invoke-virtual {v11, v8}, Lnl/dionsegijn/konfetti/a/a;->a(F)V

    .line 3079
    :cond_1
    iget-object v11, v10, Lnl/dionsegijn/konfetti/a/b;->b:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_1
    if-ltz v11, :cond_c

    .line 3080
    iget-object v12, v10, Lnl/dionsegijn/konfetti/a/b;->b:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnl/dionsegijn/konfetti/a;

    .line 3081
    iget-object v13, v10, Lnl/dionsegijn/konfetti/a/b;->c:Lnl/dionsegijn/konfetti/models/Vector;

    const-string v15, "force"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4056
    iget-object v15, v12, Lnl/dionsegijn/konfetti/a;->o:Lnl/dionsegijn/konfetti/models/Vector;

    iget v5, v12, Lnl/dionsegijn/konfetti/a;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v5, v6, v5

    invoke-virtual {v15, v13, v5}, Lnl/dionsegijn/konfetti/models/Vector;->addScaled(Lnl/dionsegijn/konfetti/models/Vector;F)V

    .line 3082
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4065
    iget-boolean v5, v12, Lnl/dionsegijn/konfetti/a;->q:Z

    if-eqz v5, :cond_3

    iget-object v5, v12, Lnl/dionsegijn/konfetti/a;->o:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v5}, Lnl/dionsegijn/konfetti/models/Vector;->getY()F

    move-result v5

    iget v7, v12, Lnl/dionsegijn/konfetti/a;->r:F

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_2

    iget v5, v12, Lnl/dionsegijn/konfetti/a;->r:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpg-float v5, v5, v7

    if-nez v5, :cond_3

    .line 4066
    :cond_2
    iget-object v5, v12, Lnl/dionsegijn/konfetti/a;->p:Lnl/dionsegijn/konfetti/models/Vector;

    iget-object v7, v12, Lnl/dionsegijn/konfetti/a;->o:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v5, v7}, Lnl/dionsegijn/konfetti/models/Vector;->add(Lnl/dionsegijn/konfetti/models/Vector;)V

    .line 4069
    :cond_3
    iget-boolean v5, v12, Lnl/dionsegijn/konfetti/a;->s:Z

    if-eqz v5, :cond_4

    .line 4070
    iget-object v5, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    iget-object v7, v12, Lnl/dionsegijn/konfetti/a;->p:Lnl/dionsegijn/konfetti/models/Vector;

    iget v13, v12, Lnl/dionsegijn/konfetti/a;->h:F

    mul-float v13, v13, v8

    iget v15, v12, Lnl/dionsegijn/konfetti/a;->a:F

    mul-float v13, v13, v15

    invoke-virtual {v5, v7, v13}, Lnl/dionsegijn/konfetti/models/Vector;->addScaled(Lnl/dionsegijn/konfetti/models/Vector;F)V

    goto :goto_2

    .line 4072
    :cond_4
    iget-object v5, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    iget-object v7, v12, Lnl/dionsegijn/konfetti/a;->p:Lnl/dionsegijn/konfetti/models/Vector;

    iget v13, v12, Lnl/dionsegijn/konfetti/a;->h:F

    mul-float v13, v13, v8

    invoke-virtual {v5, v7, v13}, Lnl/dionsegijn/konfetti/models/Vector;->addScaled(Lnl/dionsegijn/konfetti/models/Vector;F)V

    .line 4075
    :goto_2
    iget-wide v6, v12, Lnl/dionsegijn/konfetti/a;->m:J

    move v15, v4

    const-wide/16 v3, 0x0

    cmp-long v16, v6, v3

    if-gtz v16, :cond_6

    .line 4087
    iget-boolean v6, v12, Lnl/dionsegijn/konfetti/a;->n:Z

    if-eqz v6, :cond_5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v6, v6, v8

    .line 4088
    iget v7, v12, Lnl/dionsegijn/konfetti/a;->h:F

    mul-float v6, v6, v7

    .line 4089
    iget v7, v12, Lnl/dionsegijn/konfetti/a;->i:I

    float-to-int v6, v6

    sub-int/2addr v7, v6

    invoke-static {v7, v14}, Lkotlin/f/d;->c(II)I

    move-result v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    .line 4087
    :goto_3
    iput v6, v12, Lnl/dionsegijn/konfetti/a;->i:I

    goto :goto_4

    .line 4076
    :cond_6
    iget-wide v6, v12, Lnl/dionsegijn/konfetti/a;->m:J

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float v5, v8, v13

    float-to-long v13, v5

    sub-long/2addr v6, v13

    iput-wide v6, v12, Lnl/dionsegijn/konfetti/a;->m:J

    .line 4078
    :goto_4
    iget v5, v12, Lnl/dionsegijn/konfetti/a;->e:F

    mul-float v5, v5, v8

    iget v6, v12, Lnl/dionsegijn/konfetti/a;->h:F

    mul-float v5, v5, v6

    .line 4079
    iget v6, v12, Lnl/dionsegijn/konfetti/a;->f:F

    add-float/2addr v6, v5

    iput v6, v12, Lnl/dionsegijn/konfetti/a;->f:F

    .line 4080
    iget v6, v12, Lnl/dionsegijn/konfetti/a;->f:F

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v13, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7

    iput v13, v12, Lnl/dionsegijn/konfetti/a;->f:F

    .line 4082
    :cond_7
    iget v6, v12, Lnl/dionsegijn/konfetti/a;->g:F

    sub-float/2addr v6, v5

    iput v6, v12, Lnl/dionsegijn/konfetti/a;->g:F

    .line 4083
    iget v5, v12, Lnl/dionsegijn/konfetti/a;->g:F

    cmpg-float v5, v5, v13

    if-gez v5, :cond_8

    iget v5, v12, Lnl/dionsegijn/konfetti/a;->c:F

    iput v5, v12, Lnl/dionsegijn/konfetti/a;->g:F

    .line 4097
    :cond_8
    iget-object v5, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v5}, Lnl/dionsegijn/konfetti/models/Vector;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    .line 4098
    iput-wide v3, v12, Lnl/dionsegijn/konfetti/a;->m:J

    goto/16 :goto_5

    .line 4103
    :cond_9
    iget-object v3, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v3}, Lnl/dionsegijn/konfetti/models/Vector;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_b

    iget-object v3, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v3}, Lnl/dionsegijn/konfetti/models/Vector;->getX()F

    move-result v3

    .line 5051
    iget v4, v12, Lnl/dionsegijn/konfetti/a;->c:F

    add-float/2addr v3, v4

    cmpg-float v3, v3, v13

    if-ltz v3, :cond_b

    .line 4103
    iget-object v3, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v3}, Lnl/dionsegijn/konfetti/models/Vector;->getY()F

    move-result v3

    .line 6051
    iget v4, v12, Lnl/dionsegijn/konfetti/a;->c:F

    add-float/2addr v3, v4

    cmpg-float v3, v3, v13

    if-gez v3, :cond_a

    goto :goto_5

    .line 4109
    :cond_a
    iget-object v3, v12, Lnl/dionsegijn/konfetti/a;->d:Landroid/graphics/Paint;

    iget v4, v12, Lnl/dionsegijn/konfetti/a;->i:I

    shl-int/lit8 v4, v4, 0x18

    iget v5, v12, Lnl/dionsegijn/konfetti/a;->k:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4111
    iget v3, v12, Lnl/dionsegijn/konfetti/a;->g:F

    iget v4, v12, Lnl/dionsegijn/konfetti/a;->c:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    .line 4112
    iget v5, v12, Lnl/dionsegijn/konfetti/a;->c:F

    mul-float v5, v5, v3

    div-float/2addr v5, v4

    .line 4114
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 4115
    iget-object v7, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v7}, Lnl/dionsegijn/konfetti/models/Vector;->getX()F

    move-result v7

    sub-float/2addr v7, v5

    iget-object v13, v12, Lnl/dionsegijn/konfetti/a;->j:Lnl/dionsegijn/konfetti/models/Vector;

    invoke-virtual {v13}, Lnl/dionsegijn/konfetti/models/Vector;->getY()F

    move-result v13

    invoke-virtual {v1, v7, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4116
    iget v7, v12, Lnl/dionsegijn/konfetti/a;->f:F

    iget v13, v12, Lnl/dionsegijn/konfetti/a;->c:F

    div-float/2addr v13, v4

    invoke-virtual {v1, v7, v5, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 4117
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4119
    iget-object v3, v12, Lnl/dionsegijn/konfetti/a;->l:Lnl/dionsegijn/konfetti/models/Shape;

    iget-object v4, v12, Lnl/dionsegijn/konfetti/a;->d:Landroid/graphics/Paint;

    iget v5, v12, Lnl/dionsegijn/konfetti/a;->c:F

    invoke-interface {v3, v1, v4, v5}, Lnl/dionsegijn/konfetti/models/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 4120
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b
    :goto_5
    add-int/lit8 v11, v11, -0x1

    move v4, v15

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_c
    move v15, v4

    .line 3084
    iget-object v3, v10, Lnl/dionsegijn/konfetti/a/b;->b:Ljava/util/List;

    sget-object v4, Lnl/dionsegijn/konfetti/a/b$a;->a:Lnl/dionsegijn/konfetti/a/b$a;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/a/n;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_6

    :cond_d
    move v15, v4

    .line 6313
    :goto_6
    iget-object v3, v9, Lnl/dionsegijn/konfetti/b;->h:Lnl/dionsegijn/konfetti/a/b;

    if-nez v3, :cond_e

    const-string v4, "renderSystem"

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 7090
    :cond_e
    iget-object v4, v3, Lnl/dionsegijn/konfetti/a/b;->d:Lnl/dionsegijn/konfetti/a/a;

    invoke-virtual {v4}, Lnl/dionsegijn/konfetti/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v3, Lnl/dionsegijn/konfetti/a/b;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    iget-boolean v4, v3, Lnl/dionsegijn/konfetti/a/b;->a:Z

    if-nez v4, :cond_11

    iget-object v3, v3, Lnl/dionsegijn/konfetti/a/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    const/4 v14, 0x1

    goto :goto_7

    :cond_11
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_12

    .line 61
    iget-object v3, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    move v4, v15

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v3, v0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lnl/dionsegijn/konfetti/b/a;

    if-eqz v3, :cond_13

    iget-object v3, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    goto :goto_8

    :cond_12
    move v4, v15

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, -0x1

    const/high16 v3, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    const-wide/16 v6, -0x1

    goto/16 :goto_0

    .line 66
    :cond_14
    iget-object v1, v0, Lnl/dionsegijn/konfetti/KonfettiView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_15

    .line 67
    invoke-virtual/range {p0 .. p0}, Lnl/dionsegijn/konfetti/KonfettiView;->invalidate()V

    return-void

    .line 69
    :cond_15
    iget-object v1, v0, Lnl/dionsegijn/konfetti/KonfettiView;->c:Lnl/dionsegijn/konfetti/KonfettiView$a;

    const-wide/16 v2, -0x1

    .line 7113
    iput-wide v2, v1, Lnl/dionsegijn/konfetti/KonfettiView$a;->a:J

    return-void
.end method

.method public final setOnParticleSystemUpdateListener(Lnl/dionsegijn/konfetti/b/a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lnl/dionsegijn/konfetti/KonfettiView;->b:Lnl/dionsegijn/konfetti/b/a;

    return-void
.end method
