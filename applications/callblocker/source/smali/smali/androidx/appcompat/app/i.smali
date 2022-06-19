.class Landroidx/appcompat/app/i;
.super Landroidx/appcompat/app/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/i$b;,
        Landroidx/appcompat/app/i$a;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/x;

.field b:Landroid/view/Window$Callback;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Runnable;


# direct methods
.method private h()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 543
    iget-boolean v0, p0, Landroidx/appcompat/app/i;->c:Z

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    new-instance v1, Landroidx/appcompat/app/i$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/i$a;-><init>(Landroidx/appcompat/app/i;)V

    new-instance v2, Landroidx/appcompat/app/i$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/i$b;-><init>(Landroidx/appcompat/app/i;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/x;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/i;->c:Z

    .line 548
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->o()I

    move-result v0

    return v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/h/u;->a(Landroid/view/View;F)V

    .line 137
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    .line 187
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/x;->a(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    invoke-direct {p0}, Landroidx/appcompat/app/i;->h()Landroid/view/Menu;

    move-result-object v3

    .line 477
    if-eqz v3, :cond_0

    .line 478
    if-eqz p2, :cond_1

    .line 479
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 478
    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 481
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 483
    :cond_0
    return v2

    .line 479
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 480
    goto :goto_1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 468
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Z

    .line 471
    :cond_0
    return v1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->k()Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->l()Z

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 3

    .prologue
    .line 504
    iget-boolean v0, p0, Landroidx/appcompat/app/i;->d:Z

    if-ne p1, v0, :cond_1

    .line 513
    :cond_0
    return-void

    .line 507
    :cond_1
    iput-boolean p1, p0, Landroidx/appcompat/app/i;->d:Z

    .line 509
    iget-object v0, p0, Landroidx/appcompat/app/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 510
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 511
    iget-object v0, p0, Landroidx/appcompat/app/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/a$b;

    invoke-interface {v0, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    .line 510
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/i;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 435
    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->d()V

    .line 442
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/i;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method
