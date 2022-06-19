.class public Le9/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Lcom/rengwuxian/materialedittext/MaterialEditText;


# direct methods
.method public constructor <init>(Lcom/rengwuxian/materialedittext/MaterialEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le9/e;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le9/e;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 2
    iget-boolean v0, v0, Lcom/rengwuxian/materialedittext/MaterialEditText;->o:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Le9/e;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 5
    iget-boolean v1, p1, Lcom/rengwuxian/materialedittext/MaterialEditText;->L:Z

    if-eqz v1, :cond_1

    .line 6
    iput-boolean v0, p1, Lcom/rengwuxian/materialedittext/MaterialEditText;->L:Z

    .line 7
    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->b(Lcom/rengwuxian/materialedittext/MaterialEditText;)Lp8/e;

    move-result-object p1

    invoke-virtual {p1}, Lp8/i;->h()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le9/e;->a:Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 9
    iget-boolean v1, p1, Lcom/rengwuxian/materialedittext/MaterialEditText;->L:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p1, Lcom/rengwuxian/materialedittext/MaterialEditText;->L:Z

    .line 11
    invoke-static {p1}, Lcom/rengwuxian/materialedittext/MaterialEditText;->b(Lcom/rengwuxian/materialedittext/MaterialEditText;)Lp8/e;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Lp8/i;->j(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
