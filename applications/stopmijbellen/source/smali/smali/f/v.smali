.class public Lf/v;
.super Lf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/v$d;,
        Lf/v$c;,
        Lf/v$e;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/g0;

.field public final b:Landroid/view/Window$Callback;

.field public final c:Lf/m$c;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/v;->g:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lf/v$a;

    invoke-direct {v0, p0}, Lf/v$a;-><init>(Lf/v;)V

    iput-object v0, p0, Lf/v;->h:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lf/v$b;

    invoke-direct {v0, p0}, Lf/v$b;-><init>(Lf/v;)V

    .line 5
    new-instance v1, Landroidx/appcompat/widget/c1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/c1;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    .line 6
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lf/v;->b:Landroid/view/Window$Callback;

    .line 8
    iput-object p3, v1, Landroidx/appcompat/widget/c1;->l:Landroid/view/Window$Callback;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 10
    iget-boolean p1, v1, Landroidx/appcompat/widget/c1;->h:Z

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/c1;->z(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    new-instance p1, Lf/v$e;

    invoke-direct {p1, p0}, Lf/v$e;-><init>(Lf/v;)V

    iput-object p1, p0, Lf/v;->c:Lf/m$c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->e()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/v;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lf/v;->f:Z

    .line 3
    iget-object v0, p0, Lf/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Lf/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a$b;

    invoke-interface {v2, p1}, Lf/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->p()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lf/v;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lf/v;->h:Ljava/lang/Runnable;

    sget-object v2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 3
    invoke-static {v0, v1}, Lm0/v$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->l()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lf/v;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/v;->t()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {p1}, Landroidx/appcompat/widget/g0;->f()Z

    :cond_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->f()Z

    move-result v0

    return v0
.end method

.method public l(Z)V
    .locals 0

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/g0;->s(I)V

    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/g0;->x(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public o(Z)V
    .locals 0

    return-void
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/g0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/g0;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/g0;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/v;->e:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    new-instance v1, Lf/v$c;

    invoke-direct {v1, p0}, Lf/v$c;-><init>(Lf/v;)V

    new-instance v2, Lf/v$d;

    invoke-direct {v2, p0}, Lf/v$d;-><init>(Lf/v;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/g0;->i(Landroidx/appcompat/view/menu/i$a;Landroidx/appcompat/view/menu/e$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf/v;->e:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lf/v;->a:Landroidx/appcompat/widget/g0;

    invoke-interface {v0}, Landroidx/appcompat/widget/g0;->q()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
