.class public Landroidx/appcompat/view/e;
.super Landroidx/appcompat/view/b;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# instance fields
.field public a:Landroidx/appcompat/widget/ActionBarContextView;

.field private b:Landroid/content/Context;

.field private e:Landroidx/appcompat/view/b$a;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Landroidx/appcompat/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/appcompat/view/b;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/appcompat/view/e;->b:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    .line 54
    iput-object p3, p0, Landroidx/appcompat/view/e;->e:Landroidx/appcompat/view/b$a;

    .line 56
    new-instance p1, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1239
    iput p2, p1, Landroidx/appcompat/view/menu/g;->e:I

    .line 56
    iput-object p1, p0, Landroidx/appcompat/view/e;->i:Landroidx/appcompat/view/menu/g;

    .line 58
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 59
    iput-boolean p4, p0, Landroidx/appcompat/view/e;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MenuInflater;
    .locals 2

    .line 137
    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/e;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/e;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/view/e;->d()V

    .line 163
    iget-object p1, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->a()Z

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/view/b;->a(Z)V

    .line 85
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 0

    .line 142
    iget-object p1, p0, Landroidx/appcompat/view/e;->e:Landroidx/appcompat/view/b$a;

    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b()Landroid/view/Menu;
    .locals 1

    .line 117
    iget-object v0, p0, Landroidx/appcompat/view/e;->i:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/e;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 106
    iget-boolean v0, p0, Landroidx/appcompat/view/e;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Landroidx/appcompat/view/e;->g:Z

    .line 111
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 112
    iget-object v0, p0, Landroidx/appcompat/view/e;->e:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 101
    iget-object v0, p0, Landroidx/appcompat/view/e;->e:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/view/e;->i:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2127
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2131
    iget-object v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1379
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionBarContextView;->i:Z

    return v0
.end method

.method public final i()Landroid/view/View;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/appcompat/view/e;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
