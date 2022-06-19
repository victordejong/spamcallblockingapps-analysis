.class Lcom/unknownphone/callblocker/e/c$14;
.super Lcom/unknownphone/callblocker/custom/e;
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
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/unknownphone/callblocker/e/c$14;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-direct {p0, p2}, Lcom/unknownphone/callblocker/custom/e;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$14;->a:Lcom/unknownphone/callblocker/e/c;

    invoke-static {v0}, Lcom/unknownphone/callblocker/e/c;->e(Lcom/unknownphone/callblocker/e/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$14;->a:Lcom/unknownphone/callblocker/e/c;

    sget-object v1, Lcom/unknownphone/callblocker/e/c$c$a;->b:Lcom/unknownphone/callblocker/e/c$c$a;

    invoke-static {v0, v1}, Lcom/unknownphone/callblocker/e/c;->a(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/c$c$a;)V

    goto :goto_0
.end method
