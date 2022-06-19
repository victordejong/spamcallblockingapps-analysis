.class Landroidx/appcompat/b/a/d$a;
.super Landroidx/appcompat/b/a/b$b;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field L:[[I


# direct methods
.method constructor <init>(Landroidx/appcompat/b/a/d$a;Landroidx/appcompat/b/a/d;Landroid/content/res/Resources;)V
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/b/a/b$b;-><init>(Landroidx/appcompat/b/a/b$b;Landroidx/appcompat/b/a/b;Landroid/content/res/Resources;)V

    .line 333
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p1, Landroidx/appcompat/b/a/d$a;->L:[[I

    iput-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/b/a/d$a;->c()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    goto :goto_0
.end method


# virtual methods
.method a([ILandroid/graphics/drawable/Drawable;)I
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0, p2}, Landroidx/appcompat/b/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 352
    iget-object v1, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    aput-object p1, v1, v0

    .line 353
    return v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    array-length v0, v0

    new-array v2, v0, [[I

    .line 344
    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 345
    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    aget-object v0, v0, v1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_1
    aput-object v0, v2, v1

    .line 344
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 347
    :cond_1
    iput-object v2, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    .line 348
    return-void
.end method

.method b([I)I
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    .line 358
    invoke-virtual {p0}, Landroidx/appcompat/b/a/d$a;->d()I

    move-result v2

    .line 359
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 360
    aget-object v3, v1, v0

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    :goto_1
    return v0

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public e(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-super {p0, p1, p2}, Landroidx/appcompat/b/a/b$b;->e(II)V

    .line 382
    new-array v0, p2, [[I

    .line 383
    iget-object v1, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iput-object v0, p0, Landroidx/appcompat/b/a/d$a;->L:[[I

    .line 385
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroidx/appcompat/b/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/b/a/d;-><init>(Landroidx/appcompat/b/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 376
    new-instance v0, Landroidx/appcompat/b/a/d;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/b/a/d;-><init>(Landroidx/appcompat/b/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
