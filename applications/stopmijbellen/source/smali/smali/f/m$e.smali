.class public Lf/m$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Lk/a$a;

.field public final synthetic b:Lf/m;


# direct methods
.method public constructor <init>(Lf/m;Lk/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/m$e;->b:Lf/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/m$e;->a:Lk/a$a;

    return-void
.end method


# virtual methods
.method public a(Lk/a;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m$e;->a:Lk/a$a;

    invoke-interface {v0, p1, p2}, Lk/a$a;->a(Lk/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(Lk/a;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m$e;->a:Lk/a$a;

    invoke-interface {v0, p1, p2}, Lk/a$a;->b(Lk/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public c(Lk/a;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m$e;->b:Lf/m;

    iget-object v0, v0, Lf/m;->t:Landroid/view/ViewGroup;

    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lm0/v$h;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lf/m$e;->a:Lk/a$a;

    invoke-interface {v0, p1, p2}, Lk/a$a;->c(Lk/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public d(Lk/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m$e;->a:Lk/a$a;

    invoke-interface {v0, p1}, Lk/a$a;->d(Lk/a;)V

    .line 2
    iget-object p1, p0, Lf/m$e;->b:Lf/m;

    iget-object v0, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lf/m$e;->b:Lf/m;

    iget-object v0, v0, Lf/m;->q:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lf/m$e;->b:Lf/m;

    iget-object v0, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lf/m;->K()V

    .line 6
    iget-object p1, p0, Lf/m$e;->b:Lf/m;

    iget-object v0, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lm0/v;->b(Landroid/view/View;)Lm0/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm0/y;->a(F)Lm0/y;

    iput-object v0, p1, Lf/m;->r:Lm0/y;

    .line 7
    iget-object p1, p0, Lf/m$e;->b:Lf/m;

    iget-object p1, p1, Lf/m;->r:Lm0/y;

    new-instance v0, Lf/m$e$a;

    invoke-direct {v0, p0}, Lf/m$e$a;-><init>(Lf/m$e;)V

    .line 8
    iget-object v1, p1, Lm0/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1, v1, v0}, Lm0/y;->e(Landroid/view/View;Lm0/z;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lf/m$e;->b:Lf/m;

    iget-object v0, p1, Lf/m;->g:Lf/k;

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p1, Lf/m;->n:Lk/a;

    invoke-interface {v0, p1}, Lf/k;->c(Lk/a;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lf/m$e;->b:Lf/m;

    const/4 v0, 0x0

    iput-object v0, p1, Lf/m;->n:Lk/a;

    .line 13
    iget-object p1, p1, Lf/m;->t:Landroid/view/ViewGroup;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 14
    invoke-static {p1}, Lm0/v$h;->c(Landroid/view/View;)V

    return-void
.end method
