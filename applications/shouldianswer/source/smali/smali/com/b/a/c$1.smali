.class Lcom/b/a/c$1;
.super Ljava/lang/Object;
.source "MaterialEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/c;


# direct methods
.method constructor <init>(Lcom/b/a/c;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/b/a/c$1;->a:Lcom/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 476
    iget-object p1, p0, Lcom/b/a/c$1;->a:Lcom/b/a/c;

    invoke-static {p1}, Lcom/b/a/c;->a(Lcom/b/a/c;)V

    .line 477
    iget-object p1, p0, Lcom/b/a/c$1;->a:Lcom/b/a/c;

    invoke-static {p1}, Lcom/b/a/c;->b(Lcom/b/a/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 478
    iget-object p1, p0, Lcom/b/a/c$1;->a:Lcom/b/a/c;

    invoke-virtual {p1}, Lcom/b/a/c;->b()Z

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcom/b/a/c$1;->a:Lcom/b/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/b/a/c;->setError(Ljava/lang/CharSequence;)V

    .line 482
    :goto_0
    iget-object p1, p0, Lcom/b/a/c$1;->a:Lcom/b/a/c;

    invoke-virtual {p1}, Lcom/b/a/c;->postInvalidate()V

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
