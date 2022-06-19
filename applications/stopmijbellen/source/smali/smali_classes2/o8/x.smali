.class public final synthetic Lo8/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentWhiteList;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/mglab/scm/visual/BWLItem;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/FragmentWhiteList;Landroid/content/Context;Lcom/mglab/scm/visual/BWLItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/x;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    iput-object p2, p0, Lo8/x;->b:Landroid/content/Context;

    iput-object p3, p0, Lo8/x;->c:Lcom/mglab/scm/visual/BWLItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lo8/x;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    iget-object v0, p0, Lo8/x;->b:Landroid/content/Context;

    iget-object v1, p0, Lo8/x;->c:Lcom/mglab/scm/visual/BWLItem;

    sget v2, Lcom/mglab/scm/visual/FragmentWhiteList;->g:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    if-eq p2, v2, :cond_1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Lcom/mglab/scm/visual/c;->m(Lcom/mglab/scm/visual/BWLItem;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Lcom/mglab/scm/visual/c;->l(Lcom/mglab/scm/visual/BWLItem;)V

    :goto_0
    return-void
.end method
