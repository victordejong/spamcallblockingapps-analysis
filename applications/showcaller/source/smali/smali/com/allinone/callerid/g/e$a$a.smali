.class Lcom/allinone/callerid/g/e$a$a;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/e$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e;->t0:Lcom/allinone/callerid/g/e$s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/allinone/callerid/g/e$s;->t()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->x2(Lcom/allinone/callerid/g/e;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->y2(Lcom/allinone/callerid/g/e;)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/g/e$a$a;->d:Lcom/allinone/callerid/g/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$a;->d:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_2
    return-void
.end method
