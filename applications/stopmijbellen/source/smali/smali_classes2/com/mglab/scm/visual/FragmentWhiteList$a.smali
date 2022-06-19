.class public Lcom/mglab/scm/visual/FragmentWhiteList$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mglab/scm/visual/FragmentWhiteList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentWhiteList;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentWhiteList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentWhiteList$a;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    new-instance v0, Lcom/mglab/scm/visual/c;

    iget-object v1, p0, Lcom/mglab/scm/visual/FragmentWhiteList$a;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mglab/scm/visual/FragmentWhiteList$a;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mglab/scm/visual/c;->g(I)V

    return-void
.end method
