.class Lcom/github/clans/fab/FloatingActionMenu$f;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/clans/fab/FloatingActionMenu;->g(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/github/clans/fab/FloatingActionButton;

.field final synthetic e:Z

.field final synthetic f:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method constructor <init>(Lcom/github/clans/fab/FloatingActionMenu;Lcom/github/clans/fab/FloatingActionButton;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->f:Lcom/github/clans/fab/FloatingActionMenu;

    iput-object p2, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    iput-boolean p3, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->f:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->f:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-static {v1}, Lcom/github/clans/fab/FloatingActionMenu;->b(Lcom/github/clans/fab/FloatingActionMenu;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->e:Z

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->u(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->d:Lcom/github/clans/fab/FloatingActionButton;

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/Label;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/github/clans/fab/Label;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenu$f;->e:Z

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/Label;->q(Z)V

    :cond_2
    return-void
.end method
