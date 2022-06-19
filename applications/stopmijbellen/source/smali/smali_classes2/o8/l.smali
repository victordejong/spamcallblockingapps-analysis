.class public final synthetic Lo8/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentBlackList;

.field public final synthetic b:Lcom/mglab/scm/visual/BWLItem;


# direct methods
.method public synthetic constructor <init>(Lcom/mglab/scm/visual/FragmentBlackList;Lcom/mglab/scm/visual/BWLItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/l;->a:Lcom/mglab/scm/visual/FragmentBlackList;

    iput-object p2, p0, Lo8/l;->b:Lcom/mglab/scm/visual/BWLItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lo8/l;->a:Lcom/mglab/scm/visual/FragmentBlackList;

    iget-object v0, p0, Lo8/l;->b:Lcom/mglab/scm/visual/BWLItem;

    sget-object v1, Lcom/mglab/scm/visual/FragmentBlackList;->f:Lo8/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/mglab/scm/visual/c;->m(Lcom/mglab/scm/visual/BWLItem;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Lcom/mglab/scm/visual/c;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v1, p1}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/mglab/scm/visual/c;->l(Lcom/mglab/scm/visual/BWLItem;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance p2, Lk8/b0;

    invoke-virtual {v0}, Lcom/mglab/scm/visual/BWLItem;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lk8/b0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lba/b;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
