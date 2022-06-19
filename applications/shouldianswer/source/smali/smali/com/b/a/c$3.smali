.class Lcom/b/a/c$3;
.super Ljava/lang/Object;
.source "MaterialEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 888
    iput-object p1, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-static {v0}, Lcom/b/a/c;->c(Lcom/b/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-static {v0}, Lcom/b/a/c;->f(Lcom/b/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 893
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-static {v0}, Lcom/b/a/c;->g(Lcom/b/a/c;)Lcom/nineoldandroids/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/h;->a()V

    goto :goto_0

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-static {v0}, Lcom/b/a/c;->g(Lcom/b/a/c;)Lcom/nineoldandroids/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/a/h;->h()V

    .line 898
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-static {v0}, Lcom/b/a/c;->h(Lcom/b/a/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 899
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    invoke-virtual {v0}, Lcom/b/a/c;->b()Z

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    iget-object v0, v0, Lcom/b/a/c;->h:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/b/a/c$3;->a:Lcom/b/a/c;

    iget-object v0, v0, Lcom/b/a/c;->h:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method
