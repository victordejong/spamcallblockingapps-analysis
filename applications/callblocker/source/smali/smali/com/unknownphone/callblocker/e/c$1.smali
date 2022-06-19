.class Lcom/unknownphone/callblocker/e/c$1;
.super Lcom/unknownphone/callblocker/custom/f;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/e/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/e/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$1;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0}, Lcom/unknownphone/callblocker/custom/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 173
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$1;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$1;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/a;

    .line 175
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c$1;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v1}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/unknownphone/callblocker/e/c$1;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v1}, Lcom/unknownphone/callblocker/e/c;->b(Lcom/unknownphone/callblocker/e/c;)Lcom/unknownphone/callblocker/e/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/unknownphone/callblocker/e/b;->d(I)V

    .line 177
    new-instance v1, Lcom/unknownphone/callblocker/e/c$a;

    iget-object v2, p0, Lcom/unknownphone/callblocker/e/c$1;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {v1, v2, v0}, Lcom/unknownphone/callblocker/e/c$a;-><init>(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/e/c$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
