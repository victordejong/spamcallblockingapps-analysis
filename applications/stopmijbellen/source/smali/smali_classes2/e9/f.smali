.class public Le9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/rengwuxian/materialedittext/MaterialEditText;


# direct methods
.method public constructor <init>(Lcom/rengwuxian/materialedittext/MaterialEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le9/f;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le9/f;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 2
    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialEditText;->o:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialEditText;->p:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    invoke-static {v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->c(Lcom/rengwuxian/materialedittext/MaterialEditText;)Lp8/e;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lp8/i;->j(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/rengwuxian/materialedittext/MaterialEditText;->c(Lcom/rengwuxian/materialedittext/MaterialEditText;)Lp8/e;

    move-result-object v0

    invoke-virtual {v0}, Lp8/i;->h()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Le9/f;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 8
    iget-boolean v1, v0, Lcom/rengwuxian/materialedittext/MaterialEditText;->c0:Z

    .line 9
    iget-object v0, v0, Lcom/rengwuxian/materialedittext/MaterialEditText;->v0:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method
