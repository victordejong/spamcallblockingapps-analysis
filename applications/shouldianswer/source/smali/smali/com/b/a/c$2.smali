.class Lcom/b/a/c$2;
.super Ljava/lang/Object;
.source "MaterialEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/c;->j()V
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

    .line 863
    iput-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    invoke-static {v0}, Lcom/b/a/c;->c(Lcom/b/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 876
    iget-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    invoke-static {p1}, Lcom/b/a/c;->d(Lcom/b/a/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 877
    iget-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/b/a/c;->a(Lcom/b/a/c;Z)Z

    .line 878
    iget-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    invoke-static {p1}, Lcom/b/a/c;->e(Lcom/b/a/c;)Lcom/nineoldandroids/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/a/h;->h()V

    goto :goto_0

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    invoke-static {p1}, Lcom/b/a/c;->d(Lcom/b/a/c;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 881
    iget-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/b/a/c;->a(Lcom/b/a/c;Z)Z

    .line 882
    iget-object p1, p0, Lcom/b/a/c$2;->a:Lcom/b/a/c;

    invoke-static {p1}, Lcom/b/a/c;->e(Lcom/b/a/c;)Lcom/nineoldandroids/a/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nineoldandroids/a/h;->a()V

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
