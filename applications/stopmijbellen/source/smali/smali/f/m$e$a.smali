.class public Lf/m$e$a;
.super Lj4/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/m$e;->d(Lk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic N:Lf/m$e;


# direct methods
.method public constructor <init>(Lf/m$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    invoke-direct {p0}, Lj4/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    iget-object p1, p1, Lf/m$e;->b:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    iget-object p1, p1, Lf/m$e;->b:Lf/m;

    iget-object v0, p1, Lf/m;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    iget-object p1, p1, Lf/m$e;->b:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p1}, Lm0/v$h;->c(Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    iget-object p1, p1, Lf/m$e;->b:Lf/m;

    iget-object p1, p1, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    .line 8
    iget-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    iget-object p1, p1, Lf/m$e;->b:Lf/m;

    iget-object p1, p1, Lf/m;->r:Lm0/y;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm0/y;->d(Lm0/z;)Lm0/y;

    .line 9
    iget-object p1, p0, Lf/m$e$a;->N:Lf/m$e;

    iget-object p1, p1, Lf/m$e;->b:Lf/m;

    iput-object v0, p1, Lf/m;->r:Lm0/y;

    .line 10
    iget-object p1, p1, Lf/m;->t:Landroid/view/ViewGroup;

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 11
    invoke-static {p1}, Lm0/v$h;->c(Landroid/view/View;)V

    return-void
.end method
