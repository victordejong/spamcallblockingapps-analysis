.class public Ls$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls;->E0(Lj0$a;)Lj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls;


# direct methods
.method public constructor <init>(Ls;)V
    .locals 0

    iput-object p1, p0, Ls$f;->a:Ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ls$f;->a:Ls;

    iget-object v1, v0, Ls;->s:Landroid/widget/PopupWindow;

    iget-object v0, v0, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Ls$f;->a:Ls;

    invoke-virtual {v0}, Ls;->T()V

    iget-object v0, p0, Ls$f;->a:Ls;

    invoke-virtual {v0}, Ls;->B0()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls$f;->a:Ls;

    iget-object v0, v0, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Ls$f;->a:Ls;

    iget-object v2, v0, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Ljb;->d(Landroid/view/View;)Lnb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnb;->a(F)Lnb;

    iput-object v2, v0, Ls;->u:Lnb;

    iget-object v0, p0, Ls$f;->a:Ls;

    iget-object v0, v0, Ls;->u:Lnb;

    new-instance v1, Ls$f$a;

    invoke-direct {v1, p0}, Ls$f$a;-><init>(Ls$f;)V

    invoke-virtual {v0, v1}, Lnb;->f(Lob;)Lnb;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls$f;->a:Ls;

    iget-object v0, v0, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Ls$f;->a:Ls;

    iget-object v0, v0, Ls;->r:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
