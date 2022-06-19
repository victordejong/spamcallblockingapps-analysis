.class public final synthetic Lo8/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo8/o;->a:I

    iput-object p1, p0, Lo8/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lo8/o;->a:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lo8/o;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentBlackList;

    .line 1
    iget-object v1, p1, Lcom/mglab/scm/visual/FragmentBlackList;->d:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 2
    new-instance v0, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/mglab/scm/visual/c;->f(I)V

    return-void

    .line 3
    :goto_0
    iget-object p1, p0, Lo8/o;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentWhiteList;

    .line 4
    iget-object v1, p1, Lcom/mglab/scm/visual/FragmentWhiteList;->e:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 5
    new-instance v1, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const-string p1, ""

    .line 6
    invoke-virtual {v1, v0, v0, p1, p1}, Lcom/mglab/scm/visual/c;->e(IZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
