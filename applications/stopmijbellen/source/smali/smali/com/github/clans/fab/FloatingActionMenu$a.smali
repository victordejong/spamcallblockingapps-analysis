.class public Lcom/github/clans/fab/FloatingActionMenu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/github/clans/fab/FloatingActionButton;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->c:Lcom/github/clans/fab/FloatingActionMenu;

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->a:Lcom/github/clans/fab/FloatingActionButton;

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->c:Lcom/github/clans/fab/FloatingActionMenu;

    .line 2
    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionMenu;->j:Z

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->a:Lcom/github/clans/fab/FloatingActionButton;

    .line 4
    iget-object v0, v0, Lcom/github/clans/fab/FloatingActionMenu;->e:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v1, v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->b:Z

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->i(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->a:Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj2/e;

    if-eqz v0, :cond_3

    .line 7
    iget-boolean v1, v0, Lj2/e;->q:Z

    if-eqz v1, :cond_3

    .line 8
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$a;->b:Z

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, v0, Lj2/e;->o:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v0, Lj2/e;->n:Landroid/view/animation/Animation;

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 11
    iget-object v1, v0, Lj2/e;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method
