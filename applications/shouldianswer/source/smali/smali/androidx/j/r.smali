.class public Landroidx/j/r;
.super Landroidx/j/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/r$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/j/n;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Landroidx/j/r;->d:Z

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Landroidx/j/r;->b:Z

    .line 87
    iput v0, p0, Landroidx/j/r;->e:I

    return-void
.end method

.method private b()V
    .locals 3

    .line 408
    new-instance v0, Landroidx/j/r$a;

    invoke-direct {v0, p0}, Landroidx/j/r$a;-><init>(Landroidx/j/r;)V

    .line 409
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    .line 410
    invoke-virtual {v2, v0}, Landroidx/j/n;->addListener(Landroidx/j/n$d;)Landroidx/j/n;

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/j/r;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Landroidx/j/r;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Landroidx/j/r;->d:Z

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iput-boolean v0, p0, Landroidx/j/r;->d:Z

    :goto_0
    return-object p0
.end method

.method public a(J)Landroidx/j/r;
    .locals 4

    .line 231
    invoke-super {p0, p1, p2}, Landroidx/j/n;->setDuration(J)Landroidx/j/n;

    .line 232
    iget-wide v0, p0, Landroidx/j/r;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 235
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1, p2}, Landroidx/j/n;->setDuration(J)Landroidx/j/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroidx/j/r;
    .locals 3

    .line 250
    iget v0, p0, Landroidx/j/r;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/r;->e:I

    .line 251
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 254
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/j/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public a(Landroid/view/View;)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->addTarget(Landroid/view/View;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->addTarget(Landroid/view/View;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method a(Landroid/view/ViewGroup;)Landroidx/j/r;
    .locals 3

    .line 591
    invoke-super {p0, p1}, Landroidx/j/n;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/j/n;

    .line 592
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 594
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/j/n;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Landroidx/j/n$d;)Landroidx/j/r;
    .locals 0

    .line 299
    invoke-super {p0, p1}, Landroidx/j/n;->addListener(Landroidx/j/n$d;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public a(Landroidx/j/n;)Landroidx/j/r;
    .locals 4

    .line 176
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iput-object p0, p1, Landroidx/j/n;->mParent:Landroidx/j/r;

    .line 178
    iget-wide v0, p0, Landroidx/j/r;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 179
    iget-wide v0, p0, Landroidx/j/r;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroidx/j/n;->setDuration(J)Landroidx/j/n;

    .line 181
    :cond_0
    iget v0, p0, Landroidx/j/r;->e:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Landroidx/j/r;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/j/n;

    .line 184
    :cond_1
    iget v0, p0, Landroidx/j/r;->e:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0}, Landroidx/j/r;->getPropagation()Landroidx/j/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/n;->setPropagation(Landroidx/j/q;)V

    .line 187
    :cond_2
    iget v0, p0, Landroidx/j/r;->e:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {p0}, Landroidx/j/r;->getPathMotion()Landroidx/j/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/n;->setPathMotion(Landroidx/j/g;)V

    .line 190
    :cond_3
    iget v0, p0, Landroidx/j/r;->e:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 191
    invoke-virtual {p0}, Landroidx/j/r;->getEpicenterCallback()Landroidx/j/n$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/n;->setEpicenterCallback(Landroidx/j/n$c;)V

    :cond_4
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->addTarget(Ljava/lang/Class;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->addTarget(Ljava/lang/Class;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 281
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->addTarget(Ljava/lang/String;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->addTarget(Ljava/lang/String;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public synthetic addListener(Landroidx/j/n$d;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->a(Landroidx/j/n$d;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addTarget(I)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->c(I)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addTarget(Landroid/view/View;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->a(Landroid/view/View;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addTarget(Ljava/lang/Class;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->a(Ljava/lang/Class;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic addTarget(Ljava/lang/String;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->a(Ljava/lang/String;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Landroidx/j/n;
    .locals 1

    if-ltz p1, :cond_1

    .line 215
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/j/n;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(J)Landroidx/j/r;
    .locals 0

    .line 244
    invoke-super {p0, p1, p2}, Landroidx/j/n;->setStartDelay(J)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public b(Landroid/view/View;)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 314
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->removeTarget(Landroid/view/View;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->removeTarget(Landroid/view/View;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public b(Landroidx/j/n$d;)Landroidx/j/r;
    .locals 0

    .line 377
    invoke-super {p0, p1}, Landroidx/j/n;->removeListener(Landroidx/j/n$d;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 323
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 324
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->removeTarget(Ljava/lang/Class;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->removeTarget(Ljava/lang/Class;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public b(Ljava/lang/String;)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 332
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->removeTarget(Ljava/lang/String;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->removeTarget(Ljava/lang/String;)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public c(I)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 272
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 273
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->addTarget(I)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->addTarget(I)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method protected cancel()V
    .locals 3

    .line 571
    invoke-super {p0}, Landroidx/j/n;->cancel()V

    .line 572
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 574
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2}, Landroidx/j/n;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureEndValues(Landroidx/j/t;)V
    .locals 3

    .line 526
    iget-object v0, p1, Landroidx/j/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/j/r;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    .line 528
    iget-object v2, p1, Landroidx/j/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/j/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {v1, p1}, Landroidx/j/n;->captureEndValues(Landroidx/j/t;)V

    .line 530
    iget-object v2, p1, Landroidx/j/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method capturePropagationValues(Landroidx/j/t;)V
    .locals 3

    .line 538
    invoke-super {p0, p1}, Landroidx/j/n;->capturePropagationValues(Landroidx/j/t;)V

    .line 539
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 541
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->capturePropagationValues(Landroidx/j/t;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public captureStartValues(Landroidx/j/t;)V
    .locals 3

    .line 514
    iget-object v0, p1, Landroidx/j/t;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/j/r;->isValidTarget(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    .line 516
    iget-object v2, p1, Landroidx/j/t;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroidx/j/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v1, p1}, Landroidx/j/n;->captureStartValues(Landroidx/j/t;)V

    .line 518
    iget-object v2, p1, Landroidx/j/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Landroidx/j/n;
    .locals 4

    .line 639
    invoke-super {p0}, Landroidx/j/n;->clone()Landroidx/j/n;

    move-result-object v0

    check-cast v0, Landroidx/j/r;

    .line 640
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    .line 641
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 643
    iget-object v3, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/n;

    invoke-virtual {v3}, Landroidx/j/n;->clone()Landroidx/j/n;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/j/r;->a(Landroidx/j/n;)Landroidx/j/r;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Landroidx/j/r;->clone()Landroidx/j/n;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/j/u;Landroidx/j/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/j/u;",
            "Landroidx/j/u;",
            "Ljava/util/ArrayList<",
            "Landroidx/j/t;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/j/t;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 456
    invoke-virtual {p0}, Landroidx/j/r;->getStartDelay()J

    move-result-wide v1

    .line 457
    iget-object v3, v0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 459
    iget-object v5, v0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/j/n;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 462
    iget-boolean v5, v0, Landroidx/j/r;->d:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 463
    :cond_0
    invoke-virtual {v6}, Landroidx/j/n;->getStartDelay()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 465
    invoke-virtual {v6, v9, v10}, Landroidx/j/n;->setStartDelay(J)Landroidx/j/n;

    goto :goto_1

    .line 467
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/j/n;->setStartDelay(J)Landroidx/j/n;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 470
    invoke-virtual/range {v6 .. v11}, Landroidx/j/n;->createAnimators(Landroid/view/ViewGroup;Landroidx/j/u;Landroidx/j/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(I)Landroidx/j/r;
    .locals 2

    const/4 v0, 0x0

    .line 305
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->removeTarget(I)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/n;->removeTarget(I)Landroidx/j/n;

    move-result-object p1

    check-cast p1, Landroidx/j/r;

    return-object p1
.end method

.method public excludeTarget(IZ)Landroidx/j/n;
    .locals 2

    const/4 v0, 0x0

    .line 359
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 360
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1, p2}, Landroidx/j/n;->excludeTarget(IZ)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/n;->excludeTarget(IZ)Landroidx/j/n;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/j/n;
    .locals 2

    const/4 v0, 0x0

    .line 341
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 342
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1, p2}, Landroidx/j/n;->excludeTarget(Landroid/view/View;Z)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/n;->excludeTarget(Landroid/view/View;Z)Landroidx/j/n;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/j/n;
    .locals 2

    const/4 v0, 0x0

    .line 368
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 369
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1, p2}, Landroidx/j/n;->excludeTarget(Ljava/lang/Class;Z)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/n;->excludeTarget(Ljava/lang/Class;Z)Landroidx/j/n;

    move-result-object p1

    return-object p1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/j/n;
    .locals 2

    const/4 v0, 0x0

    .line 350
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1, p2}, Landroidx/j/n;->excludeTarget(Ljava/lang/String;Z)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/n;->excludeTarget(Ljava/lang/String;Z)Landroidx/j/n;

    move-result-object p1

    return-object p1
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .locals 3

    .line 582
    invoke-super {p0, p1}, Landroidx/j/n;->forceToEnd(Landroid/view/ViewGroup;)V

    .line 583
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 585
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->forceToEnd(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pause(Landroid/view/View;)V
    .locals 3

    .line 549
    invoke-super {p0, p1}, Landroidx/j/n;->pause(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 552
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->pause(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic removeListener(Landroidx/j/n$d;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->b(Landroidx/j/n$d;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic removeTarget(I)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->d(I)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic removeTarget(Landroid/view/View;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->b(Landroid/view/View;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic removeTarget(Ljava/lang/Class;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->b(Ljava/lang/Class;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic removeTarget(Ljava/lang/String;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->b(Ljava/lang/String;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public resume(Landroid/view/View;)V
    .locals 3

    .line 560
    invoke-super {p0, p1}, Landroidx/j/n;->resume(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 563
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->resume(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 481
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0}, Landroidx/j/r;->start()V

    .line 483
    invoke-virtual {p0}, Landroidx/j/r;->end()V

    return-void

    .line 486
    :cond_0
    invoke-direct {p0}, Landroidx/j/r;->b()V

    .line 487
    iget-boolean v0, p0, Landroidx/j/r;->d:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 490
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 491
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    .line 492
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    .line 493
    new-instance v3, Landroidx/j/r$1;

    invoke-direct {v3, p0, v2}, Landroidx/j/r$1;-><init>(Landroidx/j/r;Landroidx/j/n;)V

    invoke-virtual {v1, v3}, Landroidx/j/n;->addListener(Landroidx/j/n$d;)Landroidx/j/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/n;

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v0}, Landroidx/j/n;->runAnimators()V

    goto :goto_2

    .line 506
    :cond_2
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    .line 507
    invoke-virtual {v1}, Landroidx/j/n;->runAnimators()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method setCanRemoveViews(Z)V
    .locals 3

    .line 601
    invoke-super {p0, p1}, Landroidx/j/n;->setCanRemoveViews(Z)V

    .line 602
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->setCanRemoveViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic setDuration(J)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Landroidx/j/r;->a(J)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public setEpicenterCallback(Landroidx/j/n$c;)V
    .locals 3

    .line 620
    invoke-super {p0, p1}, Landroidx/j/n;->setEpicenterCallback(Landroidx/j/n$c;)V

    .line 621
    iget v0, p0, Landroidx/j/r;->e:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/j/r;->e:I

    .line 622
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->setEpicenterCallback(Landroidx/j/n$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public setPathMotion(Landroidx/j/g;)V
    .locals 2

    .line 382
    invoke-super {p0, p1}, Landroidx/j/n;->setPathMotion(Landroidx/j/g;)V

    .line 383
    iget v0, p0, Landroidx/j/r;->e:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/j/r;->e:I

    const/4 v0, 0x0

    .line 384
    :goto_0
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 385
    iget-object v1, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/n;

    invoke-virtual {v1, p1}, Landroidx/j/n;->setPathMotion(Landroidx/j/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagation(Landroidx/j/q;)V
    .locals 3

    .line 610
    invoke-super {p0, p1}, Landroidx/j/n;->setPropagation(Landroidx/j/q;)V

    .line 611
    iget v0, p0, Landroidx/j/r;->e:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/j/r;->e:I

    .line 612
    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/n;

    invoke-virtual {v2, p1}, Landroidx/j/n;->setPropagation(Landroidx/j/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/j/r;->a(Landroid/view/ViewGroup;)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method public synthetic setStartDelay(J)Landroidx/j/n;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Landroidx/j/r;->b(J)Landroidx/j/r;

    move-result-object p1

    return-object p1
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 630
    invoke-super {p0, p1}, Landroidx/j/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 631
    :goto_0
    iget-object v2, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/j/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/j/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
