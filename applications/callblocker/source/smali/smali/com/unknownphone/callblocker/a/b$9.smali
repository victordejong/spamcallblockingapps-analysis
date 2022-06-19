.class Lcom/unknownphone/callblocker/a/b$9;
.super Ljava/lang/Object;
.source "BlockedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Dialog;

.field final synthetic c:Lcom/unknownphone/callblocker/a/c;

.field final synthetic d:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;ILandroid/app/Dialog;Lcom/unknownphone/callblocker/a/c;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$9;->d:Lcom/unknownphone/callblocker/a/b;

    iput p2, p0, Lcom/unknownphone/callblocker/a/b$9;->a:I

    iput-object p3, p0, Lcom/unknownphone/callblocker/a/b$9;->b:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/unknownphone/callblocker/a/b$9;->c:Lcom/unknownphone/callblocker/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 509
    iget v0, p0, Lcom/unknownphone/callblocker/a/b$9;->a:I

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$9;->d:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v1}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$9;->d:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/unknownphone/callblocker/a/b$9;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$9;->d:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->k(Lcom/unknownphone/callblocker/a/b;)Lcom/unknownphone/callblocker/a/a;

    move-result-object v0

    iget v1, p0, Lcom/unknownphone/callblocker/a/b$9;->a:I

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/a;->d(I)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$9;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 515
    new-instance v0, Lcom/unknownphone/callblocker/a/b$a;

    iget-object v1, p0, Lcom/unknownphone/callblocker/a/b$9;->d:Lcom/unknownphone/callblocker/a/b;

    iget-object v2, p0, Lcom/unknownphone/callblocker/a/b$9;->c:Lcom/unknownphone/callblocker/a/c;

    invoke-direct {v0, v1, v2}, Lcom/unknownphone/callblocker/a/b$a;-><init>(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/c;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unknownphone/callblocker/a/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 516
    return-void
.end method
