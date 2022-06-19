.class public abstract Lve1;
.super Lte1;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Lte1<",
        "TPlayerOrIMAAd;>;"
    }
.end annotation


# instance fields
.field public l:Lve1$b;

.field public m:I

.field public n:D

.field public o:I

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lre1;Lmf1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lte1;-><init>(Ljava/lang/String;Lre1;Lmf1;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lve1;->o:I

    iput p1, p0, Lve1;->p:I

    iput p1, p0, Lve1;->m:I

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lve1;->n:D

    const/4 p1, 0x0

    iput p1, p0, Lve1;->q:I

    sget-object p1, Lve1$b;->a:Lve1$b;

    iput-object p1, p0, Lve1;->l:Lve1$b;

    return-void
.end method


# virtual methods
.method public j(Lye1;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p1, Lye1;->a:Ljava/lang/Integer;

    sget-object v1, Lye1;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lye1;->a:Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lve1;->u()Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget v0, p0, Lve1;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lye1;->a:Ljava/lang/Integer;

    :goto_1
    iget-object v1, p1, Lye1;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    iget v0, p0, Lve1;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lye1;->a:Ljava/lang/Integer;

    :cond_1
    iget-object v1, p1, Lye1;->d:Lze1;

    sget-object v2, Lze1;->f:Lze1;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    iget v1, p0, Lve1;->p:I

    if-eq v1, v2, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lte1;->o(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    sget-object v0, Lve1$b;->f:Lve1$b;

    iput-object v0, p0, Lve1;->l:Lve1$b;

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Lve1$b;->d:Lve1$b;

    iput-object v0, p0, Lve1;->l:Lve1$b;

    sget-object v0, Lze1;->k:Lze1;

    iput-object v0, p1, Lye1;->d:Lze1;

    :cond_4
    :goto_3
    invoke-super {p0, p1}, Lte1;->j(Lye1;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public r()V
    .locals 4

    invoke-super {p0}, Lte1;->r()V

    new-instance v0, Lve1$a;

    invoke-direct {v0, p0}, Lve1$a;-><init>(Lve1;)V

    iget-object v1, p0, Lte1;->d:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public t()Z
    .locals 12

    iget-object v0, p0, Lte1;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lte1;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lve1;->u()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lve1;->m:I

    if-ltz v3, :cond_1

    if-gez v2, :cond_1

    return v1

    :cond_1
    iput v2, p0, Lve1;->m:I

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lve1;->v()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lve1;->w()Z

    move-result v4

    int-to-double v5, v3

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    div-double/2addr v5, v7

    invoke-virtual {p0}, Lte1;->m()D

    move-result-wide v7

    const/4 v9, 0x0

    iget v10, p0, Lve1;->o:I

    if-le v2, v10, :cond_3

    iput v2, p0, Lve1;->o:I

    :cond_3
    iget v10, p0, Lve1;->p:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_4

    iput v3, p0, Lve1;->p:I

    :cond_4
    if-eqz v4, :cond_7

    iget-object v3, p0, Lve1;->l:Lve1$b;

    sget-object v4, Lve1$b;->a:Lve1$b;

    if-ne v3, v4, :cond_5

    sget-object v9, Lze1;->j:Lze1;

    sget-object v3, Lve1$b;->c:Lve1$b;

    :goto_0
    iput-object v3, p0, Lve1;->l:Lve1$b;

    goto :goto_1

    :cond_5
    sget-object v4, Lve1$b;->b:Lve1$b;

    if-ne v3, v4, :cond_6

    sget-object v9, Lze1;->h:Lze1;

    sget-object v3, Lve1$b;->c:Lve1$b;

    goto :goto_0

    :cond_6
    int-to-double v3, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v3, v0

    const/4 v4, -0x1

    if-le v3, v4, :cond_8

    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    sget-object v4, Lte1;->k:[Lze1;

    aget-object v3, v4, v3

    iget-object v4, p0, Lte1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lte1;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lve1;->l:Lve1$b;

    sget-object v4, Lve1$b;->b:Lve1$b;

    if-eq v3, v4, :cond_8

    sget-object v9, Lze1;->g:Lze1;

    iput-object v4, p0, Lve1;->l:Lve1$b;

    :cond_8
    :goto_1
    if-eqz v9, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_a

    iget-wide v4, p0, Lve1;->n:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_a

    iget-wide v4, p0, Lve1;->n:D

    sub-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v6, v4, v10

    if-lez v6, :cond_a

    sget-object v9, Lze1;->m:Lze1;

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    new-instance v3, Lye1;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v9, v2, v4}, Lye1;-><init>(Lze1;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v3}, Lte1;->h(Lye1;)V

    :cond_b
    iput-wide v7, p0, Lve1;->n:D

    iput v1, p0, Lve1;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    nop

    iget v2, p0, Lve1;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lve1;->q:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_c

    const/4 v1, 0x1

    :cond_c
    :goto_3
    return v1
.end method

.method public abstract u()Ljava/lang/Integer;
.end method

.method public abstract v()Ljava/lang/Integer;
.end method

.method public abstract w()Z
.end method
