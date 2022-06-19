.class public final synthetic Ll8/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll8/p;->a:I

    iput-object p1, p0, Ll8/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Ll8/p;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ll8/p;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentWhiteList;

    .line 1
    iget-object v0, p1, Lcom/mglab/scm/visual/FragmentWhiteList;->e:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 2
    new-instance v0, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/mglab/scm/visual/c;->f(I)V

    return-void

    .line 3
    :pswitch_1
    iget-object p1, p0, Ll8/p;->b:Ljava/lang/Object;

    check-cast p1, Lcom/mglab/scm/visual/FragmentBlackList;

    .line 4
    iget-object v0, p1, Lcom/mglab/scm/visual/FragmentBlackList;->d:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V

    .line 5
    new-instance v0, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/mglab/scm/visual/c;->h(I)V

    return-void

    .line 6
    :pswitch_2
    iget-object p1, p0, Ll8/p;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    .line 8
    :goto_0
    iget-object v0, p0, Ll8/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/mglab/scm/visual/c;

    invoke-static {v0, p1}, Lcom/mglab/scm/visual/c;->c(Lcom/mglab/scm/visual/c;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
