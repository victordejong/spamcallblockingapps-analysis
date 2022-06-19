.class public Ls$i$a;
.super Lpb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls$i;->a(Lj0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls$i;


# direct methods
.method public constructor <init>(Ls$i;)V
    .locals 0

    iput-object p1, p0, Ls$i$a;->a:Ls$i;

    invoke-direct {p0}, Lpb;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Ls$i$a;->a:Ls$i;

    iget-object p1, p1, Ls$i;->b:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Ls$i$a;->a:Ls$i;

    iget-object p1, p1, Ls$i;->b:Ls;

    iget-object v0, p1, Ls;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Ls$i$a;->a:Ls$i;

    iget-object p1, p1, Ls$i;->b:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Ljb;->k0(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Ls$i$a;->a:Ls$i;

    iget-object p1, p1, Ls$i;->b:Ls;

    iget-object p1, p1, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Ls$i$a;->a:Ls$i;

    iget-object p1, p1, Ls$i;->b:Ls;

    iget-object p1, p1, Ls;->u:Lnb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnb;->f(Lob;)Lnb;

    iget-object p1, p0, Ls$i$a;->a:Ls$i;

    iget-object p1, p1, Ls$i;->b:Ls;

    iput-object v0, p1, Ls;->u:Lnb;

    iget-object p1, p1, Ls;->x:Landroid/view/ViewGroup;

    invoke-static {p1}, Ljb;->k0(Landroid/view/View;)V

    return-void
.end method
