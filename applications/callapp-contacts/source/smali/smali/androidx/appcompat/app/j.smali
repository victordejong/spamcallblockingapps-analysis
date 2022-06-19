.class final Landroidx/appcompat/app/j;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/j$b;,
        Landroidx/appcompat/app/j$a;,
        Landroidx/appcompat/app/j$c;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/o;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/appcompat/widget/Toolbar$b;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/j;->f:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroidx/appcompat/app/j$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$1;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Landroidx/appcompat/app/j$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/j$2;-><init>(Landroidx/appcompat/app/j;)V

    iput-object v0, p0, Landroidx/appcompat/app/j;->h:Landroidx/appcompat/widget/Toolbar$b;

    .line 70
    new-instance v1, Landroidx/appcompat/widget/ac;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/ac;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    .line 71
    new-instance v1, Landroidx/appcompat/app/j$c;

    invoke-direct {v1, p0, p3}, Landroidx/appcompat/app/j$c;-><init>(Landroidx/appcompat/app/j;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/j;->c:Landroid/view/Window$Callback;

    .line 72
    iget-object p3, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {p3, v1}, Landroidx/appcompat/widget/o;->a(Landroid/view/Window$Callback;)V

    .line 73
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$b;)V

    .line 74
    iget-object p1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/o;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(II)V
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->m()I

    move-result v0

    .line 261
    iget-object v1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/o;->c(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/16 v0, 0x14

    const/4 v1, -0x1

    .line 255
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/j;->a(II)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 137
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;F)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v1}, Landroidx/appcompat/widget/o;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1083
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    .line 1089
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBar;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 291
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 276
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/j;->a(II)V

    return-void
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 477
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->n()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 479
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 481
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 482
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroidx/appcompat/app/j;->i()Z

    :cond_0
    return v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 296
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->o()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->d(I)V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 229
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/o;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    return-void
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 1

    .line 301
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    return-void
.end method

.method public final d()I
    .locals 1

    .line 324
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->m()I

    move-result v0

    return v0
.end method

.method public final d(Z)V
    .locals 2

    .line 505
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/j;->e:Z

    .line 510
    iget-object p1, p0, Landroidx/appcompat/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 512
    iget-object v1, p0, Landroidx/appcompat/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    .line 407
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/o;->e(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 414
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/o;->e(I)V

    return-void
.end method

.method public final g()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .line 424
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->i()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 429
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->j()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->d()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final m()V
    .locals 2

    .line 490
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final n()Landroid/view/Menu;
    .locals 3

    .line 544
    iget-boolean v0, p0, Landroidx/appcompat/app/j;->d:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    new-instance v1, Landroidx/appcompat/app/j$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/j$a;-><init>(Landroidx/appcompat/app/j;)V

    new-instance v2, Landroidx/appcompat/app/j$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/j$b;-><init>(Landroidx/appcompat/app/j;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/o;->a(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Landroidx/appcompat/app/j;->d:Z

    .line 549
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/j;->a:Landroidx/appcompat/widget/o;

    invoke-interface {v0}, Landroidx/appcompat/widget/o;->p()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
