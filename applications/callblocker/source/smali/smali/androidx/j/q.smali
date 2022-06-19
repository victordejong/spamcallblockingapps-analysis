.class public Landroidx/j/q;
.super Landroidx/j/m;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/q$a;
    }
.end annotation


# instance fields
.field h:I

.field i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/m;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroidx/j/m;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/q;->k:Z

    .line 84
    iput-boolean v1, p0, Landroidx/j/q;->i:Z

    .line 88
    iput v1, p0, Landroidx/j/q;->l:I

    .line 111
    return-void
.end method

.method private b(Landroidx/j/m;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iput-object p0, p1, Landroidx/j/m;->d:Landroidx/j/q;

    .line 201
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 418
    new-instance v1, Landroidx/j/q$a;

    invoke-direct {v1, p0}, Landroidx/j/q$a;-><init>(Landroidx/j/q;)V

    .line 419
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 420
    invoke-virtual {v0, v1}, Landroidx/j/m;->a(Landroidx/j/m$c;)Landroidx/j/m;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/j/q;->h:I

    .line 423
    return-void
.end method


# virtual methods
.method public synthetic a(J)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/j/q;->c(J)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/q;->b(Landroid/animation/TimeInterpolator;)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Landroidx/j/m$c;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/q;->c(Landroidx/j/m$c;)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroidx/j/q;
    .locals 3

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/j/q;->k:Z

    .line 146
    :goto_0
    return-object p0

    .line 140
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/j/q;->k:Z

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/j/m;)Landroidx/j/q;
    .locals 4

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroidx/j/q;->b(Landroidx/j/m;)V

    .line 180
    iget-wide v0, p0, Landroidx/j/q;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 181
    iget-wide v0, p0, Landroidx/j/q;->a:J

    invoke-virtual {p1, v0, v1}, Landroidx/j/m;->a(J)Landroidx/j/m;

    .line 183
    :cond_0
    iget v0, p0, Landroidx/j/q;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroidx/j/q;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/m;

    .line 186
    :cond_1
    iget v0, p0, Landroidx/j/q;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Landroidx/j/q;->o()Landroidx/j/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroidx/j/p;)V

    .line 189
    :cond_2
    iget v0, p0, Landroidx/j/q;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Landroidx/j/q;->m()Landroidx/j/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroidx/j/g;)V

    .line 192
    :cond_3
    iget v0, p0, Landroidx/j/q;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Landroidx/j/q;->n()Landroidx/j/m$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/m;->a(Landroidx/j/m$b;)V

    .line 195
    :cond_4
    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 640
    invoke-super {p0, p1}, Landroidx/j/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 641
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/j/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 641
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 644
    :cond_0
    return-object v2
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/j/t;Landroidx/j/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/j/t;",
            "Landroidx/j/t;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/s;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/j/s;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Landroidx/j/q;->c()J

    move-result-wide v8

    .line 467
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 468
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_3

    .line 469
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 472
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroidx/j/q;->k:Z

    if-nez v1, :cond_0

    if-nez v6, :cond_1

    .line 473
    :cond_0
    invoke-virtual {v0}, Landroidx/j/m;->c()J

    move-result-wide v2

    .line 474
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 475
    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Landroidx/j/m;->b(J)Landroidx/j/m;

    :cond_1
    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 480
    invoke-virtual/range {v0 .. v5}, Landroidx/j/m;->a(Landroid/view/ViewGroup;Landroidx/j/t;Landroidx/j/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 468
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 477
    :cond_2
    invoke-virtual {v0, v8, v9}, Landroidx/j/m;->b(J)Landroidx/j/m;

    goto :goto_1

    .line 483
    :cond_3
    return-void
.end method

.method public a(Landroidx/j/g;)V
    .locals 2

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroidx/j/m;->a(Landroidx/j/g;)V

    .line 391
    iget v0, p0, Landroidx/j/q;->l:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/j/q;->l:I

    .line 392
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 394
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->a(Landroidx/j/g;)V

    .line 393
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 397
    :cond_0
    return-void
.end method

.method public a(Landroidx/j/m$b;)V
    .locals 3

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroidx/j/m;->a(Landroidx/j/m$b;)V

    .line 631
    iget v0, p0, Landroidx/j/q;->l:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/j/q;->l:I

    .line 632
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 633
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 634
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->a(Landroidx/j/m$b;)V

    .line 633
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 636
    :cond_0
    return-void
.end method

.method public a(Landroidx/j/p;)V
    .locals 3

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroidx/j/m;->a(Landroidx/j/p;)V

    .line 621
    iget v0, p0, Landroidx/j/q;->l:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/j/q;->l:I

    .line 622
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 623
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 624
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->a(Landroidx/j/p;)V

    .line 623
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 626
    :cond_0
    return-void
.end method

.method public a(Landroidx/j/s;)V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/j/q;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 526
    iget-object v2, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v0, p1}, Landroidx/j/m;->a(Landroidx/j/s;)V

    .line 528
    iget-object v2, p1, Landroidx/j/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_1
    return-void
.end method

.method public b(I)Landroidx/j/m;
    .locals 1

    .prologue
    .line 223
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    goto :goto_0
.end method

.method public synthetic b(J)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/j/q;->d(J)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/view/View;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/q;->f(Landroid/view/View;)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroidx/j/m$c;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/q;->d(Landroidx/j/m$c;)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/animation/TimeInterpolator;)Landroidx/j/q;
    .locals 3

    .prologue
    .line 258
    iget v0, p0, Landroidx/j/q;->l:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/q;->l:I

    .line 259
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 261
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/m;

    .line 261
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/m;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    return-object v0
.end method

.method public b(Landroidx/j/s;)V
    .locals 3

    .prologue
    .line 536
    iget-object v0, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/j/q;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 538
    iget-object v2, p1, Landroidx/j/s;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroidx/j/m;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v0, p1}, Landroidx/j/m;->b(Landroidx/j/s;)V

    .line 540
    iget-object v2, p1, Landroidx/j/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 544
    :cond_1
    return-void
.end method

.method public synthetic c(Landroid/view/View;)Landroidx/j/m;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/q;->g(Landroid/view/View;)Landroidx/j/q;

    move-result-object v0

    return-object v0
.end method

.method public c(J)Landroidx/j/q;
    .locals 5

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Landroidx/j/m;->a(J)Landroidx/j/m;

    .line 240
    iget-wide v0, p0, Landroidx/j/q;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 242
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 243
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1, p2}, Landroidx/j/m;->a(J)Landroidx/j/m;

    .line 242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 246
    :cond_0
    return-object p0
.end method

.method public c(Landroidx/j/m$c;)Landroidx/j/q;
    .locals 1

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroidx/j/m;->a(Landroidx/j/m$c;)Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    return-object v0
.end method

.method c(Landroidx/j/s;)V
    .locals 3

    .prologue
    .line 548
    invoke-super {p0, p1}, Landroidx/j/m;->c(Landroidx/j/s;)V

    .line 549
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 550
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 551
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->c(Landroidx/j/s;)V

    .line 550
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 553
    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Landroidx/j/q;->p()Landroidx/j/m;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Landroidx/j/q;
    .locals 1

    .prologue
    .line 252
    invoke-super {p0, p1, p2}, Landroidx/j/m;->b(J)Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    return-object v0
.end method

.method public d(Landroidx/j/m$c;)Landroidx/j/q;
    .locals 1

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 559
    invoke-super {p0, p1}, Landroidx/j/m;->d(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 561
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 562
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->d(Landroid/view/View;)V

    .line 561
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p0}, Landroidx/j/q;->j()V

    .line 493
    invoke-virtual {p0}, Landroidx/j/q;->k()V

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-direct {p0}, Landroidx/j/q;->s()V

    .line 497
    iget-boolean v0, p0, Landroidx/j/q;->k:Z

    if-nez v0, :cond_3

    .line 500
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 501
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 502
    iget-object v1, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m;

    .line 503
    new-instance v3, Landroidx/j/q$1;

    invoke-direct {v3, p0, v1}, Landroidx/j/q$1;-><init>(Landroidx/j/q;Landroidx/j/m;)V

    invoke-virtual {v0, v3}, Landroidx/j/m;->a(Landroidx/j/m$c;)Landroidx/j/m;

    .line 500
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 511
    :cond_2
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 512
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroidx/j/m;->e()V

    goto :goto_0

    .line 516
    :cond_3
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    .line 517
    invoke-virtual {v0}, Landroidx/j/m;->e()V

    goto :goto_2
.end method

.method public e(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 570
    invoke-super {p0, p1}, Landroidx/j/m;->e(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 572
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 573
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->e(Landroid/view/View;)V

    .line 572
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 575
    :cond_0
    return-void
.end method

.method public f(Landroid/view/View;)Landroidx/j/q;
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 272
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->b(Landroid/view/View;)Landroidx/j/m;

    .line 271
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/m;->b(Landroid/view/View;)Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    return-object v0
.end method

.method public g(Landroid/view/View;)Landroidx/j/q;
    .locals 2

    .prologue
    .line 322
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 323
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0, p1}, Landroidx/j/m;->c(Landroid/view/View;)Landroidx/j/m;

    .line 322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/m;->c(Landroid/view/View;)Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    return-object v0
.end method

.method protected l()V
    .locals 3

    .prologue
    .line 581
    invoke-super {p0}, Landroidx/j/m;->l()V

    .line 582
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 583
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 584
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/m;

    invoke-virtual {v0}, Landroidx/j/m;->l()V

    .line 583
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method public p()Landroidx/j/m;
    .locals 4

    .prologue
    .line 649
    invoke-super {p0}, Landroidx/j/m;->p()Landroidx/j/m;

    move-result-object v0

    check-cast v0, Landroidx/j/q;

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    .line 651
    iget-object v1, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 652
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    .line 653
    iget-object v1, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/m;

    invoke-virtual {v1}, Landroidx/j/m;->p()Landroidx/j/m;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/j/q;->b(Landroidx/j/m;)V

    .line 652
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 655
    :cond_0
    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroidx/j/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
