.class Lcom/unknownphone/callblocker/a/b$13;
.super Ljava/lang/Object;
.source "BlockedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    iput-object p2, p0, Lcom/unknownphone/callblocker/a/b$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unknownphone/callblocker/a/b$13;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 578
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 579
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    .line 581
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/c;

    .line 582
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/c;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/b$13;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v4}, Lcom/unknownphone/callblocker/a/b;->l(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v5}, Lcom/unknownphone/callblocker/a/b;->m(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/unknownphone/callblocker/custom/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 584
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->k(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/unknownphone/callblocker/a/a;->d(I)V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$13;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 590
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->n(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$13;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v2}, Lcom/unknownphone/callblocker/a/b;->l(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unknownphone/callblocker/a/b$13;->c:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v3}, Lcom/unknownphone/callblocker/a/b;->m(Lcom/unknownphone/callblocker/a/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/unknownphone/callblocker/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method
