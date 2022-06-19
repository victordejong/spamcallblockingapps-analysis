.class Lcom/unknownphone/callblocker/a/b$16;
.super Lcom/unknownphone/callblocker/custom/e;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/a/b;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/unknownphone/callblocker/a/b$16;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-direct {p0, p2}, Lcom/unknownphone/callblocker/custom/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$16;->a:Lcom/unknownphone/callblocker/a/b;

    invoke-static {v0}, Lcom/unknownphone/callblocker/a/b;->d(Lcom/unknownphone/callblocker/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$16;->a:Lcom/unknownphone/callblocker/a/b;

    sget-object v1, Lcom/unknownphone/callblocker/a/b$b$a;->b:Lcom/unknownphone/callblocker/a/b$b$a;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/a/b;->a(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/b$b$a;)V

    goto :goto_0
.end method
