.class public Landroidx/appcompat/view/e;
.super Landroidx/appcompat/view/b;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/appcompat/widget/ActionBarContextView;

.field private c:Landroidx/appcompat/view/b$a;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Landroidx/appcompat/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroidx/appcompat/view/b;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/appcompat/view/e;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    .line 53
    iput-object p3, p0, Landroidx/appcompat/view/e;->c:Landroidx/appcompat/view/b$a;

    .line 55
    new-instance v0, Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(I)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/e;->g:Landroidx/appcompat/view/menu/g;

    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/e;->g:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 58
    iput-boolean p4, p0, Landroidx/appcompat/view/e;->f:Z

    .line 59
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/e;->b(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 95
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/e;->d:Ljava/lang/ref/WeakReference;

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Landroidx/appcompat/view/e;->d()V

    .line 162
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->a()Z

    .line 163
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroidx/appcompat/view/b;->a(Z)V

    .line 84
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 85
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroidx/appcompat/view/e;->c:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroidx/appcompat/view/e;->g:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroidx/appcompat/view/e;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/e;->a(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 105
    iget-boolean v0, p0, Landroidx/appcompat/view/e;->e:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/e;->e:Z

    .line 110
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 111
    iget-object v0, p0, Landroidx/appcompat/view/e;->c:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroidx/appcompat/view/e;->c:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/view/e;->g:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    .line 101
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroidx/appcompat/view/e;->b:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroidx/appcompat/view/e;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/e;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
